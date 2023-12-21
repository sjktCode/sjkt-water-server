import { Column, Entity, ManyToOne, UpdateDateColumn } from 'typeorm';

import { CommonEntity } from '@/common/entities/common.entity';
import { Card } from '@/modules/card/models/card.entity';
import { Course } from '@/modules/course/models/course.entity';
import { Organization } from '@/modules/organization/models/organization.entity';
import { Student } from '@/modules/student/models/student.entity';

/**
 * 个人的消费卡
 */
@Entity('card_record')
export class CardRecord extends CommonEntity {
    @UpdateDateColumn({
        comment: '开始时间',
        nullable: true,
    })
    startTime: Date;

    @UpdateDateColumn({
        comment: '结束时间',
        nullable: true,
    })
    endTime: Date;

    @UpdateDateColumn({
        comment: '购买时间',
        nullable: true,
    })
    buyTime: Date;

    @Column({
        comment: '剩余次数',
        nullable: true,
    })
    residueTime: number;

    @ManyToOne(() => Card, {
        cascade: true,
    })
    card: Card;

    @ManyToOne(() => Student, {
        cascade: true,
    })
    student: Student;

    @ManyToOne(() => Course, {
        cascade: true,
    })
    course: Course;

    @ManyToOne(() => Organization, {
        cascade: true,
    })
    organization: Organization;
}
