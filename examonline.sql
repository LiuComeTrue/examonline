/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : examonline

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2018-04-19 23:27:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrator`
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `adid` varchar(20) NOT NULL DEFAULT '',
  `aname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('666', 'nico', '男', '123456789987', '666', '13464546628');

-- ----------------------------
-- Table structure for `choicequestion`
-- ----------------------------
DROP TABLE IF EXISTS `choicequestion`;
CREATE TABLE `choicequestion` (
  `c_id` int(20) NOT NULL AUTO_INCREMENT,
  `c_question` varchar(1000) DEFAULT NULL,
  `c_choiceA` varchar(100) DEFAULT NULL,
  `c_choiceB` varchar(100) DEFAULT NULL,
  `c_choiceC` varchar(100) DEFAULT NULL,
  `c_choiceD` varchar(100) DEFAULT NULL,
  `c_answer` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=825 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choicequestion
-- ----------------------------
INSERT INTO `choicequestion` VALUES ('794', 'Do you know _________  Zunyi or not tomorrow?', 'A. whether are they leaving for', 'B. whether they are leaving for', 'C. if they are leaving for', 'D. if are they leaving for', 'A');
INSERT INTO `choicequestion` VALUES ('795', 'The policewoman asked the little boy ______.', 'A．where did he live', 'B．where he lived', 'C．where he lives', 'D．where does he lives', 'A');
INSERT INTO `choicequestion` VALUES ('796', '— Show me the map, please. I wonder ____________.— Look, it\'s here, in the east of China, near Taiwan Province.', 'A. where is Diaoyu Island', 'B. where Diaoyu Island is', 'C. what is Diaoyu Island like', 'D.sdausdh', 'C');
INSERT INTO `choicequestion` VALUES ('797', '-- Could you tell me_____ he came here?--He drove here himself.', 'A. how', 'B. why', 'C. when', 'D. whether', 'A');
INSERT INTO `choicequestion` VALUES ('798', '—Can you tell me ____ the prize, Tom?—Last year.', 'A. when you got', 'B. when did you get', 'C. when will you get', 'D. when you will get', 'B');
INSERT INTO `choicequestion` VALUES ('799', 'The math problem is so hard. I really don’t know_____.', 'A. how to do it', 'B. how to do', 'C. what to do it', 'D.sdhu', 'C');
INSERT INTO `choicequestion` VALUES ('800', '— Could you tell me   ?— Certainly. In half an hour.', 'A. when will the high speed train arrive', 'B. when the high speed train will arrive', 'C. when would the high speed train arrive', 'D. when the high speed train would arrive', 'D');
INSERT INTO `choicequestion` VALUES ('801', '—Excuse me, could you tell me ______ to get the post office?—Certainly. The No. 15 bus.', 'A. which bus I should take', 'B. I should take which bus', 'C. should I take which bus', 'D. which bus should I take', 'D');
INSERT INTO `choicequestion` VALUES ('802', 'I think _____ not difficult _____ English every morning', 'A. that; keep reading', 'B．it’s; keep reading', 'C. that; to keep reading', 'D．it; to keep reading', 'A');
INSERT INTO `choicequestion` VALUES ('803', '. —Could you tell me________________?—Yes, you can go there by bus.', 'A. how can I get to the Miao King City', 'B. where is the Miao King City', 'C. how I can get to the Miao King City', 'D. where the Miao King City is', 'D');
INSERT INTO `choicequestion` VALUES ('804', '. The math problem is so hard. I really don’t know_____.', 'A. how to do it', 'B. how to do', 'C. what to do it', 'D.shauskkskadl', 'A');
INSERT INTO `choicequestion` VALUES ('805', '.Everyone can play an important part in society. As members, we should try our best to do_____.', 'A.what we should do', 'B.what should we do', 'C.how we should do', 'D.how should we do', 'A');
INSERT INTO `choicequestion` VALUES ('806', '. ---Is Tom still in New York or already back at home?   ---I’m not sure __________. I’ll call to make sure.', 'A. how he will be back', 'B. that he has come back', 'C. why he has come back', 'D. if he has been back', 'C');
INSERT INTO `choicequestion` VALUES ('807', '. —Could you tell me _______ ?   —I’m not sure.', 'A.how many people have been out of hospita', 'B.when is Thanksgiving Day', 'C.which animal does he like best', 'D.what time will the dolphin show start', 'A');
INSERT INTO `choicequestion` VALUES ('808', '. －Hi,Bruce.Here\"s a letter for you.－Thanks. I wonder                .', 'A.who that letter was from', 'B.who was from that letter　　', 'C.who was that letter from', 'D.who from that letter was', 'B');
INSERT INTO `choicequestion` VALUES ('809', '.  I didn\'t see Lucy at  the party  last night. Do you know_______?', 'A. why didn\'t she come', 'B. what happened', 'C. when would she arrive', 'D. where she has been', 'C');
INSERT INTO `choicequestion` VALUES ('810', '. －Do you know        London for the 30th Olympic Games?－Next month.', 'A. when they visited', 'B. when will they visit', 'C. when did they visit', 'D. when they will visit', 'D');
INSERT INTO `choicequestion` VALUES ('811', '. His parents found        to tell him everything that had happened.', 'A. it necessary', 'B. that necessary', 'C. it is necessary', 'D. necessary', 'D');
INSERT INTO `choicequestion` VALUES ('812', '. —Could you please tell me         more about “shoe yogurt”?   —Certainly. You can look it up in this webpage.', 'A. when could I learn', 'B. Where I can learn', 'C. when I can learn', 'D. where could I learn', 'A');
INSERT INTO `choicequestion` VALUES ('813', '. Please tell me ______   next.', 'A. how to do it', 'B. what to do it', 'C. how do it', 'D.sdasd', 'D');
INSERT INTO `choicequestion` VALUES ('814', '. The teacher asked Li Hua ______.', 'A. why he was late for class', 'B. why was he late for class', 'C. why is he late for class', 'D.sadasdasd', 'B');
INSERT INTO `choicequestion` VALUES ('815', '. Over these years I have had a new understanding of        people traditionally call a perfect person.', 'A. how', 'B. what', 'C. who', 'D. whom', 'C');
INSERT INTO `choicequestion` VALUES ('816', '.—Do you know       ?   —At the end of July.', 'A.how soon is your sister running back home', 'B.how often Nancy from her pen friend', 'C.when the London Olympic Games will be held', 'D.when will the new computer game come out', 'D');
INSERT INTO `choicequestion` VALUES ('817', '. ----Peter, is there anything else you want to know about China? -----Yes, I am still wondering     .', 'A.how is Chinese paper cut made', 'B.how was the Great Wall built in ancient times', 'C.why the Chinese people like to play the dragon dance', 'D.why do the Chinese people eat rice dumplings at Dragon Boat Festival', 'D');
INSERT INTO `choicequestion` VALUES ('818', '. We haven’t discussed yet ______.', 'A. where we are going to put our new table', 'B. where are we going to put our new table', 'C. what we are going to put our new table', 'D. what are we going to put our new table', 'A');
INSERT INTO `choicequestion` VALUES ('819', '. Can you tell me       in the future?', 'A. how life will be like', 'B. how will life be like', 'C. what life will be like', 'D. what will life be like', 'D');
INSERT INTO `choicequestion` VALUES ('820', '. — Tom, please tell me      .—In Sunshine Second School.', 'A. where will the match take place', 'B. where the match will take please', 'C. Many hands make light work', 'D. Don’t put all your eggs in one basket', 'A');
INSERT INTO `choicequestion` VALUES ('821', '. I wonder ______.', 'A. if Dr Ma still works on the ORBIS plane', 'B. how much does the tallest man in the world weigh', 'C. when Audrey Hepburn had entered the film industry', 'D. that Armstrong was the first man to walk on the moon', 'A');
INSERT INTO `choicequestion` VALUES ('822', '. —What did your teacher say this morning?—She told us ________.', 'A. why was Tom late for school again', 'B. whether we had too much homework', 'C. how she did come to school this morning', 'D. that we would have a test soon', 'C');
INSERT INTO `choicequestion` VALUES ('823', '. -- Show me the map, please. I wonder________.     -- Look, it\'s here, in the east of China, near Taiwan Province.', 'A. where is Diaoyu Island', 'B. where Diaoyu Island is', 'C. what is Diaoyu Island like', 'D.sssssss', 'A');
INSERT INTO `choicequestion` VALUES ('824', '.Many buildings ______ on both sides of the street the next year.', 'A. will build', 'B. were built', 'C. are to be built', 'D. will be built', 'A');

-- ----------------------------
-- Table structure for `fillquestion`
-- ----------------------------
DROP TABLE IF EXISTS `fillquestion`;
CREATE TABLE `fillquestion` (
  `f_id` int(20) NOT NULL AUTO_INCREMENT,
  `f_question` varchar(1000) DEFAULT NULL,
  `f_answer` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fillquestion
-- ----------------------------
INSERT INTO `fillquestion` VALUES ('125', 'Many of us were raised with the saying \"Waste not, want not.” None of us_____h    , can completely avoid waste in our lives.', 'however');
INSERT INTO `fillquestion` VALUES ('126', 'Any kind of waste is thoughtless. Whether we waste our potential talents, our own time, our limited natural_____,our money, or other people\'s time,', 'resources');
INSERT INTO `fillquestion` VALUES ('127', 'each of us can become more aware and careful. The smallest good habits can make a big _d    .  It\'s a good feeling to know in our hearts', 'best');
INSERT INTO `fillquestion` VALUES ('128', 'we are doing our(79)h    in a world that is in serious trouble.  By focusing on______oil, water, paper, food, and clothing,', 'saving');
INSERT INTO `fillquestion` VALUES ('129', 'we are playing a part ________cutting down on waste.', 'in');
INSERT INTO `fillquestion` VALUES ('130', 'We must keep reminding __________that it is easier to get into', 'focus');
INSERT INTO `fillquestion` VALUES ('131', 'something ________it is to get out of it. Actually,', 'say');
INSERT INTO `fillquestion` VALUES ('132', 'severe damaged ____to our land is fairly recent in the history of our evolution.', 'brother');
INSERT INTO `fillquestion` VALUES ('133', 'It\'s time for us to____no to waste so that our grandchildren’s children will be able to develop well.', 'damage');
INSERT INTO `fillquestion` VALUES ('134', '.We can\'t solve all the problems of waste, but we can encourage mindfulness.ourselves', 'say');
INSERT INTO `fillquestion` VALUES ('135', '.The first few weeks of this __________________were unusually cold.', 'spring');
INSERT INTO `fillquestion` VALUES ('136', '.Take the lift to the __________________floor, and you will find the gym.', 'tenth');
INSERT INTO `fillquestion` VALUES ('137', '.We can eat out if you like, but I would __________________to stay in.', 'prefer');
INSERT INTO `fillquestion` VALUES ('138', '.Keep in mind that it is a shame to __________________food.', 'waste');
INSERT INTO `fillquestion` VALUES ('139', '.It was __________________of Mary to quit her job and start her own business.', 'brave');
INSERT INTO `fillquestion` VALUES ('140', '.I’m happy that my 80-year-old grandma has learned how to __________________from the Internet.', 'download');
INSERT INTO `fillquestion` VALUES ('141', '.They failed to reach a settlement, because they __________________too much with each other.', 'download');
INSERT INTO `fillquestion` VALUES ('142', '.Men and Women must be treated __________________in education and employment.', 'depth');
INSERT INTO `fillquestion` VALUES ('143', '.On June 27, 2012, the Jiaolong reached a __________________of 7, 062 meters in the Pacific Ocean.', 'depth');
INSERT INTO `fillquestion` VALUES ('144', '.The advertisement for engineers in the local paper attracted many __________________.', 'applicants');
INSERT INTO `fillquestion` VALUES ('145', '.In 1969,the pollution was terrible along the Cuyahoga River Cleveland,________Ohio.', 'was');
INSERT INTO `fillquestion` VALUES ('146', '.It ______unimaginable that it could ever be cleaned up. The river was so polluted that', 'actually');
INSERT INTO `fillquestion` VALUES ('147', '.it ________caught fire and burned. Now, ears later,', 'the');
INSERT INTO `fillquestion` VALUES ('148', '.this river is one of ____most outstanding examples of environmental cleanup.', 'the');
INSERT INTO `fillquestion` VALUES ('149', '.But the river wasn’t changed in a few days ______even a few months.', 'a habit');
INSERT INTO `fillquestion` VALUES ('150', '.It took years of work________the industrial pollution and clean the water. Finally, that hard work paid off and now the', 'reduce');
INSERT INTO `fillquestion` VALUES ('151', '.water in the river is________ than ever.', 'clean');
INSERT INTO `fillquestion` VALUES ('152', '.Maybe you are facing ______an impossible situation.', 'that');
INSERT INTO `fillquestion` VALUES ('153', '.Maybe you leave a habit _____is driving your family crazy. Possibly you drink too much or don’t know how to control your credit card use. When you face such an impossible situation ,don’t you want a quick fix and something to change immediately?', 'some');
INSERT INTO `fillquestion` VALUES ('154', '.While there are __________ stories of instant transformation,', 'sth');
INSERT INTO `fillquestion` VALUES ('155', '.for most of us the__________ are gradual and require a lot of effort and work, like cleaning up a polluted river.', 'reduce');
INSERT INTO `fillquestion` VALUES ('156', '.Just be______(patience).', 'the water');
INSERT INTO `fillquestion` VALUES ('157', '.Many of us were raised with the saying \"Waste not, want not.” None of us_____h    , can completely avoid waste in our lives.', 'however');
INSERT INTO `fillquestion` VALUES ('158', '.Any kind of waste is thoughtless. Whether we waste our potential talents, our own time, our limited natural_____,our money, or other people\'s time,', 'resources');
INSERT INTO `fillquestion` VALUES ('159', '.each of us can become more aware and careful. The smallest good habits can make a big _d    .  It\'s a good feeling to know in our hearts', 'best');
INSERT INTO `fillquestion` VALUES ('160', '.we are doing our(79)h    in a world that is in serious trouble.  By focusing on______oil, water, paper, food, and clothing,', 'saving');
INSERT INTO `fillquestion` VALUES ('161', '.we are playing a part ________cutting down on waste.', 'in');
INSERT INTO `fillquestion` VALUES ('162', '.We must keep reminding __________that it is easier to get into', 'focus');
INSERT INTO `fillquestion` VALUES ('163', '.something ________it is to get out of it. Actually,', 'say');
INSERT INTO `fillquestion` VALUES ('164', '.severe damaged ____to our land is fairly recent in the history of our evolution.', 'brother');
INSERT INTO `fillquestion` VALUES ('165', '.It\'s time for us to____no to waste so that our grandchildren’s children will be able to develop well.', 'damage');
INSERT INTO `fillquestion` VALUES ('166', '.We can\'t solve all the problems of waste, but we can encourage mindfulness.ourselves', 'say');
INSERT INTO `fillquestion` VALUES ('167', '. The first few weeks of this __________________were unusually cold.', 'spring');
INSERT INTO `fillquestion` VALUES ('168', '. Take the lift to the __________________floor, and you will find the gym.', 'tenth');
INSERT INTO `fillquestion` VALUES ('169', '. We can eat out if you like, but I would __________________to stay in.', 'prefer');
INSERT INTO `fillquestion` VALUES ('170', '. Keep in mind that it is a shame to __________________food.', 'waste');
INSERT INTO `fillquestion` VALUES ('171', '. It was __________________of Mary to quit her job and start her own business.', 'brave');
INSERT INTO `fillquestion` VALUES ('172', '. I’m happy that my 80-year-old grandma has learned how to __________________from the Internet.', 'download');
INSERT INTO `fillquestion` VALUES ('173', '. They failed to reach a settlement, because they __________________too much with each other.', 'download');
INSERT INTO `fillquestion` VALUES ('174', '. Men and Women must be treated __________________in education and employment.', 'depth');
INSERT INTO `fillquestion` VALUES ('175', '. On June 27, 2012, the Jiaolong reached a __________________of 7, 062 meters in the Pacific Ocean.', 'depth');
INSERT INTO `fillquestion` VALUES ('176', '. The advertisement for engineers in the local paper attracted many __________________.', 'applicants');
INSERT INTO `fillquestion` VALUES ('177', '.In 1969,the pollution was terrible along the Cuyahoga River Cleveland,________Ohio.', 'was');
INSERT INTO `fillquestion` VALUES ('178', '.It ______unimaginable that it could ever be cleaned up. The river was so polluted that', 'actually');
INSERT INTO `fillquestion` VALUES ('179', '.it ________caught fire and burned. Now, ears later,', 'the');
INSERT INTO `fillquestion` VALUES ('180', '.this river is one of ____most outstanding examples of environmental cleanup.', 'the');
INSERT INTO `fillquestion` VALUES ('181', '.But the river wasn’t changed in a few days ______even a few months.', 'a habit');
INSERT INTO `fillquestion` VALUES ('182', '.It took years of work________the industrial pollution and clean the water. Finally, that hard work paid off and now the', 'reduce');
INSERT INTO `fillquestion` VALUES ('183', '.water in the river is________ than ever.', 'clean');
INSERT INTO `fillquestion` VALUES ('184', '.Maybe you are facing ______an impossible situation.', 'that');
INSERT INTO `fillquestion` VALUES ('185', '.Maybe you leave a habit _____is driving your family crazy. Possibly you drink too much or don’t know how to control your credit card use. When you face such an impossible situation ,don’t you want a quick fix and something to change immediately?', 'some');
INSERT INTO `fillquestion` VALUES ('186', '.While there are __________ stories of instant transformation,', 'sth');
INSERT INTO `fillquestion` VALUES ('187', '.for most of us the__________ are gradual and require a lot of effort and work, like cleaning up a polluted river.', 'reduce');
INSERT INTO `fillquestion` VALUES ('188', '.Just be______(patience).', 'the water');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(20) NOT NULL,
  `sname` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '纳兰', '男', '1', '123456', '1', '666666');
INSERT INTO `student` VALUES ('10', '努努', '女', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('2', '莫容', '女', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('3', '流云', '男', '1', '123465', '1', '1');
INSERT INTO `student` VALUES ('4', '诸葛', '男', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('5', '紫嫣', '女', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('6', '若兰', '女', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('7', '子云', '女', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('8', '沐斋', '男', '1', '123456', '1', '1');
INSERT INTO `student` VALUES ('9', '尼克', '男', '1', '123456', '1', '1');

-- ----------------------------
-- Table structure for `stuscore`
-- ----------------------------
DROP TABLE IF EXISTS `stuscore`;
CREATE TABLE `stuscore` (
  `sid` varchar(20) NOT NULL,
  `score` int(3) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stuscore
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(20) NOT NULL,
  `tname` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `cardnumber` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '国华', '男', '2', '123456', '2', '1234456');
INSERT INTO `teacher` VALUES ('2', '沐斋', '男', '3', '2', '3', '3');

-- ----------------------------
-- Table structure for `testpaper`
-- ----------------------------
DROP TABLE IF EXISTS `testpaper`;
CREATE TABLE `testpaper` (
  `nowid` int(10) NOT NULL DEFAULT '0',
  `preid` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`nowid`,`preid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testpaper
-- ----------------------------

-- ----------------------------
-- Table structure for `testtime`
-- ----------------------------
DROP TABLE IF EXISTS `testtime`;
CREATE TABLE `testtime` (
  `stime` datetime NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`stime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testtime
-- ----------------------------
