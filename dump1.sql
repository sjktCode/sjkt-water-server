/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `type` varchar(255) NOT NULL DEFAULT 'time' COMMENT '卡类型',
  `time` int NOT NULL DEFAULT '0' COMMENT '上课次数',
  `validityDay` int NOT NULL DEFAULT '0' COMMENT '有效期',
  `courseId` varchar(36) DEFAULT NULL,
  `organizationId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_0b739c2e3573cc62ea799ba3e1d` (`courseId`),
  KEY `FK_54b481f0c99d3f99cfac1853a6c` (`organizationId`),
  CONSTRAINT `FK_0b739c2e3573cc62ea799ba3e1d` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_54b481f0c99d3f99cfac1853a6c` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `card` VALUES ('139308c9-9df1-43d7-a8ea-54340c52215f','2023-11-16 06:32:03','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:44:56','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'音乐训练一年10次卡','time',10,365,'82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card` VALUES ('2b09b671-e1af-4829-93a1-086dec29319b','2023-11-16 06:37:05','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:44:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'音乐训练一年不限次','duration',2000,2322,'82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card` VALUES ('46eb9d66-d1c7-4229-a9c2-4182eabc43c6','2023-11-23 09:52:31','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:44:00','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'音乐口音大师养成班','duration',0,600,'52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card` VALUES ('5c40b88d-9788-4c65-aa32-7faefdc731ed','2023-11-23 13:18:18','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 13:18:18',NULL,NULL,NULL,'英语口语100天速成班','duration',0,365,'38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `card` VALUES ('c7e7121b-62cd-4003-b3f1-d8c8cdf3ad4a','2023-11-23 13:18:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 13:18:51',NULL,NULL,NULL,'英语口语大师班体验卡','time',10,365,'38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `card` VALUES ('e6c06bb4-10da-491c-b615-07d308c291d7','2023-11-23 09:51:25','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:44:07','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'音乐口音30天速成班','time',30,200,'52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_record` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `buyTime` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `residueTime` int DEFAULT NULL COMMENT '剩余次数',
  `cardId` varchar(36) DEFAULT NULL,
  `studentId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `organizationId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5f3e9aa536fe1975a19cb5557a3` (`cardId`),
  KEY `FK_4763adf564cf22f20c6088653bc` (`studentId`),
  KEY `FK_f7d436017c454dff6f00c2a1470` (`courseId`),
  KEY `FK_f3149ac355d7200707a396f03d0` (`organizationId`),
  CONSTRAINT `FK_4763adf564cf22f20c6088653bc` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_5f3e9aa536fe1975a19cb5557a3` FOREIGN KEY (`cardId`) REFERENCES `card` (`id`),
  CONSTRAINT `FK_f3149ac355d7200707a396f03d0` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_f7d436017c454dff6f00c2a1470` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `card_record` VALUES ('0950a39d-0672-4b48-be1f-3c4137ceb3e7','2023-11-23 14:20:56',NULL,'2023-11-23 14:43:46',NULL,NULL,NULL,'2023-11-23 14:20:56','2024-11-22 14:20:56','2023-11-23 14:20:56',9,'c7e7121b-62cd-4003-b3f1-d8c8cdf3ad4a','8eb39a91-f4d7-4197-8a17-2b248cf1687b','38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `card_record` VALUES ('644f008c-b3df-4257-a1c0-701d9b3d5144','2023-11-23 14:19:05',NULL,'2023-11-23 14:19:05',NULL,NULL,NULL,'2023-11-23 14:19:05','2025-07-15 14:19:05','2023-11-23 14:19:05',0,'46eb9d66-d1c7-4229-a9c2-4182eabc43c6','8eb39a91-f4d7-4197-8a17-2b248cf1687b','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card_record` VALUES ('86f29728-0b32-4859-af97-f15baf5744fd','2023-11-23 14:19:22',NULL,'2023-11-23 14:19:22',NULL,NULL,NULL,'2023-11-23 14:19:22','2030-04-02 14:19:22','2023-11-23 14:19:22',2000,'2b09b671-e1af-4829-93a1-086dec29319b','8eb39a91-f4d7-4197-8a17-2b248cf1687b','82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card_record` VALUES ('c134fdfb-6b1c-49cc-9e8c-523d6569a644','2023-11-23 14:19:22',NULL,'2023-11-23 14:44:38',NULL,NULL,NULL,'2023-11-23 14:19:22','2024-11-22 14:19:22','2023-11-23 14:19:22',9,'139308c9-9df1-43d7-a8ea-54340c52215f','8eb39a91-f4d7-4197-8a17-2b248cf1687b','82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `card_record` VALUES ('d4510801-82a6-4a09-a5a3-b52969e9568d','2023-11-23 14:20:56',NULL,'2023-11-23 14:20:56',NULL,NULL,NULL,'2023-11-23 14:20:56','2024-11-22 14:20:56','2023-11-23 14:20:56',0,'5c40b88d-9788-4c65-aa32-7faefdc731ed','8eb39a91-f4d7-4197-8a17-2b248cf1687b','38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `card_record` VALUES ('e1f9784f-eb9c-4747-828b-c0042b818e3f','2023-11-23 14:19:05',NULL,'2023-11-23 14:47:01','8eb39a91-f4d7-4197-8a17-2b248cf1687b',NULL,NULL,'2023-11-23 14:19:05','2024-06-10 14:19:05','2023-11-23 14:19:05',28,'e6c06bb4-10da-491c-b615-07d308c291d7','8eb39a91-f4d7-4197-8a17-2b248cf1687b','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_categories` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `customOrder` int NOT NULL DEFAULT '0' COMMENT '分类排序',
  `deletedAt` datetime(6) DEFAULT NULL COMMENT '删除时间',
  `mpath` varchar(255) DEFAULT '',
  `parentId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a03aea27707893300382b6f18ae` (`parentId`),
  FULLTEXT KEY `IDX_d6aaf8517ca57297a8c3a44d3d` (`name`),
  CONSTRAINT `FK_a03aea27707893300382b6f18ae` FOREIGN KEY (`parentId`) REFERENCES `content_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `content_categories` VALUES ('572763e8-0535-4fba-ada0-64a4fc30ccef','react',0,NULL,'572763e8-0535-4fba-ada0-64a4fc30ccef.',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_comments` (
  `id` varchar(36) NOT NULL,
  `body` text NOT NULL COMMENT '评论内容',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `mpath` varchar(255) DEFAULT '',
  `parentId` varchar(36) DEFAULT NULL,
  `postId` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_982a849f676860e5d6beb607f20` (`parentId`),
  KEY `FK_5e1c3747a0031f305e94493361f` (`postId`),
  FULLTEXT KEY `IDX_5f70a0489331d4346e46ea4d88` (`body`),
  CONSTRAINT `FK_5e1c3747a0031f305e94493361f` FOREIGN KEY (`postId`) REFERENCES `content_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_982a849f676860e5d6beb607f20` FOREIGN KEY (`parentId`) REFERENCES `content_comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_posts` (
  `id` varchar(36) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT '文章标题',
  `body` text NOT NULL COMMENT '文章内容',
  `summary` varchar(255) DEFAULT NULL COMMENT '文章描述',
  `keywords` text COMMENT '关键字',
  `type` varchar(255) NOT NULL DEFAULT 'markdown' COMMENT '文章类型',
  `publishedAt` varchar(255) DEFAULT NULL COMMENT '发布时间',
  `customOrder` int NOT NULL DEFAULT '0' COMMENT '自定义文章排序',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `deletedAt` datetime(6) DEFAULT NULL COMMENT '删除时间',
  `categoryId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4027367881933f659d02f367e92` (`categoryId`),
  FULLTEXT KEY `IDX_9ef6db9d13df6882d36c8af0cc` (`title`),
  FULLTEXT KEY `IDX_e51068c39974ca11fae5d44c88` (`body`),
  FULLTEXT KEY `IDX_f43723dc196c18767a3893a3f7` (`summary`),
  CONSTRAINT `FK_4027367881933f659d02f367e92` FOREIGN KEY (`categoryId`) REFERENCES `content_categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `content_posts` VALUES ('40165c9e-5d58-4333-82b0-e04034776aa1','测试文章1','这是第1篇文章',NULL,NULL,'markdown',NULL,0,'2023-11-28 01:05:20.176291','2023-11-28 01:05:20.176291',NULL,'572763e8-0535-4fba-ada0-64a4fc30ccef');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_posts_tags_content_tags` (
  `contentPostsId` varchar(36) NOT NULL,
  `contentTagsId` varchar(36) NOT NULL,
  PRIMARY KEY (`contentPostsId`,`contentTagsId`),
  KEY `IDX_1e8c41827d0d509e70de1f6b70` (`contentPostsId`),
  KEY `IDX_888e6754015ee17f9e22faae57` (`contentTagsId`),
  CONSTRAINT `FK_1e8c41827d0d509e70de1f6b70e` FOREIGN KEY (`contentPostsId`) REFERENCES `content_posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_888e6754015ee17f9e22faae578` FOREIGN KEY (`contentTagsId`) REFERENCES `content_tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `content_posts_tags_content_tags` VALUES ('40165c9e-5d58-4333-82b0-e04034776aa1','20fffad7-9a22-41d3-bda0-ca44b170d0bb');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content_tags` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` varchar(255) DEFAULT NULL COMMENT '标签描述',
  `deletedAt` datetime(6) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `IDX_6f504a08a58010e15c55b1eb23` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `content_tags` VALUES ('20fffad7-9a22-41d3-bda0-ca44b170d0bb','标签1',NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL COMMENT '课程名称',
  `desc` text COMMENT '课程描述',
  `group` varchar(255) NOT NULL COMMENT '适龄人群',
  `baseAbility` varchar(255) NOT NULL COMMENT '适合基础',
  `limitNumber` int NOT NULL COMMENT '限制上课人数',
  `duration` int NOT NULL COMMENT '持续时间',
  `reserveInfo` varchar(255) DEFAULT NULL COMMENT '预约信息',
  `refundInfo` varchar(255) DEFAULT NULL COMMENT '退款信息',
  `otherInfo` varchar(255) DEFAULT NULL COMMENT '其他说明信息',
  `reducibleTime` text COMMENT '可约时间',
  `organizationId` varchar(36) DEFAULT NULL,
  `coverUrl` varchar(255) DEFAULT NULL COMMENT '封面图',
  PRIMARY KEY (`id`),
  KEY `FK_185bdae02bd62d9d4da3273c3b9` (`organizationId`),
  CONSTRAINT `FK_185bdae02bd62d9d4da3273c3b9` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `course` VALUES ('007f7104-2709-4a14-9ebe-c9bbf310d404','2023-11-13 08:08:50','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:50',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('0b26d5e7-25cc-4831-bf06-db3e9a7866ff','2023-11-13 08:08:46','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:46',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('1f12a64f-81c2-494a-bbc9-f7ff7e1f7e10','2023-11-13 08:07:38','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:07:38',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('2366364f-7454-4db3-af86-4b54a30d707e','2023-11-13 08:08:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:51',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('2a8b09a1-f392-49d6-a457-b1bdac1efafb','2023-11-13 08:08:45','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:45',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('38f30967-3a9e-485a-8942-e47e37b526e2','2023-11-14 15:10:55','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 13:17:39','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'英文朗读课2323','英文朗读课','本科生','英语四级',33,33,'英文朗读课','英文朗读课','英文朗读课','[{\"week\":\"monday\",\"orderTime\":[{\"startTime\":\"08:30:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"tuesday\",\"orderTime\":[{\"startTime\":\"08:30:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"wednesday\",\"orderTime\":[{\"startTime\":\"08:30:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"thursday\",\"orderTime\":[{\"startTime\":\"08:30:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"friday\",\"orderTime\":[{\"startTime\":\"08:30:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]}]','ac7c0445-2859-4f7c-a24a-a7cc6630eb51','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700559543956-7.bmp');
INSERT INTO `course` VALUES ('52a02b6c-dbda-4c9b-a566-6293317b769d','2023-11-13 14:49:04','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:44:23','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'新概念音乐56节','新概念英语第56节','本科生','音乐四级',30,30,'无','无','无','[{\"week\":\"monday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"tuesday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"wednesday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"thursday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"friday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"saturday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]},{\"week\":\"sunday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"15:00:00\",\"endTime\":\"17:30:00\",\"key\":2}]}]','f460201a-d6d3-442c-8fef-b13040d1c999','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700728470804-184.jpeg');
INSERT INTO `course` VALUES ('58a0c847-ac09-4483-820b-4f94822e70ae','2023-11-13 08:08:49','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:49',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('6f8816ee-b11f-4837-8bfc-64e3b4bae3ed','2023-11-13 08:08:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:44',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('77208a2f-034c-4747-87b7-8c188092e98f','2023-11-13 08:08:45','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:45',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('78c37a52-5af7-4e9e-ac0f-c6f5c7f94011','2023-11-13 08:08:49','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:49',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('82856908-594c-4d29-85ba-e04621313451','2023-11-13 14:56:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:43:17','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'新概念音乐99节','新概念英语第99节','本科生','音乐四级',30,30,'无','无','无','[{\"week\":\"monday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"14:00:00\",\"endTime\":\"16:30:00\",\"key\":2}]},{\"week\":\"tuesday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"14:00:00\",\"endTime\":\"16:30:00\",\"key\":2}]},{\"week\":\"wednesday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"14:00:00\",\"endTime\":\"16:30:00\",\"key\":2}]},{\"week\":\"thursday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"14:00:00\",\"endTime\":\"16:30:00\",\"key\":2}]},{\"week\":\"friday\",\"orderTime\":[{\"startTime\":\"09:00:00\",\"endTime\":\"11:30:00\",\"key\":1},{\"startTime\":\"14:00:00\",\"endTime\":\"16:30:00\",\"key\":2}]}]','f460201a-d6d3-442c-8fef-b13040d1c999','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700728470804-180.jpeg');
INSERT INTO `course` VALUES ('98c1ac68-5fd5-4331-82f2-e25854e7360f','2023-11-13 08:08:42','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:42',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('a2b537c0-2c1a-43ec-960a-61cb0c5f3351','2023-11-13 08:08:47','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:47',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('aa825a6a-6c72-4c8e-b21a-382a95670c4e','2023-11-13 08:08:48','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:48',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('cd7fb6ee-7a42-49f8-88a2-a110136d89be','2023-11-13 08:08:43','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:43',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('d211f42c-45b0-4b22-b19d-6f4c494e0c75','2023-11-13 08:08:47','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:47',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('d7babd5f-ce11-47b0-96d8-efcb1d2e0c73','2023-11-14 15:18:31','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-14 15:18:31',NULL,NULL,NULL,'nestjs从入门到放弃','nestjs从入门到放弃','本科生','英语四级',44,44,'nestjs从入门到放弃','nestjs从入门到放弃','nestjs从入门到放弃',NULL,'e5fa56bd-bad1-429b-b570-fc47277df1ab',NULL);
INSERT INTO `course` VALUES ('d8cdf33a-44ca-493a-b5d4-056fc4066040','2023-11-14 15:19:06','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-14 15:19:06',NULL,NULL,NULL,'react从入门到放弃','react从入门到放弃','本科生','英语四级',55,55,'react从入门到放弃','react从入门到放弃','react从入门到放弃',NULL,'aff525f8-6439-4115-858c-b0cf77da295f',NULL);
INSERT INTO `course` VALUES ('f8bdfc89-eda1-429c-9628-21f73dceb05b','2023-11-13 14:47:28','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 14:47:28',NULL,NULL,NULL,'新概念英语第9节','新概念英语第9节','本科生','英语四级',30,30,'无','无','无',NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `course` VALUES ('fef7fe51-307c-4117-83be-5051cf646787','2023-11-13 08:08:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-13 08:08:51',NULL,NULL,NULL,'英文新概念第一节',NULL,'年轻人','本科',10,30,NULL,NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_teacher` (
  `courseId` varchar(36) NOT NULL,
  `teacherId` varchar(36) NOT NULL,
  PRIMARY KEY (`courseId`,`teacherId`),
  KEY `IDX_fdbf6887a6a7a59f2922ccb585` (`courseId`),
  KEY `IDX_61d480c5992261dc61922d373f` (`teacherId`),
  CONSTRAINT `FK_61d480c5992261dc61922d373fe` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fdbf6887a6a7a59f2922ccb5858` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `course_teacher` VALUES ('38f30967-3a9e-485a-8942-e47e37b526e2','823903cb-f320-47bf-903d-3a5a48afa028');
INSERT INTO `course_teacher` VALUES ('38f30967-3a9e-485a-8942-e47e37b526e2','e9361afe-329d-4987-94a6-a00bed62ae3f');
INSERT INTO `course_teacher` VALUES ('52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `course_teacher` VALUES ('52a02b6c-dbda-4c9b-a566-6293317b769d','ec5272d8-6ee1-4542-a6a5-87dae5981abc');
INSERT INTO `course_teacher` VALUES ('82856908-594c-4d29-85ba-e04621313451','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `course_teacher` VALUES ('82856908-594c-4d29-85ba-e04621313451','ddf93b02-edd2-49a4-ba97-9c0a8d4dc01f');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `outTradeNo` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `tel` varchar(255) DEFAULT NULL COMMENT '手机号',
  `quantity` int DEFAULT NULL COMMENT '数量',
  `amount` int DEFAULT NULL COMMENT '总金额',
  `status` varchar(255) DEFAULT NULL COMMENT '支付状态',
  `organizationId` varchar(36) DEFAULT NULL,
  `productId` varchar(36) DEFAULT NULL,
  `studentId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1096e6a21a8fe57923546a2e9cc` (`organizationId`),
  KEY `FK_88991860e839c6153a7ec878d39` (`productId`),
  KEY `FK_b7a4e35eafdfef47c14e5ac5079` (`studentId`),
  CONSTRAINT `FK_1096e6a21a8fe57923546a2e9cc` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_88991860e839c6153a7ec878d39` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_b7a4e35eafdfef47c14e5ac5079` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `order` VALUES ('1c4e9f07-0295-4177-8b8f-73305e2632c9','2023-11-23 14:20:56',NULL,'2023-11-23 14:20:56',NULL,NULL,NULL,'0e2ea38ce37644ed8312c7c6b8e7d69c','13113663587',1,49,'SUCCESS','ac7c0445-2859-4f7c-a24a-a7cc6630eb51','2036cc99-1b92-441e-b295-69d668e92c86','8eb39a91-f4d7-4197-8a17-2b248cf1687b');
INSERT INTO `order` VALUES ('26f384af-4d2c-411b-994f-0839907fa7ab','2023-11-23 14:19:05',NULL,'2023-11-23 14:19:05',NULL,NULL,NULL,'660b4c1872f44560bc084417c23b0c0a','13113663587',1,499,'SUCCESS','f460201a-d6d3-442c-8fef-b13040d1c999','a6ef616b-cd18-4fdb-9032-22c7af2cf125','8eb39a91-f4d7-4197-8a17-2b248cf1687b');
INSERT INTO `order` VALUES ('375d7033-b188-47a5-ba43-89d9044a6486','2023-11-23 14:19:21',NULL,'2023-11-23 14:19:21',NULL,NULL,NULL,'634df8ec5861453c8fce7ac1f5476112','13113663587',1,499,'SUCCESS','f460201a-d6d3-442c-8fef-b13040d1c999','de09d663-280d-4f9c-81bb-1a9831c2fc82','8eb39a91-f4d7-4197-8a17-2b248cf1687b');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_image` (
  `id` varchar(36) NOT NULL,
  `url` text NOT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT 'remark',
  `orgIdForFrontId` varchar(36) DEFAULT NULL,
  `orgIdForRoomId` varchar(36) DEFAULT NULL,
  `orgIdForOtherId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_63d62c57996b1fc20a02e80c508` (`orgIdForFrontId`),
  KEY `FK_8bae051d6ee0069e520df974433` (`orgIdForRoomId`),
  KEY `FK_21c6620c4a108142b673c70697a` (`orgIdForOtherId`),
  CONSTRAINT `FK_21c6620c4a108142b673c70697a` FOREIGN KEY (`orgIdForOtherId`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_63d62c57996b1fc20a02e80c508` FOREIGN KEY (`orgIdForFrontId`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_8bae051d6ee0069e520df974433` FOREIGN KEY (`orgIdForRoomId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `org_image` VALUES ('06f7947c-cbbc-40ef-bba3-604795c2ad54','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'b332dccd-fcc8-4ba0-97cd-3f846898e1b9');
INSERT INTO `org_image` VALUES ('0d5f14a5-5df5-49eb-979b-2fa2f35fa9d5','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'11023b67-c5ca-46b6-970f-0b7bd1b3cca9',NULL,NULL);
INSERT INTO `org_image` VALUES ('13772b3b-24d5-43c1-87f0-017b204e0388','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699730861608-16.bmp',NULL,'e5fa56bd-bad1-429b-b570-fc47277df1ab',NULL,NULL);
INSERT INTO `org_image` VALUES ('14aef180-a1d6-47b0-a694-e5aa42efd801','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'0b105c8a-a482-48bd-b639-97626b9288ca',NULL,NULL);
INSERT INTO `org_image` VALUES ('15a93a12-5901-4310-9538-5208f8372c20','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700412160184-10.png',NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL,NULL);
INSERT INTO `org_image` VALUES ('162aaba9-ea1e-4095-baad-bde60455bfe7','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699767169947-22.png',NULL,'e5fa56bd-bad1-429b-b570-fc47277df1ab',NULL,NULL);
INSERT INTO `org_image` VALUES ('1c9e25bd-e8da-4255-84b7-1c7c518e8051','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'3c0b6728-ca34-44b2-8256-e3c06342c824');
INSERT INTO `org_image` VALUES ('226cc034-906d-4b6e-96da-6e8262b170ac','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699730861608-18.bmp',NULL,'e5fa56bd-bad1-429b-b570-fc47277df1ab',NULL,NULL);
INSERT INTO `org_image` VALUES ('26d9f26d-45bf-4f58-a6ca-9c7f38a8f87a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'cce8d66d-fc87-4330-a5b9-857901743a96');
INSERT INTO `org_image` VALUES ('27dc0a7e-69a3-4db3-85d7-307843d0a427','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'0b105c8a-a482-48bd-b639-97626b9288ca');
INSERT INTO `org_image` VALUES ('2a2946db-f840-470c-9816-5225708b55ab','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'11023b67-c5ca-46b6-970f-0b7bd1b3cca9',NULL);
INSERT INTO `org_image` VALUES ('2ca81f0c-c686-41a0-b18e-441f1b2ae137','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'a851c516-5aad-49c3-a3ca-a279fe59f854');
INSERT INTO `org_image` VALUES ('30ba03d6-ac64-4887-91b1-adecd5a38af6','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'79d623fa-e51d-4e6a-97b0-284f96e7ec40',NULL);
INSERT INTO `org_image` VALUES ('33789d57-55be-4199-8d96-68c7eb5dd225','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'4084e55e-5e1a-4b1d-b232-60e3493779f9',NULL);
INSERT INTO `org_image` VALUES ('397952e3-e7bf-4e85-842d-d2308d2eae4f','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'07ba650f-3f7a-4d48-9694-91dca05da649',NULL,NULL);
INSERT INTO `org_image` VALUES ('3f63c32a-9e10-4380-aa67-a431a410657e','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'99cc7e56-8c5d-4823-a23e-ed0df7a20c99',NULL);
INSERT INTO `org_image` VALUES ('40891b6a-9597-4bb2-8f4e-f04379425359','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'cc939bf2-1572-47a7-8a67-1251708c8437',NULL,NULL);
INSERT INTO `org_image` VALUES ('450ca705-69fc-45d8-9f0d-a1603b3d0963','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'46f40a91-1a1a-4297-b7ce-f5f98f4d91f9');
INSERT INTO `org_image` VALUES ('4ccb8149-7ddd-4557-84ca-2bced12919e3','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'b332dccd-fcc8-4ba0-97cd-3f846898e1b9',NULL,NULL);
INSERT INTO `org_image` VALUES ('4d0588e4-cd50-48ce-b63e-9d156f32c869','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'cce8d66d-fc87-4330-a5b9-857901743a96',NULL,NULL);
INSERT INTO `org_image` VALUES ('50c06944-6899-4f93-9b43-d69651ac157a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'79d623fa-e51d-4e6a-97b0-284f96e7ec40');
INSERT INTO `org_image` VALUES ('54327207-61fe-4a50-a136-a9f063f92a51','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'0b105c8a-a482-48bd-b639-97626b9288ca',NULL);
INSERT INTO `org_image` VALUES ('5f2c3040-1b53-44cd-95da-6bdc4b02a225','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'2301b843-9d52-4156-8f55-09f80fbb6752',NULL,NULL);
INSERT INTO `org_image` VALUES ('62f41f95-029d-48bc-9656-6f2148ab5ec5','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51',NULL,NULL);
INSERT INTO `org_image` VALUES ('6531028b-bc8e-4029-ac3e-5ed77d55f81d','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'7d3bb2a0-15d9-4101-ba2b-dc3d8f4062cd',NULL,NULL);
INSERT INTO `org_image` VALUES ('65429d8f-4bed-4d1d-8472-9b15e92ef38e','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `org_image` VALUES ('662c23c5-09af-4f7b-afe4-f678e28ba7d9','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'7d3bb2a0-15d9-4101-ba2b-dc3d8f4062cd');
INSERT INTO `org_image` VALUES ('6774d4dc-6aa7-4551-81fb-96feddd85e13','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'d2dd0515-7e54-42b4-8ae2-63016e4a6eb4');
INSERT INTO `org_image` VALUES ('67b9b571-eb1b-4535-a123-5fe4a98c28d5','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'4e3936b3-375d-4c66-85cb-a01724ae25b7',NULL,NULL);
INSERT INTO `org_image` VALUES ('68bcdbf9-1127-4e53-878f-60ee51c4ccc6','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'a851c516-5aad-49c3-a3ca-a279fe59f854',NULL);
INSERT INTO `org_image` VALUES ('71a0b85a-afa4-429e-ab41-279c2d48979a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'24192940-3bab-48af-a884-3bfaccffef85',NULL);
INSERT INTO `org_image` VALUES ('7d794e31-943a-43ec-9298-066765813c61','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'3c0b6728-ca34-44b2-8256-e3c06342c824',NULL,NULL);
INSERT INTO `org_image` VALUES ('7eedaa77-ba1a-4635-8d82-36e6dc055582','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'03e3449e-d42c-4d8f-9a45-ab232bd2d6f0');
INSERT INTO `org_image` VALUES ('7f7e3cd4-f44f-4853-a6af-68a599ba90b2','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'aa04ecea-ac33-46d5-afb1-e635f714ab99',NULL,NULL);
INSERT INTO `org_image` VALUES ('819e2778-a09e-4b8b-9f96-17b9c3a2d2f9','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'aa04ecea-ac33-46d5-afb1-e635f714ab99');
INSERT INTO `org_image` VALUES ('826f18c2-49d5-45cf-ad9e-cbb55778f77c','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'24192940-3bab-48af-a884-3bfaccffef85');
INSERT INTO `org_image` VALUES ('8956498a-3c5f-483e-a559-ecab82263ca9','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'108e0964-9fb9-4486-83ce-678237c12e2f',NULL);
INSERT INTO `org_image` VALUES ('8c2d36c2-9e69-439a-9ea9-46c76da966ef','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'03e3449e-d42c-4d8f-9a45-ab232bd2d6f0',NULL);
INSERT INTO `org_image` VALUES ('8e4b3141-5c7f-4a84-b8e8-e446591697d5','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'4e3936b3-375d-4c66-85cb-a01724ae25b7',NULL);
INSERT INTO `org_image` VALUES ('90544320-96c1-40eb-b6ec-398b1ad29d14','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'3c0b6728-ca34-44b2-8256-e3c06342c824',NULL);
INSERT INTO `org_image` VALUES ('919b6bf8-644a-4b89-ba5f-34d15db3455d','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'cce8d66d-fc87-4330-a5b9-857901743a96',NULL);
INSERT INTO `org_image` VALUES ('91bb76aa-0b43-4be3-8450-43c12f85627d','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'9c3b8d79-eae9-484f-acbb-34ec05290401');
INSERT INTO `org_image` VALUES ('96068b0c-7936-4a72-a262-25a6c54dd3dc','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'03e3449e-d42c-4d8f-9a45-ab232bd2d6f0',NULL,NULL);
INSERT INTO `org_image` VALUES ('964cfe5e-2bdd-47a6-a38d-48b9b02c9dca','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'4084e55e-5e1a-4b1d-b232-60e3493779f9');
INSERT INTO `org_image` VALUES ('97fd96ae-c4a9-4918-9353-2bd013d3251a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'99cc7e56-8c5d-4823-a23e-ed0df7a20c99',NULL,NULL);
INSERT INTO `org_image` VALUES ('9a5570f8-89f4-4ffb-b2ba-1aa974fb24bd','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'4e3936b3-375d-4c66-85cb-a01724ae25b7');
INSERT INTO `org_image` VALUES ('9ec69127-2835-48a0-8e40-a2d42a1afe20','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'2c74d6b2-0779-480b-acc5-3f83ea54c363',NULL,NULL);
INSERT INTO `org_image` VALUES ('a1afe1a1-4396-47c5-85ec-9f67bad8dbf2','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'d2dd0515-7e54-42b4-8ae2-63016e4a6eb4',NULL);
INSERT INTO `org_image` VALUES ('a3f3ad25-4501-48b8-9cf8-a758450bf6b8','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'108e0964-9fb9-4486-83ce-678237c12e2f',NULL,NULL);
INSERT INTO `org_image` VALUES ('a4212916-808c-41ef-b088-55dc825997b9','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'aa04ecea-ac33-46d5-afb1-e635f714ab99',NULL);
INSERT INTO `org_image` VALUES ('a70194e5-3338-41fe-98f1-7b54610949de','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'108e0964-9fb9-4486-83ce-678237c12e2f');
INSERT INTO `org_image` VALUES ('a73db10b-6692-41d7-8143-fca061bc3249','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'e372863f-411d-4396-b560-b5d9a0632132',NULL);
INSERT INTO `org_image` VALUES ('aa7f1feb-252f-47d7-8b13-312bb9970cf1','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'d08195bc-0be7-4e18-89c8-57136323551c',NULL,NULL);
INSERT INTO `org_image` VALUES ('addf05ce-34da-4e32-a6b2-95976e324ff7','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'2c74d6b2-0779-480b-acc5-3f83ea54c363');
INSERT INTO `org_image` VALUES ('ae8e2037-f8f8-4569-9407-c4dfa1d92b26','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'24192940-3bab-48af-a884-3bfaccffef85',NULL,NULL);
INSERT INTO `org_image` VALUES ('ae8ef496-0556-4480-9511-744d097ec98c','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'f34ef79a-3578-4835-99aa-7ba827d02354',NULL);
INSERT INTO `org_image` VALUES ('b298cc6d-1848-4f5e-9d05-893ea1eb9383','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'c8e896c0-cb7d-450e-9402-7f6680995549',NULL);
INSERT INTO `org_image` VALUES ('b4631b77-dcad-46be-8e71-8efdad820981','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'2301b843-9d52-4156-8f55-09f80fbb6752');
INSERT INTO `org_image` VALUES ('b4e401ed-3b74-47e6-9277-e315bc98e0f4','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'a851c516-5aad-49c3-a3ca-a279fe59f854',NULL,NULL);
INSERT INTO `org_image` VALUES ('b531b3e9-799a-4100-ae5f-ffda7693af18','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'7d3bb2a0-15d9-4101-ba2b-dc3d8f4062cd',NULL);
INSERT INTO `org_image` VALUES ('b57bf908-29a1-48f3-ace1-f18eb3d997d7','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700412160184-8.jpg',NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL,NULL);
INSERT INTO `org_image` VALUES ('b57e2e3c-7137-4f04-9d43-35cd9d749c4f','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'e372863f-411d-4396-b560-b5d9a0632132',NULL,NULL);
INSERT INTO `org_image` VALUES ('b6876309-a010-4e3e-be08-dfd784090044','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'46f40a91-1a1a-4297-b7ce-f5f98f4d91f9',NULL,NULL);
INSERT INTO `org_image` VALUES ('b92f75b4-b307-4c83-9977-af5404fe0457','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'e372863f-411d-4396-b560-b5d9a0632132');
INSERT INTO `org_image` VALUES ('bed0976e-4792-46aa-b69a-8c241f46102b','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'d08195bc-0be7-4e18-89c8-57136323551c');
INSERT INTO `org_image` VALUES ('c04ab545-b7a2-47e6-9aca-3c059981c6ea','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'9c3b8d79-eae9-484f-acbb-34ec05290401',NULL,NULL);
INSERT INTO `org_image` VALUES ('c0cea680-d173-4737-8c93-e2796768a838','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'80a62327-561f-427c-be34-bb4b108a8d56',NULL,NULL);
INSERT INTO `org_image` VALUES ('c6e98b32-49f9-43d9-b8b0-c04da23414a2','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'cc939bf2-1572-47a7-8a67-1251708c8437',NULL);
INSERT INTO `org_image` VALUES ('c802bc2c-596a-4971-97d3-5c110e13ae77','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'07ba650f-3f7a-4d48-9694-91dca05da649');
INSERT INTO `org_image` VALUES ('c916b30f-0bd1-43e0-badb-60091c56d9da','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'c8e896c0-cb7d-450e-9402-7f6680995549',NULL,NULL);
INSERT INTO `org_image` VALUES ('c9989dcf-afab-4cf0-bf8e-0780c9efdd89','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'d2dd0515-7e54-42b4-8ae2-63016e4a6eb4',NULL,NULL);
INSERT INTO `org_image` VALUES ('cbce48af-86e3-413e-ad6c-5f8ddc3bb605','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'b332dccd-fcc8-4ba0-97cd-3f846898e1b9',NULL);
INSERT INTO `org_image` VALUES ('cddea169-87f4-48ed-bdbf-e951ed2c6d4c','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'11023b67-c5ca-46b6-970f-0b7bd1b3cca9');
INSERT INTO `org_image` VALUES ('cf633a8c-0a88-4d2a-a739-7a9c348f94f3','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'46f40a91-1a1a-4297-b7ce-f5f98f4d91f9',NULL);
INSERT INTO `org_image` VALUES ('d1a3f92c-f6b0-4695-820e-6ed6f023b9ac','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `org_image` VALUES ('d53a3e4a-f296-4058-bfc5-a7593da1f92d','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'80a62327-561f-427c-be34-bb4b108a8d56',NULL);
INSERT INTO `org_image` VALUES ('d7dc3ce4-e33d-4df0-821c-2bd2175eff6b','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'f34ef79a-3578-4835-99aa-7ba827d02354');
INSERT INTO `org_image` VALUES ('d8999dd6-8dbd-45e9-a838-2d39e5089b96','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'aff525f8-6439-4115-858c-b0cf77da295f',NULL);
INSERT INTO `org_image` VALUES ('db86e0ba-c496-4f2b-b0c0-0dee2c035516','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'aff525f8-6439-4115-858c-b0cf77da295f');
INSERT INTO `org_image` VALUES ('dd7aef63-196e-413d-b4da-358b195e776a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'d08195bc-0be7-4e18-89c8-57136323551c',NULL);
INSERT INTO `org_image` VALUES ('e1e27406-5566-4736-8bc2-3062c7ab03f1','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'79d623fa-e51d-4e6a-97b0-284f96e7ec40',NULL,NULL);
INSERT INTO `org_image` VALUES ('e305500e-60d8-4992-8781-b114637db227','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'2c74d6b2-0779-480b-acc5-3f83ea54c363',NULL);
INSERT INTO `org_image` VALUES ('e3772909-00bc-46ee-8e21-f1844213342a','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'99cc7e56-8c5d-4823-a23e-ed0df7a20c99');
INSERT INTO `org_image` VALUES ('ebeb26b6-6444-44c6-93af-f2ae85693552','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'2301b843-9d52-4156-8f55-09f80fbb6752',NULL);
INSERT INTO `org_image` VALUES ('ed137f1f-2834-4b4f-8a8b-973dd30c0991','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'c8e896c0-cb7d-450e-9402-7f6680995549');
INSERT INTO `org_image` VALUES ('ee23f2e5-a171-4d94-9123-1c99cb498825','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'9c3b8d79-eae9-484f-acbb-34ec05290401',NULL);
INSERT INTO `org_image` VALUES ('ee554c25-8921-4bc8-bca3-b80e5942f694','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'4084e55e-5e1a-4b1d-b232-60e3493779f9',NULL,NULL);
INSERT INTO `org_image` VALUES ('f01c7522-0944-43b2-96f9-d9fc14738424','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51',NULL);
INSERT INTO `org_image` VALUES ('fa104b9b-1e4d-410f-b72a-6ad6886e5d6e','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,'07ba650f-3f7a-4d48-9694-91dca05da649',NULL);
INSERT INTO `org_image` VALUES ('fa48280f-a878-4641-8181-f7fd86577bca','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'80a62327-561f-427c-be34-bb4b108a8d56');
INSERT INTO `org_image` VALUES ('fbc7f9d6-ba42-498e-b365-05fbf11fd0bf','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700412160184-12.jpg',NULL,NULL,'f460201a-d6d3-442c-8fef-b13040d1c999',NULL);
INSERT INTO `org_image` VALUES ('fd040b88-3856-4406-b5ff-eadff235522f','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'aff525f8-6439-4115-858c-b0cf77da295f',NULL,NULL);
INSERT INTO `org_image` VALUES ('fd606b3e-d5f9-4d13-86b9-eb3c3892af92','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,'f34ef79a-3578-4835-99aa-7ba827d02354',NULL,NULL);
INSERT INTO `org_image` VALUES ('ffd39e2e-4e88-4af0-81d1-6b81d305a5de','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png',NULL,NULL,NULL,'cc939bf2-1572-47a7-8a67-1251708c8437');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `businessLicense` varchar(255) NOT NULL COMMENT '营业执照',
  `identityCardFrontImg` varchar(255) NOT NULL COMMENT '法人身份证正面',
  `identityCardBackImg` varchar(255) NOT NULL COMMENT '法人身份证反面',
  `tags` text COMMENT '标签 以，隔开',
  `description` text COMMENT '简介',
  `name` varchar(255) DEFAULT '' COMMENT '机构名',
  `logo` varchar(255) DEFAULT NULL COMMENT 'logo',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `organization` VALUES ('03e3449e-d42c-4d8f-9a45-ab232bd2d6f0','2023-11-10 19:47:27','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:45:23','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('07ba650f-3f7a-4d48-9694-91dca05da649','2023-11-10 19:47:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:42:40','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('0b105c8a-a482-48bd-b639-97626b9288ca','2023-11-10 19:48:09','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:48:05','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','华为点','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700378188595-43.jpeg','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('108e0964-9fb9-4486-83ce-678237c12e2f','2023-11-10 19:47:45','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:42:20','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('11023b67-c5ca-46b6-970f-0b7bd1b3cca9','2023-11-10 19:47:41','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:43:27','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('2301b843-9d52-4156-8f55-09f80fbb6752','2023-11-10 19:47:40','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:43:46','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('24192940-3bab-48af-a884-3bfaccffef85','2023-11-10 19:48:10','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:47:47','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','岗头点','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('2c74d6b2-0779-480b-acc5-3f83ea54c363','2023-11-10 19:47:36','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:44:57','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('3c0b6728-ca34-44b2-8256-e3c06342c824','2023-11-10 19:48:02','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:49:19','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','五和店','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700378188595-74.jpg','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('4084e55e-5e1a-4b1d-b232-60e3493779f9','2023-11-10 19:47:49','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:41:03','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('46f40a91-1a1a-4297-b7ce-f5f98f4d91f9','2023-11-10 19:47:52','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:39:45','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('4e3936b3-375d-4c66-85cb-a01724ae25b7','2023-11-10 19:47:37','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:44:10','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('79d623fa-e51d-4e6a-97b0-284f96e7ec40','2023-11-10 19:47:47','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:41:36','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','岗头点123456','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('7d3bb2a0-15d9-4101-ba2b-dc3d8f4062cd','2023-11-10 19:48:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:36:48','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('80a62327-561f-427c-be34-bb4b108a8d56','2023-11-10 19:47:50','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:40:40','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('99cc7e56-8c5d-4823-a23e-ed0df7a20c99','2023-11-10 19:48:11','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:47:36','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','Spring从入门到放弃','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('9c3b8d79-eae9-484f-acbb-34ec05290401','2023-11-10 19:47:54','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:39:19','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('a851c516-5aad-49c3-a3ca-a279fe59f854','2023-11-10 19:47:55','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:38:47','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('aa04ecea-ac33-46d5-afb1-e635f714ab99','2023-11-10 19:47:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:40:09','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','岗头点','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('ac7c0445-2859-4f7c-a24a-a7cc6630eb51','2023-11-10 19:48:00','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 10:38:09','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','java高级开发教程','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.44','22.69','18529501263');
INSERT INTO `organization` VALUES ('aff525f8-6439-4115-858c-b0cf77da295f','2023-11-10 19:48:13','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:47:17','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','react从入门到放弃','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('b332dccd-fcc8-4ba0-97cd-3f846898e1b9','2023-11-10 19:48:07','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:48:17','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','贝尔路店','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('c8e896c0-cb7d-450e-9402-7f6680995549','2023-11-10 19:47:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:37:22','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('cc939bf2-1572-47a7-8a67-1251708c8437','2023-11-10 19:47:46','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:41:57','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('cce8d66d-fc87-4330-a5b9-857901743a96','2023-11-10 19:48:04','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:49:03','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','盛平店','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700378188595-63.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('d08195bc-0be7-4e18-89c8-57136323551c','2023-11-10 19:48:06','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:48:53','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','西丽店','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700378188595-52.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('d2dd0515-7e54-42b4-8ae2-63016e4a6eb4','2023-11-10 19:47:57','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:38:10','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','18529501263');
INSERT INTO `organization` VALUES ('e372863f-411d-4396-b560-b5d9a0632132','2023-11-10 19:47:42','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:43:04','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','极客时间123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('e5fa56bd-bad1-429b-b570-fc47277df1ab','2023-11-11 19:34:30','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 09:46:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699730861608-10.bmp','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699730861608-12.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699767124080-12.png','免费WIFI','nestjs从入门到放弃','nestjs从入门到放弃','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699730861608-8.png','广东省深圳市龙岗区岗头社区502','114.31','22.73','13113663587');
INSERT INTO `organization` VALUES ('f34ef79a-3578-4835-99aa-7ba827d02354','2023-11-10 19:47:38','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:44:37','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','免费WIFI','nestjs从入门到实战','三金课堂123','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','广东省深圳市龙岗区岗头社区502','114.31','22.69','18529501263');
INSERT INTO `organization` VALUES ('f460201a-d6d3-442c-8fef-b13040d1c999','2023-11-10 19:48:14','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 08:37:42','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1698584849149.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699771369362-31.png','免费WIFI','nestjs从入门到实战','三金课堂1231111','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699767378561-15.png','北京市朝阳区九张街道2002','114.31','22.73','18529501263');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存总数',
  `curStock` int NOT NULL DEFAULT '0' COMMENT '当前库存',
  `buyNumber` int NOT NULL DEFAULT '0' COMMENT '卖出去多少',
  `limitBuyNumber` int NOT NULL DEFAULT '-1' COMMENT '每人限购数量',
  `coverUrl` varchar(255) NOT NULL COMMENT '封面图',
  `bannerUrl` varchar(255) NOT NULL COMMENT '头部banner图',
  `originalPrice` float NOT NULL COMMENT '原价',
  `preferentialPrice` float NOT NULL COMMENT '优惠价',
  `organizationId` varchar(36) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'UN_LIST' COMMENT '商品状态：上架，下架',
  `type` varchar(255) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  KEY `FK_32a4bdd261ec81f4ca6b3abe262` (`organizationId`),
  CONSTRAINT `FK_32a4bdd261ec81f4ca6b3abe262` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `product` VALUES ('01fa150e-d360-4903-b758-f728697dcb03','2023-11-17 16:26:54','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:35','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'初级音乐课1','七天音乐课，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-13.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-15.jpeg',1000,490,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('2036cc99-1b92-441e-b295-69d668e92c86','2023-11-15 13:39:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:20:56','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'七天英文课12314','七天英文课，每天一节，七天过期',100,98,2,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700041730372-17.bmp','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700041730372-19.bmp',100,49,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51','LIST','foreign');
INSERT INTO `product` VALUES ('292e6c0d-89b6-4271-8f51-60ce19e1d34a','2023-11-17 16:34:04','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:46','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'中级音乐课3','中级音乐课3，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-59.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-61.jpeg',1000,100,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('3e336e26-4d8a-45b2-b607-e5a5f15983d8','2023-11-17 16:34:52','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 13:56:56','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'高级音乐课','高级音乐课，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-67.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-69.jpeg',10000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('48e4a342-9d4a-463c-b59b-90ad259140a0','2023-11-17 16:25:24','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:42:21','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'初级音乐课','七天音乐课，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700735088142-10.bmp','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-9.jpeg',100,49,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('61658314-c6f4-4080-a48a-f181e67161dd','2023-11-17 16:35:26','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 13:56:55','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'高级音乐课1','高级音乐课1，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-73.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-75.jpeg',10000,490,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('999fbafb-4213-41e5-8b5f-7b790181fddb','2023-11-17 16:29:25','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:42','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'初级音乐课4','初级音乐课4，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-35.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-37.jpeg',10000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('a6ef616b-cd18-4fdb-9032-22c7af2cf125','2023-11-17 16:36:00','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:19:05','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'高级音乐课2','高级音乐课2，每天一节，七天过期',100,98,2,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-79.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-81.jpeg',10000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('c80a25b2-b762-4a75-b1c0-41f3bde1d6ea','2023-11-17 16:27:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:36','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'初级音乐课2','初级音乐课2，每天一节，七天过期',1000,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-19.png','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-21.png',1000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('c8365dcb-3986-483f-8e4e-67dd9e9038e9','2023-11-17 16:32:02','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:43','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'中级音乐课1','中级音乐课1，每天一节，七天过期',10,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-47.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-49.jpeg',10000,4990,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('ce033252-1eba-45f4-87b5-13bc98484ecb','2023-11-17 16:33:14','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:45','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'中级音乐课2','中级音乐课2，每天一节，七天过期',15,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-53.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-55.jpeg',1000,49,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('dbce1c4d-017a-4a80-a020-7e19a70674f3','2023-11-17 16:28:49','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:41','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'初级音乐课3','初级音乐课3，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-29.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-31.jpeg',999,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('de09d663-280d-4f9c-81bb-1a9831c2fc82','2023-11-17 16:36:33','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:19:22','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'高级音乐课3','高级音乐课3，每天一节，七天过期',100,98,2,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-85.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-87.jpeg',10000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
INSERT INTO `product` VALUES ('e460e9cc-f83e-466f-a3be-e42fb983c909','2023-11-17 16:31:19','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-19 08:07:43','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0',NULL,NULL,'中级音乐课','中级音乐课，每天一节，七天过期',100,100,0,1,'https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-41.jpeg','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700237465940-43.jpeg',1000,499,'f460201a-d6d3-442c-8fef-b13040d1c999','LIST','music');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_card` (
  `productId` varchar(36) NOT NULL,
  `cardId` varchar(36) NOT NULL,
  PRIMARY KEY (`productId`,`cardId`),
  KEY `IDX_ca2e039254a7910e13e7a4fdc0` (`productId`),
  KEY `IDX_82f80b472ac8665b1235da4bac` (`cardId`),
  CONSTRAINT `FK_82f80b472ac8665b1235da4bacc` FOREIGN KEY (`cardId`) REFERENCES `card` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ca2e039254a7910e13e7a4fdc04` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `product_card` VALUES ('2036cc99-1b92-441e-b295-69d668e92c86','5c40b88d-9788-4c65-aa32-7faefdc731ed');
INSERT INTO `product_card` VALUES ('2036cc99-1b92-441e-b295-69d668e92c86','c7e7121b-62cd-4003-b3f1-d8c8cdf3ad4a');
INSERT INTO `product_card` VALUES ('a6ef616b-cd18-4fdb-9032-22c7af2cf125','46eb9d66-d1c7-4229-a9c2-4182eabc43c6');
INSERT INTO `product_card` VALUES ('a6ef616b-cd18-4fdb-9032-22c7af2cf125','e6c06bb4-10da-491c-b615-07d308c291d7');
INSERT INTO `product_card` VALUES ('de09d663-280d-4f9c-81bb-1a9831c2fc82','139308c9-9df1-43d7-a8ea-54340c52215f');
INSERT INTO `product_card` VALUES ('de09d663-280d-4f9c-81bb-1a9831c2fc82','2b09b671-e1af-4829-93a1-086dec29319b');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `schoolDay` timestamp NULL DEFAULT NULL COMMENT '上课日期',
  `startTime` varchar(255) DEFAULT NULL COMMENT '开始时间',
  `endTime` varchar(255) DEFAULT NULL COMMENT '结束时间',
  `limitNumber` int DEFAULT NULL COMMENT '人数限制',
  `organizationId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `teacherId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1ce22231dd9c2383052422529e0` (`organizationId`),
  KEY `FK_be84bbdf75cfb618d393a7f1194` (`courseId`),
  KEY `FK_7c4e49233bde738d80d6eae6805` (`teacherId`),
  CONSTRAINT `FK_1ce22231dd9c2383052422529e0` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_7c4e49233bde738d80d6eae6805` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FK_be84bbdf75cfb618d393a7f1194` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `schedule` VALUES ('006287a2-eb6d-47dc-bd2f-e24772b2a20a','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-22 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','82856908-594c-4d29-85ba-e04621313451','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('01878dd8-fbdc-4072-8c7e-834dd03ebe06','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-24 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('0667c1a8-44ed-4841-b0ac-67fcfc16771f','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-23 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('0a1abdbc-4d91-484d-9294-925219f8b8c1','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-22 16:00:00','14:00:00','16:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','82856908-594c-4d29-85ba-e04621313451','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('35defa4a-9137-4aee-a677-6dd63ff01692','2023-11-23 14:32:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:32:01',NULL,NULL,NULL,'2023-11-22 16:00:00','08:30:00','11:30:00',33,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51','38f30967-3a9e-485a-8942-e47e37b526e2','823903cb-f320-47bf-903d-3a5a48afa028');
INSERT INTO `schedule` VALUES ('3698768c-7841-408d-9c6f-cc84ae8e72f6','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-22 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('3d438812-bca8-4fe2-9b39-31e675519294','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-24 16:00:00','12:00:00','12:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('4038455e-29a1-400e-b3d1-684fd06355bd','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-25 16:00:00','12:00:00','12:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('4bba1073-2e17-47cf-b6b9-8303991ce4ad','2023-11-23 14:32:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:32:01',NULL,NULL,NULL,'2023-11-23 16:00:00','08:30:00','11:30:00',33,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51','38f30967-3a9e-485a-8942-e47e37b526e2','823903cb-f320-47bf-903d-3a5a48afa028');
INSERT INTO `schedule` VALUES ('4d8205ca-56da-4cec-8513-6e3530200743','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-23 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','82856908-594c-4d29-85ba-e04621313451','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('63dc5b9e-034a-4554-8073-0665d8c993bc','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-23 16:00:00','12:00:00','12:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('68cd1f7b-5141-49cf-bd00-6ce3c38e6148','2023-11-23 10:24:33','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:24:33',NULL,NULL,NULL,'2023-11-25 16:00:00','15:00:00','17:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('7902a0c3-3b05-45a0-a412-031fce532ca9','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-23 16:00:00','14:00:00','16:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','82856908-594c-4d29-85ba-e04621313451','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('7f97675e-d23f-4306-b154-5ae4a6a8302e','2023-11-23 10:24:33','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:24:33',NULL,NULL,NULL,'2023-11-22 16:00:00','15:00:00','17:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('99d8d2a0-b00e-4156-a7d0-d8775756d5d9','2023-11-23 14:32:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:32:01',NULL,NULL,NULL,'2023-11-23 16:00:00','15:00:00','17:30:00',33,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51','38f30967-3a9e-485a-8942-e47e37b526e2','823903cb-f320-47bf-903d-3a5a48afa028');
INSERT INTO `schedule` VALUES ('b8274a15-94f3-4392-a452-4f229ed1da33','2023-11-23 10:24:33','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:24:33',NULL,NULL,NULL,'2023-11-23 16:00:00','15:00:00','17:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('cc23fb56-bc65-4929-a4aa-fba041064c36','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-22 16:00:00','12:00:00','12:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('deb9a177-0214-460c-855c-3c3ab619dbe1','2023-11-23 10:07:59','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:07:59',NULL,NULL,NULL,'2023-11-25 16:00:00','09:00:00','11:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('e2cbfb86-a6a3-44fe-ac86-cbd93cc14d8e','2023-11-23 10:24:33','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 10:24:33',NULL,NULL,NULL,'2023-11-24 16:00:00','15:00:00','17:30:00',30,'f460201a-d6d3-442c-8fef-b13040d1c999','52a02b6c-dbda-4c9b-a566-6293317b769d','cb23fa30-847c-4dee-b0e8-bc6f892d2f5f');
INSERT INTO `schedule` VALUES ('fa70c796-58b1-431f-908a-a13bcc1940c5','2023-11-23 14:32:01','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 14:32:01',NULL,NULL,NULL,'2023-11-22 16:00:00','15:00:00','17:30:00',33,'ac7c0445-2859-4f7c-a24a-a7cc6630eb51','38f30967-3a9e-485a-8942-e47e37b526e2','823903cb-f320-47bf-903d-3a5a48afa028');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduleRecord` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `subscribeTime` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `studentId` varchar(36) DEFAULT NULL,
  `cardRecordId` varchar(36) DEFAULT NULL,
  `scheduleId` varchar(36) DEFAULT NULL,
  `courseId` varchar(36) DEFAULT NULL,
  `organizationId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2b28a392e6b1b5e9077a6c32b7a` (`studentId`),
  KEY `FK_041b8d2ad5110d1dc56caace5cd` (`cardRecordId`),
  KEY `FK_3fab35448f46e728fb093330d3a` (`scheduleId`),
  KEY `FK_0970ae770a2c6250bac8d8150f3` (`courseId`),
  KEY `FK_e316ffa31df983e349d0445368a` (`organizationId`),
  CONSTRAINT `FK_041b8d2ad5110d1dc56caace5cd` FOREIGN KEY (`cardRecordId`) REFERENCES `card_record` (`id`),
  CONSTRAINT `FK_0970ae770a2c6250bac8d8150f3` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`),
  CONSTRAINT `FK_2b28a392e6b1b5e9077a6c32b7a` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `FK_3fab35448f46e728fb093330d3a` FOREIGN KEY (`scheduleId`) REFERENCES `schedule` (`id`),
  CONSTRAINT `FK_e316ffa31df983e349d0445368a` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `scheduleRecord` VALUES ('07d23e7d-662d-47ce-8b08-b387e7b5dd4b','2023-11-23 14:43:46',NULL,'2023-11-23 14:43:46',NULL,NULL,NULL,'2023-11-23 14:43:46',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','0950a39d-0672-4b48-be1f-3c4137ceb3e7','99d8d2a0-b00e-4156-a7d0-d8775756d5d9','38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `scheduleRecord` VALUES ('11485f39-24d3-4dac-8dea-6ce97c438c36','2023-11-23 14:45:29',NULL,'2023-11-23 14:47:01','8eb39a91-f4d7-4197-8a17-2b248cf1687b',NULL,NULL,'2023-11-23 14:45:29','CANCEL','8eb39a91-f4d7-4197-8a17-2b248cf1687b','e1f9784f-eb9c-4747-828b-c0042b818e3f','63dc5b9e-034a-4554-8073-0665d8c993bc','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('2c69282f-ccee-4e82-b893-c2716692bb1c','2023-11-23 14:45:49',NULL,'2023-11-23 14:45:49',NULL,NULL,NULL,'2023-11-23 14:45:49',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','e1f9784f-eb9c-4747-828b-c0042b818e3f','e2cbfb86-a6a3-44fe-ac86-cbd93cc14d8e','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('46204049-dd57-42a1-b204-f3e04a8dcc2e','2023-11-23 14:44:26',NULL,'2023-11-23 14:44:26',NULL,NULL,NULL,'2023-11-23 14:44:26',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','86f29728-0b32-4859-af97-f15baf5744fd','4d8205ca-56da-4cec-8513-6e3530200743','82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('59424e14-6494-46a5-8c84-5ec3425be85d','2023-11-23 14:44:59',NULL,'2023-11-23 14:44:59',NULL,NULL,NULL,'2023-11-23 14:44:59',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','644f008c-b3df-4257-a1c0-701d9b3d5144','0667c1a8-44ed-4841-b0ac-67fcfc16771f','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('7e704ff7-826e-469b-9a7b-9268c9f471c4','2023-11-23 14:42:42',NULL,'2023-11-23 14:42:42',NULL,NULL,NULL,'2023-11-23 14:42:42',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','d4510801-82a6-4a09-a5a3-b52969e9568d','4bba1073-2e17-47cf-b6b9-8303991ce4ad','38f30967-3a9e-485a-8942-e47e37b526e2','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `scheduleRecord` VALUES ('861c6ea4-73e2-4448-a4eb-3694edcf1669','2023-11-23 14:44:37',NULL,'2023-11-23 14:44:37',NULL,NULL,NULL,'2023-11-23 14:44:37',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','c134fdfb-6b1c-49cc-9e8c-523d6569a644','7902a0c3-3b05-45a0-a412-031fce532ca9','82856908-594c-4d29-85ba-e04621313451','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('9aa645cc-13dd-42b5-a5ab-a53582718199','2023-11-23 14:45:20',NULL,'2023-11-23 14:45:20',NULL,NULL,NULL,'2023-11-23 14:45:20',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','e1f9784f-eb9c-4747-828b-c0042b818e3f','b8274a15-94f3-4392-a452-4f229ed1da33','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `scheduleRecord` VALUES ('c6a3b29d-eaf2-4518-89d9-f1f7f4f1cd60','2023-11-23 14:46:07',NULL,'2023-11-23 14:46:07',NULL,NULL,NULL,'2023-11-23 14:46:07',NULL,'8eb39a91-f4d7-4197-8a17-2b248cf1687b','644f008c-b3df-4257-a1c0-701d9b3d5144','01878dd8-fbdc-4072-8c7e-834dd03ebe06','52a02b6c-dbda-4c9b-a566-6293317b769d','f460201a-d6d3-442c-8fef-b13040d1c999');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `tel` varchar(255) DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `account` varchar(255) NOT NULL COMMENT '账户',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `student` VALUES ('1b9c71f6-8c47-4041-8919-16d2d7e828ba','2023-11-08 19:21:06',NULL,'2023-11-08 19:21:06',NULL,NULL,NULL,'',NULL,NULL,'18a7c4f8b3dafd3bebb3e8dc1a50a2b1','1111w1111',NULL);
INSERT INTO `student` VALUES ('2cfc8ca3-5334-4fca-b08d-6c988f837dde','2023-11-08 19:20:24',NULL,'2023-11-08 19:20:24',NULL,NULL,NULL,'',NULL,NULL,'18a7c4f8b3dafd3bebb3e8dc1a50a2b1','1111q312',NULL);
INSERT INTO `student` VALUES ('3e8e2436-240c-4b1f-bf53-b97536c241d3','2023-11-08 19:19:13',NULL,'2023-11-08 19:19:13',NULL,NULL,NULL,'',NULL,NULL,'18a7c4f8b3dafd3bebb3e8dc1a50a2b1','1111w11231',NULL);
INSERT INTO `student` VALUES ('8eb39a91-f4d7-4197-8a17-2b248cf1687b','2023-11-16 10:40:02',NULL,'2023-11-16 10:40:02',NULL,NULL,NULL,'三金课堂','13113663587','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/1700552375786.jpeg','146a71457d517afc3aa0a6e1e813202c','sjkt540',NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `photoUrl` varchar(255) DEFAULT NULL COMMENT '照片',
  `teacherTime` int DEFAULT NULL COMMENT '教龄',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `seniority` varchar(255) DEFAULT NULL COMMENT '资历',
  `experience` varchar(255) DEFAULT NULL COMMENT '职业经验',
  `carryPrize` varchar(255) DEFAULT NULL COMMENT '获奖经历',
  `tags` varchar(255) DEFAULT NULL COMMENT '风格标签，以，隔开',
  `organizationId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6280550a4168d9593fee4b0c946` (`organizationId`),
  CONSTRAINT `FK_6280550a4168d9593fee4b0c946` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `teacher` VALUES ('823903cb-f320-47bf-903d-3a5a48afa028','2023-11-21 09:18:50','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-21 09:18:50',NULL,NULL,NULL,'高明瑞','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700558018362-5.png',30,'大学本科','骨灰级','骨灰级优秀教师','骨灰级优秀教师','骨灰级','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `teacher` VALUES ('cb23fa30-847c-4dee-b0e8-bc6f892d2f5f','2023-11-23 09:47:27','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 09:47:27',NULL,NULL,NULL,'杨凤','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700728470804-173.jpeg',30,'大学本科','骨灰级','讲课通俗易懂','讲课通俗易懂','讲课通俗易懂','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `teacher` VALUES ('d573d1b8-ade9-4128-95af-736533cdac41','2023-11-21 09:17:51','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-21 09:17:51',NULL,NULL,NULL,'李老师','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700558018362-2.jpeg',20,'大学本科','专业','优秀教师','优秀教师','数学','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `teacher` VALUES ('ddf93b02-edd2-49a4-ba97-9c0a8d4dc01f','2023-11-23 09:48:16','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 09:48:16',NULL,NULL,NULL,'高明瑞','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700728470804-176.jpeg',30,'大学本科','骨灰级','讲课通俗易懂','讲课通俗易懂','讲课通俗易懂','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `teacher` VALUES ('e9361afe-329d-4987-94a6-a00bed62ae3f','2023-11-21 09:19:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-21 09:19:44',NULL,NULL,NULL,'杨凤','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700558018362-8.jpg',10,'大学本科','10','新人优秀教师','新人优秀教师','新人教师','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `teacher` VALUES ('ec5272d8-6ee1-4542-a6a5-87dae5981abc','2023-11-23 09:46:44','a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','2023-11-23 09:46:44',NULL,NULL,NULL,'李老师','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1700728470804-170.bmp',20,'大学本科','专业','讲课通俗易懂','讲课通俗易懂','讲课通俗易懂','f460201a-d6d3-442c-8fef-b13040d1c999');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '昵称',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述信息',
  `tel` varchar(255) DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `codeCreateTimeAt` datetime DEFAULT NULL COMMENT '验证码生成时间',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `user` VALUES ('5b276c5a-af22-4fe4-89a2-c3aaa8a00b8a','水滴超级管理员','管理员','8800888','123456',NULL,NULL,NULL);
INSERT INTO `user` VALUES ('71b5ab7a-05ca-4186-887b-1577a94a9dd2','水滴超级管理员','管理员','8800888','123456',NULL,NULL,NULL);
INSERT INTO `user` VALUES ('82b51c20-7359-474d-b60a-a7c724cd4055','三金课堂2024','asfkgopaksopdfg','18529501263',NULL,'1673','2023-11-30 06:12:37','');
INSERT INTO `user` VALUES ('9632828e-8383-40b0-abab-d6b771b768a5','水滴超级管理员','管理员','8800888','123456',NULL,NULL,NULL);
INSERT INTO `user` VALUES ('a189bcc8-7be5-45d4-a83e-c879130531b0','水滴超级管理员','管理员','8800888','123456',NULL,NULL,NULL);
INSERT INTO `user` VALUES ('a55009ad-9114-47d0-b2e6-f2c4ad4cb7a0','三金课堂2022','nestjs从入门到放弃','13113663587',NULL,'8343','2023-12-15 14:57:12','https://sjkt-water-assets.oss-cn-shanghai.aliyuncs.com/images/rc-upload-1699646893055-3.bmp');
INSERT INTO `user` VALUES ('ced58e09-5dbb-4a53-b373-0ca2f8d0a124','水滴超级管理员','管理员','8800888','123456',NULL,NULL,NULL);
INSERT INTO `user` VALUES ('d9ea8b6f-706c-48fb-98ee-0a46e1f4636e','水滴超级管理员11111','管理员','8800888','123456',NULL,NULL,NULL);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wxorder` (
  `id` varchar(36) NOT NULL,
  `createdAt` timestamp NOT NULL COMMENT '创建时间',
  `createdBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updatedAt` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `updatedBy` varchar(255) DEFAULT NULL COMMENT '修改者',
  `deletedAt` datetime(6) DEFAULT NULL,
  `deletedBy` varchar(255) DEFAULT NULL COMMENT '删除者',
  `appid` varchar(255) NOT NULL COMMENT '微信公众号ID',
  `mchid` varchar(255) NOT NULL COMMENT '商户号',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `trade_type` varchar(255) DEFAULT NULL COMMENT '交易类型',
  `trade_state` varchar(255) DEFAULT NULL COMMENT '交易状态',
  `bank_type` varchar(255) DEFAULT NULL COMMENT '银行',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT '微信支付订单号',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '商户订单号',
  `attach` varchar(255) DEFAULT NULL COMMENT '附加数据',
  `trade_state_desc` varchar(255) DEFAULT NULL COMMENT '交易状态描述',
  `success_time` varchar(255) DEFAULT NULL COMMENT '支付完成时间',
  `total` int DEFAULT NULL COMMENT '订单总金额，单位为分',
  `payer_total` int DEFAULT NULL COMMENT '用户支付金额，单位为分',
  `currency` varchar(255) DEFAULT NULL COMMENT 'CNY：人民币，境内商户号仅支持人民币',
  `payer_currency` varchar(255) DEFAULT NULL COMMENT '用户支付币种，示例值：CNY',
  `organizationId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_775257450dafec7fdd861ac20b2` (`organizationId`),
  CONSTRAINT `FK_775257450dafec7fdd861ac20b2` FOREIGN KEY (`organizationId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `wxorder` VALUES ('30b47479-fa15-453e-8f93-155bc34aa221','2023-11-23 14:20:56',NULL,'2023-11-23 14:20:56',NULL,NULL,NULL,'wx3232332323332','322323233','wewewewewewewewewewewewewewe','JSAPI','SUCCESS','OTHERS','transaction0e2ea38ce37644ed8312c7c6b8e7d69c','0e2ea38ce37644ed8312c7c6b8e7d69c','','支付成功','2023-05-23T00:48:25+08:00',49,49,'CNY','CNY','ac7c0445-2859-4f7c-a24a-a7cc6630eb51');
INSERT INTO `wxorder` VALUES ('4e7fe840-4d41-41d5-a9f5-843730e2077f','2023-11-23 14:19:21',NULL,'2023-11-23 14:19:21',NULL,NULL,NULL,'wx3232332323332','322323233','wewewewewewewewewewewewewewe','JSAPI','SUCCESS','OTHERS','transaction634df8ec5861453c8fce7ac1f5476112','634df8ec5861453c8fce7ac1f5476112','','支付成功','2023-05-23T00:48:25+08:00',499,499,'CNY','CNY','f460201a-d6d3-442c-8fef-b13040d1c999');
INSERT INTO `wxorder` VALUES ('67e42ad4-9586-4d5d-9254-7c61efb180b2','2023-11-23 14:19:05',NULL,'2023-11-23 14:19:05',NULL,NULL,NULL,'wx3232332323332','322323233','wewewewewewewewewewewewewewe','JSAPI','SUCCESS','OTHERS','transaction660b4c1872f44560bc084417c23b0c0a','660b4c1872f44560bc084417c23b0c0a','','支付成功','2023-05-23T00:48:25+08:00',499,499,'CNY','CNY','f460201a-d6d3-442c-8fef-b13040d1c999');
