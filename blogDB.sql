/*
 Navicat Premium Data Transfer

 Source Server         : difu
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 17/10/2022 11:55:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(0) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (98);

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(0) NOT NULL,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `create_time` datetime(0) DEFAULT NULL,
  `first_picturel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `update_dime` datetime(0) DEFAULT NULL,
  `views` int(0) DEFAULT NULL,
  `type_id` bigint(0) DEFAULT NULL,
  `user_id` bigint(0) DEFAULT NULL,
  `discription` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (44, b'1', b'1', '相信很多小伙伴编写或运行他人代码时，都会丈二和尚，摸不着头脑，友善的可视化工具出现啦！\r\n\r\n代码在线可视化工具网址：https://pythontutor.com\r\n\r\n\r\n\r\n可视化代码执行\r\n\r\n学习Python, Java, C, c++， JavaScript和Ruby\r\n\r\nPython导师帮助人们克服学习编程的一个基本障碍:理解当计算机运行每一行代码时发生了什么。你可以使用它来编写Python, Java, C, c++， JavaScript和Ruby代码在你的web浏览器中，并看到其执行的可视化步骤。\r\n\r\n相关服务:Java辅导、C辅导、c++辅导、JavaScript辅导、Ruby辅导\r\n\r\n超过180个国家的超过1000万人使用Python Tutor可视化了超过1亿段代码，通常作为教科书、讲座和在线教程的补充。据我们所知，它是计算机教育中应用最广泛的程序可视化工具。\r\n\r\n正如官方文件所说可视化工具支持多种语言在线代码可视化。那么我们赶快进入正题吧！\r\n\r\n\r\n\r\n\r\n\r\n 前者需要预先输入需要可视化代码，后者可现场进行录入代码进行可视化。\r\n\r\n\r\n\r\n 默认是直接执行结果，小伙伴可点击首歩，按上一步或下一步来查看代码执行步骤情况。\r\n\r\n我是Python界的一枚小学生，热心分享自身所学编程知识！\r\n————————————————\r\n版权声明：本文为CSDN博主「漫步桔田」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/u013157570/article/details/122225584', '2022-06-24 04:22:57', 'https://picsum.photos/id/1005/800/600', '原创', b'1', b'1', b'1', '相信很多小伙伴编写或运行他人代码时', '2022-06-24 04:22:57', 0, 1, 1, '超过180个国家的超过1000万人使用Python Tutor可视化了超过1亿段代码，通常作为教科书、讲座和在线教程的补充。据我们所知，它是计算机教育中应用最广泛的程序可视化工具。');
INSERT INTO `t_blog` VALUES (45, b'1', b'1', ' 目    录\r\n\r\n一、系统要求\r\n\r\n二、用户信息\r\n\r\n三、管理系统\r\n\r\n一、系统要求\r\n学生管理系统程序，应具备以下几点功能：\r\n1.用户认证\r\n系统用户分为学生、教师、管理员三个角色，系统可根据不同用户角色权限进入不同界面，所有用户角色需要通过身份验证才能登录系统进行操作。\r\n\r\n2.学生登录\r\n主要实现学生登录系统可查看本人基本信息、考试成绩、修改密码。\r\n\r\n3.教师登录\r\n主要实现教师登录系统可查看本人基本信息、学生信息、学生成绩、修改密码。\r\n\r\n4.管理登录\r\n主要实现管理员登录系统可查看本人基本信息、修改本人信息、查询老师信息、修改老师信息、录入老师信息、删除老师信息、查询学生信息、修改学生信息、录入学生信息、删除学生信息、查询考试成绩、修改考试成绩、录入考试成绩、删除考试成绩、修改登录密码。\r\n\r\n5.退出系统\r\n所以角色操作完成可退出系统登录。\r\n\r\n二、用户信息\r\n1.管理信息\r\n\r\n{\r\n    \"123456\": [\r\n        \"111111\",\r\n        \"漫漫\",\r\n        \"男\",\r\n        32,\r\n        \"12312300001\"\r\n    ],\r\n    \"123452\": [\r\n        \"111111\",\r\n        \"桔桔\",\r\n        \"女\",\r\n        27,\r\n        \"12312300002\"\r\n    ],\r\n    \"123453\": [\r\n        \"111111\",\r\n        \"可可\",\r\n        \"女\",\r\n        25,\r\n        \"12312300003\"\r\n    ]\r\n}\r\n2.教师信息\r\n\r\n{\r\n    \"123001\": [\r\n        \"111111\",\r\n        \"闻闻\",\r\n        \"女\",\r\n        27,\r\n        \"12300000001\",\r\n        {\r\n            \"Python一年级\": [\r\n                \"Python一班\",\r\n                \"Python二班\"\r\n            ]\r\n        }\r\n    ],\r\n    \"123002\": [\r\n        \"111111\",\r\n        \"雯雯\",\r\n        \"女\",\r\n        25,\r\n        \"12300000002\",\r\n        {\r\n            \"Python二年级\": [\r\n                \"Python一班\",\r\n                \"Python二班\"\r\n            ]\r\n        }\r\n    ],\r\n    \"123003\": [\r\n        \"111111\",\r\n        \"贝贝\",\r\n        \"女\",\r\n        28,\r\n        \"12300000003\",\r\n        {\r\n            \"Java一年级\": [\r\n                \"Java一班\",\r\n                \"Java二班\"\r\n            ],\r\n            \"Java二年级\": [\r\n                \"Java一班\",\r\n                \"Java二班\"\r\n            ]\r\n        }\r\n    ]\r\n}\r\n3.学生信息\r\n\r\n{\r\n    \"210101\": [\r\n        \"121212\",\r\n        \"Python\",\r\n        \"Python一年级\",\r\n        \"Python一班\",\r\n        \"路飞\",\r\n        \"男\",\r\n        21,\r\n        \"2000-01-01\",\r\n        \"13901230001\"\r\n    ],\r\n    \"210102\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python一年级\",\r\n        \"Python一班\",\r\n        \"女帝\",\r\n        \"女\",\r\n        18,\r\n        \"2003-02-01\",\r\n        \"13901230002\"\r\n    ],\r\n    \"210103\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python一年级\",\r\n        \"Python二班\",\r\n        \"小新\",\r\n        \"男\",\r\n        21,\r\n        \"2000-02-14\",\r\n        \"13901230003\"\r\n    ],\r\n    \"210104\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python一年级\",\r\n        \"Python二班\",\r\n        \"妮妮\",\r\n        \"女\",\r\n        18,\r\n        \"2003-04-15\",\r\n        \"13901230004\"\r\n    ],\r\n    \"210105\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python二年级\",\r\n        \"Python一班\",\r\n        \"大熊\",\r\n        \"男\",\r\n        21,\r\n        \"2000-05-01\",\r\n        \"13901230005\"\r\n    ],\r\n    \"210106\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python二年级\",\r\n        \"Python一班\",\r\n        \"静香\",\r\n        \"女\",\r\n        18,\r\n        \"2003-06-01\",\r\n        \"13901230006\"\r\n    ],\r\n    \"210107\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python二年级\",\r\n        \"Python二班\",\r\n        \"新一\",\r\n        \"男\",\r\n        21,\r\n        \"2000-06-01\",\r\n        \"13901230007\"\r\n    ],\r\n    \"210108\": [\r\n        \"111111\",\r\n        \"Python\",\r\n        \"Python二年级\",\r\n        \"Python二班\",\r\n        \"小兰\",\r\n        \"女\",\r\n        18,\r\n        \"2003-07-01\",\r\n        \"13901230008\"\r\n    ],\r\n    \"210201\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java一年级\",\r\n        \"Java一班\",\r\n        \"鸣人\",\r\n        \"男\",\r\n        21,\r\n        \"2000-01-01\",\r\n        \"13911230001\"\r\n    ],\r\n    \"210202\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java一年级\",\r\n        \"Java一班\",\r\n        \"雏田\",\r\n        \"女\",\r\n        18,\r\n        \"2003-02-01\",\r\n        \"13911230002\"\r\n    ],\r\n    \"210203\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java一年级\",\r\n        \"Java二班\",\r\n        \"唐三\",\r\n        \"男\",\r\n        21,\r\n        \"2000-03-01\",\r\n        \"13911230003\"\r\n    ],\r\n    \"210204\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java一年级\",\r\n        \"Java二班\",\r\n        \"小舞\",\r\n        \"女\",\r\n        18,\r\n        \"2003-04-15\",\r\n        \"13911230004\"\r\n    ],\r\n    \"210205\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java二年级\",\r\n        \"Java一班\",\r\n        \"萧炎\",\r\n        \"男\",\r\n        21,\r\n        \"2000-03-14\",\r\n        \"13911230005\"\r\n    ],\r\n    \"210206\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java二年级\",\r\n        \"Java一班\",\r\n        \"薰儿\",\r\n        \"女\",\r\n        18,\r\n        \"2003-06-06\",\r\n        \"13911230006\"\r\n    ],\r\n    \"210207\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java二年级\",\r\n        \"Java二班\",\r\n        \"石昊\",\r\n        \"男\",\r\n        18,\r\n        \"2000-05-06\",\r\n        \"13911230007\"\r\n    ],\r\n    \"210208\": [\r\n        \"111111\",\r\n        \"Java\",\r\n        \"Java二年级\",\r\n        \"Java二班\",\r\n        \"云曦\",\r\n        \"女\",\r\n        18,\r\n        \"2003-08-08\",\r\n        \"13911230008\"\r\n    ]\r\n}\r\n4.考试成绩\r\n\r\n{\r\n    \"210101\": {\r\n        \"语文\": 88,\r\n        \"数学\": 87,\r\n        \"英语\": 90\r\n    },\r\n    \"210102\": {\r\n        \"语文\": 81,\r\n        \"数学\": 85,\r\n        \"英语\": 86\r\n    },\r\n    \"210103\": {\r\n        \"语文\": 83,\r\n        \"数学\": 81,\r\n        \"英语\": 91\r\n    },\r\n    \"210104\": {\r\n        \"语文\": 85,\r\n        \"数学\": 82,\r\n        \"英语\": 90\r\n    },\r\n    \"210105\": {\r\n        \"语文\": 89,\r\n        \"数学\": 86,\r\n        \"英语\": 93\r\n    },\r\n    \"210106\": {\r\n        \"语文\": 81,\r\n        \"数学\": 87,\r\n        \"英语\": 95\r\n    },\r\n    \"210107\": {\r\n        \"语文\": 90,\r\n        \"数学\": 86,\r\n        \"英语\": 90\r\n    },\r\n    \"210108\": {\r\n        \"语文\": 92,\r\n        \"数学\": 81,\r\n        \"英语\": 91\r\n    },\r\n    \"210201\": {\r\n        \"语文\": 81,\r\n        \"数学\": 96,\r\n        \"英语\": 90\r\n    },\r\n    \"210202\": {\r\n        \"语文\": 83,\r\n        \"数学\": 86,\r\n        \"英语\": 92\r\n    },\r\n    \"210203\": {\r\n        \"语文\": 88,\r\n        \"数学\": 81,\r\n        \"英语\": 89\r\n    },\r\n    \"210204\": {\r\n        \"语文\": 85,\r\n        \"数学\": 81,\r\n        \"英语\": 92\r\n    },\r\n    \"210205\": {\r\n        \"语文\": 82,\r\n        \"数学\": 83,\r\n        \"英语\": 95\r\n    },\r\n    \"210206\": {\r\n        \"语文\": 86,\r\n        \"数学\": 99,\r\n        \"英语\": 91\r\n    },\r\n    \"210207\": {\r\n        \"语文\": 85,\r\n        \"数学\": 78,\r\n        \"英语\": 95\r\n    },\r\n    \"210208\": {\r\n        \"语文\": 82,\r\n        \"数学\": 81,\r\n        \"英语\": 90\r\n    }\r\n}\r\n三、管理系统\r\n1.管理系统\r\n\r\nfrom students import student_login\r\nfrom teacher import teacher_login\r\nfrom administrator import administrator_login\r\nimport time\r\nimport json\r\n \r\nopen_administrator = open(\'administrator.json\', \'r\', encoding=\'utf-8\')\r\nadministrator = json.loads(open_administrator.read())\r\nopen_teacher = open(\'teacher.json\', \'r\', encoding=\'utf-8\')\r\nteacher = json.loads(open_teacher.read())\r\nopen_student = open(\'student.json\', \'r\', encoding=\'utf-8\')\r\nstudent = json.loads(open_student.read())\r\nopen_results = open(\'results.json\', \'r\', encoding=\'utf-8\')\r\nresults = json.loads(open_results.read())\r\n \r\nwhile True:\r\n    permissions = input(\'请您选择用户权限（1.学生登录 2.教师登录 3. 管理登录 4.退出系统）：\')\r\n    if permissions == \'1\':\r\n        student_login(student, results)\r\n    elif permissions == \'2\':\r\n        teacher_login(teacher, student, results)\r\n    elif permissions == \'3\':\r\n        administrator_login(administrator, teacher, student, results)\r\n    elif permissions == \'4\':\r\n        break\r\n \r\nsave_administrator = open(\'administrator.json\', \'w\', encoding=\'utf-8\')\r\njson.dump(administrator, save_administrator, ensure_ascii=False, indent=4)\r\nsave_teacher = open(\'teacher.json\', \'w\', encoding=\'utf-8\')\r\njson.dump(teacher, save_teacher, ensure_ascii=False, indent=4)\r\nsave_student = open(\'student.json\', \'w\', encoding=\'utf-8\')\r\njson.dump(student, save_student, ensure_ascii=False, indent=4)\r\nsave_results = open(\'results.json\', \'w\', encoding=\'utf-8\')\r\njson.dump(results, save_results, ensure_ascii=False, indent=4)\r\n2.学生登录\r\n————————————————\r\n版权声明：本文为CSDN博主「漫步桔田」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/u013157570/article/details/121886159', '2022-06-24 04:24:22', 'https://picsum.photos/id/1009/800/600', '原创', b'1', b'1', b'1', '学生管理系统程序，应具备以下几点功能：', '2022-06-24 04:24:22', 0, 3, 1, '主要实现管理员登录系统可查看本人基本信息、修改本人信息、查询老师信息、修改老师信息、录入老师信息、删除老师信息、查询学生信息、修改学生信息、录入学生信息、删除学生信息、查询考试成绩、修改考试成绩、录入考试成绩、删除考试成绩、修改登录密码。');
INSERT INTO `t_blog` VALUES (46, b'1', b'1', '实例001：数字组合\r\n题目：有四个数字：1、2、3、4，能组成多少个互不相同且无重复数字的三位数？各是多少？\r\n程序分析 遍历全部可能，请把有重复的剃掉。\r\n\r\nnum = 0\r\nfor a in range(1, 5):\r\n    for b in range(1, 5):\r\n        for c in range(1, 5):\r\n            if ((a != b) and (a != c) and (b != c)):\r\n                print(a, b, c)\r\n                num += 1\r\nprint(\'组成无重复三位数数字{}个\'.format(num))\r\n实例002：完全平方\r\n题目：有一个1-100的整数，它加上100后是一个完全平方数，再加上168又是一个完全平方数，请问该数是多少？\r\n\r\n方法一\r\nimport math\r\nfor i in range(1, 100):\r\n    x = int(math.sqrt(i + 100))\r\n    y = int(math.sqrt(i + 100 + 168))\r\n    if x ** 2 == i + 100 and  y ** 2 == i + 100 + 168:\r\n        print(i)\r\n方法二\r\nfor i in range(1, 100):\r\n    x = int((i + 100) ** 0.5)\r\n    y = int((i + 100 + 168) ** 0.5)\r\n    if x ** 2 == i + 100 and y ** 2 == i + 100 + 168:\r\n        print(i)\r\n实例003：三数排序\r\n题目：输入三个整数x,y,z，请把这三个数由小到大输出。\r\n\r\n方法一\r\nx = int(input(\"请输入第一个数, x： \"))\r\ny = int(input(\"请输入第一个数, y： \"))\r\nz = int(input(\"请输入第一个数, z： \"))\r\nif x > y:\r\n    x, y = y, x\r\nif x > z:\r\n    x, z = z, x\r\nif y > z:\r\n    y, z = z, y\r\nprint(x, y, z)\r\n方法二\r\na = input(\"请输入三个数字中间用英文逗号分隔： \")\r\nb = a.split(\',\')\r\nfor x in range(len(b)):\r\n    b[x] = int(b[x])\r\nb.sort()\r\nfor y in b:\r\n    print(\' \'.join(str(y)), end=\' \')\r\n实例004：斐波那契I\r\n题目：有一组数字1，1，2，3，5，8......,请找出规律用代码实现并打印输出。\r\n\r\na, b = 1, 0\r\nfor i in range(10):\r\n    a, b = b, b + a\r\n    print(b)\r\n实例005：斐波那契II\r\n题目：有一分数序列：2/1，3/2，5/3，8/5，13/8，21/13…求出这个数列的前20项之和。\r\n\r\na, b, c, d = 2, 1, 0, 0\r\nfor i in range(20):\r\n    c = a / b\r\n    d = round(d + c, 2)\r\n    a, b = a + b, a\r\nprint(\'前20项之和为{}\'.format(d))\r\n实例006：九九乘法\r\n题目：输出 9*9 乘法口诀表。\r\n\r\n方法一\r\nfor x in range(1, 10):\r\n    for y in range(1, x + 1):\r\n        print(\'{} * {} = {}\'.format(y, x, x * y), end=\'\\t\')\r\n    print()\r\n方法二\r\nx = 0\r\nwhile x < 9:\r\n    x += 1\r\n    y = 0\r\n    while y < x:\r\n        y += 1\r\n        print(\'{} * {} = {}\'.format(y, x, x * y), end=\'\\t\')\r\n    print()\r\n实例007：饲养兔子\r\n题目：有一对兔子，从出生后第3个月起每个月都生一对兔子，小兔子长到第三个月后每个月又生一对兔子，如兔子都不死，请问一年内兔子每月总数为多少？\r\n\r\na, b = 1, 0\r\nfor i in range(1, 13):\r\n    a, b = b, b + a\r\n    print(\'第{}月兔子总数是{}只。\'.format(i, b * 2))\r\n————————————————\r\n版权声明：本文为CSDN博主「漫步桔田」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/u013157570/article/details/121588411', '2022-06-24 04:25:42', 'https://picsum.photos/id/1008/800/600', '原创', b'1', b'1', b'1', '程序分析 遍历全部可能，请把有重复的剃掉。', '2022-06-24 04:25:42', 1, 3, 1, '实例007：饲养兔子\r\n题目：有一对兔子，从出生后第3个月起每个月都生一对兔子，小兔子长到第三个月后每个月又生一对兔子，如兔子都不死，请问一年内兔子每月总数为多少？');
INSERT INTO `t_blog` VALUES (47, b'1', b'1', 'Spring\r\n1.简介\r\n1.1.简介\r\n简介\r\n\r\nSpring : 春天 —>给软件行业带来了春天\r\n\r\n2002年，Rod Jahnson首次推出了Spring框架雏形interface21框架。\r\n\r\n2004年3月24日，Spring框架以interface21框架为基础，经过重新设计，发布了1.0正式版。\r\n\r\n很难想象Rod Johnson的学历 , 他是悉尼大学的博士，然而他的专业不是计算机，而是音乐学。\r\n\r\nSpring理念 : 使现有技术更加实用 . 本身就是一个大杂烩 , 整合现有的框架技术\r\n\r\n官网 : http://spring.io/\r\n\r\n官方下载地址 : https://repo.spring.io/libs-release-local/org/springframework/spring/\r\n\r\nGitHub : https://github.com/spring-projects\r\n\r\n<!-- https://mvnrepository.com/artifact/org.springframework/spring-webmvc -->\r\n<dependency>\r\n    <groupId>org.springframework</groupId>\r\n    <artifactId>spring-webmvc</artifactId>\r\n    <version>5.2.0.RELEASE</version>\r\n</dependency>\r\n<!-- https://mvnrepository.com/artifact/org.springframework/spring-jdbc -->\r\n<dependency>\r\n    <groupId>org.springframework</groupId>\r\n    <artifactId>spring-jdbc</artifactId>\r\n    <version>5.2.0.RELEASE</version>\r\n</dependency>\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n1.2.优点\r\n优点\r\n\r\n1、Spring是一个开源免费的框架 , 容器 .\r\n\r\n2、Spring是一个轻量级的框架 , 非侵入式的 .\r\n\r\n3、控制反转 IoC , 面向切面 Aop\r\n\r\n4、对事物的支持 , 对框架的支持\r\n\r\n…\r\n\r\n一句话概括：\r\n\r\nSpring是一个轻量级的控制反转(IoC)和面向切面(AOP)的容器（框架）。', '2022-06-24 05:14:27', 'https://picsum.photos/id/1004/800/450', '翻译', b'1', b'1', b'1', 'Spring : 春天 —>给软件行业带来了春天', '2022-06-24 05:14:27', 0, 1, 1, '大家发现了区别没有 ? 可能很多人说没啥区别 . 但是同学们 , 他们已经发生了根本性的变化 , 很多地方都不一样了 . 仔细去思考一下 , 以前所有东西都是由程序去进行控制创建 , 而现在是由我们自行控制创建对象 , 把主动权交给了调用者 . 程序不用去管怎么创建,怎么实现了 . 它只负责提供一个接口 .');
INSERT INTO `t_blog` VALUES (48, b'1', b'1', 'Spring\r\n1.简介\r\n1.1.简介\r\n简介\r\n\r\nSpring : 春天 —>给软件行业带来了春天\r\n\r\n2002年，Rod Jahnson首次推出了Spring框架雏形interface21框架。\r\n\r\n2004年3月24日，Spring框架以interface21框架为基础，经过重新设计，发布了1.0正式版。\r\n\r\n很难想象Rod Johnson的学历 , 他是悉尼大学的博士，然而他的专业不是计算机，而是音乐学。\r\n\r\nSpring理念 : 使现有技术更加实用 . 本身就是一个大杂烩 , 整合现有的框架技术\r\n\r\n官网 : http://spring.io/\r\n\r\n官方下载地址 : https://repo.spring.io/libs-release-local/org/springframework/spring/\r\n\r\nGitHub : https://github.com/spring-projects\r\n\r\n<!-- https://mvnrepository.com/artifact/org.springframework/spring-webmvc -->\r\n<dependency>\r\n    <groupId>org.springframework</groupId>\r\n    <artifactId>spring-webmvc</artifactId>\r\n    <version>5.2.0.RELEASE</version>\r\n</dependency>\r\n<!-- https://mvnrepository.com/artifact/org.springframework/spring-jdbc -->\r\n<dependency>\r\n    <groupId>org.springframework</groupId>\r\n    <artifactId>spring-jdbc</artifactId>\r\n    <version>5.2.0.RELEASE</version>\r\n</dependency>\r\n\r\n1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n1.2.优点\r\n优点\r\n\r\n1、Spring是一个开源免费的框架 , 容器 .\r\n\r\n2、Spring是一个轻量级的框架 , 非侵入式的 .\r\n\r\n3、控制反转 IoC , 面向切面 Aop\r\n\r\n4、对事物的支持 , 对框架的支持\r\n\r\n…\r\n\r\n一句话概括：\r\n\r\nSpring是一个轻量级的控制反转(IoC)和面向切面(AOP)的容器（框架）。', '2022-06-24 05:15:56', 'https://picsum.photos/id/1002/800/450', '原创', b'1', b'1', b'1', 'Spring : 给软件行业带来了春天', '2022-06-24 05:15:56', 1, 7, 1, '大家发现了区别没有 ? 可能很多人说没啥区别 . 但是同学们 , 他们已经发生了根本性的变化 , 很多地方都不一样了 . 仔细去思考一下 , 以前所有东西都是由程序去进行控制创建 , 而现在是由我们自行控制创建对象 , 把主动权交给了调用者 . 程序不用去管怎么创建,怎么实现了 . 它只负责提供一个接口 .');
INSERT INTO `t_blog` VALUES (49, b'1', b'1', '### 1.四大基本概念\r\n#### （1）数据–Data\r\n数据(Data)是数据库中存储的基本对象\r\n##### ① 数据的定义\r\n描述事物的符号记录\r\n\r\n##### ② 数据的种类\r\n文本、图形、图像、音频、视频、学生的档案记录、货物的运输情况等\r\n\r\n##### ③ 数据的特点\r\n数据与其语义是不可分的\r\n\r\n##### ④ 数据举例\r\n数据的含义称为数据的语义，数据与其语义是不可分的。\r\n例如 93是一个数据\r\n语义1：学生某门课的成绩\r\n语义2：某人的体重\r\n语义3：计算机系2003级学生人数\r\n语义4：请同学给出。。。\r\n\r\n学生档案中的学生记录\r\n（李明，男，197205，江苏南京市，计算机系，1990）\r\n语义：学生姓名、性别、出生年月、籍贯、所在院系、\r\n入学时间\r\n解释：李明是个大学生，1972年5月出生，江苏南京市人，1990年考入计算机系\r\n\r\n###（2）数据库–Database\r\n#####① 数据库的定义\r\n数据库(Database,简称DB)是长期储存在计算机内、有组织、可共享的大量数据的集合。\r\n\r\n##### ② 数据库的基本特征\r\n数据按一定的数据模型组织、描述和储存\r\n可为各种用户共享\r\n冗余度较小\r\n数据独立性较高\r\n易扩展\r\n###（3）数据库管理系统–DataBase Management System\r\n#####① 什么是DBMS?\r\nDBMS是位于用户与操作系统之间的一层数据管理软件。是基础软件，是一个大型复杂的软件系统\r\n\r\n#####② DBMS的用途\r\n科学地组织和存储数据、高效地获取和维护数据\r\n\r\n#####③ DBMS的主要功能\r\n数据定义功能\r\n提供数据定义语言(DDL)\r\n定义数据库中的数据对象\r\n\r\n数据组织、存储和管理\r\n分类组织、存储和管理各种数据\r\n确定组织数据的文件结构和存取方式\r\n实现数据之间的联系\r\n提供多种存取方法提高存取效率\r\n\r\n数据操纵功能\r\n提供数据操纵语言(DML)\r\n实现对数据库的基本操作 (查询、插入、删除和修改)\r\n\r\n数据库的事务管理和运行管理\r\n数据库在建立、运行和维护时由DBMS统一管理和控制\r\n保证数据的安全性、完整性、多用户对数据的并发使用\r\n发生故障后的系统恢复\r\n\r\n数据库的建立和维护功能(实用程序)\r\n数据库初始数据装载转换\r\n数据库转储\r\n介质故障恢复\r\n数据库的重组织\r\n性能监视分析等\r\n\r\n其它功能\r\nDBMS与网络中其它软件系统的通信\r\n两个DBMS系统的数据转换\r\n异构数据库之间的互访和互操作\r\n\r\n###（4）数据库系统–Database System\r\n#####① 什么是数据库系统（Database System，简称DBS）\r\n在计算机系统中引入数据库后的系统构成\r\n\r\n#####② 数据库系统的构成\r\n数据库 Database\r\n数据库管理系统（及其开发工具）Database Management System\r\n应用系统\r\n数据库管理员 Database Administrator\r\n\r\n————————————————\r\n版权声明：本文为CSDN博主「BitHachi」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/weixin_43914604/article/details/105071566', '2022-06-24 23:07:41', 'https://picsum.photos/id/1005/800/450', '翻译', b'1', b'1', b'1', '数据率四大基本概念', '2022-06-24 23:07:41', 1, 3, 1, '数据的含义称为数据的语义，数据与其语义是不可分的。\r\n例如 93是一个数据\r\n语义1：学生某门课的成绩\r\n语义2：某人的体重\r\n语义3：计算机系2003级学生人数\r\n语义4：请同学给出。。。\r\n\r\n学生档案中的学生记录\r\n（李明，男，197205，江苏南京市，计算机系，1990）\r\n语义：学生姓名、性别、出生年月、籍贯、所在院系、\r\n入学时间\r\n解释：李明是个大学生，1972年5月出生，江苏南京市人，1990年考入计算');
INSERT INTO `t_blog` VALUES (50, b'0', b'0', '## 1.语言介绍\r\n\r\n**Markdown** 是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式。\r\n\r\n## 2.兼容 HTML\r\n\r\nMarkdown 语法的目标是：成为一种适用于网络的书写语言。\r\n\r\n## 3.特殊符号转化\r\n\r\n在 HTML 文件中，有两个字符需要特殊处理： `<` 和 `&`。\r\n\r\n© 的写法如下：\r\n\r\n代码如下：\r\n\r\n```go\r\n&copy;\r\n```\r\n\r\nAT&T markdown会将其转换成\r\n\r\n代码如下：\r\n\r\n```undefined\r\nAT&amp;T\r\n```\r\n\r\n## 4.区块元素\r\n\r\n### 段落和换行\r\n\r\n一个 Markdown 段落是由一个或多个连续的文本行组成，它的前后要有一个以上的空行。普通段落不该用空格或制表符来缩进。\r\n\r\n强制插入换行 `<br/>`先按入两个以上的空格然后回车。\r\n\r\n### 4.1 标题\r\n\r\n# 这是 H1\r\n\r\n-\r\n\r\n## 这是 H2\r\n\r\n\\===========\r\n\r\n###### 这是 H6\r\n\r\n```bash\r\n# 这是 H1\r\n-------------\r\n\r\n## 这是 H2\r\n===========\r\n\r\n###### 这是 H6\r\n```\r\n\r\n**语法：**\r\n\r\n- 任何数量的 `=` 和 `-` 都可以有效果。\r\n- 插入 1 到 6 个 `#` ，对应到标题 1 到 6 阶，可选尾加上 ，而行尾的 `#` 数量也不用和开头一样。\r\n\r\n### 4.2 区域引用\r\n\r\n> ## 这是一个标题。\r\n> \r\n> 1. 这是第一行列表项。\r\n> 2. 这是第二行列表项。\r\n> \r\n> - 这个是列表展示\r\n> \r\n> 给出一些例子代码：\r\n> \r\n> > 这是第二行列表项。\r\n> \r\n> return shell\\_exec(\"echo $input | $markdown\\_script\");\r\n\r\n代码如下：\r\n\r\n```bash\r\n> ## 这是一个标题。\r\n> \r\n> 1.   这是第一行列表项。\r\n> 2.   这是第二行列表项。\r\n>  * 这个是列表展示\r\n> \r\n> 给出一些例子代码：\r\n> > 这是第二行列表项。\r\n> \r\n> return shell_exec(\"echo $input | $markdown_script\");\r\n```\r\n\r\n**语法：**\r\n\r\n- 引用的区块内也可以使用其他的 Markdown 语法，包括标题、列表、代码区块，如果嵌套引用模块，则需要前后哥家一个回车换行.\r\n- Markdown 也允许你偷懒只在整个段落的第一行最前面加上 `>`。\r\n\r\n### 4.3 列表\r\n\r\nMarkdown 支持有序列表和无序列表。\r\n\r\n- Red\r\n- Green\r\n- Blue\r\n\r\n- Red\r\n- Green\r\n- Blue\r\n\r\n- Red\r\n- Green\r\n- Blue\r\n\r\n1. Bird\r\n    \r\n2. McHale\r\n    \r\n    > 引用内容，列表中的引用，换行+加缩紧\r\n    \r\n    > 引用内容，列表中的引用，换行+加缩紧\r\n    \r\n\r\n```undefined\r\n* Red\r\n*   Green\r\n*   Blue\r\n+   Red\r\n+   Green\r\n+   Blue\r\n-   Red\r\n-   Green\r\n-   Blue\r\n\r\n1.  Bird\r\n2.  McHale\r\n\r\n    > 引用内容，列表中的引用，换行+加缩紧\r\n    \r\n    > 引用内容，列表中的引用，换行+加缩紧\r\n```\r\n\r\n**语法：** 列表项目内放进引用，那 `>` 就需要缩进。\r\n\r\n1. 这是一个段落，此部分是可以进行缩进的，输入对应的空格或是制表符即可缩进\r\n    \r\n    这是一个缩进段落\r\n    \r\n2. 这是一个段落，此部分是可以进行缩进的，输入对应的空格或是制表符即可缩进\r\n    \r\n\r\n代码如下：\r\n\r\n```undefined\r\n1. 这是一个段落，此部分是可以进行缩进的，输入对应的空格或是制表符即可缩进\r\n\r\n    这是一个缩进段落\r\n\r\n2. 这是一个段落，此部分是可以进行缩进的，输入对应的空格或是制表符即可缩进\r\n```\r\n\r\n**语法：** 列表项目可以包含多个段落，每个项目下的段落都必须缩进 4 个空格或是 1 个制表符。\r\n\r\n是在行首出现数字-句点-空白，要避免这样的状况，你可以在句点前面加上反斜杠，避免序列号。\r\n\r\n1986\\. What a great season.\r\n\r\n代码如下：\r\n\r\n```undefined\r\n1986\\. What a great season.\r\n```\r\n\r\n### 4.4 代码区块\r\n\r\n这是一个代码区块:\r\n\r\n```csharp\r\ntell application \"Foo\"\r\n    beep\r\nend tell\r\n\r\n<div class=\"footer\">\r\n    &copy; 2004 Foo Corporation\r\n</div>\r\n```\r\n\r\n**语法：** Markdown 中建立代码区块，只要简单地缩进 4 个空格或是 1 个制表符就可以，一个代码区块会一直持续到没有缩进的那一行（或是文件结尾）。\r\n\r\n```csharp\r\nHere is an example of AppleScript:\r\n\r\n    tell application \"Foo\"\r\n        beep\r\n    end tell\r\n    \r\n    <div class=\"footer\">\r\n        &copy; 2004 Foo Corporation\r\n    </div>\r\n```\r\n\r\n代码模块也可以用（` ``` `）、(`~~~`)或单(`` ` ``)，如果想输出三个（` ``` `）则用跟多的(`` ` ``)引用起来。\r\n\r\n```bash\r\nprint(\'Hello world!\')\r\n```\r\n\r\n```bash\r\nprint(\'Hello world!\')\r\n```\r\n\r\n```bash\r\nprint(\'Hello world!\')\r\n```\r\n\r\n### 4.5 分割线\r\n\r\n-\r\n\r\n-\r\n\r\n-\r\n\r\n-\r\n\r\n-\r\n\r\n```undefined\r\n* * *\r\n\r\n***\r\n\r\n*****\r\n\r\n- - -\r\n\r\n---------------------------------------\r\n```\r\n\r\n### 4.6 区段元素\r\n\r\n#### 4.6.1 链接\r\n\r\nMarkdown 支持两种形式的链接语法： 行内式和参考式两种形式。不管是哪一种，链接文字都是用 \\[方括号\\] 来标记。\r\n\r\n**行内式的链接** 在方块括号后面紧接着圆括号并插入网址链接即可，如果你还想要加上链接的 title 文字，只要在网址后面，用双引号把 title 文字包起来即可，例如：\r\n\r\n这是一个 [an example](https://link.jianshu.com/?t=http%3A%2F%2Fexample.com%2F) 行内链接.\r\n\r\n[This link](https://link.jianshu.com/?t=http%3A%2F%2Fexample.net%2F) 这个是五Title的联机.\r\n\r\n可以使用相对路径[About](https://www.jianshu.com/about/).\r\n\r\n代码如下：\r\n\r\n```ruby\r\n这是一个 [an example](http://example.com/ \"Title\") 行内链接.\r\n\r\n[This link](http://example.net/) 这个是五Title的联机.\r\n\r\n可以使用相对路径[About](/about/). \r\n```\r\n\r\n**参考式的链接** 是在链接文字的括号后面再接上另一个方括号，而在第二个方括号里面要填入用以辨识链接的标记。\r\n\r\n这是一个参考试链接 [an example](https://link.jianshu.com/?t=http%3A%2F%2Fexample.com%2F)，参考试链接必须有对应的id值，否则无法连接.\r\n\r\n代码如下：\r\n\r\n`这是参考试链接 [an example][id] .`\r\n\r\n`[id]: http://example.com/ \"可选的title\"`\r\n\r\n`[id1]: <http://example.com/> \"可选的title\"`\r\n\r\n**语法：**\r\n\r\n- 方括号（前面可以选择性地加上至多三个空格来缩进），里面输入链接文字\r\n- 接着一个冒号\r\n- 接着一个以上的空格或制表符\r\n- 接着链接的网址\r\n- 选择性地接着 title 内容，可以用单引号、双引号或是括弧包着\r\n- 链接网址也可以用尖括号包起来\r\n\r\n**隐式链接标记** 功能让你可以省略指定链接标记，这种情形下，链接标记会视为等同于链接文字，要用隐式链接标记只要在链接文字后面加上一个空的方括号，如果你要让 \"Google\" 链接到 google.com，你可以简化成：\r\n\r\n[Google](https://link.jianshu.com/?t=http%3A%2F%2Fgoogle.com%2F)\r\n\r\n`[Google][]`\r\n\r\n`[Google]: http://google.com/`\r\n\r\n下面是一个参考式链接的范例：\r\n\r\n在 [Google](https://link.jianshu.com/?t=http%3A%2F%2Fgoogle.com%2F) 中搜索超过 [Yahoo](https://link.jianshu.com/?t=http%3A%2F%2Fsearch.yahoo.com%2F) 或 [MSN](https://link.jianshu.com/?t=http%3A%2F%2Fsearch.msn.com%2F).\r\n\r\n`在 [Google] [1] 的搜索超过 [Yahoo] [2] 或 [MSN] [3].`\r\n\r\n`[1]: http://google.com/ \"Google\"`\r\n\r\n`[2]: http://search.yahoo.com/ \"Yahoo Search\"`\r\n\r\n`[2]: http://search.yahoo.com/ \"Yahoo Search\"`\r\n\r\n如果改成用链接名称的方式写：\r\n\r\n在 [Google](https://link.jianshu.com/?t=http%3A%2F%2Fgoogle.com%2F) 中搜索超过 [Yahoo](https://link.jianshu.com/?t=http%3A%2F%2Fsearch.yahoo.com%2F) 或 [MSN](https://link.jianshu.com/?t=http%3A%2F%2Fsearch.msn.com%2F).\r\n\r\n`在 [Google][] 中搜索超过 [Yahoo][] 或 [MSN][].`\r\n\r\n`[google]: http://google.com/ \"Google\"`\r\n\r\n`[yahoo]: http://search.yahoo.com/ \"Yahoo Search\"`\r\n\r\n`[msn]: http://search.msn.com/ \"MSN Search\"`\r\n\r\n### 4.7 强调\r\n\r\n1. _单星号_\r\n2. _单下滑线_\r\n3. **双星号**\r\n4. **双下划线**\r\n\r\n```undefined\r\n1. *单星号*\r\n2. _单下滑线_\r\n3. **双星号**\r\n4. __双下划线__\r\n```\r\n\r\n**语法：** `*` 和 `_` **两边**都有**空白**的话，它们就只会被当成普通的符号,文字前后直接插入普通的星号或底线，你可以用反斜线，如下：\r\n\r\n\\*this text is surrounded by literal asterisks\\*\r\n\r\n代码如下：\r\n\r\n```kotlin\r\n\\*this text is surrounded by literal asterisks\\*\r\n```\r\n\r\n### 4.7 代码\r\n\r\nUse the `printf()` function.\r\n\r\n``There is a literal backtick (`) here.``\r\n\r\n**语法：** 在代码区段内插入反引号，你可以用多个反引号来开启和结束代码区段。代码区段内，`&`和`<>`都会被自动地转成 HTML 实体\r\n\r\n请不要在任何情况下使用 `<blink>` 标签.\r\n\r\n### 4.8 图片\r\n\r\n![](//upload-images.jianshu.io/upload_images/10143431-d297345bc8bc5e82.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/416/format/webp)\r\n\r\nAlt text\r\n\r\n![](//upload-images.jianshu.io/upload_images/10143431-d297345bc8bc5e82.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/416/format/webp)\r\n\r\nAlt text\r\n\r\n![](//upload-images.jianshu.io/upload_images/10143431-d297345bc8bc5e82.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/416/format/webp)\r\n\r\nAlt text\r\n\r\n```jsx\r\n![Alt text](/Markdwon/img.jpg)\r\n\r\n![Alt text](/Markdwon/img.jpg \"Optional title\")\r\n\r\n![Alt text][id1]\r\n\r\n`[id1]: url/to/image  \"Optional title attribute\"`\r\n```\r\n\r\n- 一个惊叹号 !\r\n- 接着一个方括号，里面放上图片的替代文字\r\n- 接着一个普通括号，里面放上图片的网址，最后还可以用引号包住并加上 选择性的 \'title\' 文字。\r\n\r\n### 4.9 自动链接\r\n\r\n[http://example.com/](https://link.jianshu.com/?t=http%3A%2F%2Fexample.com%2F)\r\n\r\n[address@example.com](https://link.jianshu.com/?t=mailto%3Aaddress%40example.com)\r\n\r\n```dart\r\n<http://example.com/>\r\n<address@example.com>\r\n```\r\n\r\n### 4.10 反斜杠转译字符\r\n\r\n利用反斜杠来插入一些在语法中有其它意义的符号.\r\n\r\nMarkdown 支持以下这些符号前面加上反斜杠来帮助插入普通的符号：\r\n\r\n```csharp\r\n\\   反斜线\r\n`   反引号\r\n*   星号\r\n_   底线\r\n{}  花括号\r\n[]  方括号\r\n()  括弧\r\n#   井字号\r\n+   加号\r\n-   减号\r\n.   英文句点\r\n!   惊叹号\r\n```\r\n\r\n## 5\\. 高级使用实例\r\n\r\n### 5.1 链接方式，可以在其中加粗：\r\n\r\nYou can specify extra HTML rendering options through the [**Rendering** preference pane](https://www.jianshu.com/p/793dc3dad416#rendering-pane).\r\n\r\n```css\r\nYou can specify extra HTML rendering options through the [**Rendering** preference pane](#rendering-pane).\r\n```\r\n\r\n### 5.2 列表缩进（主要针对Macdown工具）\r\n\r\n- 列表必须后边紧跟一个空格\r\n- 无序列表以 `*`\r\n\r\n- `-`、`+` 也可以用\r\n    - 嵌套进行缩紧\r\n        1. 支持顺序编号\r\n        2. 起始于数字后跟点并在点后加入空格 like `1.`\r\n        3. 可以不用顺序, 自动顺序编号\r\n        4. 你可能想开始宇`1.` 使其自动编号\r\n\r\n代码如下:\r\n\r\n```go\r\n* 列表必须后边紧跟一个空格 \r\n* 无序列表以 `*`\r\n- `-`、`+` 也可以用\r\n    * 嵌套进行缩紧\r\n        1. 支持顺序编号\r\n        2. 起始于数字后跟点并在点后加入空格 like `1. `\r\n        42. 可以不用顺序, 自动顺序编号\r\n        1. 你可能想开始宇`1.` 使其自动编号\r\n```\r\n\r\n### 引用及引用中引用\r\n\r\n> 尖括号 `>` 被用做引用，一样中换行，后变跟两个以上空格.  \r\n> 语法上不是每个都需要一个 `>`  \r\n> 段落之间没有空行，否则会出现在换行引用.  \r\n> 引用中的引用，嵌套引用.\r\n> \r\n> > 嵌套引用这个是.\r\n> > \r\n> > > 多嵌套医用\r\n> \r\n> 多嵌套引用后续\r\n> \r\n> - 列表\r\n> - [嵌套链接](https://www.jianshu.com/p/793dc3dad416#fenced-code-block)，链接引用号必须有，否则会出现不能连接及显示问题\r\n> - 等等.\r\n\r\n代码如下:\r\n\r\n```ruby\r\n> 尖括号 `>` 被用做引用，一样中换行，后变跟两个以上空格.  \r\n语法上不是每个都需要一个 `>`\r\n段落之间没有空行，否则会出现在换行引用.  \r\n> 引用中的引用，嵌套引用.\r\n> > 嵌套引用这个是.  \r\n> > > 多嵌套医用\r\n>\r\n> 多嵌套引用后续\r\n>\r\n> * 列表\r\n> * [嵌套联机](#fenced-code-block)，链接引用号必须有，否则会出现不能连接及显示问题\r\n> * 等等.\r\n```\r\n\r\n### 嵌套代码\r\n\r\n`内嵌代码` 使用来表示: `` `内嵌代码` ``\r\n\r\n如果你想显示单个``代码 `反引号` `` 内容, 使用两个反引号，并且用空格隔开`` ` ``，如果想想显示两个，则用三个`` ` ``，``` ``代码块 `反引号` `` ```，以此类推。\r\n\r\n### 表格\r\n\r\n以下表格:\r\n\r\n| First Header | Second Header |\r\n| --- | --- |\r\n| Content Cell | Content Cell |\r\n| Content Cell | Content Cell |\r\n\r\nYou can align cell contents with syntax like this:\r\n\r\n| Left Aligned | Center Aligned | Right Aligned |\r\n| --- | --- | --- |\r\n| col 3 is | some wordy text | $1600 |\r\n| col 2 is | centered | $12 |\r\n| zebra stripes | are neat | $1 |\r\n\r\n为了美观短竖线 (`|`) 在开头和结尾加上, 费必须. 空格无影响. 使用 `:` 表示对齐方式，中间对齐使用两个，左对齐在左端，右对齐在右侧.\r\n\r\n### 内嵌代码高亮显示\r\n\r\n只有在设置-rendering-**_Enable highlighting in code blocks_**开启时才会有内嵌代码高亮显示（macdown支持，[查看地址](https://link.jianshu.com/?t=http%3A%2F%2Fmacdown.uranusjr.com%2Ffeatures%2F) ），可以在开头写上`~~~python`\r\n\r\n```python\r\nimport urllib3 \r\nimport ssl \r\nimport json\r\nfrom pip._vendor import requests\r\nssl._create_default_https_context = ssl._create_unverified_context\r\ndef getList():\r\n```\r\n\r\n### 表格内的格式\r\n\r\n| Option name | Markup | Result if enabled |\r\n| --- | --- | --- |\r\n| Intra-word emphasis | So A\\*maz\\*ing | So A<em>maz</em>ing |\r\n| Strikethrough | ~~Much wow~~ | <del>Much wow</del> |\r\n| Underline <sup><a href=\"https://www.jianshu.com/p/793dc3dad416#fn1\" id=\"fnref1\">[1]</a></sup> | \\_So doge\\_ | <u>So doge</u> |\r\n| Quote <sup><a href=\"https://www.jianshu.com/p/793dc3dad416#fn2\" id=\"fnref2\">[2]</a></sup> | \"Such editor\" | <q>Such editor</q> |\r\n| Highlight | \\==So good== | <mark>So good</mark> |\r\n| Superscript | hoge^(fuga) | hoge<sup>fuga</sup> |\r\n| Autolink | [http://t.co](https://link.jianshu.com/?t=http%3A%2F%2Ft.co) | [http://t.co](https://link.jianshu.com/?t=http%3A%2F%2Ft.co) |\r\n| Footnotes | \\[^4\\] and \\[^4\\]: | <sup><a href=\"https://www.jianshu.com/p/793dc3dad416#fn3\" id=\"fnref3\">[3]</a></sup> and footnote 4 |\r\n\r\n### TeX-like 语法，数学计算式的表达\r\n\r\n使用TeX-like数学语法, <sup><a href=\"https://www.jianshu.com/p/793dc3dad416#fn4\" id=\"fnref4\">[4]</a></sup> 可以使用: \\\\( 1 + 1 \\\\) 或是 in MathML: <math><mn>1</mn><mo>+</mo><mn>1</mn></math>:\r\n\r\n\\\\\\[  \r\nA^T\\_S = B  \r\n\\\\\\]\r\n\r\n或是 (in MathML)\r\n\r\n<math display=\"block\">  \r\n<msubsup><mi>A</mi> <mi>S</mi> <mi>T</mi></msubsup>  \r\n<mo>=</mo>  \r\n<mi>B</mi>  \r\n</math>\r\n\r\n### 列表显示支持\r\n\r\n1. \\[x\\] 设置中选择 task list syntax，才会生效\r\n    - \\[x\\] 支持嵌套\r\n    - \\[x\\] 支持顺序和非顺序方式\r\n2. \\[ \\] 不支持香html一样的checkbox选择\r\n\r\n-\r\n\r\n1. 如果 **Underline** 被禁用 `_this_` 将以 _emphasized_ 加粗强调显示，不显示下滑线. [↩](https://www.jianshu.com/p/793dc3dad416#fnref1)\r\n    \r\n2. **引号** 替换 `\"` 符号使用 html `<q>` 标签. **Quote** 和 **Smartypants** 两者是冲突的. 如果两着都被弃用, **引号** 优先. 注意 **quote**引号与_blockquote_有区别的, 这也是标准的Markdown一部分. [↩](https://www.jianshu.com/p/793dc3dad416#fnref2)\r\n    \r\n3. 角注可以使用数字`[^4]`. 也可以使用 `[^footy note4]`和 `[^footy note4]:` 此处带`:`号.无论如何标示都会在角注中以数字序列排列，无论备注在何处都会在底部显示. 不必特意编号，编辑器会自动为你按照角注顺序编号，并在底部显示角注可以放到引用地方，但是最后会显示在最后角注。 [↩](https://www.jianshu.com/p/793dc3dad416#fnref3)\r\n    \r\n4. 需要互联网支持。 [↩](https://www.jianshu.com/p/793dc3dad416#fnref4)', '2022-06-25 00:13:02', 'https://picsum.photos/id/1004/800/450', '转载', b'0', b'1', b'1', 'Markdown 通过简单的标记语法', '2022-06-25 00:13:02', 7, 1, 1, 'Markdown 是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式。');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(0) NOT NULL,
  `tags_id` bigint(0) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (44, 2);
INSERT INTO `t_blog_tags` VALUES (44, 5);
INSERT INTO `t_blog_tags` VALUES (44, 8);
INSERT INTO `t_blog_tags` VALUES (44, 10);
INSERT INTO `t_blog_tags` VALUES (45, 2);
INSERT INTO `t_blog_tags` VALUES (45, 7);
INSERT INTO `t_blog_tags` VALUES (45, 9);
INSERT INTO `t_blog_tags` VALUES (49, 7);
INSERT INTO `t_blog_tags` VALUES (48, 1);
INSERT INTO `t_blog_tags` VALUES (48, 5);
INSERT INTO `t_blog_tags` VALUES (48, 9);
INSERT INTO `t_blog_tags` VALUES (47, 1);
INSERT INTO `t_blog_tags` VALUES (46, 1);
INSERT INTO `t_blog_tags` VALUES (46, 2);
INSERT INTO `t_blog_tags` VALUES (46, 8);
INSERT INTO `t_blog_tags` VALUES (46, 10);
INSERT INTO `t_blog_tags` VALUES (50, 2);
INSERT INTO `t_blog_tags` VALUES (50, 7);
INSERT INTO `t_blog_tags` VALUES (50, 8);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_time` datetime(0) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `blog_id` bigint(0) DEFAULT NULL,
  `parent_comment_id` bigint(0) DEFAULT NULL,
  `admin_comment` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FKjt3xywsr7iscyfan44ul06v6a`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FKjt3xywsr7iscyfan44ul06v6a` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 98 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (69, '/img/bg1.jpg', '测试回复', '2022-06-25 05:42:24', 'ahmedwangdifu@qq.com', '张一', 50, NULL, 0);
INSERT INTO `t_comment` VALUES (70, '/img/bg1.jpg', '1111', '2022-06-25 05:47:13', 'ahmedwangdifu@qq.com', '王', 50, NULL, 0);
INSERT INTO `t_comment` VALUES (72, '/img/bg1.jpg', '测试', '2022-06-25 05:54:56', 'ahmedwangdifu@qq.com', '啊', 49, NULL, 0);
INSERT INTO `t_comment` VALUES (74, '/img/bg1.jpg', '测试', '2022-06-25 06:00:30', 'ahmedwangdifu@qq.com', 'A', 48, NULL, 0);
INSERT INTO `t_comment` VALUES (76, '/img/bg1.jpg', '测试回复AAA', '2022-06-25 06:11:59', 'ahmedwangdifu@qq.com', 'A', 47, NULL, 0);
INSERT INTO `t_comment` VALUES (77, '/img/bg1.jpg', '回复BBBB', '2022-06-25 06:12:12', 'ahmedwangdifu@qq.com', 'B', 47, 76, 0);
INSERT INTO `t_comment` VALUES (78, '/img/bg1.jpg', 'asdsac', '2022-06-25 06:22:43', 'ahmedwangdifu@qq.com', 'A', 50, NULL, 0);
INSERT INTO `t_comment` VALUES (79, '/img/bg1.jpg', 's', '2022-06-25 15:23:48', 'ahmedwangdifu@qq.com', 'A', 49, NULL, 0);
INSERT INTO `t_comment` VALUES (80, '/img/bg1.jpg', 'cvf', '2022-06-25 20:37:57', 'ahmedwangdifu@qq.com', 'vb', 47, NULL, 0);
INSERT INTO `t_comment` VALUES (81, '/img/bg1.jpg', '豆腐干地方', '2022-06-25 22:30:06', 'ahmedwangdifu@qq.com', '的功夫', 50, 69, 0);
INSERT INTO `t_comment` VALUES (82, '/img/bg1.jpg', '嘎嘎嘎', '2022-06-25 22:31:30', 'ahmedwangdifu@qq.com', '锕', 48, 81, 0);
INSERT INTO `t_comment` VALUES (83, '/img/bg1.jpg', '非个人', '2022-06-25 22:31:39', 'ahmedwangdifu@qq.com', '锕', 48, NULL, 0);
INSERT INTO `t_comment` VALUES (84, '/img/bg1.jpg', '作者在吗？', '2022-06-25 22:37:49', 'ahmedwangdifu@qq.com', 'Ahmed', 45, NULL, 0);
INSERT INTO `t_comment` VALUES (85, '/img/bg1.jpg', '有事儿吗？？？？？', '2022-06-25 22:38:22', 'ahmedwangdifu@qq.com', 'Ali', 45, 84, 0);
INSERT INTO `t_comment` VALUES (86, '/img/bg1.jpg', '要联系你，可以吗？', '2022-06-25 22:38:47', 'ahmedwangdifu@qq.com', 'Ahmed', 45, 85, 0);
INSERT INTO `t_comment` VALUES (87, '/img/bg1.jpg', '可以啊，112131', '2022-06-25 22:39:26', 'ahmedwangdifu@qq.com', 'Ali', 45, 86, 0);
INSERT INTO `t_comment` VALUES (88, '/img/bg1.jpg', '哈哈哈哈', '2022-06-25 22:39:40', 'ahmedwangdifu@qq.com', 'MO', 45, 84, 0);
INSERT INTO `t_comment` VALUES (89, '/img/bg1.jpg', 'Hello 宝贝', '2022-06-25 22:40:12', 'ahmedwangdifu@qq.com', '宝贝', 45, NULL, 0);
INSERT INTO `t_comment` VALUES (90, '/img/bg1.jpg', '哈哈哈么么哒', '2022-06-25 22:40:28', 'ahmedwangdifu@qq.com', 'Ahmed', 45, 89, 0);
INSERT INTO `t_comment` VALUES (91, 'https://picsum.photos/id/1005/800/600', 'haljl', '2022-06-26 22:04:16', 'ahmed@qq.coom', '王迪夫', 50, NULL, 1);
INSERT INTO `t_comment` VALUES (92, 'https://picsum.photos/id/1005/800/600', 'sss', '2022-06-26 22:04:27', 'ahmed@qq.coom', '王迪夫', 50, 91, 1);
INSERT INTO `t_comment` VALUES (93, 'https://picsum.photos/id/1005/800/600', 'xcx', '2022-06-26 22:10:52', 'ahmed@qq.coom', '王迪夫', 50, NULL, 1);
INSERT INTO `t_comment` VALUES (94, 'https://picsum.photos/id/1005/800/600', 'vxcv', '2022-06-26 22:11:06', 'ahmed@qq.coom', '王迪夫', 50, 70, 1);
INSERT INTO `t_comment` VALUES (95, 'https://picsum.photos/id/1005/800/600', ' cv', '2022-06-26 22:11:25', 'ahmed@qq.coom', '王迪夫', 50, 81, 1);
INSERT INTO `t_comment` VALUES (96, '/img/bg1.jpg', 'jhv', '2022-06-27 00:48:09', 'ahmedwangdifu@qq.com', 'hh', 46, NULL, 0);
INSERT INTO `t_comment` VALUES (97, '/img/bg1.jpg', 'bmnb', '2022-06-27 01:00:06', 'ahmedwangdifu@qq.com', 'gg', 50, 92, 0);

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (1, 'java');
INSERT INTO `t_tag` VALUES (2, 'c++');
INSERT INTO `t_tag` VALUES (3, 'r');
INSERT INTO `t_tag` VALUES (5, 'm');
INSERT INTO `t_tag` VALUES (6, 't');
INSERT INTO `t_tag` VALUES (7, 'k');
INSERT INTO `t_tag` VALUES (8, 'h');
INSERT INTO `t_tag` VALUES (9, 'kkk');
INSERT INTO `t_tag` VALUES (10, 'nn');
INSERT INTO `t_tag` VALUES (11, 'ff');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, 'java');
INSERT INTO `t_type` VALUES (2, 'c++');
INSERT INTO `t_type` VALUES (3, '软件测试');
INSERT INTO `t_type` VALUES (5, '百家讲坛');
INSERT INTO `t_type` VALUES (7, 'ahmed');
INSERT INTO `t_type` VALUES (10, 'd');
INSERT INTO `t_type` VALUES (14, '日志');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(0) NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `creat_time` datetime(0) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `type` int(0) DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://picsum.photos/id/1005/800/600', '2022-06-18 17:07:03', 'ahmed@qq.coom', '王迪夫', 'e10adc3949ba59abbe56e057f20f883e', 1, '331231', 'ahmed');

SET FOREIGN_KEY_CHECKS = 1;
