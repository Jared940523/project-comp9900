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
-- Table structure for `building_info`
-- ----------------------------
DROP TABLE IF EXISTS `building_info`;
CREATE TABLE `building_info` (
  `id` varchar(8) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of building_info
-- ----------------------------
INSERT INTO `building_info` VALUES ('G27', 'AGSM');
INSERT INTO `building_info` VALUES ('J17', 'Ainsworth Building');
INSERT INTO `building_info` VALUES ('D26', 'Biological Sciences North');
INSERT INTO `building_info` VALUES ('E26', 'Biological Sciences South');
INSERT INTO `building_info` VALUES ('G6', 'Blockhouse');
INSERT INTO `building_info` VALUES ('D10', 'Building D10');
INSERT INTO `building_info` VALUES ('L5', 'Building L5, 223 Anzac Parade');
INSERT INTO `building_info` VALUES ('C22', 'Chancellery');
INSERT INTO `building_info` VALUES ('F10', 'Chemical Sciences');
INSERT INTO `building_info` VALUES ('H20', 'Civil Engineering');
INSERT INTO `building_info` VALUES ('B16', 'Colombo House');
INSERT INTO `building_info` VALUES ('K17', 'Computer Science');
INSERT INTO `building_info` VALUES ('F12', 'Dalton');
INSERT INTO `building_info` VALUES ('F17A', 'Dangerous Goods Store');
INSERT INTO `building_info` VALUES ('G17', 'Electrical Engineering');
INSERT INTO `building_info` VALUES ('A27', 'Golf House, 38 Botany Street');
INSERT INTO `building_info` VALUES ('E10', 'Hilmer Building');
INSERT INTO `building_info` VALUES ('F20', 'John Goodsell');
INSERT INTO `building_info` VALUES ('G19', 'John Niland Scientia');
INSERT INTO `building_info` VALUES ('F8', 'Law');
INSERT INTO `building_info` VALUES ('F21', 'Library');
INSERT INTO `building_info` VALUES ('C25', 'Lowy Cancer');
INSERT INTO `building_info` VALUES ('C25', 'Research Centre');
INSERT INTO `building_info` VALUES ('F23', 'Mathews');
INSERT INTO `building_info` VALUES ('E24a', 'Mathews Arcade');
INSERT INTO `building_info` VALUES ('C20', 'Morven Brown');
INSERT INTO `building_info` VALUES ('J12', 'Newton');
INSERT INTO `building_info` VALUES ('D2', 'NIDA');
INSERT INTO `building_info` VALUES ('K15', 'Old Main');
INSERT INTO `building_info` VALUES ('E24', 'Pavilions');
INSERT INTO `building_info` VALUES ('E15', 'Quadrangle');
INSERT INTO `building_info` VALUES ('H13', 'Red Centre');
INSERT INTO `building_info` VALUES ('G14', 'Robert Webster');
INSERT INTO `building_info` VALUES ('E6', 'Roundhouse @ Unibar');
INSERT INTO `building_info` VALUES ('M15', 'Rupert Myers');
INSERT INTO `building_info` VALUES ('H8', 'Sam Cracknell Pavilion');
INSERT INTO `building_info` VALUES ('F25', 'Samuels');
INSERT INTO `building_info` VALUES ('G23', 'SIRF');
INSERT INTO `building_info` VALUES ('E4', 'Squarehouse');
INSERT INTO `building_info` VALUES ('H6', 'Tyree Energy Technologies');
INSERT INTO `building_info` VALUES ('H22', 'Vallentine Annexe');
INSERT INTO `building_info` VALUES ('C27', 'Wallace Wurth');
INSERT INTO `building_info` VALUES ('J18', 'Willis Annexe');
INSERT INTO `building_info` VALUES ('H1', 'University Regiment');
INSERT INTO `building_info` VALUES ('E12', 'UNSW Business School');

INSERT INTO `building_info` VALUES ('N13', 'Barker Apartment');
INSERT INTO `building_info` VALUES ('D17', 'Basser College');
INSERT INTO `building_info` VALUES ('B16', 'Colombo House');
INSERT INTO `building_info` VALUES ('A25', 'Creston College');
INSERT INTO `building_info` VALUES ('B18', 'Fig Tree Hall');
INSERT INTO `building_info` VALUES ('B17', 'Goldstein College');
INSERT INTO `building_info` VALUES ('D16', 'Goldstein Hall');
INSERT INTO `building_info` VALUES ('C6', 'International House');
INSERT INTO `building_info` VALUES ('L6', 'New College');
INSERT INTO `building_info` VALUES ('H3', 'New College Postgrad. Village');
INSERT INTO `building_info` VALUES ('D18', 'Philip Baxter College');
INSERT INTO `building_info` VALUES ('N9', 'Shalom College');
INSERT INTO `building_info` VALUES ('M7', 'Warrane College');
INSERT INTO `building_info` VALUES ('B8', 'University Terraces');
INSERT INTO `building_info` VALUES ('D14', 'UNSW Hall');
INSERT INTO `building_info` VALUES ('B10', 'UNSW Village');
INSERT INTO `building_info` VALUES ('B17', 'UNSW Residential Communities');

INSERT INTO `building_info` VALUES ('C20', 'Arts and Social Sciences');
INSERT INTO `building_info` VALUES ('H13', 'Built Environment');
INSERT INTO `building_info` VALUES ('K17', 'Engineering');
INSERT INTO `building_info` VALUES ('F8', 'Law');
INSERT INTO `building_info` VALUES ('C27', 'Medicine');
INSERT INTO `building_info` VALUES ('F12', 'Science');
INSERT INTO `building_info` VALUES ('E12', 'UNSW Business School');

INSERT INTO `building_info` VALUES ('G27', 'AGSM Theatres');
INSERT INTO `building_info` VALUES ('F8', 'Allens');
INSERT INTO `building_info` VALUES ('E19', 'Central Lecture Block');
INSERT INTO `building_info` VALUES ('F10', 'Chemical Sciences Theatres');
INSERT INTO `building_info` VALUES ('H20', 'Civil Engineering (Room G1)');
INSERT INTO `building_info` VALUES ('C24', 'Clancy Auditorium');
INSERT INTO `building_info` VALUES ('B16', 'Colombo Theatres');
INSERT INTO `building_info` VALUES ('B14d', 'Fig Tree Theatre');
INSERT INTO `building_info` VALUES ('F8', 'Gonski Levy Theatre');
INSERT INTO `building_info` VALUES ('D9', 'IO Myers Studio');
INSERT INTO `building_info` VALUES ('J14', 'Keith Burrows Theatre');
INSERT INTO `building_info` VALUES ('F8', 'Law Theatres');
INSERT INTO `building_info` VALUES ('E15', 'Macauley Theatre');
INSERT INTO `building_info` VALUES ('D23', 'Mathews Theatres');
INSERT INTO `building_info` VALUES ('G14', 'New South Global Theatre');
INSERT INTO `building_info` VALUES ('K15', 'Old Main Theatres (Room 112)');
INSERT INTO `building_info` VALUES ('E2', 'Parade Theatres');
INSERT INTO `building_info` VALUES ('K14', 'Physics Theatre');
INSERT INTO `building_info` VALUES ('H13', 'Red Centre Theatre');
INSERT INTO `building_info` VALUES ('F17', 'Rex Vowels Theatre');
INSERT INTO `building_info` VALUES ('G19', 'Ritchie Theatre');
INSERT INTO `building_info` VALUES ('M15', 'Rupert Myers Theatre');
INSERT INTO `building_info` VALUES ('G15', 'Webster Theatres');
INSERT INTO `building_info` VALUES ('F13', 'Science Theatre');
INSERT INTO `building_info` VALUES ('D10', 'Building D10 - Studio 1');
INSERT INTO `building_info` VALUES ('G19', 'Ritchie Theatre');
INSERT INTO `building_info` VALUES ('M15', 'Rupert Myers Theatre');
INSERT INTO `building_info` VALUES ('G15', 'Webster Theatres');
INSERT INTO `building_info` VALUES ('F13', 'Science Theatre');
INSERT INTO `building_info` VALUES ('D10', 'Building D10 - Studio 1');
INSERT INTO `building_info` VALUES ('C18', 'Accommodation Services');
INSERT INTO `building_info` VALUES ('C22', 'Alumni Association');
INSERT INTO `building_info` VALUES ('D17', 'Arc @ UNSW');
INSERT INTO `building_info` VALUES ('E15', 'Careers and Employment Office');
INSERT INTO `building_info` VALUES ('E4', 'Chaplains');
INSERT INTO `building_info` VALUES ('F21', 'Co-op program & Scholarship');
INSERT INTO `building_info` VALUES ('E15', 'Counselling Service');
INSERT INTO `building_info` VALUES ('F20', 'Educational Support Service');
INSERT INTO `building_info` VALUES ('F20', 'Equity and Disability Unit');
INSERT INTO `building_info` VALUES ('F23', 'Estate Management');

INSERT INTO `building_info` VALUES ('L5', 'Foundation Studies');
INSERT INTO `building_info` VALUES ('F8', 'Freehills Law Library');
INSERT INTO `building_info` VALUES ('H13', 'Future Students Office');
INSERT INTO `building_info` VALUES ('M15', 'Graduate Research School');
INSERT INTO `building_info` VALUES ('F21', 'Help Zone (Student ID Cards)');

INSERT INTO `building_info` VALUES ('C22', 'Human Resources');
INSERT INTO `building_info` VALUES ('L5', 'Institute of Languages');
INSERT INTO `building_info` VALUES ('F21', 'IT Service Desk');
INSERT INTO `building_info` VALUES ('F8', 'Kingsford Legal Centre');
INSERT INTO `building_info` VALUES ('F21', 'Learning & Teaching Unit @ UNSW');

INSERT INTO `building_info` VALUES ('F21', 'Library');
INSERT INTO `building_info` VALUES ('A27', 'Lifestyle Clinic');
INSERT INTO `building_info` VALUES ('F23', 'Mail Centre');
INSERT INTO `building_info` VALUES ('C22', 'Marketing Development');
INSERT INTO `building_info` VALUES ('M15', 'New South Innovations');

INSERT INTO `building_info` VALUES ('J17', 'Nura Gili - Balnaves Place');
INSERT INTO `building_info` VALUES ('M15', 'Optometry Clinic');
INSERT INTO `building_info` VALUES ('B8', 'Physiotherapy Clinic');
INSERT INTO `building_info` VALUES ('F22', 'Post Office');
INSERT INTO `building_info` VALUES ('F23', 'Print Centre');

INSERT INTO `building_info` VALUES ('E4', 'Religious Centre');
INSERT INTO `building_info` VALUES ('M15', 'Research Services');
INSERT INTO `building_info` VALUES ('B10', 'Security');
INSERT INTO `building_info` VALUES ('H8', 'Sports Association');
INSERT INTO `building_info` VALUES ('F20', 'Study Abroad and Exchange');

INSERT INTO `building_info` VALUES ('B7', 'Squash Courts');
INSERT INTO `building_info` VALUES ('B4', 'Swimming Pool');
INSERT INTO `building_info` VALUES ('C22', 'The Learning Centre');
INSERT INTO `building_info` VALUES ('B8', 'Unisuper');
INSERT INTO `building_info` VALUES ('E15', 'University Health Services');

INSERT INTO `building_info` VALUES ('F21', 'UNSW Admissions');
INSERT INTO `building_info` VALUES ('E15', 'UNSW Bookshop');
INSERT INTO `building_info` VALUES ('H13', 'UNSW International Student Centre');
INSERT INTO `building_info` VALUES ('B17', 'UNSW Residential Communities');
INSERT INTO `building_info` VALUES ('F21', 'UNSW Scholarships');

INSERT INTO `building_info` VALUES ('B5', 'UNSW Fitness and Aquatic Centre');
INSERT INTO `building_info` VALUES ('C22', 'UNSW Student Centre');
INSERT INTO `building_info` VALUES ('F23', 'Venues and Events');
INSERT INTO `building_info` VALUES ('O14', 'Kangas House, 52 Barker St');
INSERT INTO `building_info` VALUES ('N8', 'House at Pooh Corner');

INSERT INTO `building_info` VALUES ('BS22', 'Tigger\'s Honeypot, 22 Botany St');
INSERT INTO `building_info` VALUES ('KS9', 'Owl\'s House, 9 Kennedy St');




