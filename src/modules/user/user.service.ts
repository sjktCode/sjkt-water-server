import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';

import md5 from 'md5';
import { DeepPartial, Repository } from 'typeorm';

import { User } from './models/user.entity';

@Injectable()
export class UserService {
    constructor(@InjectRepository(User) private userRepository: Repository<User>) {}

    // 新增一个用户
    async create(entity: DeepPartial<User>): Promise<boolean> {
        const res = await this.userRepository.insert(entity);
        if (res && res.raw.affectedRows > 0) {
            return true;
        }
        return false;
    }

    // 删除一个用户
    async del(id: string): Promise<boolean> {
        const res = await this.userRepository.delete(id);
        if (res.affected > 0) {
            return true;
        }
        return false;
    }

    // 更新一个用户
    async update(id: string, entity: DeepPartial<User>): Promise<boolean> {
        const saveUser = { ...entity, password: md5(entity.password) };
        const res = await this.userRepository.update(id, saveUser);
        if (res.affected > 0) {
            return true;
        }
        return false;
    }

    // 查询一个用户
    async find(id: string): Promise<User> {
        const res = await this.userRepository.findOne({
            where: {
                id,
            },
        });
        return res;
    }

    // 查询一个用户 通过手机号
    async findByTel(tel: string): Promise<User> {
        const res = await this.userRepository.findOne({
            where: {
                tel,
            },
        });
        return res;
    }

    // 更新一个用户的验证码
    async updateCode(id: string, code: string): Promise<boolean> {
        const res = await this.userRepository.update(id, {
            code,
            codeCreateTimeAt: new Date(),
        });
        if (res.affected > 0) {
            return true;
        }
        return false;
    }
}
