/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80018
Source Host           : localhost:3308
Source Database       : webdata

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2023-10-02 23:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `zzz_about`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_about`;
CREATE TABLE `zzz_about` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) DEFAULT NULL,
  `a_sid` int(11) DEFAULT '0',
  `a_lid` int(2) DEFAULT '1',
  `a_enname` varchar(255) DEFAULT NULL,
  `a_visits` int(11) DEFAULT '0',
  `a_order` int(3) DEFAULT '9',
  `a_onoff` int(1) DEFAULT '0',
  `a_addtime` datetime DEFAULT NULL,
  `a_edittime` datetime DEFAULT NULL,
  `a_key` varchar(255) DEFAULT NULL,
  `a_content` longtext,
  `a_desc` longtext,
  `a_pic` varchar(255) DEFAULT NULL,
  `a_picsurl` longtext,
  `a_picsname` longtext,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_about
-- ----------------------------
INSERT INTO `zzz_about` VALUES ('1', '学院介绍', '7', '1', null, '0', '9', '1', '2023-07-19 11:40:18', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('2', '学院批文', '8', '1', null, '0', '9', '1', '2023-07-19 11:40:28', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('3', '办学资源', '9', '1', null, '0', '9', '1', '2023-07-19 11:40:39', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('4', '办学优势', '10', '1', null, '0', '9', '1', '2023-07-19 11:40:47', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('5', '人才招聘', '15', '1', null, '0', '9', '1', '2023-07-19 11:43:39', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('6', '电子信息工程', '16', '1', null, '0', '9', '1', '2023-07-19 11:43:56', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('7', '通信工程', '17', '1', null, '0', '9', '1', '2023-07-19 11:44:06', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('8', '机器人与自动化系统', '18', '1', null, '0', '9', '1', '2023-07-19 11:44:23', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('9', '人工智能与自适应系统', '19', '1', null, '0', '9', '1', '2023-07-19 11:44:47', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('10', '管理架构', '20', '1', null, '0', '9', '1', '2023-07-19 11:45:02', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('11', '机构组成', '21', '1', null, '0', '9', '1', '2023-07-19 11:45:16', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('12', '分工及联系方式', '22', '1', null, '0', '9', '1', '2023-07-19 11:45:31', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('13', '本科生招生', '23', '1', null, '0', '9', '1', '2023-07-19 11:46:07', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('14', '研究生招生', '24', '1', null, '0', '9', '1', '2023-07-19 11:46:16', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('15', '就业前景', '25', '1', null, '0', '9', '1', '2023-07-19 11:46:24', null, null, null, null, null, null, null);
INSERT INTO `zzz_about` VALUES ('16', 'Honor and Awards', '29', '1', '', '1', '1', '1', '2023-09-29 09:48:00', '2023-09-30 22:26:16', '', '&lt;p&gt;Please enter content&lt;/p&gt;', 'asdfasdf', '', '', 'Honor and Awards');
INSERT INTO `zzz_about` VALUES ('17', 'Patents', '35', '1', '', '1', '1', '1', '2023-09-30 09:40:20', '2023-09-30 22:00:32', '', '&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;p&gt;Patent1&lt;/p&gt;&lt;/td&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;Patent2&lt;/span&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;Patent3&lt;/span&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;Patent4&lt;/span&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;Patent5&lt;/span&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;td width=&quot;235&quot; valign=&quot;middle&quot; align=&quot;center&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;Patent6&lt;/span&gt;&lt;span style=&quot;text-align: -webkit-center;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'Patentsfasdfasdf', '', '', 'Patents');
INSERT INTO `zzz_about` VALUES ('18', 'Contact Us', '32', '1', '', '1', '1', '1', '2023-09-30 10:42:27', '2023-10-02 22:51:39', '', '&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;501&quot; valign=&quot;top&quot;&gt;&lt;iframe class=&quot;ueditor_baidumap&quot; src=&quot;http://localhost/plugins/ueditor/dialogs/map/show.html#center=12714826.17,2545953.31&amp;zoom=17&amp;width=95%&amp;height=500&amp;markers=12714826.17,2545953.31&amp;markerStyles=l,A&quot; frameborder=&quot;0&quot; width=&quot;95%&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;&lt;/td&gt;&lt;td width=&quot;223&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;margin-top:30px&quot;&gt;&lt;h4&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;&lt;br/&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;&lt;h4&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Address&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;9999 Generic Research Laboratory&lt;br/&gt;999 Fake Street Avenue&lt;br/&gt;City, State&lt;br/&gt;Country ZIP&lt;/p&gt;&lt;a href=&quot;http://maps.google.com/&quot;&gt;Show Map&lt;/a&gt;&lt;hr style=&quot;margin: 20px 0px; border-right: 0px; border-left: 0px; border-image: initial; border-top-style: solid; border-top-color: rgb(238, 238, 238); border-bottom-style: solid; border-bottom-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;h4&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Phone&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;Phone : 999-999-9999&lt;br/&gt;Cell : 999-999-9999&lt;/p&gt;&lt;a href=&quot;mailto:your.email@uni.edu&quot;&gt;Email Me&lt;/a&gt;&lt;hr style=&quot;margin: 20px 0px; border-right: 0px; border-left: 0px; border-image: initial; border-top-style: solid; border-top-color: rgb(238, 238, 238); border-bottom-style: solid; border-bottom-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;h4&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;strong&gt;Office Hours:&lt;/strong&gt;&lt;/span&gt;&lt;/h4&gt;&lt;p&gt;Monday-Friday (8.00am - 5.00pm)&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'Address9999 Generic Research Laboratory<br/>999 Fake Street Avenue<br/>City, State<br/>Country ZIP<br/>Show MapPhonePhone : 999-999-9999<br/>Cell : 999-999-9999<br/>Email MeOffice Hours:Monday-Friday (8.00am - 5.00pm)', '', '', 'Contact Us');

-- ----------------------------
-- Table structure for `zzz_ad`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_ad`;
CREATE TABLE `zzz_ad` (
  `adid` int(11) NOT NULL AUTO_INCREMENT,
  `adname` varchar(255) DEFAULT NULL,
  `adclass` varchar(255) DEFAULT NULL,
  `adimg` varchar(255) DEFAULT NULL,
  `adlink` varchar(255) DEFAULT NULL,
  `adwidth` varchar(255) DEFAULT NULL,
  `adheight` varchar(255) DEFAULT NULL,
  `adstime` varchar(255) DEFAULT NULL,
  `adetime` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `adonoff` int(1) DEFAULT '0',
  `adcontent` longtext,
  `lid` int(2) DEFAULT '1',
  `adstyle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_ad
-- ----------------------------
INSERT INTO `zzz_ad` VALUES ('1', '招生广告-pc', 'images', '/upload/ad/1659604991177645.jpg', '/?news/1683.html', '', '', '2022-08-04 17:22:33', '2023-08-04 17:22:33', '2022-08-04 17:23:18', '1', '', '1', null);
INSERT INTO `zzz_ad` VALUES ('2', '招生广告-mobile', 'images', '/upload/ad/1659604991177646.jpg', '', '', '', '2022-08-07 22:29:09', '2023-08-07 22:29:09', '2022-08-07 22:29:38', '1', '', '1', null);

-- ----------------------------
-- Table structure for `zzz_content`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_content`;
CREATE TABLE `zzz_content` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `c_title` longtext,
  `c_content` longtext,
  `c_lid` int(11) DEFAULT NULL,
  `c_sid` int(11) DEFAULT NULL,
  `c_user` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `c_type` longtext,
  `c_gid` int(11) DEFAULT NULL,
  `c_exc` longtext,
  `c_title2` longtext,
  `c_color` longtext,
  `c_link` longtext,
  `c_tag` longtext,
  `c_onoff` int(11) DEFAULT NULL,
  `c_order` int(11) DEFAULT NULL,
  `isoutlink` int(11) DEFAULT NULL,
  `istop` int(11) DEFAULT NULL,
  `isgood` int(11) DEFAULT NULL,
  `ispic` int(11) DEFAULT NULL,
  `c_visits` int(11) DEFAULT NULL,
  `c_addtime` datetime DEFAULT NULL,
  `c_edittime` datetime DEFAULT NULL,
  `c_endtime` datetime DEFAULT NULL,
  `c_picsurl` longtext,
  `c_picsname` longtext,
  `c_pic` longtext,
  `c_downurl` longtext,
  `c_downname` longtext,
  `c_pagename` longtext,
  `c_pagetitle` longtext,
  `c_pagekey` longtext,
  `c_pagedesc` longtext,
  `zauthor` longtext,
  `zsource` longtext,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_content
-- ----------------------------
INSERT INTO `zzz_content` VALUES ('1', 'Joe Smith', '&lt;p&gt;Assistant Professor of Science and Engineering&lt;/p&gt;&lt;p&gt;Ph.D. in Mechanical Engineering, Lorem Ipsum, 2013&lt;br/&gt;M.S. in Mechanical Engineering, HRV, 2011&lt;br/&gt;BASc in Engineering, University of Lorem Ipsum, 2009&lt;/p&gt;&lt;p&gt;Phone:&amp;nbsp;(999) 999-9999&lt;/p&gt;&lt;p&gt;Email:&amp;nbsp;&lt;a href=&quot;mailto:your.email@uni.edu&quot;&gt;your.email@uni.edu&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Address:&amp;nbsp;999 Fake Street Avenue, City, State Country ZIP&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.myperfectcv.co.uk/cv-examples/chemistry-lab-technician-cv-sample&quot;&gt;CV&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;http://scholar.google.com/&quot;&gt;Google Scholar&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://www.linkedin.com/&quot;&gt;Linkedin&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;http://www.researchgate.net/&quot;&gt;ResearchGate&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '2', '37', 'admin', 'news', '0', '1', 'Joe Smith', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-29 22:03:36', '2023-09-30 16:46:22', '0000-00-00 00:00:00', '/upload/news/1695995765413327.jpg', 'Joe Smith', '/upload/news/1695995765413327.jpg', '', '', '', '', '', 'Assistant Professor of Science and Engineering<br/>Ph.D. in Mechanical Engineering, Lorem Ipsum, 2013<br/>M.S. in Mechanical Engineering, HRV, 2011<br/>BASc in Engineering, University of Lorem Ipsum, 2009<br/>Phone: (999) 999-9999<br/>Email: you...', '', '');
INSERT INTO `zzz_content` VALUES ('2', 'Jane Carmona', '&lt;p&gt;Jane received her B.E. in Mechanical Engineering from the Lorem Ipsum University of Lorem Ipsum in 2015 with High Honors. Her current research focuses on metus libero, eleifend sit amet pretium et, porta ac urna. Suspendisse ullamcorper mollis ligula et fermentum. .&lt;/p&gt;&lt;p&gt;Email:&amp;nbsp;&lt;a href=&quot;mailto:jane.email@uni.edu&quot;&gt;jane.email@uni.edu&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Address:&amp;nbsp;999 Fake Street Avenue, City, State Country ZIP&lt;/p&gt;', '2', '37', 'admin', 'news', '0', '1', 'Jane Carmona', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-29 22:03:57', '2023-09-30 16:46:14', '0000-00-00 00:00:00', '/upload/news/1695996284177442.jpg', 'Jane Carmona', '/upload/news/1695996284177442.jpg', '', '', '', '', '', 'Jane received her B.E. in Mechanical Engineering from the Lorem Ipsum University of Lorem Ipsum in 2015 with High Honors. Her current research focuses on metus libero, eleifend sit amet pretium et, porta ac urna. Suspendisse ullamcorper mollis ligula et f...', '', '');
INSERT INTO `zzz_content` VALUES ('3', 'Ronny Simon', '&lt;p&gt;Ronny received his B.Tech in Electrical Engineering from the Lorem Ipsum Institute of Technology. His current research focuses on ullamcorper nibh ut orci eleifend varius elementum ut augue. Proin ornare, arcu et efficitur laoreet, purus ante dictum leo, vel pulvinar velit leo sed nunc.&lt;/p&gt;&lt;p&gt;Email:&amp;nbsp;&lt;a href=&quot;mailto:ronny.email@uni.edu&quot;&gt;ronny.email@uni.edu&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Address:&amp;nbsp;999 Fake Street Avenue, City, State Country ZIP&lt;/p&gt;', '2', '38', 'admin', 'news', '0', '1', 'Ronny Simon', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-29 22:05:03', '2023-09-30 16:47:04', '0000-00-00 00:00:00', '/upload/news/1695996333956617.jpg', 'Ronny Simon', '/upload/news/1695996333956617.jpg', '', '', '', '', '', 'Ronny received his B.Tech in Electrical Engineering from the Lorem Ipsum Institute of Technology. His current research focuses on ullamcorper nibh ut orci eleifend varius elementum ut augue. Proin ornare, arcu et efficitur laoreet, purus ante dictum leo, ...', '', '');
INSERT INTO `zzz_content` VALUES ('4', 'Jenny Lopez', '&lt;p&gt;Jenny received her B.S. degree in Mechanical Engineering from the Lorem Ipsum Technical University in 2012 with High Honors, where she focused on quis nisl vitae lectus pharetra dapibus. In sit amet erat purus. Proin finibus, nunc sed faucibus molestie, risus tellus sodales elit, nec luctus urna augue vitae dolor. Curabitur nisl eros, rhoncus eget mauris vitae.&lt;/p&gt;&lt;p&gt;Email:&amp;nbsp;&lt;a href=&quot;mailto:jenny.email@uni.edu&quot;&gt;jenny.email@uni.edu&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Address:&amp;nbsp;999 Fake Street Avenue, City, State Country ZIP&lt;/p&gt;', '2', '38', 'admin', 'news', '0', '1', 'Jenny Lopez', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-29 22:05:37', '2023-09-30 16:46:54', '0000-00-00 00:00:00', '/upload/news/1695996368646749.jpg', 'Jenny Lopez', '/upload/news/1695996368646749.jpg', '', '', '', '', '', 'Jenny received her B.S. degree in Mechanical Engineering from the Lorem Ipsum Technical University in 2012 with High Honors, where she focused on quis nisl vitae lectus pharetra dapibus. In sit amet erat purus. Proin finibus, nunc sed faucibus molestie, r...', '', '');
INSERT INTO `zzz_content` VALUES ('5', 'Funded Projects 1', '&lt;section style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;ol style=&quot;padding: 0px; margin-bottom: 10px; margin-left: 25px;&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;A. Ipsum, N. Tristique, D.J. Lorem, E. Morbi, D.W. Eget, “Pellentesque Massa”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;G. Augue, N. Massa, H. Turpis, X. Duis, S.V. Nunc, “Ipsum consequat nisl vel pretium lectus&amp;quot;, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;D.J. Nunc, N. Massa, E.N. Dignissim, “Felis eget velit aliquet sagittis id consectetur purus ut faucibus”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;P. Magna, Z. Malesuada, A. Maecenas, N. Vitae, “Duis convallis convallis tellus id interdum velit laoreet”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/section&gt;', '2', '34', 'admin', 'news', '0', '1', 'Funded Projects 1', '', '', '', '1', '9', null, '0', '0', '0', '1', '2023-09-30 21:12:40', '2023-09-30 21:58:36', '0000-00-00 00:00:00', '', 'Funded Projects 1', '', '', '', '', '', '', 'A. Ipsum, N. Tristique, D.J. Lorem, E. Morbi, D.W. Eget, “Pellentesque Massa”, 2018.<br/>G. Augue, N. Massa, H. Turpis, X. Duis, S.V. Nunc, “Ipsum consequat nisl vel pretium lectus\", 2018.<br/>D.J. Nunc, N. Massa, E.N. Dignissim, “Felis eget velit al...', '', '');
INSERT INTO `zzz_content` VALUES ('6', 'aasdfasdf', '&lt;ol style=&quot;padding: 0px; margin-bottom: 10px; margin-left: 25px; color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot; class=&quot; list-paddingleft-2&quot;&gt;&lt;li&gt;&lt;p&gt;A. Ipsum, N. Tristique, D.J. Lorem, E. Morbi, D.W. Eget, “Pellentesque Massa”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;G. Augue, N. Massa, H. Turpis, X. Duis, S.V. Nunc, “Ipsum consequat nisl vel pretium lectus&amp;quot;, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;D.J. Nunc, N. Massa, E.N. Dignissim, “Felis eget velit aliquet sagittis id consectetur purus ut faucibus”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;P. Magna, Z. Malesuada, A. Maecenas, N. Vitae, “Duis convallis convallis tellus id interdum velit laoreet”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;A. Ipsum, N. Tristique, D.J. Lorem, E. Morbi, D.W. Eget, “Pellentesque Massa”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;G. Augue, N. Massa, H. Turpis, X. Duis, S.V. Nunc, “Ipsum consequat nisl vel pretium lectus&amp;quot;, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;D.J. Nunc, N. Massa, E.N. Dignissim, “Felis eget velit aliquet sagittis id consectetur purus ut faucibus”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;P. Magna, Z. Malesuada, A. Maecenas, N. Vitae, “Duis convallis convallis tellus id interdum velit laoreet”, 2018.&lt;/p&gt;&lt;/li&gt;&lt;/ol&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '2', '35', 'admin', 'news', '0', '1', 'aasdfasdf', '', '', '', '1', '9', null, '0', '0', '0', '1', '2023-09-30 21:13:25', null, '0000-00-00 00:00:00', '', 'aasdfasdf', '', '', '', '', '', '', 'A. Ipsum, N. Tristique, D.J. Lorem, E. Morbi, D.W. Eget, “Pellentesque Massa”, 2018.<br/>G. Augue, N. Massa, H. Turpis, X. Duis, S.V. Nunc, “Ipsum consequat nisl vel pretium lectus&quot;, 2018.<br/>D.J. Nunc, N. Massa, E.N. Dignissim, “Felis eget velit al...', '', '');
INSERT INTO `zzz_content` VALUES ('7', 'Funded Projects 2', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.&lt;/span&gt;&lt;/p&gt;', '2', '34', 'admin', 'news', '0', '1', 'Funded Proje...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 21:55:56', null, '0000-00-00 00:00:00', '/upload/news/1696082286663645.jpg', 'tempic', '/upload/news/1696082286663645.jpg', '', '', '', '', '', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt molliti...', '', '');
INSERT INTO `zzz_content` VALUES ('8', 'Pellentesque Habitant Morbi Tristique Senectus Et', '&lt;p&gt;Q.E. Vulputate , E.R. Dictum, E.J. Pellentesque&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://pubs.acs.org/journal/nalefd&quot;&gt;Pellentesque Habitant, in press, 2018&lt;/a&gt;&lt;/p&gt;', '2', '41', 'admin', 'news', '0', '1', 'Pellentesque...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:01:14', null, '0000-00-00 00:00:00', '/upload/news/1696082559355711.jpg', 'Pellentesque Habitant Morbi Tristique Senectus Et', '/upload/news/1696082559355711.jpg', '', '', '', '', '', 'Q.E. Vulputate , E.R. Dictum, E.J. Pellentesque<br/>Pellentesque Habitant, in press, 2018<br/>', '', '');
INSERT INTO `zzz_content` VALUES ('9', 'Orci Nulla Pellentesque Dignissim', '&lt;p&gt;R. Faucibus, N. Purus, J. Quis, K. Pharetra&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://pubs.acs.org/journal/ancac3&quot;&gt;ACK Ipsum, 8(10), p. 233-342, 2017&lt;/a&gt;&lt;/p&gt;', '2', '41', 'admin', 'news', '0', '1', 'Orci Nulla P...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:02:44', null, '0000-00-00 00:00:00', '/upload/news/1696082586688629.jpg', 'Orci Nulla Pellentesque Dignissim', '/upload/news/1696082586688629.jpg', '', '', '', '', '', 'R. Faucibus, N. Purus, J. Quis, K. Pharetra<br/>ACK Ipsum, 8(10), p. 233-342, 2017<br/>', '', '');
INSERT INTO `zzz_content` VALUES ('10', 'Duis at consectetur lorem donec', '&lt;p&gt;H. Enim, G. Malesuada, A.R. Morbi, R.K. Tortor&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.nature.com/ncomms/&quot;&gt;Malesuada Fames, 5:4449, 2017&lt;/a&gt;&lt;/p&gt;', '2', '41', 'admin', 'news', '0', '1', 'Duis at cons...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:03:36', null, '0000-00-00 00:00:00', '/upload/news/1696082640272880.jpg', 'Duis at consectetur lorem donec', '/upload/news/1696082640272880.jpg', '', '', '', '', '', 'H. Enim, G. Malesuada, A.R. Morbi, R.K. Tortor<br/>Malesuada Fames, 5:4449, 2017<br/>', '', '');
INSERT INTO `zzz_content` VALUES ('11', 'Orci Nulla Pellentesque Dignissim', '&lt;p&gt;R. Faucibus, N. Purus, J. Quis, K. Pharetra&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://pubs.acs.org/journal/ancac3&quot;&gt;ACK Ipsum, 8(10), p. 233-342, 2017&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '2', '42', 'admin', 'news', '0', '1', 'Orci Nulla P...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:04:12', '2023-09-30 22:06:52', '0000-00-00 00:00:00', '/upload/news/1696082559355711.jpg', 'Orci Nulla Pellentesque Dignissim', '/upload/news/1696082559355711.jpg', '', '', '', '', '', 'R. Faucibus, N. Purus, J. Quis, K. Pharetra<br/>ACK Ipsum, 8(10), p. 233-342, 2017<br/><br/>', '', '');
INSERT INTO `zzz_content` VALUES ('12', 'Pellentesque Morbi Tristique Senectus Et', '&lt;p&gt;Q.E. Vulputate , E.R. Dictum, E.J. Pellentesque&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://pubs.acs.org/journal/nalefd&quot;&gt;Pellentesque Morbi, 2017&lt;/a&gt;&lt;/p&gt;', '2', '42', 'admin', 'news', '0', '1', 'Pellentesque...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:04:20', null, '0000-00-00 00:00:00', '/upload/news/1696082586688629.jpg', 'Pellentesque Morbi Tristique Senectus Et', '/upload/news/1696082586688629.jpg', '', '', '', '', '', 'Q.E. Vulputate , E.R. Dictum, E.J. Pellentesque<br/>Pellentesque Morbi, 2017<br/>', '', '');
INSERT INTO `zzz_content` VALUES ('13', 'Tellus molestie nunc non blandit massa', '&lt;p&gt;N. Placerat, R.J. Molestie, R. Mollis, E.K. Tellus&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://aip.scitation.org/journal/apl&quot;&gt;Urna Neque Viverra, 105(1), 013111, 2017&lt;/a&gt;&lt;/p&gt;', '2', '42', 'admin', 'news', '0', '1', 'Tellus moles...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:05:05', null, '0000-00-00 00:00:00', '/upload/news/1696082734169639.jpg', 'Tellus molestie nunc non blandit massa', '/upload/news/1696082734169639.jpg', '', '', '', '', '', 'N. Placerat, R.J. Molestie, R. Mollis, E.K. Tellus<br/>Urna Neque Viverra, 105(1), 013111, 2017<br/>', '', '');
INSERT INTO `zzz_content` VALUES ('14', 'Lorem ipsum dolor sit amet: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '2', '31', 'admin', 'news', '0', '1', 'Lorem ipsum ...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:18:26', '2023-10-02 22:59:17', '0000-00-00 00:00:00', '/upload/news/1696082286663645.jpg', 'tempic', '/upload/news/1696082286663645.jpg', '', '', '', '', '', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '');
INSERT INTO `zzz_content` VALUES ('15', 'Eget Nulla: Posuere urna nec tincidunt praesent. Egestas sed sed risus pretium quam.', '&lt;p&gt;Commodo ullamcorper a lacus vestibulum sed arcu non. Neque aliquam vestibulum morbi blandit cursus risus at ultrices mi.&lt;/p&gt;', '2', '31', 'admin', 'news', '0', '1', 'Eget Nulla: ...', '', '', '', '1', '9', null, '0', '0', '1', '1', '2023-09-30 22:18:46', '2023-09-30 22:23:46', '0000-00-00 00:00:00', '/upload/news/1696082286663645.jpg', 'tempic', '/upload/news/1696082286663645.jpg', '', '', '', '', '', 'Commodo ullamcorper a lacus vestibulum sed arcu non. Neque aliquam vestibulum morbi blandit cursus risus at ultrices mi.', '', '');
INSERT INTO `zzz_content` VALUES ('16', 'Postdoctoral fellow', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit essDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.e cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit essDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.e cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '2', '44', 'admin', 'news', '0', '1', 'Postdoctoral...', '', '', '', '1', '9', null, '0', '0', '0', '1', '2023-09-30 22:46:59', '2023-09-30 22:48:38', '0000-00-00 00:00:00', '', 'Postdoctoral fellow', '', '', '', '', '', '', 'Duis aute irure dolor in reprehenderit in voluptate velit essDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit a...', '', '');
INSERT INTO `zzz_content` VALUES ('17', 'Research Assistant', '&lt;p&gt;Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '2', '45', 'admin', 'news', '0', '1', 'Research Ass...', '', '', '', '1', '9', null, '0', '0', '0', '1', '2023-09-30 22:47:37', null, '0000-00-00 00:00:00', '', 'Research Assistant', '', '', '', '', '', '', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Duis aute irure dolor in reprehenderit in ...', '', '');

-- ----------------------------
-- Table structure for `zzz_content_custom`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_content_custom`;
CREATE TABLE `zzz_content_custom` (
  `customid` int(11) NOT NULL AUTO_INCREMENT,
  `custom` varchar(255) DEFAULT NULL,
  `customname` varchar(255) DEFAULT NULL,
  `lid` int(2) DEFAULT '1',
  `customtype` varchar(255) DEFAULT NULL,
  `customclass` int(1) DEFAULT '0',
  `customoptions` longtext,
  `customvalues` longtext,
  `customplace` varchar(255) DEFAULT NULL,
  `customorder` int(3) DEFAULT '9',
  `customonoff` int(1) DEFAULT '0',
  `customdesc` longtext,
  PRIMARY KEY (`customid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_content_custom
-- ----------------------------
INSERT INTO `zzz_content_custom` VALUES ('1', 'zauthor', '作者', '1', 'news', '0', null, null, null, '9', '1', null);
INSERT INTO `zzz_content_custom` VALUES ('2', 'zsource', '来源', '1', 'news', '0', null, null, null, '9', '1', null);

-- ----------------------------
-- Table structure for `zzz_file`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_file`;
CREATE TABLE `zzz_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_type` varchar(11) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_title` varchar(255) DEFAULT NULL,
  `f_url` varchar(255) DEFAULT NULL,
  `f_size` varchar(50) DEFAULT NULL,
  `f_time` varchar(50) DEFAULT NULL,
  `f_ext` varchar(50) DEFAULT NULL,
  `f_md5` varchar(50) DEFAULT NULL,
  `f_folder` varchar(255) DEFAULT NULL,
  `f_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_file
-- ----------------------------
INSERT INTO `zzz_file` VALUES ('1', 'image', '1647235804803220', 'banner-2', '/upload/slide/1647235804803220.jpg', '387.37KB', '2022-03-14 13:30:04', 'jpg', '616f399b1ea15f07e810a721b1255cae', 'slide', '0');
INSERT INTO `zzz_file` VALUES ('2', 'file', '1647249039970568', '分会网站改版及维护相关说明', '/upload/news/1647249039970568.docx', '11.45KB', '2022-03-14 17:10:39', 'docx', '0e3ff93f326cce906d7ef8038a23928c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('3', 'file', '1647249062203650', '网络安全事件整改报告-2022.03.02', '/upload/news/1647249062203650.docx', '11.50KB', '2022-03-14 17:11:02', 'docx', '066daddddb1d9b6c18f45371db846eae', 'news', '0');
INSERT INTO `zzz_file` VALUES ('4', 'image', '1648213068517083', '2020042063674017', '/upload/news/1648213068517083.jpg', '162.30KB', '2022-03-25 20:57:48', 'jpg', '351c4e59097e0ffd0cb23ffbef482fd7', 'news', '0');
INSERT INTO `zzz_file` VALUES ('5', 'image', '1648213658612962', 's2110231614357473664', '/upload/news/1648213658612962.png', '548.36KB', '2022-03-25 21:07:38', 'png', '06a8bc4991e7575576ce7bdd87d8bd3f', 'news', '0');
INSERT INTO `zzz_file` VALUES ('6', 'image', '1650777149287256', 'pic-1', '/upload/about/1650777149287256.jpg', '146.88KB', '2022-04-24 13:12:29', 'jpg', 'dbb3f5639ccc38ba7a39ed05dc5727f4', 'about', '0');
INSERT INTO `zzz_file` VALUES ('7', 'image', '1650780715166120', '微信图片_20220423150717', '/upload/news/1650780715166120.png', '213.80KB', '2022-04-24 14:11:55', 'png', '337705d747ac35da38b126c6c161384e', 'news', '0');
INSERT INTO `zzz_file` VALUES ('8', 'image', '1650783902974883', '微信图片_20220423150722', '/upload/news/1650783902974883.jpg', '136.05KB', '2022-04-24 15:05:02', 'jpg', 'c18bac132b70435c79825942504d3e3a', 'news', '0');
INSERT INTO `zzz_file` VALUES ('9', 'image', '1650787038571418', '微信图片_20220423150744', '/upload/news/1650787038571418.jpg', '133.22KB', '2022-04-24 15:57:18', 'jpg', '6fefac584ef047e5a4d94fe91a3c9064', 'news', '0');
INSERT INTO `zzz_file` VALUES ('10', 'image', '1650787070686476', '微信图片_20220423150722', '/upload/news/1650787070686476.jpg', '57.38KB', '2022-04-24 15:57:50', 'jpg', '170be0a82d56c4e5ec30a740b1b1baa3', 'news', '0');
INSERT INTO `zzz_file` VALUES ('11', 'image', '1651125650579664', '程院长-照片', '/upload/news/1651125650579664.jpg', '18.01KB', '2022-04-28 14:00:50', 'jpg', '890c11e483f4eccfc37ea6fd88534288', 'news', '0');
INSERT INTO `zzz_file` VALUES ('12', 'image', '1651129888321896', 'hz1', '/upload/about/1651129888321896.jpg', '160.73KB', '2022-04-28 15:11:28', 'jpg', 'a758376e3a9a85598153a4cfc8268dc0', 'about', '0');
INSERT INTO `zzz_file` VALUES ('13', 'image', '1651129896483859', 'hz2', '/upload/about/1651129896483859.jpg', '158.13KB', '2022-04-28 15:11:36', 'jpg', '5296a4b7a603b2bc039edc9e574bc137', 'about', '0');
INSERT INTO `zzz_file` VALUES ('14', 'image', '1651131126545754', 'ZJGSU', '/upload/about/1651131126545754.jpg', '261.64KB', '2022-04-28 15:32:06', 'jpg', 'e315ae4540b0f59a212c8e3895010b7c', 'about', '0');
INSERT INTO `zzz_file` VALUES ('15', 'image', '1651131836960901', '综合楼', '/upload/about/1651131836960901.jpg', '128.77KB', '2022-04-28 15:43:56', 'jpg', '58895d2b52c7dd69fa1eda9d77332e24', 'about', '0');
INSERT INTO `zzz_file` VALUES ('16', 'image', '1651132614728974', 'comesoon', '/upload/about/1651132614728974.jpg', '96.81KB', '2022-04-28 15:56:54', 'jpg', '2b089ebee7534023444df11d26ee9340', 'about', '0');
INSERT INTO `zzz_file` VALUES ('17', 'image', '1651133096449158', 'comesoon', '/upload/about/1651133096449158.jpg', '121.11KB', '2022-04-28 16:04:56', 'jpg', 'e7a8e8c0ac76518d37ebc28c5683628c', 'about', '0');
INSERT INTO `zzz_file` VALUES ('18', 'image', '1651133180985381', 'comesoon', '/upload/about/1651133180985381.jpg', '90.72KB', '2022-04-28 16:06:20', 'jpg', '68ee228f3539eab777e2178ea8f5ac1a', 'about', '0');
INSERT INTO `zzz_file` VALUES ('19', 'image', '1651134162472135', 'apply', '/upload/about/1651134162472135.jpg', '174.40KB', '2022-04-28 16:22:42', 'jpg', 'f9f458448e3c1fe2f0a2c7788d9c7738', 'about', '0');
INSERT INTO `zzz_file` VALUES ('20', 'image', '1651134597885065', 'jxj', '/upload/about/1651134597885065.jpg', '112.09KB', '2022-04-28 16:29:57', 'jpg', '36d469b33fb3b3a0b30996bbbbade0d3', 'about', '0');
INSERT INTO `zzz_file` VALUES ('21', 'image', '1651139149662809', 'pic1', '/upload/label/1651139149662809.jpg', '44.60KB', '2022-04-28 17:45:49', 'jpg', '90ef2cb8828518c1126997e365273fec', 'label', '0');
INSERT INTO `zzz_file` VALUES ('22', 'image', '1651139160584161', 'pic2', '/upload/label/1651139160584161.jpg', '110.46KB', '2022-04-28 17:46:00', 'jpg', '46ac3bedba94ad3224bcfd3494790964', 'label', '0');
INSERT INTO `zzz_file` VALUES ('23', 'image', '1651218011929766', 'visit-1', '/upload/about/1651218011929766.jpg', '244.78KB', '2022-04-29 15:40:11', 'jpg', '2d210aaf45dc46e28a421b3adb299043', 'about', '0');
INSERT INTO `zzz_file` VALUES ('24', 'image', '1651218017919769', 'visit-2', '/upload/about/1651218017919769.jpg', '188.46KB', '2022-04-29 15:40:17', 'jpg', 'd7f8eee1c0aecc718a2580782e0b4593', 'about', '0');
INSERT INTO `zzz_file` VALUES ('25', 'image', '1651804599999340', '截图20220506103619', '/upload/news/1651804599999340.jpeg', '43.90KB', '2022-05-06 10:36:39', 'jpeg', '4c70f673b8be05bf515e4d1309616a95', 'news', '0');
INSERT INTO `zzz_file` VALUES ('26', 'image', '1651804952872018', 'image001', '/upload/news/1651804952872018.jpg', '116.63KB', '2022-05-06 10:42:32', 'jpg', 'd4c13f040a11cda03d668d8a70c851b0', 'news', '0');
INSERT INTO `zzz_file` VALUES ('27', 'image', '1651804962378710', 'image003', '/upload/news/1651804962378710.jpg', '152.28KB', '2022-05-06 10:42:42', 'jpg', 'f35a9274ec92408669f1af719d391760', 'news', '0');
INSERT INTO `zzz_file` VALUES ('28', 'image', '1651804972495086', 'image005', '/upload/news/1651804972495086.jpg', '172.62KB', '2022-05-06 10:42:52', 'jpg', '416b9743f8e6ce758c42a552e43c6755', 'news', '0');
INSERT INTO `zzz_file` VALUES ('29', 'image', '1652030956392624', '截图20220509012901', '/upload/news/1652030956392624.png', '173.98KB', '2022-05-09 01:29:16', 'png', '7f69cf9a27227531f6da291358347576', 'news', '0');
INSERT INTO `zzz_file` VALUES ('30', 'image', '1652031018626234', '截图20220509013006', '/upload/news/1652031018626234.png', '100.97KB', '2022-05-09 01:30:18', 'png', '93a314d30b7bb64c949dc31c23c27527', 'news', '0');
INSERT INTO `zzz_file` VALUES ('31', 'image', '1652031057768064', '截图20220509013048', '/upload/news/1652031057768064.png', '167.38KB', '2022-05-09 01:30:57', 'png', '16a5e29a5c56b771caf69e09d229cb8f', 'news', '0');
INSERT INTO `zzz_file` VALUES ('32', 'image', '1652032407676315', '截图20220509015240', '/upload/about/1652032407676315.png', '1.06MB', '2022-05-09 01:53:27', 'png', '7d8bcc1a82e2eeca55f855c56e6b016f', 'about', '0');
INSERT INTO `zzz_file` VALUES ('33', 'image', '1652032558957821', '截图20220509015446', '/upload/news/1652032558957821.png', '262.35KB', '2022-05-09 01:55:58', 'png', '69133902f1f22840c3e1b5877b139f79', 'news', '0');
INSERT INTO `zzz_file` VALUES ('34', 'image', '1652032599943027', '截图20220509015629', '/upload/news/1652032599943027.png', '120.96KB', '2022-05-09 01:56:39', 'png', '12bb59e444bc235a790d66b60d049033', 'news', '0');
INSERT INTO `zzz_file` VALUES ('35', 'image', '1652032636510898', '截图20220509015653', '/upload/news/1652032636510898.png', '326.49KB', '2022-05-09 01:57:16', 'png', 'f9fde4c3eecca5c493ffc17dd7fc98eb', 'news', '0');
INSERT INTO `zzz_file` VALUES ('36', 'image', '1652032673262338', '截图20220509015735', '/upload/news/1652032673262338.png', '211.51KB', '2022-05-09 01:57:53', 'png', 'a3deb44bfd88028043a6a4cb9e6f0f62', 'news', '0');
INSERT INTO `zzz_file` VALUES ('37', 'image', '1652032716591968', '截图20220509015819', '/upload/news/1652032716591968.png', '114.56KB', '2022-05-09 01:58:36', 'png', '2d89e34387e4453efa1151da7db32829', 'news', '0');
INSERT INTO `zzz_file` VALUES ('38', 'image', '1652032754695605', '截图20220509015858', '/upload/news/1652032754695605.png', '331.79KB', '2022-05-09 01:59:14', 'png', 'f52a56d504d4e219290647cc7d02a026', 'news', '0');
INSERT INTO `zzz_file` VALUES ('39', 'image', '1652032792832686', '截图20220509015935', '/upload/news/1652032792832686.png', '166.86KB', '2022-05-09 01:59:52', 'png', '50b523767398be020736f760a901e049', 'news', '0');
INSERT INTO `zzz_file` VALUES ('40', 'image', '1652032827745528', '截图20220509020012', '/upload/news/1652032827745528.png', '183.26KB', '2022-05-09 02:00:27', 'png', '4b89e557f5f006399e4d19a5c76cddab', 'news', '0');
INSERT INTO `zzz_file` VALUES ('41', 'image', '1652032855130732', '截图20220509020040', '/upload/news/1652032855130732.png', '125.94KB', '2022-05-09 02:00:55', 'png', '41d8d4c491dee7a8f72a3c073231fd4b', 'news', '0');
INSERT INTO `zzz_file` VALUES ('42', 'image', '1652032922418558', '截图20220509020131', '/upload/news/1652032922418558.png', '100.00KB', '2022-05-09 02:02:02', 'png', '7e4ba8be98c98ab607c766498f544865', 'news', '0');
INSERT INTO `zzz_file` VALUES ('43', 'image', '1652032963280280', '截图20220509020228', '/upload/news/1652032963280280.png', '138.45KB', '2022-05-09 02:02:43', 'png', '5b498dd180ae647f63502ed43232d827', 'news', '0');
INSERT INTO `zzz_file` VALUES ('44', 'image', '1652032992265872', '截图20220509020257', '/upload/news/1652032992265872.png', '127.00KB', '2022-05-09 02:03:12', 'png', 'a6244409a094d9107fbd2973909d4ef5', 'news', '0');
INSERT INTO `zzz_file` VALUES ('45', 'image', '1652033042170189', '截图20220509020346', '/upload/news/1652033042170189.png', '148.58KB', '2022-05-09 02:04:02', 'png', '5dd49fb3750e9ad20e6bff14bff2f008', 'news', '0');
INSERT INTO `zzz_file` VALUES ('46', 'image', '1652033080315437', '截图20220509020426', '/upload/news/1652033080315437.png', '79.97KB', '2022-05-09 02:04:40', 'png', 'a8cb3d76135907fdf3f253278222e52a', 'news', '0');
INSERT INTO `zzz_file` VALUES ('47', 'image', '1652033108579821', '截图20220509020453', '/upload/news/1652033108579821.png', '159.35KB', '2022-05-09 02:05:08', 'png', '24518995e710a224670b066e3280cfec', 'news', '0');
INSERT INTO `zzz_file` VALUES ('48', 'image', '1652033156739441', '截图20220509020541', '/upload/news/1652033156739441.png', '275.25KB', '2022-05-09 02:05:56', 'png', '32e59601f076f75b53a26c3757eec3c2', 'news', '0');
INSERT INTO `zzz_file` VALUES ('49', 'image', '1652033196942291', '截图20220509020619', '/upload/news/1652033196942291.png', '96.06KB', '2022-05-09 02:06:36', 'png', '273859135fdfe0fdf93d3238a0df5407', 'news', '0');
INSERT INTO `zzz_file` VALUES ('50', 'image', '1652055311437312', '截图20220509081441', '/upload/news/1652055311437312.png', '477.48KB', '2022-05-09 08:15:11', 'png', '4bb0284319472db7a27a2c102522aacc', 'news', '0');
INSERT INTO `zzz_file` VALUES ('51', 'image', '1652055445159751', '截图20220509081712', '/upload/news/1652055445159751.png', '1.42MB', '2022-05-09 08:17:25', 'png', '2efc8ebd66fa5803ab53bb66886c9ce7', 'news', '0');
INSERT INTO `zzz_file` VALUES ('52', 'image', '1652055653711487', '截图20220509082043', '/upload/news/1652055653711487.png', '1.11MB', '2022-05-09 08:20:53', 'png', 'f15bb87e95c58953ad2ddc59165b2b82', 'news', '0');
INSERT INTO `zzz_file` VALUES ('53', 'image', '1652055877184538', '截图20220509082423', '/upload/news/1652055877184538.png', '1.29MB', '2022-05-09 08:24:37', 'png', 'dcb5484380bb60480653b235feac1fbe', 'news', '0');
INSERT INTO `zzz_file` VALUES ('54', 'image', '1652061223882811', '截图20220509095329', '/upload/news/1652061223882811.png', '1.02MB', '2022-05-09 09:53:43', 'png', 'c75de84d7a3d36179a74f368eac1fed1', 'news', '0');
INSERT INTO `zzz_file` VALUES ('55', 'image', '1652075372982656', '校庆门', '/upload/slide/1652075372982656.jpg', '516.16KB', '2022-05-09 13:49:32', 'jpg', '43f7a2a7d384616eb598dd6b3edba882', 'slide', '0');
INSERT INTO `zzz_file` VALUES ('56', 'image', '1652075381517436', '鼎', '/upload/slide/1652075381517436.jpg', '519.59KB', '2022-05-09 13:49:41', 'jpg', 'dca0217e915756bd7f122d50e02b99d0', 'slide', '0');
INSERT INTO `zzz_file` VALUES ('57', 'image', '1652075381914848', '全景', '/upload/slide/1652075381914848.jpg', '387.29KB', '2022-05-09 13:49:41', 'jpg', '973a57e4cf973993f442b5679e1a2783', 'slide', '0');
INSERT INTO `zzz_file` VALUES ('58', 'image', '1652150504473129', '中国扶贫基金会', '/upload/links/1652150504473129.jpg', '9.74KB', '2022-05-10 10:41:44', 'jpg', 'b9140659d099a15a2237017f6cb01df1', 'links', '0');
INSERT INTO `zzz_file` VALUES ('59', 'image', '1652150557821251', '爱德基金会', '/upload/links/1652150557821251.jpg', '12.20KB', '2022-05-10 10:42:37', 'jpg', 'c7a6666eb11a1e3b560bb794b32a6496', 'links', '0');
INSERT INTO `zzz_file` VALUES ('60', 'image', '1652150557680171', '安利公益基金会', '/upload/links/1652150557680171.jpg', '10.47KB', '2022-05-10 10:42:37', 'jpg', 'b64824984a98d78034681dc5e3e4eae0', 'links', '0');
INSERT INTO `zzz_file` VALUES ('61', 'image', '1652150557364693', '北京爱尔公益基金会', '/upload/links/1652150557364693.jpg', '9.19KB', '2022-05-10 10:42:37', 'jpg', '8d2f5c4152f51c5b54bcae65653fe44f', 'links', '0');
INSERT INTO `zzz_file` VALUES ('62', 'image', '1652150557292371', '北京联益慈善基金会', '/upload/links/1652150557292371.jpg', '12.56KB', '2022-05-10 10:42:37', 'jpg', '856cdc6e16c226b372783a74c2e90cb0', 'links', '0');
INSERT INTO `zzz_file` VALUES ('63', 'image', '1652150557892759', '杭州市基金会发展促进会', '/upload/links/1652150557892759.jpg', '10.38KB', '2022-05-10 10:42:37', 'jpg', 'efbd52de193132a3a4288c0c609013f0', 'links', '0');
INSERT INTO `zzz_file` VALUES ('64', 'image', '1652150557103581', '湖南弘慧教育发展基金会', '/upload/links/1652150557103581.jpg', '9.46KB', '2022-05-10 10:42:37', 'jpg', '3c15b5b390fccdce924e768eafca6c76', 'links', '0');
INSERT INTO `zzz_file` VALUES ('65', 'image', '1652150557584129', '蓝态公益', '/upload/links/1652150557584129.jpg', '10.03KB', '2022-05-10 10:42:37', 'jpg', '3f3d241f58a2da74fb1eeefab7c9f286', 'links', '0');
INSERT INTO `zzz_file` VALUES ('66', 'image', '1652150557952603', '宁波善园公益基金会', '/upload/links/1652150557952603.jpg', '9.72KB', '2022-05-10 10:42:37', 'jpg', '7b4adb9f0c0349e7af9de2a68ee35ed7', 'links', '0');
INSERT INTO `zzz_file` VALUES ('67', 'image', '1652150557110912', '宁波鄞州银行公益基金会', '/upload/links/1652150557110912.jpg', '8.52KB', '2022-05-10 10:42:37', 'jpg', '3e97c03ccacdcb58e8944be442408e65', 'links', '0');
INSERT INTO `zzz_file` VALUES ('68', 'image', '1652150557776561', '上海联劝公益基金会', '/upload/links/1652150557776561.jpg', '8.62KB', '2022-05-10 10:42:37', 'jpg', '1f2d1af5612030a1f9ed261a96aa7920', 'links', '0');
INSERT INTO `zzz_file` VALUES ('69', 'image', '1652150557901076', '深圳恒晖公益基金会', '/upload/links/1652150557901076.jpg', '10.91KB', '2022-05-10 10:42:37', 'jpg', 'c1978c7ec39b8251b31b5fa0b15e6b41', 'links', '0');
INSERT INTO `zzz_file` VALUES ('70', 'image', '1652150557848014', '四川省科技扶贫基金会', '/upload/links/1652150557848014.jpg', '9.77KB', '2022-05-10 10:42:37', 'jpg', '78821608bd093594f1db1af3ad1873a4', 'links', '0');
INSERT INTO `zzz_file` VALUES ('71', 'image', '1652150557508815', '友成基金会', '/upload/links/1652150557508815.jpg', '11.21KB', '2022-05-10 10:42:37', 'jpg', '9524eaf8e4b93a6165406d58edbe1654', 'links', '0');
INSERT INTO `zzz_file` VALUES ('72', 'image', '1652150557648010', '浙江省之江公益学园', '/upload/links/1652150557648010.jpg', '9.94KB', '2022-05-10 10:42:37', 'jpg', '79d8224afa88ea6ae9444d1fd0b5c44a', 'links', '0');
INSERT INTO `zzz_file` VALUES ('73', 'image', '1652150557953089', '浙江携职专修学院', '/upload/links/1652150557953089.jpg', '11.40KB', '2022-05-10 10:42:37', 'jpg', 'df4b442279d4a21cf62d832a071f78ad', 'links', '0');
INSERT INTO `zzz_file` VALUES ('74', 'image', '1652150557304749', '中国慈善联合会', '/upload/links/1652150557304749.jpg', '9.38KB', '2022-05-10 10:42:37', 'jpg', 'a601fb623cd38321b1f5124a93df539a', 'links', '0');
INSERT INTO `zzz_file` VALUES ('75', 'image', '1652150557514489', '中国扶贫基金会', '/upload/links/1652150557514489.jpg', '9.74KB', '2022-05-10 10:42:37', 'jpg', 'b9140659d099a15a2237017f6cb01df1', 'links', '0');
INSERT INTO `zzz_file` VALUES ('76', 'image', '1652150557510919', '中国妇女发展基金会', '/upload/links/1652150557510919.jpg', '9.38KB', '2022-05-10 10:42:37', 'jpg', '1a6dc5d2871a60ab0c7dcdb8ccb9ab42', 'links', '0');
INSERT INTO `zzz_file` VALUES ('77', 'image', '1652150557416313', '中国红十字基金会', '/upload/links/1652150557416313.jpg', '10.16KB', '2022-05-10 10:42:37', 'jpg', 'b8e5a312e319a6a9d06464f85917b10f', 'links', '0');
INSERT INTO `zzz_file` VALUES ('78', 'image', '1652150557284155', '中国科学院大学教育基金会', '/upload/links/1652150557284155.jpg', '9.05KB', '2022-05-10 10:42:37', 'jpg', 'ff7ddd4f7e4c84c23780a58faae6856e', 'links', '0');
INSERT INTO `zzz_file` VALUES ('79', 'image', '1652150557152544', '中国人口福利基金会', '/upload/links/1652150557152544.jpg', '9.32KB', '2022-05-10 10:42:37', 'jpg', '033a92bfdd38796be2bba95c93f1b5bb', 'links', '0');
INSERT INTO `zzz_file` VALUES ('80', 'image', '1652150557216151', '中国社会企业与影响力投资论坛', '/upload/links/1652150557216151.jpg', '12.24KB', '2022-05-10 10:42:37', 'jpg', '1270ffddc7b5856378f9a0722ef83fd2', 'links', '0');
INSERT INTO `zzz_file` VALUES ('81', 'image', '1652150558809147', '中国西部人才开发基金会', '/upload/links/1652150558809147.jpg', '11.40KB', '2022-05-10 10:42:38', 'jpg', '1f162f90dfed236d9d37142ccb83c381', 'links', '0');
INSERT INTO `zzz_file` VALUES ('82', 'image', '1652150558463289', '中华少年儿童慈善救助基金会', '/upload/links/1652150558463289.jpg', '10.63KB', '2022-05-10 10:42:38', 'jpg', 'e34c052f75bd205c4adb59e774c66b89', 'links', '0');
INSERT INTO `zzz_file` VALUES ('83', 'image', '1652150559173254', '浙江省爱心事业基金会', '/upload/links/1652150559173254.jpg', '9.73KB', '2022-05-10 10:42:39', 'jpg', 'bc48fd2b8d8e1131cdf48640e877bf34', 'links', '0');
INSERT INTO `zzz_file` VALUES ('84', 'image', '1652150820535193', '中国国际民间组织合作促进会', '/upload/links/1652150820535193.jpg', '11.70KB', '2022-05-10 10:47:00', 'jpg', '6d047278559163c01119b87f6591f32a', 'links', '0');
INSERT INTO `zzz_file` VALUES ('85', 'image', '1652151010861980', '南都公益基金会', '/upload/links/1652151010861980.jpg', '12.35KB', '2022-05-10 10:50:10', 'jpg', 'e800295eebe58b520a6bb9b5c5ecd7ed', 'links', '0');
INSERT INTO `zzz_file` VALUES ('86', 'image', '1652182016774712', '截图20220510192614', '/upload/news/1652182016774712.png', '371.46KB', '2022-05-10 19:26:56', 'png', '8da29e95d4bec8a720435232b21c44b1', 'news', '0');
INSERT INTO `zzz_file` VALUES ('87', 'image', '1652182235693276', '截图20220510192614', '/upload/news/1652182235693276.png', '677.72KB', '2022-05-10 19:30:35', 'png', '1c469895a0da31af0a708d138761b4de', 'news', '0');
INSERT INTO `zzz_file` VALUES ('88', 'image', '1652182401901294', '截图20220510193150', '/upload/news/1652182401901294.png', '422.71KB', '2022-05-10 19:33:21', 'png', '5bd7926f7348c5bf64644ad03af52ff9', 'news', '0');
INSERT INTO `zzz_file` VALUES ('89', 'image', '1652182532906389', '截图20220510193439', '/upload/news/1652182532906389.png', '520.45KB', '2022-05-10 19:35:32', 'png', '01fefa34f0f066adf7bd1e252d9fde46', 'news', '0');
INSERT INTO `zzz_file` VALUES ('90', 'image', '1652182635858941', '截图20220510193640', '/upload/news/1652182635858941.png', '871.28KB', '2022-05-10 19:37:15', 'png', '986ebaccbd880d39b9b93c93b6cf5b42', 'news', '0');
INSERT INTO `zzz_file` VALUES ('91', 'image', '1652182829519937', '截图20220510194001', '/upload/news/1652182829519937.png', '592.72KB', '2022-05-10 19:40:29', 'png', 'd83e09ba1d656cf2df633afc5cb7e3de', 'news', '0');
INSERT INTO `zzz_file` VALUES ('92', 'image', '1652183338236197', '截图20220510194825', '/upload/news/1652183338236197.png', '714.36KB', '2022-05-10 19:48:58', 'png', 'fc9600168ec52ccc804a81045a053fe7', 'news', '0');
INSERT INTO `zzz_file` VALUES ('93', 'image', '1652183433423041', '截图20220510194957', '/upload/news/1652183433423041.png', '694.93KB', '2022-05-10 19:50:33', 'png', '74d4ca924c2a65212ef6b2d96316c263', 'news', '0');
INSERT INTO `zzz_file` VALUES ('94', 'image', '1652184107637105', '截图20220510200117', '/upload/news/1652184107637105.png', '383.24KB', '2022-05-10 20:01:47', 'png', 'aad5d926d6126fd118d96149d1818228', 'news', '0');
INSERT INTO `zzz_file` VALUES ('95', 'image', '1652184175962658', '截图20220510200224', '/upload/news/1652184175962658.png', '1.08MB', '2022-05-10 20:02:55', 'png', '435eacea0efad5ac212fab7dee54dc1d', 'news', '0');
INSERT INTO `zzz_file` VALUES ('96', 'image', '1652184255222128', '截图20220510200345', '/upload/news/1652184255222128.png', '357.74KB', '2022-05-10 20:04:15', 'png', 'f3f99370b91f5d619c78ee18670f15d3', 'news', '0');
INSERT INTO `zzz_file` VALUES ('97', 'image', '1652184436215471', '截图20220510200625', '/upload/news/1652184436215471.png', '1.32MB', '2022-05-10 20:07:16', 'png', '0da240b5af629bc8d2bf17f2961b83a8', 'news', '0');
INSERT INTO `zzz_file` VALUES ('98', 'image', '1652185566983680', '海南成美慈善基金会', '/upload/links/1652185566983680.jpg', '9.22KB', '2022-05-10 20:26:06', 'jpg', '7437569bab923bc4552112b1955fb4f8', 'links', '0');
INSERT INTO `zzz_file` VALUES ('99', 'image', '1652185566258108', '深圳壹基金公益慈善基金会', '/upload/links/1652185566258108.jpg', '8.75KB', '2022-05-10 20:26:06', 'jpg', '4a5ea6bbf50799706ddae1c45acbf82f', 'links', '0');
INSERT INTO `zzz_file` VALUES ('100', 'image', '1652185566100722', '浙江省青少年发展基金会', '/upload/links/1652185566100722.jpg', '8.87KB', '2022-05-10 20:26:06', 'jpg', '3c0e6700b87f68d1268e45ceafc19f20', 'links', '0');
INSERT INTO `zzz_file` VALUES ('101', 'image', '1652185566497333', '浙江省微笑明天慈善基金会', '/upload/links/1652185566497333.jpg', '10.03KB', '2022-05-10 20:26:06', 'jpg', '1223384601fb6bebd88309db2a5fa425', 'links', '0');
INSERT INTO `zzz_file` VALUES ('102', 'image', '1652185567290256', '浙江正泰公益基金会', '/upload/links/1652185567290256.jpg', '11.51KB', '2022-05-10 20:26:07', 'jpg', '9f712a4d07cf1acd774d70dbc12c1979', 'links', '0');
INSERT INTO `zzz_file` VALUES ('103', 'image', '1652185568850297', '上海荣昶公益基金会', '/upload/links/1652185568850297.jpg', '8.72KB', '2022-05-10 20:26:08', 'jpg', '29e02677172c6ff4139f184e36d036ee', 'links', '0');
INSERT INTO `zzz_file` VALUES ('104', 'image', '1652185569307982', '浙江新湖公益基金会', '/upload/links/1652185569307982.jpg', '9.96KB', '2022-05-10 20:26:09', 'jpg', 'b1ded0b2e30aa361fe53f514ff3ce646', 'links', '0');
INSERT INTO `zzz_file` VALUES ('105', 'image', '1652367764653394', 'image001', '/upload/about/1652367764653394.jpg', '96.84KB', '2022-05-12 23:02:44', 'jpg', '62c916e3e0a2cd058b187660672621f9', 'about', '0');
INSERT INTO `zzz_file` VALUES ('106', 'image', '1652367764138385', 'image003', '/upload/about/1652367764138385.jpg', '91.22KB', '2022-05-12 23:02:44', 'jpg', '9ffc14569dd58856520ddc34a2421efa', 'about', '0');
INSERT INTO `zzz_file` VALUES ('107', 'image', '1652367764603185', 'image005', '/upload/about/1652367764603185.jpg', '83.67KB', '2022-05-12 23:02:44', 'jpg', '5374596a7b8ee499011857f75e0b699d', 'about', '0');
INSERT INTO `zzz_file` VALUES ('108', 'image', '1652367766113490', 'image007', '/upload/about/1652367766113490.jpg', '93.56KB', '2022-05-12 23:02:46', 'jpg', 'cd58645e8672b8ccf4b18445c88afdd3', 'about', '0');
INSERT INTO `zzz_file` VALUES ('109', 'image', '1652371054435462', '截图20220512235616', '/upload/news/1652371054435462.png', '475.28KB', '2022-05-12 23:57:34', 'png', 'd20cf61fd4351f12546e7437860d8433', 'news', '0');
INSERT INTO `zzz_file` VALUES ('110', 'image', '1652371326861576', '截图20220513000000', '/upload/news/1652371326861576.png', '242.24KB', '2022-05-13 00:02:06', 'png', '79f84b9e592f24abf618d491926dc537', 'news', '0');
INSERT INTO `zzz_file` VALUES ('111', 'image', '1652404460743393', '截图20220513091221', '/upload/news/1652404460743393.png', '663.83KB', '2022-05-13 09:14:20', 'png', 'a8dcae7ac9bb9bcac22ef88dd407e9ea', 'news', '0');
INSERT INTO `zzz_file` VALUES ('112', 'image', '1652404864303759', '截图20220513092007', '/upload/news/1652404864303759.png', '474.29KB', '2022-05-13 09:21:04', 'png', 'a45a23e0209349a0c44ae52de6102617', 'news', '0');
INSERT INTO `zzz_file` VALUES ('113', 'image', '1652404978113538', '截图20220513092227', '/upload/news/1652404978113538.png', '628.91KB', '2022-05-13 09:22:58', 'png', '1e1474d3e1aa780e254ed1f750194193', 'news', '0');
INSERT INTO `zzz_file` VALUES ('114', 'image', '1652405083204553', '截图20220513092422', '/upload/news/1652405083204553.png', '614.75KB', '2022-05-13 09:24:43', 'png', 'f18a93083f411914bb957661a0f653b1', 'news', '0');
INSERT INTO `zzz_file` VALUES ('115', 'image', '1652405184516390', '截图20220513092556', '/upload/news/1652405184516390.png', '347.19KB', '2022-05-13 09:26:24', 'png', 'cb0310b89ef2271347f1045875827f70', 'news', '0');
INSERT INTO `zzz_file` VALUES ('116', 'image', '1652405276440600', '截图20220513092726', '/upload/news/1652405276440600.png', '499.85KB', '2022-05-13 09:27:56', 'png', '7fa9d32ec21506f76df5daa5e2e0fbee', 'news', '0');
INSERT INTO `zzz_file` VALUES ('117', 'image', '1652405826697069', '截图20220513093637', '/upload/news/1652405826697069.png', '583.21KB', '2022-05-13 09:37:06', 'png', 'ec1170a2793f0cf16454a999a574ea9d', 'news', '0');
INSERT INTO `zzz_file` VALUES ('118', 'image', '1652406066421476', '截图20220513094022', '/upload/news/1652406066421476.png', '334.74KB', '2022-05-13 09:41:06', 'png', '5eada917e38e89eeb4893775a615ebc8', 'news', '0');
INSERT INTO `zzz_file` VALUES ('119', 'image', '1652406187147150', '截图20220513094155', '/upload/news/1652406187147150.png', '281.41KB', '2022-05-13 09:43:07', 'png', '6e3e581e82420ddea02cb4f3a6d5f131', 'news', '0');
INSERT INTO `zzz_file` VALUES ('120', 'image', '1652406336439125', '截图20220513094505', '/upload/news/1652406336439125.png', '388.81KB', '2022-05-13 09:45:36', 'png', 'c80f7db51eadbafb0cf931d1b2839824', 'news', '0');
INSERT INTO `zzz_file` VALUES ('121', 'image', '1652406396197951', '截图20220513094610', '/upload/news/1652406396197951.png', '592.32KB', '2022-05-13 09:46:36', 'png', '1c21bb5be5c60b0175db7d1cec9394b7', 'news', '0');
INSERT INTO `zzz_file` VALUES ('122', 'image', '1652495279811191', '截图20220514102720', '/upload/news/1652495279811191.png', '382.52KB', '2022-05-14 10:27:59', 'png', 'c92f14241d964b6e4238405082579729', 'news', '0');
INSERT INTO `zzz_file` VALUES ('123', 'image', '1652495369211418', '截图20220514102902', '/upload/news/1652495369211418.png', '398.41KB', '2022-05-14 10:29:29', 'png', '6682b33f2c049538c255eb4381d397f4', 'news', '0');
INSERT INTO `zzz_file` VALUES ('124', 'image', '1652495488798983', '截图20220514103057', '/upload/news/1652495488798983.png', '874.82KB', '2022-05-14 10:31:28', 'png', 'd26315cab0c4bcdef7d3df5650b210e6', 'news', '0');
INSERT INTO `zzz_file` VALUES ('125', 'image', '1652495580841283', '截图20220514103234', '/upload/news/1652495580841283.png', '452.34KB', '2022-05-14 10:33:00', 'png', 'cc643c386ac504d67ccc8fd4203a7a93', 'news', '0');
INSERT INTO `zzz_file` VALUES ('126', 'image', '1652496449221664', 'lx-1', '/upload/news/1652496449221664.jpg', '70.14KB', '2022-05-14 10:47:29', 'jpg', 'a468d3cd4579ff5354b71e0a1301e354', 'news', '0');
INSERT INTO `zzz_file` VALUES ('127', 'image', '1652500626682117', '微信图片_20220514115253', '/upload/news/1652500626682117.jpg', '97.61KB', '2022-05-14 11:57:06', 'jpg', 'db096b45804980c0d79674d19ed6937b', 'news', '0');
INSERT INTO `zzz_file` VALUES ('128', 'image', '1652664825805143', '截图20220516093112', '/upload/news/1652664825805143.png', '558.80KB', '2022-05-16 09:33:45', 'png', '88e9aa03f32f0c581beed77c95ba4e35', 'news', '0');
INSERT INTO `zzz_file` VALUES ('129', 'image', '1652665454353645', '截图20220516093824', '/upload/news/1652665454353645.png', '770.49KB', '2022-05-16 09:44:14', 'png', '6f4531987da35ca3cebd0b3006078ba4', 'news', '0');
INSERT INTO `zzz_file` VALUES ('130', 'image', '1652665615634458', '截图20220516094642', '/upload/news/1652665615634458.png', '581.92KB', '2022-05-16 09:46:55', 'png', '0e7e458482fa6b9e9ec982957a95b46c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('131', 'image', '1652668939395099', '朱健刚', '/upload/news/1652668939395099.jpg', '128.16KB', '2022-05-16 10:42:19', 'jpg', 'bd597e6ee8ff1a268fdedd5351b08c46', 'news', '0');
INSERT INTO `zzz_file` VALUES ('132', 'image', '1652968213488758', '截图20220519214715', '/upload/news/1652968213488758.png', '269.29KB', '2022-05-19 21:50:13', 'png', 'a079d0db5843f24b7ff05f6b99ecdb46', 'news', '0');
INSERT INTO `zzz_file` VALUES ('133', 'image', '1652968901599797', '截图20220519215944', '/upload/news/1652968901599797.png', '827.18KB', '2022-05-19 22:01:41', 'png', 'ec3bd5ceb1a57fe91c18c20881df503b', 'news', '0');
INSERT INTO `zzz_file` VALUES ('134', 'image', '1652969065837805', '截图20220519220347', '/upload/news/1652969065837805.png', '623.22KB', '2022-05-19 22:04:25', 'png', '62761c4b5f6dd1f07830d483beb18aad', 'news', '0');
INSERT INTO `zzz_file` VALUES ('135', 'image', '1652969164324784', '截图20220519220522', '/upload/news/1652969164324784.png', '510.68KB', '2022-05-19 22:06:04', 'png', '2573d8296af9d83020fe8ab1b64f8922', 'news', '0');
INSERT INTO `zzz_file` VALUES ('136', 'image', '1652969188437860', '截图20220519220522', '/upload/news/1652969188437860.png', '510.68KB', '2022-05-19 22:06:28', 'png', '2573d8296af9d83020fe8ab1b64f8922', 'news', '0');
INSERT INTO `zzz_file` VALUES ('137', 'image', '1652969262301920', '截图20220519220710', '/upload/news/1652969262301920.png', '352.02KB', '2022-05-19 22:07:42', 'png', 'd503cb2a80c86de2f7f8aab93d49876d', 'news', '0');
INSERT INTO `zzz_file` VALUES ('138', 'image', '1652969417213171', '截图20220519220907', '/upload/news/1652969417213171.png', '435.22KB', '2022-05-19 22:10:17', 'png', 'e774b80d884e6d605159c9acca9412f1', 'news', '0');
INSERT INTO `zzz_file` VALUES ('139', 'image', '1652969528943922', '截图20220519221129', '/upload/news/1652969528943922.png', '969.38KB', '2022-05-19 22:12:08', 'png', '1972644212aa0d6a6dfafe335200fa51', 'news', '0');
INSERT INTO `zzz_file` VALUES ('140', 'image', '1652970119834894', '截图20220519221956', '/upload/news/1652970119834894.png', '537.59KB', '2022-05-19 22:21:59', 'png', 'e5f1f217635f68ac9fa188b7f76d6771', 'news', '0');
INSERT INTO `zzz_file` VALUES ('141', 'image', '1652970452105583', '截图20220519222621', '/upload/news/1652970452105583.png', '479.36KB', '2022-05-19 22:27:32', 'png', 'ddb28b3ce5ec4c31ac6725072545842c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('142', 'image', '1652970644197174', '截图20220519223003', '/upload/news/1652970644197174.png', '488.04KB', '2022-05-19 22:30:44', 'png', '86eba37e991d0970324663c8e355fa52', 'news', '0');
INSERT INTO `zzz_file` VALUES ('143', 'image', '1652971046276865', '截图20220519223652', '/upload/links/1652971046276865.png', '8.49KB', '2022-05-19 22:37:26', 'png', '1eb936f03e9449d381ce22d4df234afc', 'links', '0');
INSERT INTO `zzz_file` VALUES ('144', 'image', '1653011472407437', '截图20220520095043', '/upload/news/1653011472407437.png', '370.33KB', '2022-05-20 09:51:12', 'png', 'be2740ad39cca20455af94bd581972be', 'news', '0');
INSERT INTO `zzz_file` VALUES ('145', 'image', '1653888792704542', '微信图片_20220525113629', '/upload/news/1653888792704542.png', '2.14MB', '2022-05-30 13:33:12', 'png', '70a32460c9edcfb596c4f47ad88093a2', 'news', '0');
INSERT INTO `zzz_file` VALUES ('146', 'image', '1653888801887556', '截图20220530133105', '/upload/news/1653888801887556.png', '429.61KB', '2022-05-30 13:33:21', 'png', '527edcf0519a0eb962c6710bb0055c89', 'news', '0');
INSERT INTO `zzz_file` VALUES ('147', 'image', '1653888934622687', '截图20220530133505', '/upload/news/1653888934622687.png', '775.14KB', '2022-05-30 13:35:34', 'png', 'd8f4d15cc7c59c962239858b9381f886', 'news', '0');
INSERT INTO `zzz_file` VALUES ('148', 'image', '1653889228865574', '截图20220530133958', '/upload/news/1653889228865574.png', '547.53KB', '2022-05-30 13:40:28', 'png', 'cbdf6048de4f9a0cb244c2d3cec69aef', 'news', '0');
INSERT INTO `zzz_file` VALUES ('149', 'image', '1653889371581907', '截图20220530134218', '/upload/news/1653889371581907.png', '494.26KB', '2022-05-30 13:42:51', 'png', '901b4ba439aff6b47aeb9071b9a33b68', 'news', '0');
INSERT INTO `zzz_file` VALUES ('150', 'image', '1653889482626544', '截图20220530134355', '/upload/news/1653889482626544.png', '426.73KB', '2022-05-30 13:44:42', 'png', '199374ca2441df017c40ae0b17a83fa2', 'news', '0');
INSERT INTO `zzz_file` VALUES ('151', 'image', '1653889651479655', '截图20220530134528', '/upload/news/1653889651479655.png', '443.82KB', '2022-05-30 13:47:31', 'png', '8ae82b4f645098a861642b04038c66d5', 'news', '0');
INSERT INTO `zzz_file` VALUES ('152', 'file', 'fujianlaowupaiqianrenyuanyingpinshenqingbiao', '附件：劳务派遣人员应聘申请表', '/upload/news/fujianlaowupaiqianrenyuanyingpinshenqingbiao.doc', '37.50KB', '2022-05-30 14:55:05', 'doc', '272b7df93d9ddb207a2d7a0182239b6e', 'news', '0');
INSERT INTO `zzz_file` VALUES ('153', 'image', '1653968541920069', '截图20220531085536', '/upload/news/1653968541920069.png', '417.77KB', '2022-05-31 11:42:21', 'png', 'eff505d9dc7548478822518c58ef9340', 'news', '0');
INSERT INTO `zzz_file` VALUES ('154', 'image', '1653968602561922', '111', '/upload/news/1653968602561922.jpg', '78.03KB', '2022-05-31 11:43:22', 'jpg', 'a50af0ba2219245dca49980937b5ab66', 'news', '0');
INSERT INTO `zzz_file` VALUES ('155', 'image', '1654222474267813', '截图20220603101012', '/upload/news/1654222474267813.jpeg', '17.64KB', '2022-06-03 10:14:34', 'jpeg', '0f8c75330fdee5d78711f32d54bd43cc', 'news', '0');
INSERT INTO `zzz_file` VALUES ('156', 'image', '1654222512408581', '截图20220603101128', '/upload/news/1654222512408581.jpeg', '23.48KB', '2022-06-03 10:15:12', 'jpeg', 'd54fb7c0ee256bcedf38a9904aa4db40', 'news', '0');
INSERT INTO `zzz_file` VALUES ('157', 'image', '1654222547386822', '截图20220603101216', '/upload/news/1654222547386822.jpeg', '23.33KB', '2022-06-03 10:15:47', 'jpeg', 'af1ed5910985bac438dc114606de6d0a', 'news', '0');
INSERT INTO `zzz_file` VALUES ('158', 'image', '1659604991177645', 'ad', '/upload/ad/1659604991177645.jpg', '52.73KB', '2022-08-04 17:23:11', 'jpg', 'cf56b3707680716876fac66548c69b95', 'ad', '0');
INSERT INTO `zzz_file` VALUES ('159', 'image', '1659621577445809', 'p1', '/upload/label/1659621577445809.jpg', '16.60KB', '2022-08-04 21:59:37', 'jpg', '389220d98ffb15b91310bc1fea0c360e', 'label', '0');
INSERT INTO `zzz_file` VALUES ('160', 'image', '1659621577769240', 'p3', '/upload/label/1659621577769240.jpg', '12.55KB', '2022-08-04 21:59:37', 'jpg', '685f057df755b52e5963f212af3d0176', 'label', '0');
INSERT INTO `zzz_file` VALUES ('161', 'image', '1659621577241351', 'p2', '/upload/label/1659621577241351.jpg', '16.89KB', '2022-08-04 21:59:37', 'jpg', '2afefcbab9968ea58461bd4d8149f358', 'label', '0');
INSERT INTO `zzz_file` VALUES ('162', 'image', '1659621577287868', 'p4', '/upload/label/1659621577287868.jpg', '21.87KB', '2022-08-04 21:59:37', 'jpg', '32647ec17f3dc6271b3e714538bc15ee', 'label', '0');
INSERT INTO `zzz_file` VALUES ('163', 'image', '1659854066478747', '20220807143405', '/upload/about/1659854066478747.jpeg', '75.72KB', '2022-08-07 14:34:26', 'jpeg', '5cb7a4c354b0c3a3bf75732ddcf73b45', 'about', '0');
INSERT INTO `zzz_file` VALUES ('164', 'image', '1659854504729058', '截图20220807144120', '/upload/news/1659854504729058.jpeg', '12.63KB', '2022-08-07 14:41:44', 'jpeg', '8956a4341c6e48a9f121896b2d30d6da', 'news', '0');
INSERT INTO `zzz_file` VALUES ('165', 'image', '1659854782408633', 'duxiaohong', '/upload/news/1659854782408633.jpeg', '18.67KB', '2022-08-07 14:46:22', 'jpeg', 'e301b67f6beef2a999b8a89c59475cc5', 'news', '0');
INSERT INTO `zzz_file` VALUES ('166', 'image', '1659854893209837', 'chejiong', '/upload/news/1659854893209837.jpeg', '15.69KB', '2022-08-07 14:48:13', 'jpeg', '8871c315def22fbaa1632b568791e21f', 'news', '0');
INSERT INTO `zzz_file` VALUES ('167', 'image', '1659855064819565', 'wangguorong', '/upload/news/1659855064819565.png', '170.56KB', '2022-08-07 14:51:04', 'png', 'a228babfadf9c6a9ff9c51d851078c59', 'news', '0');
INSERT INTO `zzz_file` VALUES ('168', 'image', '1659855281236014', 'maogang', '/upload/news/1659855281236014.jpeg', '10.68KB', '2022-08-07 14:54:41', 'jpeg', 'a464271ca8a1195efb702cc5c94c454c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('169', 'image', '1659858218140840', '62d3d3d5e2e32', '/upload/news/1659858218140840.jpg', '97.58KB', '2022-08-07 15:43:38', 'jpg', '74a9d4e7a090bcc71f4ef28aca6bf5ef', 'news', '0');
INSERT INTO `zzz_file` VALUES ('170', 'image', '1659858235968483', '62d3d3f04b7c2', '/upload/news/1659858235968483.jpg', '122.19KB', '2022-08-07 15:43:55', 'jpg', '793123aa6dd08fe7d289b51b5cea4b56', 'news', '0');
INSERT INTO `zzz_file` VALUES ('171', 'image', '1659858248613484', '62d3d3f0719ca', '/upload/news/1659858248613484.jpg', '121.38KB', '2022-08-07 15:44:08', 'jpg', '7ae6154b78c78b0227f3373fda182c71', 'news', '0');
INSERT INTO `zzz_file` VALUES ('172', 'image', '1659858261776957', '62d3d3f0940d6', '/upload/news/1659858261776957.jpg', '103.60KB', '2022-08-07 15:44:21', 'jpg', '9423bd7ebe17ca70054f09e36c6eeb3c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('173', 'image', '1659858272976314', '62d3d3f012816', '/upload/news/1659858272976314.jpg', '226.56KB', '2022-08-07 15:44:33', 'jpg', '6905a7be2028cecc7b1d660f6b1ab9be', 'news', '0');
INSERT INTO `zzz_file` VALUES ('174', 'image', '1669125657969073', 'hzg', '/upload/news/1669125657969073.jpg', '69.13KB', '2022-11-22 22:00:57', 'jpg', '51d1ba8666ef7a0a562d1aba8054308c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('175', 'image', '1669125662248553', 'wts', '/upload/news/1669125662248553.jpg', '71.81KB', '2022-11-22 22:01:02', 'jpg', 'a64234923463ae7b5f3ada7346ffe847', 'news', '0');
INSERT INTO `zzz_file` VALUES ('176', 'image', '1669125662802362', 'zsf', '/upload/news/1669125662802362.jpg', '57.62KB', '2022-11-22 22:01:02', 'jpg', '62c4483aed9f28bab30440d0f91e263f', 'news', '0');
INSERT INTO `zzz_file` VALUES ('177', 'image', '1669126277790335', 'xby', '/upload/news/1669126277790335.jpg', '55.87KB', '2022-11-22 22:11:17', 'jpg', 'ff68d42db6c04bb92aeb1b3278f59ec8', 'news', '0');
INSERT INTO `zzz_file` VALUES ('178', 'image', '1669126277372201', 'rbjs', '/upload/news/1669126277372201.jpg', '53.55KB', '2022-11-22 22:11:17', 'jpg', '14bad51bb7359ab3b95ac583ca551208', 'news', '0');
INSERT INTO `zzz_file` VALUES ('179', 'image', '1673438653686011', '何博', '/upload/news/1673438653686011.jpeg', '26.76KB', '2023-01-11 20:04:13', 'jpeg', '507ff155f8daea0c73f572b01e056d90', 'news', '0');
INSERT INTO `zzz_file` VALUES ('180', 'image', '1673439187334939', '111', '/upload/news/1673439187334939.png', '427.39KB', '2023-01-11 20:13:07', 'png', 'b0830d5c92676a7d715bc52c8d6b0dc2', 'news', '0');
INSERT INTO `zzz_file` VALUES ('181', 'image', '1673439187686991', '222', '/upload/news/1673439187686991.png', '452.11KB', '2023-01-11 20:13:07', 'png', 'eb9536d1d9ec360b2a962adc76feb2b8', 'news', '0');
INSERT INTO `zzz_file` VALUES ('182', 'image', '1673439187999517', '333', '/upload/news/1673439187999517.png', '496.75KB', '2023-01-11 20:13:07', 'png', '0ac4cb211eee7ce020e920bcdcbd2a95', 'news', '0');
INSERT INTO `zzz_file` VALUES ('183', 'image', '1673439187466242', '444', '/upload/news/1673439187466242.png', '583.32KB', '2023-01-11 20:13:07', 'png', '617655980ba42a766ab5894612022d65', 'news', '0');
INSERT INTO `zzz_file` VALUES ('184', 'image', '1673439363741630', '111', '/upload/news/1673439363741630.jpg', '72.75KB', '2023-01-11 20:16:03', 'jpg', 'a0b9ace1da4944fbc744ba372f04f445', 'news', '0');
INSERT INTO `zzz_file` VALUES ('185', 'image', '1673439379273445', '222', '/upload/news/1673439379273445.jpg', '94.94KB', '2023-01-11 20:16:19', 'jpg', '1fe81c919fdaea78bc631a1cab689583', 'news', '0');
INSERT INTO `zzz_file` VALUES ('186', 'image', '1673439395196737', '333', '/upload/news/1673439395196737.jpg', '95.98KB', '2023-01-11 20:16:35', 'jpg', '3719e1570103cb0702e7dbb51afa584a', 'news', '0');
INSERT INTO `zzz_file` VALUES ('187', 'image', '1673439421720024', '444', '/upload/news/1673439421720024.jpg', '173.61KB', '2023-01-11 20:17:01', 'jpg', '62c01c9262218723e3b3518efec498e8', 'news', '0');
INSERT INTO `zzz_file` VALUES ('188', 'image', '1673439697237536', '555', '/upload/news/1673439697237536.png', '347.58KB', '2023-01-11 20:21:37', 'png', '9cc9ee49cd07a11c4f43f251fe0fce14', 'news', '0');
INSERT INTO `zzz_file` VALUES ('189', 'image', '1673439714872082', '666', '/upload/news/1673439714872082.png', '1.05MB', '2023-01-11 20:21:57', 'png', '599268323cc3cdffc8ccd181e66dace5', 'news', '0');
INSERT INTO `zzz_file` VALUES ('190', 'image', '1673439730196350', '777', '/upload/news/1673439730196350.png', '261.35KB', '2023-01-11 20:22:14', 'png', 'fb409e7eb2b1fbc48efe9b0e1fde6889', 'news', '0');
INSERT INTO `zzz_file` VALUES ('191', 'image', '1673440321937092', '888', '/upload/news/1673440321937092.png', '316.77KB', '2023-01-11 20:32:04', 'png', '546bed2c9b1be14d4ae45c11b0d91a76', 'news', '0');
INSERT INTO `zzz_file` VALUES ('192', 'image', '1673440324964520', '999', '/upload/news/1673440324964520.png', '327.95KB', '2023-01-11 20:32:07', 'png', '8022d26b45b5c80de0a1e0966afb6713', 'news', '0');
INSERT INTO `zzz_file` VALUES ('193', 'image', '1673440327733948', '10', '/upload/news/1673440327733948.jpg', '314.82KB', '2023-01-11 20:32:07', 'jpg', '30dae52ecbf2bd80db8e29c186c1616a', 'news', '0');
INSERT INTO `zzz_file` VALUES ('194', 'image', '1673440327276957', '11', '/upload/news/1673440327276957.png', '310.24KB', '2023-01-11 20:32:10', 'png', '7efadd698813912144d3c74d67fd9bbc', 'news', '0');
INSERT INTO `zzz_file` VALUES ('195', 'image', '1673440330573444', '12', '/upload/news/1673440330573444.jpg', '289.64KB', '2023-01-11 20:32:10', 'jpg', '8f4070260e12d4b42ed5e64a9e5de33b', 'news', '0');
INSERT INTO `zzz_file` VALUES ('196', 'image', '1673440330930878', '13', '/upload/news/1673440330930878.jpg', '282.20KB', '2023-01-11 20:32:10', 'jpg', 'ef69dc6ee10438a85d513f189dba6f73', 'news', '0');
INSERT INTO `zzz_file` VALUES ('197', 'image', '1673440330130007', '14', '/upload/news/1673440330130007.jpg', '267.98KB', '2023-01-11 20:32:11', 'jpg', '3cc1c1c03f6c26d480854c00736a79e0', 'news', '0');
INSERT INTO `zzz_file` VALUES ('198', 'image', '1673440331910484', '15', '/upload/news/1673440331910484.png', '291.02KB', '2023-01-11 20:32:14', 'png', '5e9ad361647898fda1167cacb814b01c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('199', 'image', '1673440334460516', '16', '/upload/news/1673440334460516.jpg', '264.61KB', '2023-01-11 20:32:14', 'jpg', '25908894bec9ae3560555839e2ae89c2', 'news', '0');
INSERT INTO `zzz_file` VALUES ('200', 'image', '1673440334900093', '17', '/upload/news/1673440334900093.jpg', '288.09KB', '2023-01-11 20:32:14', 'jpg', '00111586cd26526dc80fa9c120bae761', 'news', '0');
INSERT INTO `zzz_file` VALUES ('201', 'image', '1673440334247597', '18', '/upload/news/1673440334247597.png', '296.70KB', '2023-01-11 20:32:18', 'png', '45e04f1bd8f33a5bbfe651ee5081d30e', 'news', '0');
INSERT INTO `zzz_file` VALUES ('202', 'image', '1673440338287302', '19', '/upload/news/1673440338287302.png', '305.33KB', '2023-01-11 20:32:21', 'png', '6a1de06255e5ddaa0c484e31c9dabffb', 'news', '0');
INSERT INTO `zzz_file` VALUES ('203', 'image', '1673441066222107', '20', '/upload/news/1673441066222107.png', '854.05KB', '2023-01-11 20:44:26', 'png', '29d7b054de8a54bdbba688d9a689896c', 'news', '0');
INSERT INTO `zzz_file` VALUES ('204', 'image', '1673441122719533', '21', '/upload/news/1673441122719533.png', '965.72KB', '2023-01-11 20:45:22', 'png', 'a205a6c90fbd5f3a7ef196d328f26695', 'news', '0');
INSERT INTO `zzz_file` VALUES ('205', 'image', '1695995765413327', 'prof-photo2', '/upload/news/1695995765413327.jpg', '61.89KB', '2023-09-29 21:56:05', 'jpg', 'e7b726a1677be724752805f838c634f7', 'news', '0');
INSERT INTO `zzz_file` VALUES ('206', 'image', '1695996284177442', 'jane-carmona', '/upload/news/1695996284177442.jpg', '72.78KB', '2023-09-29 22:04:44', 'jpg', '8c31a3cfc7351e499f141b8b2bb29132', 'news', '0');
INSERT INTO `zzz_file` VALUES ('207', 'image', '1695996333956617', 'ronny-sison', '/upload/news/1695996333956617.jpg', '134.14KB', '2023-09-29 22:05:33', 'jpg', 'cdba5537cf44e6a1a1c649e930f6512d', 'news', '0');
INSERT INTO `zzz_file` VALUES ('208', 'image', '1695996368646749', 'graduate-1', '/upload/news/1695996368646749.jpg', '97.75KB', '2023-09-29 22:06:08', 'jpg', '08f0b77fc3fabb3bbfa9766d2ceefd53', 'news', '0');
INSERT INTO `zzz_file` VALUES ('209', 'image', '1695996963403032', 'banner', '/upload/slide/1695996963403032.jpg', '252.23KB', '2023-09-29 22:16:03', 'jpg', 'abed6e65ff7d2da07ea237c36f5dafb0', 'slide', '0');
INSERT INTO `zzz_file` VALUES ('210', 'image', '1696082286663645', 'tempic', '/upload/news/1696082286663645.jpg', '98.12KB', '2023-09-30 21:58:06', 'jpg', 'ea58a0b1d11a131a8e1d19bcba12afc3', 'news', '0');
INSERT INTO `zzz_file` VALUES ('211', 'image', '1696082559355711', 'nanoletters.2013.13.issue1', '/upload/news/1696082559355711.jpg', '136.36KB', '2023-09-30 22:02:39', 'jpg', 'dd74f5e0428b5dc10f28831906bfb578', 'news', '0');
INSERT INTO `zzz_file` VALUES ('212', 'image', '1696082586688629', 'ancac3.2013.7.issue-12.largecover', '/upload/news/1696082586688629.jpg', '124.09KB', '2023-09-30 22:03:06', 'jpg', '7f78db0ee83fde05e75ef58e7d56732d', 'news', '0');
INSERT INTO `zzz_file` VALUES ('213', 'image', '1696082640272880', 'nature-communications', '/upload/news/1696082640272880.jpg', '34.27KB', '2023-09-30 22:04:00', 'jpg', 'ab9825a5a880f574ffc511193c6562ee', 'news', '0');
INSERT INTO `zzz_file` VALUES ('214', 'image', '1696082734169639', '105_1', '/upload/news/1696082734169639.jpg', '246.29KB', '2023-09-30 22:05:35', 'jpg', 'b9298793796abe0e8e4a4bbf52b9cb93', 'news', '0');

-- ----------------------------
-- Table structure for `zzz_labels`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_labels`;
CREATE TABLE `zzz_labels` (
  `labelid` int(2) NOT NULL AUTO_INCREMENT,
  `label_title` varchar(255) DEFAULT NULL,
  `label_entitle` varchar(255) DEFAULT NULL,
  `label_name` varchar(255) DEFAULT NULL,
  `label_onoff` int(1) DEFAULT '0',
  `label_order` int(3) DEFAULT '9',
  `label_pic` varchar(255) DEFAULT NULL,
  `label_content` longtext,
  `label_desc` longtext,
  `label_addtime` datetime DEFAULT NULL,
  `label_edittime` datetime DEFAULT NULL,
  PRIMARY KEY (`labelid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_labels
-- ----------------------------
INSERT INTO `zzz_labels` VALUES ('17', '汽车专业群', 'zy4', 'zy4', '1', '9', '/upload/label/1659621577287868.jpg', '&lt;p&gt;汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业&lt;/p&gt;', '汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业', '2022-08-04 22:02:05', null);
INSERT INTO `zzz_labels` VALUES ('14', '道路桥梁工程专业群', 'zy1', 'zy1', '1', '9', '/upload/label/1659621577445809.jpg', '&lt;p&gt;汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业&lt;/p&gt;', '汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业', '2022-08-04 21:58:44', null);
INSERT INTO `zzz_labels` VALUES ('15', '工程机械专业群', 'zy2', 'zy2', '1', '9', '/upload/label/1659621577241351.jpg', '&lt;p&gt;汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业&lt;/p&gt;', '汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业', '2022-08-04 22:00:52', null);
INSERT INTO `zzz_labels` VALUES ('16', '物流商贸专业群', 'zy3', 'zy3', '1', '9', '/upload/label/1659621577769240.jpg', '&lt;p&gt;汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业&lt;/p&gt;', '汽车技术系主要承担学院汽车维修（机电一体化）专业、汽车维修（新能源汽车技术方向）专业', '2022-08-04 22:01:38', null);

-- ----------------------------
-- Table structure for `zzz_language`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_language`;
CREATE TABLE `zzz_language` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) DEFAULT NULL,
  `l_path` varchar(255) DEFAULT NULL,
  `l_order` int(11) DEFAULT NULL,
  `l_onoff` int(1) DEFAULT NULL,
  `l_alias` varchar(255) DEFAULT NULL,
  `pctemplate` varchar(255) DEFAULT NULL,
  `waptemplate` varchar(255) DEFAULT NULL,
  `pchtmlpath` varchar(255) DEFAULT NULL,
  `waphtmlpath` varchar(255) DEFAULT NULL,
  `sitetitle` varchar(255) DEFAULT NULL,
  `additiontitle` varchar(255) DEFAULT NULL,
  `sitepclogo` varchar(255) DEFAULT NULL,
  `sitewaplogo` varchar(255) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `sitewapurl` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `companyaddress` varchar(255) DEFAULT NULL,
  `companymappoint` varchar(255) DEFAULT NULL,
  `companypostcode` varchar(255) DEFAULT NULL,
  `companycontact` varchar(255) DEFAULT NULL,
  `companytel` varchar(255) DEFAULT NULL,
  `companymobile` varchar(255) DEFAULT NULL,
  `companyfax` varchar(255) DEFAULT NULL,
  `companyemail` varchar(255) DEFAULT NULL,
  `companyicp` varchar(255) DEFAULT NULL,
  `statisticalcode` longtext,
  `copyright` longtext,
  `sitekeys` longtext,
  `sitedesc` longtext,
  `isdefault` int(11) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `weixin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_language
-- ----------------------------
INSERT INTO `zzz_language` VALUES ('2', 'English', '', '0', '1', 'zh', 'en/', '', 'html/', 'html/', 'Prof. Research Team', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '版权所有 ©2022 浙江工商大学中国化时代化马克思主义研究院<br/>邮箱：marx@mail.zjgsu.edu.cn 技术支持：名冠电子商务 浙ICP备2020035987号', '', '', '1', '', '');

-- ----------------------------
-- Table structure for `zzz_links`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_links`;
CREATE TABLE `zzz_links` (
  `lid` int(2) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) DEFAULT NULL,
  `l_cid` int(11) DEFAULT '0',
  `l_type` varchar(255) DEFAULT NULL,
  `l_desc` longtext,
  `l_pic` varchar(255) DEFAULT NULL,
  `l_url` varchar(255) DEFAULT NULL,
  `l_order` int(3) DEFAULT '9',
  `l_onoff` int(1) DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_links
-- ----------------------------

-- ----------------------------
-- Table structure for `zzz_log_dbbackup`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_log_dbbackup`;
CREATE TABLE `zzz_log_dbbackup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbname` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_log_dbbackup
-- ----------------------------

-- ----------------------------
-- Table structure for `zzz_log_dbsql`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_log_dbsql`;
CREATE TABLE `zzz_log_dbsql` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(2) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `ldesc` longtext,
  `content` longtext,
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_log_dbsql
-- ----------------------------

-- ----------------------------
-- Table structure for `zzz_log_err`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_log_err`;
CREATE TABLE `zzz_log_err` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(2) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`logid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_log_err
-- ----------------------------

-- ----------------------------
-- Table structure for `zzz_menu`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_menu`;
CREATE TABLE `zzz_menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `tid` int(11) DEFAULT '0',
  `m_name` varchar(255) DEFAULT NULL,
  `m_link` varchar(255) DEFAULT NULL,
  `m_order` int(3) DEFAULT '9',
  `m_level` int(11) DEFAULT '0',
  `m_onoff` int(1) DEFAULT '0',
  `m_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_menu
-- ----------------------------
INSERT INTO `zzz_menu` VALUES ('1', '0', '0', '内容管理', '', '1', '1', '1', '');
INSERT INTO `zzz_menu` VALUES ('2', '0', '0', '栏目扩展', '', '2', '1', '1', '');
INSERT INTO `zzz_menu` VALUES ('3', '0', '0', '订单管理', '', '3', '1', '0', '');
INSERT INTO `zzz_menu` VALUES ('4', '0', '0', '模板管理', '', '4', '1', '0', '');
INSERT INTO `zzz_menu` VALUES ('5', '0', '0', '静态缓存', '', '5', '1', '0', '');
INSERT INTO `zzz_menu` VALUES ('6', '0', '0', '文件管理', '', '6', '1', '1', '');
INSERT INTO `zzz_menu` VALUES ('7', '0', '0', '用户管理', '', '7', '1', '1', '');
INSERT INTO `zzz_menu` VALUES ('8', '0', '0', '插件管理', '', '8', '1', '0', '');
INSERT INTO `zzz_menu` VALUES ('9', '0', '0', '系统管理', '', '9', '1', '1', '');
INSERT INTO `zzz_menu` VALUES ('10', '1', '1', '单篇管理', '?act=aboutlist', '1', '2', '1', 'about');
INSERT INTO `zzz_menu` VALUES ('11', '1', '1', '文章管理', '?act=contentlist&stype=news', '2', '2', '1', 'news');
INSERT INTO `zzz_menu` VALUES ('12', '1', '1', '产品管理', '?act=contentlist&stype=product', '3', '2', '0', 'product');
INSERT INTO `zzz_menu` VALUES ('13', '1', '1', '相册管理', '?act=contentlist&stype=photo', '4', '2', '0', 'photo');
INSERT INTO `zzz_menu` VALUES ('14', '1', '1', '案例管理', '?act=contentlist&stype=case', '5', '2', '0', 'case');
INSERT INTO `zzz_menu` VALUES ('15', '1', '1', '下载管理', '?act=contentlist&stype=down', '6', '2', '0', 'down');
INSERT INTO `zzz_menu` VALUES ('16', '1', '1', '招聘管理', '?act=contentlist&stype=job', '7', '2', '0', 'job');
INSERT INTO `zzz_menu` VALUES ('17', '1', '1', '视频管理', '?act=contentlist&stype=video', '8', '2', '0', 'video');
INSERT INTO `zzz_menu` VALUES ('18', '1', '1', '品牌管理', '?act=brandlist', '9', '2', '0', 'brand');
INSERT INTO `zzz_menu` VALUES ('19', '1', '1', '回收站', '?act=contentrecy', '10', '2', '1', 'recy');
INSERT INTO `zzz_menu` VALUES ('20', '1', '1', '#', '', '11', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('21', '2', '2', '分类管理', '?act=sortlist', '1', '2', '1', 'sort');
INSERT INTO `zzz_menu` VALUES ('22', '2', '2', '栏目模型', '?act=modellist', '2', '2', '1', 'model');
INSERT INTO `zzz_menu` VALUES ('23', '2', '2', '模型参数', '?act=customlist', '3', '2', '0', 'custom');
INSERT INTO `zzz_menu` VALUES ('24', '2', '2', '幻灯管理', '?act=slidelist', '4', '2', '1', 'slide');
INSERT INTO `zzz_menu` VALUES ('25', '2', '2', '友情链接', '?act=linkslist', '5', '2', '1', 'links');
INSERT INTO `zzz_menu` VALUES ('26', '2', '2', '广告管理', '?act=adlist', '6', '2', '1', 'ad');
INSERT INTO `zzz_menu` VALUES ('27', '2', '2', '留言管理', '?act=gbooklist', '7', '2', '0', 'gbook');
INSERT INTO `zzz_menu` VALUES ('28', '2', '2', 'tag管理', '?act=taglist', '8', '2', '1', 'tag');
INSERT INTO `zzz_menu` VALUES ('29', '2', '2', '自定义内容', '?act=labelslist', '9', '2', '1', 'labels');
INSERT INTO `zzz_menu` VALUES ('30', '3', '3', '', '', '1', '2', '1', '');
INSERT INTO `zzz_menu` VALUES ('31', '3', '3', '订单管理', '', '2', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('32', '3', '3', '评论管理', '', '3', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('33', '3', '3', '应聘管理', '', '4', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('34', '3', '3', '申请管理', '', '5', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('35', '3', '3', '#', '', '6', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('36', '3', '3', '#', '', '7', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('37', '3', '3', '#', '', '8', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('38', '3', '3', '#', '', '9', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('39', '4', '4', '本地模板', '?act=template', '1', '2', '0', 'template');
INSERT INTO `zzz_menu` VALUES ('41', '4', '4', '模板管理', '?act=templatelist', '3', '2', '0', 'templatelist');
INSERT INTO `zzz_menu` VALUES ('42', '4', '4', '#', '', '4', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('43', '4', '4', '#', '', '5', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('44', '5', '5', '模式设置', '?act=htmlset', '1', '2', '0', 'htmlset');
INSERT INTO `zzz_menu` VALUES ('45', '5', '5', '静态列表', '?act=htmllist', '2', '2', '0', 'htmllist');
INSERT INTO `zzz_menu` VALUES ('46', '5', '5', '缓存列表', '?act=cachelist', '3', '2', '0', 'cachelist');
INSERT INTO `zzz_menu` VALUES ('47', '5', '5', '网站地图', '?act=sitemap', '4', '2', '1', 'sitemap');
INSERT INTO `zzz_menu` VALUES ('48', '6', '6', '上传设置', '?act=uploadset', '1', '2', '1', 'uploadset');
INSERT INTO `zzz_menu` VALUES ('49', '6', '6', '文件管理', '?act=uploadlist', '2', '2', '1', 'uploadlist');
INSERT INTO `zzz_menu` VALUES ('50', '6', '6', '数据库备份', '?act=datebackuplist', '3', '2', '1', 'data');
INSERT INTO `zzz_menu` VALUES ('51', '6', '6', '备份记录', '?act=dbbacklist', '4', '2', '1', '');
INSERT INTO `zzz_menu` VALUES ('52', '7', '7', '管理员管理', '?act=adminlist', '1', '2', '1', 'admi');
INSERT INTO `zzz_menu` VALUES ('53', '7', '7', '管理组管理', '?act=admingrouplist', '2', '2', '1', 'admingroup');
INSERT INTO `zzz_menu` VALUES ('54', '7', '7', '会员管理', '?act=userlist', '3', '2', '0', 'user');
INSERT INTO `zzz_menu` VALUES ('55', '7', '7', '会员组管理', '?act=usergrouplist', '4', '2', '0', 'usergroup');
INSERT INTO `zzz_menu` VALUES ('56', '8', '8', '插件管理', '?act=pluglist', '1', '2', '0', 'plug');
INSERT INTO `zzz_menu` VALUES ('57', '8', '8', '#', '', '3', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('58', '8', '8', '#', '', '4', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('59', '8', '8', '#', '', '5', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('60', '8', '8', '#', '', '6', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('61', '8', '8', '#', '', '7', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('62', '8', '8', '#', '', '8', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('63', '8', '8', '#', '', '9', '2', '0', '');
INSERT INTO `zzz_menu` VALUES ('64', '9', '9', '网站信息', '?act=siteedit', '1', '2', '1', 'site');
INSERT INTO `zzz_menu` VALUES ('65', '9', '9', '系统设置', '?act=systemedit', '2', '2', '1', 'system');
INSERT INTO `zzz_menu` VALUES ('66', '9', '9', '操作记录', '?act=dbsqllist', '3', '2', '1', 'dbsql');
INSERT INTO `zzz_menu` VALUES ('67', '9', '9', '系统报警', '?act=errlist', '4', '2', '1', 'errlist');
INSERT INTO `zzz_menu` VALUES ('68', '6', '6', '地区管理', '?act=regionlist', '5', '2', '0', 'regionlist');

-- ----------------------------
-- Table structure for `zzz_model`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_model`;
CREATE TABLE `zzz_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) DEFAULT NULL,
  `model_type` varchar(255) DEFAULT NULL,
  `model_onoff` int(1) DEFAULT '0',
  `model_order` int(3) DEFAULT '9',
  `model_list_tp` varchar(255) DEFAULT NULL,
  `model_list_fd` varchar(255) DEFAULT NULL,
  `model_content_tp` varchar(255) DEFAULT NULL,
  `model_content_fd` varchar(255) DEFAULT NULL,
  `model_list_name` varchar(255) DEFAULT NULL,
  `model_content_name` varchar(255) DEFAULT NULL,
  `model_table` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_model
-- ----------------------------
INSERT INTO `zzz_model` VALUES ('1', '单篇', 'about', '1', '1', 'about.html', 'about/', '-', '-', '{sid}_{page}', '-', 'about');
INSERT INTO `zzz_model` VALUES ('2', '文章', 'news', '1', '2', 'list.html', 'news/', 'content.html', 'news/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('3', '产品', 'product', '0', '3', 'productlist.html', 'product/', 'product.html', 'product/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('4', '图片', 'photo', '0', '4', 'photoshop.html', 'photo/', 'photo.html', 'photo/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('5', '案例', 'case', '0', '5', 'caselist.html', 'case/', 'case.html', 'case/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('6', '下载', 'down', '0', '6', 'downlist.html', 'down/', 'down.html', 'down/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('7', '招聘', 'job', '0', '7', 'list.html', 'job/', 'content.html', 'job/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('8', '视频', 'video', '0', '8', 'list.html', 'video/', 'content.html', 'video/', '', '', 'content');
INSERT INTO `zzz_model` VALUES ('9', '品牌', 'brand', '0', '9', 'brand.html', 'brand/', '-', '-', '{bid}_{page}', '-', 'brand');
INSERT INTO `zzz_model` VALUES ('10', '留言', 'gbook', '0', '10', 'gbook.html', 'gbook/', '-', '-', '', '-', 'gbook');
INSERT INTO `zzz_model` VALUES ('11', '链接', 'links', '1', '11', '-', '-', '-', '-', '-', '-', '');

-- ----------------------------
-- Table structure for `zzz_slide`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_slide`;
CREATE TABLE `zzz_slide` (
  `slideid` int(11) NOT NULL AUTO_INCREMENT,
  `slidename` varchar(255) DEFAULT NULL,
  `slidetitle1` varchar(255) DEFAULT NULL,
  `slidetitle2` varchar(255) DEFAULT NULL,
  `slideclass` varchar(255) DEFAULT NULL,
  `slideimg` varchar(255) DEFAULT NULL,
  `slidelink` varchar(255) DEFAULT NULL,
  `slidewidth` varchar(255) DEFAULT NULL,
  `slideheight` varchar(255) DEFAULT NULL,
  `slideonoff` int(1) DEFAULT '0',
  `slideorder` int(3) DEFAULT '9',
  `slidecontent` longtext,
  `slidedtime` datetime DEFAULT NULL,
  `lid` int(2) DEFAULT '1',
  `slidestyle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`slideid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_slide
-- ----------------------------
INSERT INTO `zzz_slide` VALUES ('1', '幻灯图片1', '', '', 'A', '/upload/slide/1695996963403032.jpg', '', '', '', '1', '9', '', null, '1', '/upload/slide/1695996963403032.jpg');

-- ----------------------------
-- Table structure for `zzz_sort`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_sort`;
CREATE TABLE `zzz_sort` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(255) DEFAULT NULL,
  `s_lid` int(2) DEFAULT '1',
  `s_tid` int(11) DEFAULT '0',
  `s_pid` int(11) DEFAULT '0',
  `s_order` int(3) DEFAULT '9',
  `s_type` varchar(255) DEFAULT NULL,
  `s_postion` varchar(255) DEFAULT NULL,
  `s_enname` varchar(255) DEFAULT NULL,
  `s_url` varchar(255) DEFAULT NULL,
  `s_level` int(11) DEFAULT '0',
  `s_addtime` datetime DEFAULT NULL,
  `s_edittime` datetime DEFAULT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_key` varchar(255) DEFAULT NULL,
  `s_desc` longtext,
  `s_path` varchar(255) DEFAULT NULL,
  `s_pic` varchar(255) DEFAULT NULL,
  `s_template` varchar(255) DEFAULT NULL,
  `c_template` varchar(255) DEFAULT NULL,
  `s_folder` varchar(255) DEFAULT NULL,
  `c_folder` varchar(255) DEFAULT NULL,
  `s_filename` varchar(255) DEFAULT NULL,
  `c_filename` varchar(255) DEFAULT NULL,
  `s_onoff` int(1) DEFAULT '0',
  `s_gid` int(11) DEFAULT '0',
  `s_exc` varchar(255) DEFAULT NULL,
  `iscomment` int(11) DEFAULT '0',
  `s_ico` varchar(255) DEFAULT NULL,
  `s_other1` varchar(255) DEFAULT NULL,
  `s_other2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_sort
-- ----------------------------
INSERT INTO `zzz_sort` VALUES ('1', '学院概况', '1', '1', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:39:37', null, '学院概况', '', '', '1,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('2', '新闻中心', '1', '2', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:39:43', null, '新闻中心', '', '', '2,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('3', '师资队伍', '1', '3', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:39:48', null, '师资队伍', '', '', '3,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('4', '专业教学', '1', '4', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:39:53', null, '专业教学', '', '', '4,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('5', '学院管理', '1', '5', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:39:58', null, '学院管理', '', '', '5,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('6', '招生就业', '1', '6', '0', '9', 'links', 'menu', '', '', '1', '2023-07-19 11:40:04', null, '招生就业', '', '', '6,', '', '', '', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('7', '学院介绍', '1', '1', '1', '9', 'about', '', '', '', '2', '2023-07-19 11:40:18', null, '学院介绍', '', '', '1,7,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('8', '学院批文', '1', '1', '1', '9', 'about', '', '', '', '2', '2023-07-19 11:40:28', null, '学院批文', '', '', '1,8,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('9', '办学资源', '1', '1', '1', '9', 'about', '', '', '', '2', '2023-07-19 11:40:39', null, '办学资源', '', '', '1,9,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('10', '办学优势', '1', '1', '1', '9', 'about', '', '', '', '2', '2023-07-19 11:40:47', null, '办学优势', '', '', '1,10,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('11', '学院动态', '1', '2', '2', '9', 'news', '', '', '', '2', '2023-07-19 11:41:00', null, '学院动态', '', '', '2,11,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('12', '通知公告', '1', '2', '2', '9', 'news', '', '', '', '2', '2023-07-19 11:41:09', null, '通知公告', '', '', '2,12,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('13', '媒体报道', '1', '2', '2', '9', 'news', '', '', '', '2', '2023-07-19 11:41:17', null, '媒体报道', '', '', '2,13,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('14', '外方教师', '1', '3', '3', '9', 'news', '', '', '', '2', '2023-07-19 11:42:44', null, '外方教师', '', '', '3,14,', '', 'teacher.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('15', '人才招聘', '1', '3', '3', '9', 'about', '', '', '', '2', '2023-07-19 11:43:39', null, '人才招聘', '', '', '3,15,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('16', '电子信息工程', '1', '4', '4', '9', 'about', '', '', '', '2', '2023-07-19 11:43:56', null, '电子信息工程', '', '', '4,16,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('17', '通信工程', '1', '4', '4', '9', 'about', '', '', '', '2', '2023-07-19 11:44:06', null, '通信工程', '', '', '4,17,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('18', '机器人与自动化系统', '1', '4', '4', '9', 'about', '', '', '', '2', '2023-07-19 11:44:23', null, '机器人与自动化系统', '', '', '4,18,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('19', '人工智能与自适应系统', '1', '4', '4', '9', 'about', '', '', '', '2', '2023-07-19 11:44:47', null, '人工智能与自适应系统', '', '', '4,19,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('20', '管理架构', '1', '5', '5', '9', 'about', '', '', '', '2', '2023-07-19 11:45:02', null, '管理架构', '', '', '5,20,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('21', '机构组成', '1', '5', '5', '9', 'about', '', '', '', '2', '2023-07-19 11:45:16', null, '机构组成', '', '', '5,21,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('22', '分工及联系方式', '1', '5', '5', '9', 'about', '', '', '', '2', '2023-07-19 11:45:31', null, '分工及联系方式', '', '', '5,22,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('23', '本科生招生', '1', '6', '6', '9', 'about', '', '', '', '2', '2023-07-19 11:46:07', null, '本科生招生', '', '', '6,23,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('24', '研究生招生', '1', '6', '6', '9', 'about', '', '', '', '2', '2023-07-19 11:46:16', null, '研究生招生', '', '', '6,24,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('25', '就业前景', '1', '6', '6', '9', 'about', '', '', '', '2', '2023-07-19 11:46:24', null, '就业前景', '', '', '6,25,', '', 'about.html', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('26', '研究生报名通道', '1', '6', '6', '9', 'links', '', '', 'http://aizs.zjgsu.edu.cn:9090/login.aspx', '2', '2023-07-19 11:47:04', null, '研究生报名通道', '', '', '6,26,', '', '-', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('27', 'About Us', '2', '27', '0', '1', 'news', 'menu', '', '', '1', '2023-09-30 09:09:03', null, 'About Us', '', '', '27,', '', 'list.html', 'content.html', null, null, 'About', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('28', 'Research', '2', '28', '0', '2', 'links', 'menu', '', '?FundedProjects.html', '1', '2023-09-30 09:29:22', null, 'Research', '', '', '28,', '', '-', '-', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('29', 'Honor and Awards', '2', '29', '0', '9', 'about', 'menu', '', '', '1', '2023-09-29 10:10:08', null, 'Honor and Awards', '', '', '29,', '', 'about.html', '', null, null, 'HonorandAwards', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('30', 'Job Openings', '2', '30', '0', '9', 'news', 'menu', '', '', '1', '2023-09-30 10:46:40', null, 'Job Openings', '', '', '30,', '', 'job.html', 'content.html', null, null, 'Job', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('31', 'News', '2', '31', '0', '9', 'news', 'menu', '', '', '1', '2023-09-30 10:10:26', null, 'News', '', '', '31,', '', 'news.html', 'content.html', null, null, 'News', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('32', 'Contact Us', '2', '32', '0', '9', 'about', 'menu', '', '', '1', '2023-09-30 10:42:27', null, 'Contact Us', '', '', '32,', '', 'contact.html', '-', null, null, 'Contact', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('33', 'Publications', '2', '33', '0', '3', 'news', 'menu', '', '', '1', '2023-09-30 09:09:22', null, 'Publications', '', '', '33,', '', 'list.html', 'content.html', null, null, 'Publications', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('34', 'Funded Projects', '2', '28', '28', '9', 'news', '', '', '', '2', '2023-09-30 08:46:22', null, 'Funded Projects', '', '', '28,34,', '', 'list2.html', 'content.html', null, null, 'FundedProjects', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('35', 'Patents', '2', '28', '28', '9', 'about', '', '', '', '2', '2023-09-30 09:40:20', null, 'Patents', '', '', '28,35,', '', 'patents.html', '-', null, null, 'Patents', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('37', 'Professor', '2', '27', '27', '9', 'news', '', '', '', '2', '2023-09-29 09:52:22', null, 'Professor', '', '', '27,37,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('38', 'Postdoctoral fellow', '2', '27', '27', '9', 'news', '', '', '', '2', '2023-09-29 09:52:32', null, 'postdoctoral fellow', '', '', '27,38,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('39', 'PhD', '2', '27', '27', '9', 'news', '', '', '', '2', '2023-09-29 09:52:41', null, 'PhD', '', '', '27,39,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('40', 'Research Assistant', '2', '27', '27', '9', 'news', '', '', '', '2', '2023-09-29 09:52:50', null, 'Research Assistant', '', '', '27,40,', '', 'teacher.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('41', '2018', '2', '28', '33', '9', 'news', '', '', '', '3', '2023-09-30 07:40:25', null, '2018', '', '', '28,33,41,', '', 'list2.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('42', '2017', '2', '28', '33', '9', 'news', '', '', '', '3', '2023-09-30 07:40:34', null, '2017', '', '', '28,33,42,', '', 'list2.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('43', '2016', '2', '28', '33', '9', 'news', '', '', '', '3', '2023-09-30 07:40:41', null, '2016', '', '', '28,33,43,', '', 'list2.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('44', 'Postdoctoral fellow', '2', '30', '30', '9', 'news', '', '', '', '2', '2023-09-30 10:44:55', null, 'Postdoctoral fellow', '', '', '30,44,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');
INSERT INTO `zzz_sort` VALUES ('45', 'Research Assistant', '2', '30', '30', '9', 'news', '', '', '', '2', '2023-09-30 10:45:09', null, 'Research Assistant', '', '', '30,45,', '', 'list.html', 'content.html', null, null, '', null, '1', '0', null, '0', '', '', '');

-- ----------------------------
-- Table structure for `zzz_tag`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_tag`;
CREATE TABLE `zzz_tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  `t_enname` varchar(255) DEFAULT NULL,
  `t_lid` int(2) DEFAULT '1',
  `t_type` varchar(255) DEFAULT NULL,
  `t_visits` int(11) DEFAULT '0',
  `t_onoff` int(1) DEFAULT '0',
  `t_order` int(3) DEFAULT '9',
  `t_addtime` datetime DEFAULT NULL,
  `t_edittime` datetime DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `zzz_user`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_user`;
CREATE TABLE `zzz_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `u_gid` int(11) DEFAULT NULL,
  `u_lid` int(11) DEFAULT NULL,
  `u_onoff` int(1) DEFAULT NULL,
  `u_order` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `u_desc` longtext,
  `adminrand` varchar(255) DEFAULT NULL,
  `lastlogintime` varchar(255) DEFAULT NULL,
  `lastloginip` varchar(255) DEFAULT NULL,
  `logincount` int(11) DEFAULT NULL,
  `sysinfo` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_user
-- ----------------------------
INSERT INTO `zzz_user` VALUES ('1', '1', '1', '1', '0', '男', 'admin', 'f1f4a85f5889436a', 'RGKWKR7QE2ZYHBVW', 'E33JNZ6QNHXWK8E3', '2018-04-13 13:51:19', '创始人', 'face01.png', '', '', '', '', '', '-', '13800000000', '', '', '', '10729cb6696fad5de8547988535d164d', '2023/10/02 23:09:57', '127.0.0.1', '79', '', '0', '0');

-- ----------------------------
-- Table structure for `zzz_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `zzz_user_group`;
CREATE TABLE `zzz_user_group` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `g_desc` longtext,
  `isadmin` int(11) DEFAULT '0',
  `g_name` varchar(255) DEFAULT NULL,
  `g_onoff` int(1) DEFAULT '0',
  `g_mark` int(11) DEFAULT '0',
  `g_menu` varchar(255) DEFAULT NULL,
  `g_sort` varchar(255) DEFAULT NULL,
  `g_order` int(3) DEFAULT '9',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zzz_user_group
-- ----------------------------
INSERT INTO `zzz_user_group` VALUES ('1', '所有的管理员权限', '1', '系统管理员', '1', '99999', 'all', '', '1');
INSERT INTO `zzz_user_group` VALUES ('2', '超级管理员', '1', '超级管理员', '1', '9999', '1,10,11,19,2,21,25,6,48,49,50,51,7,52,9,64,66,67', 'all', '2');
