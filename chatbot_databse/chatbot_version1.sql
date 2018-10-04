/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : chatbot

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-09-11 23:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `degree_info`
-- ----------------------------
DROP TABLE IF EXISTS `degree_info`;
CREATE TABLE `degree_info` (
  `Program_Title` TEXT DEFAULT NULL,
  `Award_Level` TEXT DEFAULT NULL,
  `Code` TEXT DEFAULT NULL,
  `Faculty` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Records of degree_info
-- ----------------------------
INSERT INTO `degree_info` VALUES ('Accounting/Business Info Tech', 'Masters Degree (Coursework)', '8426', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8426.html');
INSERT INTO `degree_info` VALUES ('Actuarial Studies', 'Masters Degree (Coursework)', '8411', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8411.html');
INSERT INTO `degree_info` VALUES ('Actuarial Studies (Extension)', 'Masters Degree (Coursework)', '8416', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8416.html');
INSERT INTO `degree_info` VALUES ('Advanced Flying', 'Graduate Diploma', '5545', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5545.html');
INSERT INTO `degree_info` VALUES ('Applied Linguistics', 'Masters Degree (Coursework)', '8236', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8236.html');
INSERT INTO `degree_info` VALUES ('Applied Taxation', 'Masters Degree (Coursework)', '9260', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9260.html');
INSERT INTO `degree_info` VALUES ('Architecture', 'Masters Degree (Coursework)', '8143', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8143.html');
INSERT INTO `degree_info` VALUES ('Art', 'Graduate Certificate', '7307', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7307.html');
INSERT INTO `degree_info` VALUES ('Art', 'Masters Degree (Coursework)', '9314', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9314.html');
INSERT INTO `degree_info` VALUES ('Art', 'Graduate Diploma', '5307', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5307.html');
INSERT INTO `degree_info` VALUES ('Arts', 'Masters Degree (Coursework)', '8175', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8175.html');
INSERT INTO `degree_info` VALUES ('Arts (Research)', 'Graduate Diploma', '5275', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5275.html');
INSERT INTO `degree_info` VALUES ('Aviation (Flying)', 'Graduate Diploma', '5536', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5536.html');
INSERT INTO `degree_info` VALUES ('Aviation Management', 'Masters Degree (Coursework)', '8741', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8741.html');
INSERT INTO `degree_info` VALUES ('Aviation Management', 'Graduate Diploma', '5741', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5741.html');
INSERT INTO `degree_info` VALUES ('Biomedical Engineering', 'Masters Degree (Coursework)', '8660', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8660.html');
INSERT INTO `degree_info` VALUES ('Built Environment', 'Graduate Certificate', '7131', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7131.html');
INSERT INTO `degree_info` VALUES ('Business', 'Masters Degree (Coursework)', '8388', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8388.html');
INSERT INTO `degree_info` VALUES ('Business Administration', 'Masters Degree (Coursework)', '8350', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8350.html');
INSERT INTO `degree_info` VALUES ('Business Administration (Exec)', 'Masters Degree (Coursework)', '8355', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8355.html');
INSERT INTO `degree_info` VALUES ('Business Administration (Specialised)', 'Masters Degree (Coursework)', '8625', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8625.html');
INSERT INTO `degree_info` VALUES ('Business and Technology', 'Graduate Certificate', '7333', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8616.html');
INSERT INTO `degree_info` VALUES ('Business and Technology', 'Masters Degree (Coursework)', '8616', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8616.html');
INSERT INTO `degree_info` VALUES ('Business and Technology', 'Graduate Diploma', '5457', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5457.html');
INSERT INTO `degree_info` VALUES ('Business Law', 'Masters Degree (Coursework)', '9231', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9231.html');
INSERT INTO `degree_info` VALUES ('Business Law', 'Graduate Diploma', '5231', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5231.html');
INSERT INTO `degree_info` VALUES ('Capability Management', 'Masters Degree (Coursework)', '8399', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8399.html');
INSERT INTO `degree_info` VALUES ('Change Management', 'Graduate Certificate', '7315', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7315.html');
INSERT INTO `degree_info` VALUES ('City Analytics', 'Graduate Certificate', '7451', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7451.html');
INSERT INTO `degree_info` VALUES ('City Analytics', 'Masters Degree (Coursework)', '8151', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8151.html');
INSERT INTO `degree_info` VALUES ('City Analytics', 'Graduate Diploma', '5151', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5151.html');
INSERT INTO `degree_info` VALUES ('City Analytics (Extension)', 'Masters Degree (Coursework)', '8152', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8152.html');
INSERT INTO `degree_info` VALUES ('City Planning', 'Masters Degree (Coursework)', '8148', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8148.html');
INSERT INTO `degree_info` VALUES ('City Planning', 'Graduate Diploma', '5148', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5148.html');
INSERT INTO `degree_info` VALUES ('City Planning', 'Graduate Certificate', '7148', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7148.html');
INSERT INTO `degree_info` VALUES ('Clinical Optometry', 'Masters Degree (Coursework)', '8095', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8095.html');
INSERT INTO `degree_info` VALUES ('Combined Arts/Social Sciences', 'Masters Degree (Coursework)', '8224', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8224.html');
INSERT INTO `degree_info` VALUES ('Commerce', 'Graduate Certificate', '7355', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7355.html');
INSERT INTO `degree_info` VALUES ('Commerce', 'Masters Degree (Coursework)', '8404', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8404.html');
INSERT INTO `degree_info` VALUES ('Commerce (Extension)', 'Masters Degree (Coursework)', '8417', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8417.html');
INSERT INTO `degree_info` VALUES ('Computing', 'Graduate Certificate', '7543', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7543.html');
INSERT INTO `degree_info` VALUES ('Construction Project Mgmt', 'Masters Degree (Coursework)', '8121', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8121.html');
INSERT INTO `degree_info` VALUES ('Construction Project Mgmt', 'Graduate Certificate', '7123', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7123.html');
INSERT INTO `degree_info` VALUES ('Construction Project Mgmt', 'Masters Degree (Coursework)', '8123', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8123.html');
INSERT INTO `degree_info` VALUES ('Counselling Social Work', 'Masters Degree (Coursework)', '8930', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8930.html');
INSERT INTO `degree_info` VALUES ('Criminal Justice & Criminology', 'Masters Degree (Coursework)', '9285', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9285.html');
INSERT INTO `degree_info` VALUES ('Criminal Justice & Criminology', 'Graduate Diploma', '5285', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5285.html');
INSERT INTO `degree_info` VALUES ('Cultural Leadership', 'Graduate Diploma', '5312', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5312.html');
INSERT INTO `degree_info` VALUES ('Cultural Leadership', 'Graduate Certificate', '7318', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7318.html');
INSERT INTO `degree_info` VALUES ('Curating & Cultural Leadership', 'Masters Degree (Coursework)', '9318', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9318.html');
INSERT INTO `degree_info` VALUES ('Cyber Sec, Strat & Diplomacy', 'Masters Degree (Coursework)', '8631', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8631.html');
INSERT INTO `degree_info` VALUES ('Cyber Security', 'Masters Degree (Coursework)', '8628', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8628.html');
INSERT INTO `degree_info` VALUES ('Cyber Security Operations', 'Masters Degree (Coursework)', '8629', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8629.html');
INSERT INTO `degree_info` VALUES ('Design', 'Graduate Certificate', '7306', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7306.html');
INSERT INTO `degree_info` VALUES ('Design', 'Graduate Diploma', '5306', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5306.html');
INSERT INTO `degree_info` VALUES ('Design', 'Masters Degree (Coursework)', '9313', 'Faculty of Art & Design', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9313.html');
INSERT INTO `degree_info` VALUES ('Development Studies', 'Masters Degree (Coursework)', '8942', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8942.html');
INSERT INTO `degree_info` VALUES ('Dispute Resolution', 'Masters Degree (Coursework)', '9235', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9235.html');
INSERT INTO `degree_info` VALUES ('Dispute Resolution', 'Graduate Diploma', '5235', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5235.html');
INSERT INTO `degree_info` VALUES ('Economics', 'Graduate Certificate', '7412', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7412.html');
INSERT INTO `degree_info` VALUES ('Economics', 'Masters Degree (Coursework)', '8412', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8412.html');
INSERT INTO `degree_info` VALUES ('Education', 'Masters Degree (Coursework)', '8910', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8910.html');
INSERT INTO `degree_info` VALUES ('Education', 'Graduate Certificate', '7401', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7401.html');
INSERT INTO `degree_info` VALUES ('Educational Leadership', 'Graduate Certificate', '7960', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7960.html');
INSERT INTO `degree_info` VALUES ('Educational Leadership', 'Masters Degree (Coursework)', '8960', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8960.html');
INSERT INTO `degree_info` VALUES ('Engineering', 'Masters Degree (Coursework)', '8621', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8621.html');
INSERT INTO `degree_info` VALUES ('Engineering (Biomedical Eng)', 'Graduate Diploma', '5449', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5449.html');
INSERT INTO `degree_info` VALUES ('Engineering Science', 'Masters Degree (Coursework)', '8569', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8569.html');
INSERT INTO `degree_info` VALUES ('Engineering Science', 'Masters Degree (Coursework)', '8338', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8338.html');
INSERT INTO `degree_info` VALUES ('Engineering Science', 'Graduate Certificate', '7320', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7320.html');
INSERT INTO `degree_info` VALUES ('Engineering Science', 'Graduate Diploma', '5341', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5341.html');
INSERT INTO `degree_info` VALUES ('Environmental Law and Policy', 'Graduate Diploma', '5212', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5212.html');
INSERT INTO `degree_info` VALUES ('Environmental Law and Policy', 'Masters Degree (Coursework)', '9212', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9212.html');
INSERT INTO `degree_info` VALUES ('Environmental Management', 'Masters Degree (Coursework)', '8623', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8623.html');
INSERT INTO `degree_info` VALUES ('Environmental Management', 'Graduate Certificate', '7339', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7339.html');
INSERT INTO `degree_info` VALUES ('Environmental Management', 'Graduate Diploma', '5499', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5499.html');
INSERT INTO `degree_info` VALUES ('Finance', 'Masters Degree (Coursework)', '8406', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8406.html');
INSERT INTO `degree_info` VALUES ('Financial Analysis', 'Masters Degree (Coursework)', '8413', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8413.html');
INSERT INTO `degree_info` VALUES ('Financial Mathematics', 'Masters Degree (Coursework)', '8161', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8161.html');
INSERT INTO `degree_info` VALUES ('Financial Planning', 'Graduate Diploma', '5273', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5273.html');
INSERT INTO `degree_info` VALUES ('Financial Planning', 'Graduate Certificate', '7273', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7273.html');
INSERT INTO `degree_info` VALUES ('Financial Planning', 'Masters Degree (Coursework)', '9273', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9273.html');
INSERT INTO `degree_info` VALUES ('Food Science', 'Masters Degree (Coursework)', '8037', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8037.html');
INSERT INTO `degree_info` VALUES ('Food Science', 'Graduate Diploma', '5037', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5037.html');
INSERT INTO `degree_info` VALUES ('Forensic Mental Health', 'Graduate Diploma', '5512', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5512.html');
INSERT INTO `degree_info` VALUES ('Forensic Mental Health', 'Masters Degree (Coursework)', '9012', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9012.html');
INSERT INTO `degree_info` VALUES ('Forensic Mental Health', 'Graduate Certificate', '7312', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7312.html');
INSERT INTO `degree_info` VALUES ('Health Management', 'Graduate Certificate', '7360', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7360.html');
INSERT INTO `degree_info` VALUES ('Health Management', 'Masters Degree (Coursework)', '8901', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8901.html');
INSERT INTO `degree_info` VALUES ('Health Management', 'Graduate Diploma', '5509', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5509.html');
INSERT INTO `degree_info` VALUES ('Health Management (Extension)', 'Masters Degree (Coursework)', '8902', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8902.html');
INSERT INTO `degree_info` VALUES ('Human Rights Law and Policy', 'Masters Degree (Coursework)', '9211', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9211.html');
INSERT INTO `degree_info` VALUES ('Human Rights Law and Policy', 'Graduate Diploma', '5211', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5211.html');
INSERT INTO `degree_info` VALUES ('Indigenous Studies', 'Graduate Certificate', '7223', 'DVC (E) Board of Studies', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7223.html');
INSERT INTO `degree_info` VALUES ('Indigenous Studies', 'Masters Degree (Coursework)', '8223', 'DVC (E) Board of Studies', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8223.html');
INSERT INTO `degree_info` VALUES ('Indigenous Studies', 'Graduate Diploma', '5223', 'DVC (E) Board of Studies', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5223.html');
INSERT INTO `degree_info` VALUES ('Infect Diseases Intelligence', 'Graduate Certificate', '7362', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7362.html');
INSERT INTO `degree_info` VALUES ('Infect Diseases Intelligence', 'Graduate Diploma', '5362', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5362.html');
INSERT INTO `degree_info` VALUES ('Infect. Diseases Intelligence', 'Masters Degree (Coursework)', '8362', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8362.html');
INSERT INTO `degree_info` VALUES ('Information Systems Management', 'Masters Degree (Coursework)', '8435', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8435.html');
INSERT INTO `degree_info` VALUES ('Information Technology', 'Masters Degree (Coursework)', '8543', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8543.html');
INSERT INTO `degree_info` VALUES ('Information Technology', 'Graduate Diploma', '5543', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5543.html');
INSERT INTO `degree_info` VALUES ('Information Technology', 'Masters Degree (Coursework)', '9380', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9380.html');
INSERT INTO `degree_info` VALUES ('Int Pub Health/Pub Health', 'Masters Degree (Coursework)', '9043', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9043.html');
INSERT INTO `degree_info` VALUES ('Int Pub Hlth/Hlth Mgmt', 'Masters Degree (Coursework)', '9044', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9044.html');
INSERT INTO `degree_info` VALUES ('Int\'l Law & Int\'l Relations', 'Masters Degree (Coursework)', '9240', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9240.html');
INSERT INTO `degree_info` VALUES ('Int\'l Law & Int\'l Relations', 'Graduate Diploma', '5760', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5760.html');
INSERT INTO `degree_info` VALUES ('Int\'l Public Health (Extn)', 'Masters Degree (Coursework)', '9051', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9051.html');
INSERT INTO `degree_info` VALUES ('International Business', 'Masters Degree (Coursework)', '8371', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8371.html');
INSERT INTO `degree_info` VALUES ('International Business/Global', 'Masters Degree (Coursework)', '8370', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8370.html');
INSERT INTO `degree_info` VALUES ('International Law and Security', 'Masters Degree (Coursework)', '9281', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9281.html');
INSERT INTO `degree_info` VALUES ('International Law and Security', 'Graduate Diploma', '5281', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5281.html');
INSERT INTO `degree_info` VALUES ('International Public Health', 'Masters Degree (Coursework)', '9048', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9048.html');
INSERT INTO `degree_info` VALUES ('International Public Health', 'Graduate Certificate', '7367', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7367.html');
INSERT INTO `degree_info` VALUES ('International Public Health', 'Graduate Diploma', '5567', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5567.html');
INSERT INTO `degree_info` VALUES ('International Relations', 'Masters Degree (Coursework)', '8233', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8233.html');
INSERT INTO `degree_info` VALUES ('Interpreting', 'Masters Degree (Coursework)', '8202', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8202.html');
INSERT INTO `degree_info` VALUES ('Intl Pub Hlth(Extn)/Hlth Mngmt', 'Masters Degree (Coursework)', '9053', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9053.html');
INSERT INTO `degree_info` VALUES ('Intl Pub Hlth/Hlth Mngmt(Extn)', 'Masters Degree (Coursework)', '9058', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9058.html');
INSERT INTO `degree_info` VALUES ('IntlPubHlth (Extn) / PubHlth', 'Masters Degree (Coursework)', '9052', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9052.html');
INSERT INTO `degree_info` VALUES ('IntlPubHlth/PubHlth(Extn)', 'Masters Degree (Coursework)', '9054', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9054.html');
INSERT INTO `degree_info` VALUES ('Journalism and Communication', 'Masters Degree (Coursework)', '8232', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8232.html');
INSERT INTO `degree_info` VALUES ('Juris Doctor', 'Masters Degree (Coursework)', '9150', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9150.html');
INSERT INTO `degree_info` VALUES ('Landscape Architecture', 'Masters Degree (Coursework)', '8136', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8136.html');
INSERT INTO `degree_info` VALUES ('Law', 'Masters Degree (Coursework)', '9200', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9200.html');
INSERT INTO `degree_info` VALUES ('Law', 'Graduate Diploma', '5740', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5740.html');
INSERT INTO `degree_info` VALUES ('Law, Media & Journalism', 'Masters Degree (Coursework)', '9214', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9214.html');
INSERT INTO `degree_info` VALUES ('Law, Media & Journalism', 'Graduate Diploma', '5214', 'Faculty of Law', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5214.html');
INSERT INTO `degree_info` VALUES ('Logistics Management', 'Masters Degree (Coursework)', '8564', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8564.html');
INSERT INTO `degree_info` VALUES ('Management', 'Graduate Diploma', '5950', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5950.html');
INSERT INTO `degree_info` VALUES ('Management - HK', 'Graduate Diploma', '5945', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5945.html');
INSERT INTO `degree_info` VALUES ('Marine Science and Management', 'Masters Degree (Coursework)', '8271', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8271.html');
INSERT INTO `degree_info` VALUES ('Marketing', 'Masters Degree (Coursework)', '8423', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8423.html');
INSERT INTO `degree_info` VALUES ('Marketing', 'Graduate Certificate', '7414', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7414.html');
INSERT INTO `degree_info` VALUES ('Materials Technology', 'Masters Degree (Coursework)', '8717', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8717.html');
INSERT INTO `degree_info` VALUES ('Mathematics', 'Masters Degree (Coursework)', '8719', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8719.html');
INSERT INTO `degree_info` VALUES ('Mathematics and Statistics', 'Graduate Diploma', '5659', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5659.html');
INSERT INTO `degree_info` VALUES ('Mathematics and Statistics', 'Graduate Certificate', '7659', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7659.html');
INSERT INTO `degree_info` VALUES ('Mine Geotechnical Engineering', 'Graduate Diploma', '5059', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5059.html');
INSERT INTO `degree_info` VALUES ('Mine Geotechnical Engineering', 'Masters Degree (Coursework)', '8059', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8059.html');
INSERT INTO `degree_info` VALUES ('Mine Ventilation', 'Graduate Diploma', '5046', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5046.html');
INSERT INTO `degree_info` VALUES ('Mining Engineering', 'Graduate Diploma', '5335', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5335.html');
INSERT INTO `degree_info` VALUES ('Mining Engineering', 'Graduate Certificate', '7335', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7335.html');
INSERT INTO `degree_info` VALUES ('Mining Engineering', 'Masters Degree (Coursework)', '8335', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8335.html');
INSERT INTO `degree_info` VALUES ('Ocular Therapeutics', 'Graduate Certificate', '7436', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7436.html');
INSERT INTO `degree_info` VALUES ('Optometry and Vision Science', 'Masters Degree (Coursework)', '8073', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8073.html');
INSERT INTO `degree_info` VALUES ('Petroleum Engineering', 'Graduate Certificate', '7343', 'Faculty of Engineering', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7343.html');
INSERT INTO `degree_info` VALUES ('Pharmaceutical Medicine', 'Masters Degree (Coursework)', '9060', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9060.html');
INSERT INTO `degree_info` VALUES ('Pharmaceutical Medicine', 'Graduate Certificate', '7370', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7370.html');
INSERT INTO `degree_info` VALUES ('Pharmaceutical Medicine', 'Masters Degree (Coursework)', '9370', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9370.html');
INSERT INTO `degree_info` VALUES ('Pharmaceutical Medicine', 'Graduate Diploma', '5504', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5504.html');
INSERT INTO `degree_info` VALUES ('Pharmaceutical Medicine', 'Graduate Diploma', '5371', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5371.html');
INSERT INTO `degree_info` VALUES ('Physics for Teachers', 'Graduate Certificate', '7440', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7440.html');
INSERT INTO `degree_info` VALUES ('Planning', 'Graduate Certificate', '7147', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7147.html');
INSERT INTO `degree_info` VALUES ('Planning', 'Masters Degree (Coursework)', '8147', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8147.html');
INSERT INTO `degree_info` VALUES ('PR and Advertising', 'Masters Degree (Coursework)', '8281', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8281.html');
INSERT INTO `degree_info` VALUES ('PR and Advertising/Design', 'Masters Degree (Coursework)', '8234', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8234.html');
INSERT INTO `degree_info` VALUES ('Professional Accounting', 'Masters Degree (Coursework)', '8409', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8409.html');
INSERT INTO `degree_info` VALUES ('Professional Accounting (Ext)', 'Masters Degree (Coursework)', '8415', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8415.html');
INSERT INTO `degree_info` VALUES ('Project Management', 'Masters Degree (Coursework)', '8595', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8595.html');
INSERT INTO `degree_info` VALUES ('Property and Development', 'Masters Degree (Coursework)', '8127', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8127.html');
INSERT INTO `degree_info` VALUES ('Property and Development', 'Graduate Certificate', '7127', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7127.html');
INSERT INTO `degree_info` VALUES ('Psychology (Clinical)', 'Masters Degree (Coursework)', '8256', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8256.html');
INSERT INTO `degree_info` VALUES ('Psychology (Forensic)', 'Masters Degree (Coursework)', '8257', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8257.html');
INSERT INTO `degree_info` VALUES ('Psychology (Organisational)', 'Masters Degree (Coursework)', '8258', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8258.html');
INSERT INTO `degree_info` VALUES ('Pub Hlth/Hlth Management(Extn)', 'Masters Degree (Coursework)', '9057', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9057.html');
INSERT INTO `degree_info` VALUES ('Publ Hlth (Extn)/Hlth Managmnt', 'Masters Degree (Coursework)', '9056', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9056.html');
INSERT INTO `degree_info` VALUES ('Public Health', 'Graduate Certificate', '7368', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7368.html');
INSERT INTO `degree_info` VALUES ('Public Health', 'Graduate Diploma', '5507', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5507.html');
INSERT INTO `degree_info` VALUES ('Public Health', 'Masters Degree (Coursework)', '9045', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9045.html');
INSERT INTO `degree_info` VALUES ('Public Health (Extn)', 'Masters Degree (Coursework)', '9046', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9046.html');
INSERT INTO `degree_info` VALUES ('Public Health (International)', 'Masters Degree (Coursework)', '9040', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9040.html');
INSERT INTO `degree_info` VALUES ('Public Health/HealthManagement', 'Masters Degree (Coursework)', '9047', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9047.html');
INSERT INTO `degree_info` VALUES ('Public Policy and Governance', 'Masters Degree (Coursework)', '8259', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8259.html');
INSERT INTO `degree_info` VALUES ('Reproductive Medicine', 'Masters Degree (Coursework)', '9065', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9065.html');
INSERT INTO `degree_info` VALUES ('Reproductive Medicine', 'Graduate Certificate', '7379', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7379.html');
INSERT INTO `degree_info` VALUES ('Reproductive Medicine', 'Graduate Diploma', '5508', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5508.html');
INSERT INTO `degree_info` VALUES ('Risk Management', 'Masters Degree (Coursework)', '8428', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8428.html');
INSERT INTO `degree_info` VALUES ('Science Grad Dip (Research)', 'Graduate Diploma', '5304', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5304.html');
INSERT INTO `degree_info` VALUES ('Security & Defence Management', 'Masters Degree (Coursework)', '8573', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8573.html');
INSERT INTO `degree_info` VALUES ('Social Impact', 'Graduate Certificate', '7357', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7357.html');
INSERT INTO `degree_info` VALUES ('Space Engineering', 'Masters Degree (Coursework)', '8622', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8622.html');
INSERT INTO `degree_info` VALUES ('Space Operations', 'Masters Degree (Coursework)', '8624', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8624.html');
INSERT INTO `degree_info` VALUES ('Special Operations', 'Masters Degree (Coursework)', '8632', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8632.html');
INSERT INTO `degree_info` VALUES ('Statistics', 'Masters Degree (Coursework)', '8750', 'Faculty of Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8750.html');
INSERT INTO `degree_info` VALUES ('Strategic People Management', 'Masters Degree (Coursework)', '8563', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8563.html');
INSERT INTO `degree_info` VALUES ('Strategy and Security', 'Masters Degree (Coursework)', '8572', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8572.html');
INSERT INTO `degree_info` VALUES ('Sustainable Built Environment', 'Graduate Diploma', '5132', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5132.html');
INSERT INTO `degree_info` VALUES ('Sustainable Built Environment', 'Masters Degree (Coursework)', '8132', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8132.html');
INSERT INTO `degree_info` VALUES ('Sustainable Built Environment', 'Graduate Certificate', '7332', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7332.html');
INSERT INTO `degree_info` VALUES ('Sustainment Management', 'Masters Degree (Coursework)', '8566', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8566.html');
INSERT INTO `degree_info` VALUES ('Systems Engineering', 'Masters Degree (Coursework)', '8567', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8567.html');
INSERT INTO `degree_info` VALUES ('Taxation', 'Graduate Certificate', '7321', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7321.html');
INSERT INTO `degree_info` VALUES ('Taxation', 'Masters Degree (Coursework)', '9250', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9250.html');
INSERT INTO `degree_info` VALUES ('Teaching', 'Graduate Certificate', '7327', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7327.html');
INSERT INTO `degree_info` VALUES ('Teaching (Secondary)', 'Masters Degree (Coursework)', '8926', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8926.html');
INSERT INTO `degree_info` VALUES ('Technology and Innovation Mgmt', 'Masters Degree (Coursework)', '8009', 'UNSW Business School', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8009.html');
INSERT INTO `degree_info` VALUES ('Translation', 'Masters Degree (Coursework)', '8203', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8203.html');
INSERT INTO `degree_info` VALUES ('Translation & Interpreting', 'Masters Degree (Coursework)', '8204', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8204.html');
INSERT INTO `degree_info` VALUES ('University Learning & Teaching', 'Graduate Certificate', '7375', 'Faculty of Arts&Social Science', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7375.html');
INSERT INTO `degree_info` VALUES ('Urban Develop & Design (Extension)', 'Masters Degree (Coursework)', '8141', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8141.html');
INSERT INTO `degree_info` VALUES ('Urban Development and Design', 'Masters Degree (Coursework)', '8131', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8131.html');
INSERT INTO `degree_info` VALUES ('Urban Policy and Strategy', 'Graduate Certificate', '7313', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7313.html');
INSERT INTO `degree_info` VALUES ('Urban Policy and Strategy', 'Masters Degree (Coursework)', '8313', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8313.html');
INSERT INTO `degree_info` VALUES ('Urban Policy and Strategy', 'Graduate Diploma', '5313', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5313.html');
INSERT INTO `degree_info` VALUES ('Urban Renewal and Housing', 'Masters Degree (Coursework)', '8149', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8149.html');
INSERT INTO `degree_info` VALUES ('Urban Renewal and Housing', 'Graduate Certificate', '7149', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7149.html');
INSERT INTO `degree_info` VALUES ('Urban Renewal and Housing', 'Graduate Diploma', '5149', 'Faculty of Built Environment', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/5149.html');
INSERT INTO `degree_info` VALUES ('War Studies', 'Masters Degree (Coursework)', '8571', 'UNSW Canberra at ADFA', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/8571.html');
INSERT INTO `degree_info` VALUES ('Women\'s Health Medicine', 'Masters Degree (Coursework)', '9014', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/9014.html');
INSERT INTO `degree_info` VALUES ('Women\'s Health Medicine', 'Graduate Certificate', '7014', 'Faculty of Medicine', 'http://legacy.handbook.unsw.edu.au/postgraduate/programs/2017/7014.html');

-- ----------------------------
-- Table structure for `student_support`
-- ----------------------------
DROP TABLE IF EXISTS `student_support`;
CREATE TABLE `student_support` (
  `Service` varchar(2555) DEFAULT NULL,
  `Description` varchar(2555) DEFAULT NULL,
  `URL` varchar(2555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_support
-- ----------------------------
INSERT INTO `student_support` VALUES ('Moodle login', 'See also learning management system ', 'https://moodle.telt.unsw.edu.au/login/index.php');
INSERT INTO `student_support` VALUES ('MS office', 'Get app for free', 'https://student.unsw.edu.au/notices/office');
INSERT INTO `student_support` VALUES ('Room booking ', 'Login to book', 'https://student.unsw.edu.au/room-booking');
INSERT INTO `student_support` VALUES ('Key dates', 'Find key dates for all students (except students at UNSW Canberra) including specific enrolment, fee, exam dates and public holidays. For Semester and Teaching Periodstart and end dates please refer to the Academic Calendar.', 'https://student.unsw.edu.au/dates');
INSERT INTO `student_support` VALUES ('Academic calendar', 'UNSW Academic Calendar', 'https://student.unsw.edu.au/calendar');
INSERT INTO `student_support` VALUES ('Airport pickup', 'Student Development International (SDI) organises to pick you up from the airport when you arrive. You can book your pickup service here', 'https://student.unsw.edu.au/airport');
INSERT INTO `student_support` VALUES ('International Student Advisor', 'At the Student Development International (SDI) Welcome Centre you will be greeted by friendly students or staff and given helpful information', 'https://student.unsw.edu.au/icontacts');
INSERT INTO `student_support` VALUES ('International Student Briefing Day', 'The International Student Briefing Day is designed to introduce you to studying at UNSW and to provide you with a practical experience of attending lectures and learning in Australia.It is highly recommended that all international students attend this one day briefing session.', 'http://www.gettingstarted.unsw.edu.au/international-student-briefing-day');
INSERT INTO `student_support` VALUES ('UNSW Essentials for International Students', 'UNSW Essentials is a series of online modules that have been created to assist your transition to UNSW. The modules cover everything you need to know about studying at UNSW, from planning your arrival, to managing your studies and preparing for exams. UNSW Essentials gives you the flexibility to access information when you need it. Complete the UNSW Essentials modules now.', 'https://moodle.telt.unsw.edu.au/course/view.php?id=20661');
INSERT INTO `student_support` VALUES ('UNSW Uni-Verse app', 'Download our official UNSW app to help you get around campus and keep up-to-date with news and events.', 'https://student.unsw.edu.au/universe');
INSERT INTO `student_support` VALUES ('Support for families of students', 'Here you can find support information for families of international students. To fully appreciate the UNSW experience, we invite you to attend our social events, career sessions, exchange experiences and practice conversational English', 'https://student.unsw.edu.au/family');
INSERT INTO `student_support` VALUES ('Orientation week', 'These orientation activities are your chance to meet new people, find your way around, get involved & have some fun', 'http://www.gettingstarted.unsw.edu.au/orientation');
INSERT INTO `student_support` VALUES ('Information about the UNSW3+ Calendar', 'Information for International Student Visa Holders about the UNSW3+ Calendar', 'https://student.unsw.edu.au/notices/international/unsw3');
INSERT INTO `student_support` VALUES ('Register for workshops', 'Log in below to our booking system to attend one of our international student development workshops.', 'https://student.unsw.edu.au/iworkshop');
INSERT INTO `student_support` VALUES ('Careers and employment', 'UNSW is committed to helping you enhance your global employability, and empowering you to succeed beyond the classroom and find employment, throughout and after university. Here you can find resources for international students.', 'https://student.unsw.edu.au/international-student-careers');
INSERT INTO `student_support` VALUES ('English Language and Conversation Skills', 'If you are looking for opportunities to improve your English language skills and meet new people there are many language and conversation programs, courses and groups that can help you to do just that.', 'https://student.unsw.edu.au/english');
INSERT INTO `student_support` VALUES ('Student visa conditions ', 'Learn about your rights and responsibilities under the Education Services for Overseas Students (ESOS) Act.', 'https://student.unsw.edu.au/visa-conditions');
INSERT INTO `student_support` VALUES ('Modes of study', 'The differences between full-time and part-time study, distance learning/online learning and Summer Term.', 'https://student.unsw.edu.au/modes-study');
INSERT INTO `student_support` VALUES ('Reducing your study load', 'There are implications of not maintaining a full-time study load.', 'https://student.unsw.edu.au/reduce-study-load');
INSERT INTO `student_support` VALUES ('Amendments and variations to your enrolment', 'How changes to your enrolment such as program leave, or early/late completion, impact your student visa.', 'https://student.unsw.edu.au/amendments-and-variations-enrolment');
INSERT INTO `student_support` VALUES ('Credit transfers and advance standing', 'What happens if you are given course credit or advance standing for previous study.', 'https://student.unsw.edu.au/credit-transfer-advanced-standing');
INSERT INTO `student_support` VALUES ('Applying for a new Confirmation of Enrolment', 'If you need to apply for a new Confirmation of Enrolment, here you will find links that will assist you to understand what is required', 'https://student.unsw.edu.au/visa-extension');
INSERT INTO `student_support` VALUES ('Program transfer', 'What happens if you transfer to another program within UNSW', 'https://student.unsw.edu.au/international-student-program-transfer-confirmation-enrolment');
INSERT INTO `student_support` VALUES ('Visa Information and Living in Australia', 'While studying in Australia you need to keep your contact details up to date with the University, maintain overseas student healthcare cover, and adhere to certain work conditions.', 'https://student.unsw.edu.au/visa-information-and-living-australia');
