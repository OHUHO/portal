/*
 Navicat MySQL Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : als

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 13/03/2023 13:10:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `article_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章介绍',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章作者',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (1, '电梯运行中突然停电是否会对人身安全造成影响', 'https://www.alsidt.com/public/uploads/20230119/1b6510b81c10189744840f5940ff3af0.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。电梯会自动停止运行，没有危险。如果供电部门有计划停电', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。\r\n\r\n如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电梯制动器将自动制动，使电梯停止运行，此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。当电梯停电时，汽车下部有一个安全钳，它会卡住导轨，使汽车固定在导轨上，不会滑动。电梯有一个汽车和一个对重，通过钢丝绳连接，钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯汽车和对重在电梯导轨上上上下移动。\r\n\r\n\r\n\r\n国家对电梯使用的钢丝绳电梯有特殊规定和要求。钢丝绳的配置不仅是为了承受电梯轿厢和额定载荷，还考虑了牵引力的大小。因此，钢丝绳的抗拉强度大大于电梯的载荷重量，其安全系数超过12。一般电梯配备四根以上钢丝绳，一次电梯钢丝绳不会断裂。如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电体的起动器将自动制动，使电梯无法运行。此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。电梯的运行速度，无论是上下，都应在规定的额定速度范围内运行，一般不超速。如果超速，电梯控制系统中有防超速装置。此时，该装置将自动减速或停止运行。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '张三', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (2, '家用电梯在安装时该预留多大的尺寸呢', 'https://www.alsidt.com/public/uploads/20230119/a6362427c63cc9604cebffbac2d4a7e3.jpg', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '现在每个人的生活水平都在不断提高，越来越多的人住在别墅里。住在别墅后，需要去三楼和四楼甚至更高层是很常见的。此时，别墅家用电梯的使用越来越普遍。家用电梯的种类和型号仍然很多。购买电梯时，需要根据具体情况选择合适的电梯尺寸和承重比例。家用电梯预留尺寸说明中有相关说明。在选择时，您可以进行比较，看看它有多大，尺寸正好，以满足需求。根据不同的分类，家用电梯的结构不同，结构也决定了尺寸。家用电梯的选择、不同的配置和尺寸也有很大的选择空间。我们应该分析具体情况。\r\n\r\n\r\n\r\n家用电梯分为液压家用电梯、无机房牵引家用电梯和进口螺旋家用电梯。电梯结构由井道和坑、升降平台或轿厢、层站等组成。层站越多，尺寸和高度就越高。\r\n\r\n\r\n\r\n一、观光别墅电梯，最小预留尺寸：1200mm*1380mm。观光别墅电梯不仅可以安装在室内，也可以安装在室外，空间较少，大大提高了空间利用率。\r\n\r\n\r\n\r\n二、大型重型别墅电梯，最小预留尺寸：1565mm*2320mm。大型载重别墅电梯空间大，便于我们携带一些体积大、不易移动的物品。\r\n\r\n\r\n\r\n三、优雅轿厢别墅电梯，最小预留尺寸：1500mm*1760mm。优雅的轿厢别墅电梯内部优雅宽敞，占用空间小，安全舒适并存，是传统电梯无法比拟的。\r\n\r\n', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '李四', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (3, '关于电梯的运作原理了解', 'https://www.alsidt.com/public/uploads/20230111/6011a08464f22595117d27e2c640061f.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '朋友们一定都坐过电梯，但你知道他的各个部分是怎么工作的吗？电梯可分为以下部分：\r\n\r\n\r\n\r\n电气控制系统：电气系统控制电梯运动，完成层选择、平面、速度测量和照明工作。指示呼叫系统随时显示轿厢的运动方向和地板位置。轿厢和对重：轿厢是承载乘客或其他负荷的箱体部件。对重用于平衡轿厢负荷，降低电机功率。轿厢和对重主要通过钢丝绳连接。除钢丝绳外，还有连接轿厢和对重的补偿装置。补偿装置用于补偿运动中钢丝绳张力和重量的变化，稳定牵引电机负载，准确停车。\r\n\r\n\r\n\r\n钢丝绳：钢丝绳两端连接轿厢和对重，缠绕在牵引轮和导轮上，即牵引比为1：1。或者两端分别固定，钢丝绳分为两部分，一部分通过滑轮中间，另一部分通过滑轮中间。即牵引比为2：1。\r\n\r\n\r\n\r\n牵引机：当永磁同步电机时，牵引机直接与牵引轮同步旋转。当异步电机时，牵引机驱动牵引轮通过减速器旋转，牵引绳与牵引轮摩擦产生的牵引力实现汽车和重型升降运动，达到运输目的。\r\n\r\n\r\n\r\n主机闸门：电机工作时松开闸门，取消主机运行阻力，确保电梯正常运行，突然停电时制动，停止轿厢运动。在电梯正常状态下，当层站停靠时开关门时，闸门也断电，保持轿厢静止，供人员和货物进出。导轨和导靴：固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨往复提升，防止轿厢在运行中倾斜或摆动。\r\n\r\n电梯有轿厢和对重，通过钢丝绳连接。钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯轿厢和对重在电梯内导轨上上下移动。\r\n\r\n\r\n\r\n牵引绳的两端分别与轿厢和对重相连，缠绕在牵引轮和导向轮上。牵引电机通过减速器变速后驱动牵引轮旋转，通过牵引绳与牵引轮摩擦产生的牵引力，实现轿厢和对重的升降运动，达到运输目的。固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨来回升降，防止轿厢在运行过程中倾斜或摆动。电机工作时，经常关闭块式制动器松开闸门，使电梯运行，在失电时制动，使轿厢停止升降，并在指定层站上保持其静止状态，供人员和货物进出。轿厢是运载乘客或其他载荷的箱体部件，对重用于平衡轿厢载荷，降低电机功率。补偿装置用于补偿牵引绳运动中的张力和重量变化，使牵引电机负载稳定，使轿厢能够准确停放。电气系统可控制电梯运动，同时完成选层、平层、测速、照明工作。指示电话系统随时显示轿厢的运动方向和地板位置。确保电梯的安全。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '王五', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (4, '家庭装家用电梯的知名品牌和价钱', 'https://www.alsidt.com/puwen/20201103745.jpg', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '一、家庭装家用电梯的驱动器方法\r\n\r\n现阶段家庭装家用电梯关键驱动器方法有三种：曳引电梯轿厢、螺杆电梯、液压电梯。\r\n\r\n1、曳引电梯轿厢\r\n\r\n它是较为普遍的别墅电梯，应用曳引驱动器，根据对重加钢丝绳或尼龙带拖动完成电梯轿厢的升降机。一般商业电梯轿厢也选用此技术性。\r\n\r\n2、螺杆电梯\r\n\r\n这类便是一个极大的镙丝在电梯轿厢下边，伴随着镙丝的转动顶着电梯轿厢升高和降低。\r\n\r\n3、液压电梯\r\n\r\n这类事根据液压机动力装置，把汽压入液压缸使柱塞泵作匀速直线运动，立即或根据镙丝绳间接性的使电梯轿厢健身运动。二、家庭装家用电梯的知名品牌和价钱\r\n\r\n1、合资企业或進口知名品牌\r\n\r\n依照4层停靠在电梯轿厢举例说明（没有土建工程），一线品牌的家庭装产品系列系列产品都会二十万上下。進口的都会三十万之上。\r\n\r\n关键知名品牌有：瑞特科等。\r\n\r\n2、二线知名品牌\r\n\r\n依照4层停靠在电梯轿厢举例说明（没有土建工程），二线有全国市场销售及售后服务互联网的知名品牌，绝大多数在10-十五万元上下，一部分很有可能略低一些。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '王麻子', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (5, '家用电梯在安装时该预留多大的尺寸呢', 'https://www.alsidt.com/public/uploads/20230119/a6362427c63cc9604cebffbac2d4a7e3.jpg', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。\r\n\r\n如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电梯制动器将自动制动，使电梯停止运行，此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。当电梯停电时，汽车下部有一个安全钳，它会卡住导轨，使汽车固定在导轨上，不会滑动。电梯有一个汽车和一个对重，通过钢丝绳连接，钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯汽车和对重在电梯导轨上上上下移动。\r\n\r\n\r\n\r\n国家对电梯使用的钢丝绳电梯有特殊规定和要求。钢丝绳的配置不仅是为了承受电梯轿厢和额定载荷，还考虑了牵引力的大小。因此，钢丝绳的抗拉强度大大于电梯的载荷重量，其安全系数超过12。一般电梯配备四根以上钢丝绳，一次电梯钢丝绳不会断裂。如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电体的起动器将自动制动，使电梯无法运行。此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。电梯的运行速度，无论是上下，都应在规定的额定速度范围内运行，一般不超速。如果超速，电梯控制系统中有防超速装置。此时，该装置将自动减速或停止运行。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '张三', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (6, '家用电梯在安装时该预留多大的尺寸呢', 'https://www.alsidt.com/public/uploads/20230111/6011a08464f22595117d27e2c640061f.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '现在每个人的生活水平都在不断提高，越来越多的人住在别墅里。住在别墅后，需要去三楼和四楼甚至更高层是很常见的。此时，别墅家用电梯的使用越来越普遍。家用电梯的种类和型号仍然很多。购买电梯时，需要根据具体情况选择合适的电梯尺寸和承重比例。家用电梯预留尺寸说明中有相关说明。在选择时，您可以进行比较，看看它有多大，尺寸正好，以满足需求。根据不同的分类，家用电梯的结构不同，结构也决定了尺寸。家用电梯的选择、不同的配置和尺寸也有很大的选择空间。我们应该分析具体情况。\r\n\r\n\r\n\r\n家用电梯分为液压家用电梯、无机房牵引家用电梯和进口螺旋家用电梯。电梯结构由井道和坑、升降平台或轿厢、层站等组成。层站越多，尺寸和高度就越高。\r\n\r\n\r\n\r\n一、观光别墅电梯，最小预留尺寸：1200mm*1380mm。观光别墅电梯不仅可以安装在室内，也可以安装在室外，空间较少，大大提高了空间利用率。\r\n\r\n\r\n\r\n二、大型重型别墅电梯，最小预留尺寸：1565mm*2320mm。大型载重别墅电梯空间大，便于我们携带一些体积大、不易移动的物品。\r\n\r\n\r\n\r\n三、优雅轿厢别墅电梯，最小预留尺寸：1500mm*1760mm。优雅的轿厢别墅电梯内部优雅宽敞，占用空间小，安全舒适并存，是传统电梯无法比拟的。\r\n\r\n', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '李四', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (7, '关于电梯的运作原理了解', 'https://www.alsidt.com/public/uploads/20230119/1b6510b81c10189744840f5940ff3af0.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。\r\n\r\n如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电梯制动器将自动制动，使电梯停止运行，此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。当电梯停电时，汽车下部有一个安全钳，它会卡住导轨，使汽车固定在导轨上，不会滑动。电梯有一个汽车和一个对重，通过钢丝绳连接，钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯汽车和对重在电梯导轨上上上下移动。\r\n\r\n\r\n\r\n国家对电梯使用的钢丝绳电梯有特殊规定和要求。钢丝绳的配置不仅是为了承受电梯轿厢和额定载荷，还考虑了牵引力的大小。因此，钢丝绳的抗拉强度大大于电梯的载荷重量，其安全系数超过12。一般电梯配备四根以上钢丝绳，一次电梯钢丝绳不会断裂。如果电梯在运行过程中突然停电或供电线路出现故障，电梯将自动停止运行，无危险。由于电梯本身配备了电气和机械安全装置，一旦停电，电体的起动器将自动制动，使电梯无法运行。此外，如果供电部门有计划停电，将提前通知电梯或提前停止运行。电梯的运行速度，无论是上下，都应在规定的额定速度范围内运行，一般不超速。如果超速，电梯控制系统中有防超速装置。此时，该装置将自动减速或停止运行。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '张三', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (8, '家用电梯在安装时该预留多大的尺寸呢', 'https://www.alsidt.com/puwen/20201103745.jpg', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '朋友们一定都坐过电梯，但你知道他的各个部分是怎么工作的吗？电梯可分为以下部分：\r\n\r\n\r\n\r\n电气控制系统：电气系统控制电梯运动，完成层选择、平面、速度测量和照明工作。指示呼叫系统随时显示轿厢的运动方向和地板位置。轿厢和对重：轿厢是承载乘客或其他负荷的箱体部件。对重用于平衡轿厢负荷，降低电机功率。轿厢和对重主要通过钢丝绳连接。除钢丝绳外，还有连接轿厢和对重的补偿装置。补偿装置用于补偿运动中钢丝绳张力和重量的变化，稳定牵引电机负载，准确停车。\r\n\r\n\r\n\r\n钢丝绳：钢丝绳两端连接轿厢和对重，缠绕在牵引轮和导轮上，即牵引比为1：1。或者两端分别固定，钢丝绳分为两部分，一部分通过滑轮中间，另一部分通过滑轮中间。即牵引比为2：1。\r\n\r\n\r\n\r\n牵引机：当永磁同步电机时，牵引机直接与牵引轮同步旋转。当异步电机时，牵引机驱动牵引轮通过减速器旋转，牵引绳与牵引轮摩擦产生的牵引力实现汽车和重型升降运动，达到运输目的。\r\n\r\n\r\n\r\n主机闸门：电机工作时松开闸门，取消主机运行阻力，确保电梯正常运行，突然停电时制动，停止轿厢运动。在电梯正常状态下，当层站停靠时开关门时，闸门也断电，保持轿厢静止，供人员和货物进出。导轨和导靴：固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨往复提升，防止轿厢在运行中倾斜或摆动。\r\n\r\n电梯有轿厢和对重，通过钢丝绳连接。钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯轿厢和对重在电梯内导轨上上下移动。\r\n\r\n\r\n\r\n牵引绳的两端分别与轿厢和对重相连，缠绕在牵引轮和导向轮上。牵引电机通过减速器变速后驱动牵引轮旋转，通过牵引绳与牵引轮摩擦产生的牵引力，实现轿厢和对重的升降运动，达到运输目的。固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨来回升降，防止轿厢在运行过程中倾斜或摆动。电机工作时，经常关闭块式制动器松开闸门，使电梯运行，在失电时制动，使轿厢停止升降，并在指定层站上保持其静止状态，供人员和货物进出。轿厢是运载乘客或其他载荷的箱体部件，对重用于平衡轿厢载荷，降低电机功率。补偿装置用于补偿牵引绳运动中的张力和重量变化，使牵引电机负载稳定，使轿厢能够准确停放。电气系统可控制电梯运动，同时完成选层、平层、测速、照明工作。指示电话系统随时显示轿厢的运动方向和地板位置。确保电梯的安全。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '李四', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (9, '关于电梯的运作原理了解', 'https://www.alsidt.com/public/uploads/20230119/1b6510b81c10189744840f5940ff3af0.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '现在每个人的生活水平都在不断提高，越来越多的人住在别墅里。住在别墅后，需要去三楼和四楼甚至更高层是很常见的。此时，别墅家用电梯的使用越来越普遍。家用电梯的种类和型号仍然很多。购买电梯时，需要根据具体情况选择合适的电梯尺寸和承重比例。家用电梯预留尺寸说明中有相关说明。在选择时，您可以进行比较，看看它有多大，尺寸正好，以满足需求。根据不同的分类，家用电梯的结构不同，结构也决定了尺寸。家用电梯的选择、不同的配置和尺寸也有很大的选择空间。我们应该分析具体情况。\r\n\r\n\r\n\r\n家用电梯分为液压家用电梯、无机房牵引家用电梯和进口螺旋家用电梯。电梯结构由井道和坑、升降平台或轿厢、层站等组成。层站越多，尺寸和高度就越高。\r\n\r\n\r\n\r\n一、观光别墅电梯，最小预留尺寸：1200mm*1380mm。观光别墅电梯不仅可以安装在室内，也可以安装在室外，空间较少，大大提高了空间利用率。\r\n\r\n\r\n\r\n二、大型重型别墅电梯，最小预留尺寸：1565mm*2320mm。大型载重别墅电梯空间大，便于我们携带一些体积大、不易移动的物品。\r\n\r\n\r\n\r\n三、优雅轿厢别墅电梯，最小预留尺寸：1500mm*1760mm。优雅的轿厢别墅电梯内部优雅宽敞，占用空间小，安全舒适并存，是传统电梯无法比拟的。\r\n\r\n', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>\r\n<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '王麻子', '2023-01-19 12:30:44', 0);
INSERT INTO `t_article` VALUES (10, '家用电梯在安装时该预留多大的尺寸呢', 'https://www.alsidt.com/public/uploads/20230111/6011a08464f22595117d27e2c640061f.png', '电梯会自动停止运行，没有危险。如果供电部门有计划停电，电梯会提前通知或停止运行。', '朋友们一定都坐过电梯，但你知道他的各个部分是怎么工作的吗？电梯可分为以下部分：\r\n\r\n\r\n\r\n电气控制系统：电气系统控制电梯运动，完成层选择、平面、速度测量和照明工作。指示呼叫系统随时显示轿厢的运动方向和地板位置。轿厢和对重：轿厢是承载乘客或其他负荷的箱体部件。对重用于平衡轿厢负荷，降低电机功率。轿厢和对重主要通过钢丝绳连接。除钢丝绳外，还有连接轿厢和对重的补偿装置。补偿装置用于补偿运动中钢丝绳张力和重量的变化，稳定牵引电机负载，准确停车。\r\n\r\n\r\n\r\n钢丝绳：钢丝绳两端连接轿厢和对重，缠绕在牵引轮和导轮上，即牵引比为1：1。或者两端分别固定，钢丝绳分为两部分，一部分通过滑轮中间，另一部分通过滑轮中间。即牵引比为2：1。\r\n\r\n\r\n\r\n牵引机：当永磁同步电机时，牵引机直接与牵引轮同步旋转。当异步电机时，牵引机驱动牵引轮通过减速器旋转，牵引绳与牵引轮摩擦产生的牵引力实现汽车和重型升降运动，达到运输目的。\r\n\r\n\r\n\r\n主机闸门：电机工作时松开闸门，取消主机运行阻力，确保电梯正常运行，突然停电时制动，停止轿厢运动。在电梯正常状态下，当层站停靠时开关门时，闸门也断电，保持轿厢静止，供人员和货物进出。导轨和导靴：固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨往复提升，防止轿厢在运行中倾斜或摆动。\r\n\r\n电梯有轿厢和对重，通过钢丝绳连接。钢丝绳由驱动装置（牵引机）的牵引驱动，使电梯轿厢和对重在电梯内导轨上上下移动。\r\n\r\n\r\n\r\n牵引绳的两端分别与轿厢和对重相连，缠绕在牵引轮和导向轮上。牵引电机通过减速器变速后驱动牵引轮旋转，通过牵引绳与牵引轮摩擦产生的牵引力，实现轿厢和对重的升降运动，达到运输目的。固定在轿厢上的导靴可沿安装在建筑井道墙上的固定导轨来回升降，防止轿厢在运行过程中倾斜或摆动。电机工作时，经常关闭块式制动器松开闸门，使电梯运行，在失电时制动，使轿厢停止升降，并在指定层站上保持其静止状态，供人员和货物进出。轿厢是运载乘客或其他载荷的箱体部件，对重用于平衡轿厢载荷，降低电机功率。补偿装置用于补偿牵引绳运动中的张力和重量变化，使牵引电机负载稳定，使轿厢能够准确停放。电气系统可控制电梯运动，同时完成选层、平层、测速、照明工作。指示电话系统随时显示轿厢的运动方向和地板位置。确保电梯的安全。', '<h5>职位描述：</h5>\r\n													<p>\r\n														熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；\r\n													</p>\r\n													<p>\r\n														有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；\r\n													</p>\r\n													<p>\r\n														具备良好的沟通协调能力、系统性思维和创新意识；\r\n													</p>\r\n													<p>\r\n														具有产品需求、归纳能力、市场敏觉洞察能力；\r\n													</p>\r\n													<p>\r\n														经历过完整的企业级应用产品生命周期；\r\n													</p>\r\n													<p>\r\n														有TOB企业5年以上产品经理工作经验；\r\n													</p>\r\n													<p>\r\n														有前端相关技术背景，具有产品架构师能力者优先考虑。\r\n													</p>\r\n													\r\n													<h5>请将您的简历发送至： <a href=\"mailto:jobs@XXX\">jobs@XXX</a></h5>', '王麻子', '2023-01-19 12:30:44', 0);

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company`  (
  `company_id` int NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '公司介绍',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '二维码',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES (1, '四川XXXX有限公司', '      四川XXXX公司是一家上海技术性协作、出示竖直运输解决方法及相关产品的产品研发、设计方案、生产制造与定制加工的技术专业企业，关键商品包含别墅用家用电梯、家用电梯、无机房电梯、商业家用电梯、载货电梯及其旧楼加装电梯等，为智能化日常生活出示安全性、靠谱与方便快捷的竖直运输机器设备与定制加工。企业历经十多年的产品发展和技术沉淀，长期积累了精湛的新产品开发、设计方案、生产制造与定制加工工作经验。并在四川成都优秀的家用电梯设计方案与技术性加工工艺的基本上，创建了健全的家用电梯产品研发与设计方案的工作中管理体系，商品在符合我国检测标准和欧州检测标准的基本上，可依据品牌和市场与顾客的要求快速设计方案与生产制造出合乎顾客人性化要求的商品。如对于别墅电梯或家用电梯品牌和市场，可依据具体在现场状况和客户满意度，出示5种之上的不一样商品以考虑不一样的要求。', '15284739237', '四川省 成都市 高新区', NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_designer
-- ----------------------------
DROP TABLE IF EXISTS `t_designer`;
CREATE TABLE `t_designer`  (
  `designer_id` int NOT NULL AUTO_INCREMENT COMMENT '设计师id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_designer
-- ----------------------------
INSERT INTO `t_designer` VALUES (1, '张蕊慧', 'https://img2.baidu.com/it/u=1565102931,1496232926&fm=253&fmt=auto&app=120&f=JPEG', '家装电梯设计师总监', NULL, '2020-10-03', 0);
INSERT INTO `t_designer` VALUES (2, '赵思怡', 'https://img0.baidu.com/it/u=3322372371,455129844&fm=253&fmt=auto&app=138&f=JPEG', '成都别墅电梯总装设计师', NULL, '2020-10-03', 0);
INSERT INTO `t_designer` VALUES (3, '陈并全', 'https://img0.baidu.com/it/u=1613885461,1902519898&fm=253&fmt=auto&app=138&f=JPEG', '家用电梯安全电路技术设计师', NULL, '2020-10-03', 0);
INSERT INTO `t_designer` VALUES (4, '王叶琴', 'https://img2.baidu.com/it/u=3785996878,2621443612&fm=253&fmt=auto&app=138&f=JPEG', '家装电梯整体方案设计师', NULL, '2020-10-03', 0);
INSERT INTO `t_designer` VALUES (5, '杨丰具', 'https://img0.baidu.com/it/u=1613885461,1902519898&fm=253&fmt=auto&app=138&f=JPEG', '电梯装修设计师', NULL, '2020-10-03', 0);
INSERT INTO `t_designer` VALUES (6, '秦慧潇', 'https://img2.baidu.com/it/u=1565102931,1496232926&fm=253&fmt=auto&app=120&f=JPEG', '电梯设计师', NULL, '2020-10-03', 0);

-- ----------------------------
-- Table structure for t_example
-- ----------------------------
DROP TABLE IF EXISTS `t_example`;
CREATE TABLE `t_example`  (
  `example_id` bigint NOT NULL AUTO_INCREMENT COMMENT '案例id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '案例名称',
  `example_type` int NULL DEFAULT NULL COMMENT '案例种类（0，1，2，3，4，5）',
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '案例图片(1-16张)',
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`example_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_example
-- ----------------------------
INSERT INTO `t_example` VALUES (1, '成都雅居乐花园安装家用电梯', 0, 'https://www.alsidt.com/public/uploads/20201003/42835265b591791c3f5e15917f437763.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', NULL, NULL, '成都别墅家用电梯\r\n别墅家用电梯（小机房）\r\n\r\n都市建筑优选解决方案\r\n\r\n成都奥斯别墅小机房电梯的推出，引领了电梯行业从此趋向于小机房设备配置，小机房电梯既满足客运、也可以用于货运；适用于普通办公室、酒店、住宅楼、甚至是摩天大厦等各种类型的建筑。\r\n\r\n1、节省30%的机房面积\r\n\r\n2、便捷安装 提高效率\r\n\r\n3、降低成本\r\n\r\n4、高效节能 \r\n\r\n家用电梯（无机房）\r\n\r\n随着技术的进步和发展，亚洲富士电梯以深谙环保理念、节能降耗、节约建筑面积为己任，推出了亚洲富士无机房电梯，该款电梯只需要一个独立的井道空间，无需机房。\r\n\r\n 1、减少40%的电梯能耗\r\n\r\n2、节约10%的建筑面积', NULL, '2020-10-03', 0);
INSERT INTO `t_example` VALUES (2, '成都麓山国际家用电梯安装展示效果', 1, 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '成都麓山国际别墅电梯安装展示效果（只有图片没得内容）', NULL, '2020-10-03', 0);
INSERT INTO `t_example` VALUES (3, '成都别墅家用电梯各种装修风格展示', 2, 'https://www.alsidt.com/public/uploads/20201003/880fdc8f430da010a1e91c68fa4440d8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '根据不同风格、不同结构的别墅，灵巧设计，空间利用率高，使电梯完全融入别墅之中，打造极具美学品质的电梯空间和人性化乘梯体验。可无土建井道，量身定做钢结构井道，省时省力。电压可低至220V，耗电量低，低碳环保节能。自主选择符合自己审美观的别墅梯轿厢、厅门样式，完全按照自己的想法设计外观，适合各种装修风格。为私人休闲生活增添方便实用、舒心的乐趣。', NULL, '2020-10-03', 0);
INSERT INTO `t_example` VALUES (4, '成都别墅家用电梯各种装修风格展示', 3, 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_example` VALUES (5, '成都别墅家用电梯各种装修风格展示', 4, 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_example` VALUES (6, '成都别墅家用电梯各种装修风格展示', 5, 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', 'https://www.alsidt.com/public/uploads/20201003/87fe6fb24f1dca3319c0ce8d5132439c.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `t_slideshow`;
CREATE TABLE `t_slideshow`  (
  `slideshow_id` int NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`slideshow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_slideshow
-- ----------------------------
INSERT INTO `t_slideshow` VALUES (1, 'https://img0.baidu.com/it/u=4251574947,2046716778&fm=253&fmt=auto&app=138&f=JPEG', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (2, 'https://www.alsidt.com/public/uploads/20200924/40b2d69f2f89c991a6787925ea468df1.jpg', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (3, 'https://picx.zhimg.com/v2-fef8fe3a4808fcd08285665d5030a3a5_1440w.jpg', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (4, 'https://img2.baidu.com/it/u=2964640314,2315680966&fm=253&fmt=auto&app=138&f=PNG', NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '电梯种类id',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '电梯种类名称',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '家用电梯', 0, '2020-10-03 ');
INSERT INTO `t_type` VALUES (2, '别墅电梯', 0, '2020-10-03 ');
INSERT INTO `t_type` VALUES (3, '观光电梯', 0, '2020-10-03 ');

-- ----------------------------
-- Table structure for t_type_details
-- ----------------------------
DROP TABLE IF EXISTS `t_type_details`;
CREATE TABLE `t_type_details`  (
  `type_detais_id` int NOT NULL AUTO_INCREMENT COMMENT '种类详情id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `image_url1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `image_url2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_id` int NULL DEFAULT NULL COMMENT '产品类型id',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述内容',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`type_detais_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_type_details
-- ----------------------------
INSERT INTO `t_type_details` VALUES (1, '成都蔚蓝卡地亚家用别墅电梯', 'https://www.alsidt.com/public/uploads/20201003/d0b0b777240dadeb0e36656ceffa8d19.jpg', 'https://www.alsidt.com/public/uploads/20201003/415c5ac4bef61cdc4b647a3d15ddaafd.jpg', 'https://www.alsidt.com/public/uploads/20201003/ead8f6adb992833dc6f6b7bf8f1bcdad.jpg', 'https://www.alsidt.com/public/uploads/20201003/ead8f6adb992833dc6f6b7bf8f1bcdad.jpg', 'https://www.alsidt.com/public/uploads/20220331/e83d8c0d46f6bfc580b3642775c22dd9.png', 1, '成都蔚蓝卡地亚家用别墅电梯', '2020-10-03', 0);
INSERT INTO `t_type_details` VALUES (2, '成都雅居乐花园安装家用电梯', 'https://www.alsidt.com/public/uploads/20201003/74b77af26cfc8eacfea31a30d307a5d3.jpg', 'https://www.alsidt.com/public/uploads/20201003/42835265b591791c3f5e15917f437763.jpg', 'https://www.alsidt.com/public/uploads/20201003/45fa74a8ccbdaead063c99a9537f2d2d.jpg', 'https://www.alsidt.com/public/uploads/20201003/58fe9951ce28b923977ffc697e2ded25.jpg', NULL, 1, '成都雅居乐花园安装家用电梯', '2020-10-03', 0);
INSERT INTO `t_type_details` VALUES (3, '成都观光电梯设计案例展示', 'https://www.alsidt.com/public/uploads/20220331/e83d8c0d46f6bfc580b3642775c22dd9.png', 'https://www.alsidt.com/public/uploads/20220331/0d63c80486b1d0178095120a998236d2.png', 'https://www.alsidt.com/public/uploads/20201003/554effd7bc5ba0c43b2d4ace0e86eaa5.jpg', NULL, NULL, 1, '成都观光电梯设计案例展示', '2020-10-03', 0);
INSERT INTO `t_type_details` VALUES (4, '成都观光电梯设计案例展示', 'https://www.alsidt.com/public/uploads/20220331/e83d8c0d46f6bfc580b3642775c22dd9.png', 'https://www.alsidt.com/public/uploads/20201003/42835265b591791c3f5e15917f437763.jpg', NULL, NULL, NULL, 2, '成都雅居乐花园安装家用电梯', NULL, 0);
INSERT INTO `t_type_details` VALUES (5, '成都雅居乐花园安装家用电梯', 'https://www.alsidt.com/public/uploads/20201003/42835265b591791c3f5e15917f437763.jpg', NULL, NULL, NULL, NULL, 2, '成都雅居乐花园安装家用电梯', NULL, 0);
INSERT INTO `t_type_details` VALUES (6, '成都观光电梯设计案例展示', 'https://www.alsidt.com/public/uploads/20201003/ead8f6adb992833dc6f6b7bf8f1bcdad.jpg', 'https://www.alsidt.com/public/uploads/20201003/ead8f6adb992833dc6f6b7bf8f1bcdad.jpg', NULL, NULL, NULL, 3, '成都蔚蓝卡地亚家用别墅电梯成都蔚蓝卡地亚家用别墅电梯', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
