-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 05:48 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eleave_mso`
--

-- --------------------------------------------------------

--
-- Table structure for table `eleave_mso_category`
--

CREATE TABLE `eleave_mso_category` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `topic` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleave_mso_category`
--

INSERT INTO `eleave_mso_category` (`type`, `category_id`, `topic`, `color`, `published`) VALUES
('department', '2', 'กลุ่มการพัฒนาสังคมและสวัสดิการ', NULL, 1),
('department', '1', 'ฝ่ายบริหารทั่วไป', NULL, 1),
('department', '3', 'กลุ่มนโนบายและวิชาการ', NULL, 1),
('department', '4', 'ศูนย์บริการคนพิการจังหวัดเลย', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eleave_mso_language`
--

CREATE TABLE `eleave_mso_language` (
  `id` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `la` text COLLATE utf8_unicode_ci,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `js` tinyint(1) NOT NULL,
  `th` text COLLATE utf8_unicode_ci,
  `en` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleave_mso_language`
--

INSERT INTO `eleave_mso_language` (`id`, `key`, `la`, `type`, `owner`, `js`, `th`, `en`) VALUES
(1, 'CANCEL', 'ຍົກເລີກ', 'text', 'index', 1, 'ยกเลิก', 'Cancel'),
(2, 'CHANGE_COLOR', 'ປ່ຽນສີ', 'text', 'index', 1, 'เปลี่ยนสี', 'change color'),
(3, 'CHECK', 'ເລືອກ', 'text', 'index', 1, 'เลือก', 'check'),
(4, 'CHECKBOX', 'ກ່ອງກາເຄື່ອງໝາຍ', 'text', 'index', 1, 'ตัวเลือก', 'Checkbox'),
(5, 'DELETE', 'ລຶບ', 'text', 'index', 1, 'ลบ', 'delete'),
(6, 'DISABLE', 'ປິດໃຊ້ການ', 'text', 'index', 1, 'ปิดใช้งาน', 'Disable'),
(7, 'ENABLE', 'ເປີດໃຊ້ການ', 'text', 'index', 1, 'เปิดใช้งาน', 'Enable'),
(8, 'INVALID_DATA', 'ຂໍ້ມູນ XXX ບໍ່ຖືກຕ້ອງ', 'text', 'index', 1, 'ข้อมูล XXX ไม่ถูกต้อง', 'XXX Invalid data'),
(9, 'NEXT_MONTH', 'ເດືອນຕໍ່ໄປ', 'text', 'index', 1, 'เดือนถัดไป', 'Next Month'),
(10, 'PLEASE_BROWSE_FILE', 'ກະລຸນາເລືອກແຟ້ມຂໍ້ມູນ', 'text', 'index', 1, 'กรุณาเลือกไฟล์', 'Please browse file'),
(11, 'PLEASE_FILL_IN', 'ກະລຸນາພີ່ມ', 'text', 'index', 1, 'กรุณากรอก', 'Please fill in'),
(12, 'PLEASE_SAVE_BEFORE_CONTINUING', 'ກະລຸນາບັນທຶກກ່ອນດຳເນີນການຕໍ່', 'text', 'index', 1, 'กรุณาบันทึก ก่อนดำเนินการต่อ', 'Please save before continuing'),
(13, 'PLEASE_SELECT', 'ກະລຸນາເລືອກ', 'text', 'index', 1, 'กรุณาเลือก', 'Please select'),
(14, 'PLEASE_SELECT_AT_LEAST_ONE_ITEM', 'ກະລຸນາເລືອກ XXX ຢ່າງໜ້ອຍໜຶ່ງລາຍການ', 'text', 'index', 1, 'กรุณาเลือก XXX อย่างน้อย 1 รายการ', 'Please select XXX at least one item'),
(15, 'PREV_MONTH', 'ເດືອນທີ່ຜ່ານມາ', 'text', 'index', 1, 'เดือนก่อนหน้า', 'Prev Month'),
(16, 'SELECT_ALL', 'ເລືອກທັງໝົດ', 'text', 'index', 1, 'เลือกทั้งหมด', 'select all'),
(17, 'SELECT_NONE', 'ບໍ່ເລືອກລາຍການໃດເລີຍ', 'text', 'index', 1, 'ไม่เลือกรายการใดเลย', 'select none'),
(18, 'SORRY_XXX_NOT_FOUND', 'ຂໍອະໄພບໍ່ພົບ XXX ທີ່ຕ້ອງການ', 'text', 'index', 1, 'ขออภัย ไม่พบ XXX ที่ต้องการ', 'Sorry XXX not found'),
(19, 'SUCCESSFULLY_COPIED_TO_CLIPBOARD', 'ສຳເນົາໄປຍັງຄິບບອດຮຽບຮ້ອຍ', 'text', 'index', 1, 'สำเนาไปยังคลิปบอร์ดเรียบร้อย', 'Successfully copied to clipboard'),
(20, 'SUCCESSFULLY_UPLOADED_XXX_FILES', 'ອັບໂຫຼດຮຽບຮ້ອຍ XXX ແຟ້ມ', 'text', 'index', 1, 'อัปโหลดเรียบร้อย XXX ไฟล์', 'Successfully uploaded XXX files'),
(21, 'THE_TYPE_OF_FILE_IS_INVALID', 'ຊະນິດຂອງແຟ້ມບໍ່ຖືກຕ້ອງ', 'text', 'index', 1, 'ชนิดของไฟล์ไม่ถูกต้อง', 'The type of file is invalid'),
(22, 'UNCHECK', 'ບໍ່ເລືອກ', 'text', 'index', 1, 'ไม่เลือก', 'uncheck'),
(23, 'YOU_WANT_TO_XXX', 'ທ່ານບໍ່ຕ້ອງການ XXX ?', 'text', 'index', 1, 'คุณต้องการ XXX ?', 'You want to XXX ?'),
(24, 'YOU_WANT_TO_XXX_THE_SELECTED_ITEMS', 'ທ່ານຕ້ອງການ XXX ລາຍການທີ່ເລືອກ?', 'text', 'index', 1, 'คุณต้องการ XXX รายการที่เลือก ?', 'You want to XXX the selected items ?'),
(25, 'BOOLEANS', 'a:2:{i:0;s:27:"ປິດໃຊ້ວຽກ";i:1;s:30:"ເປີດໃຊ້ວຽກ";}', 'array', 'index', 0, 'a:2:{i:0;s:27:"ปิดใช้งาน";i:1;s:30:"เปิดใช้งาน";}', 'a:2:{i:0;s:7:"Disable";i:1;s:7:"Enabled";}'),
(26, 'DATE_FORMAT', 'd M Y ເວລາ H:i ນ.', 'text', 'index', 0, 'd M Y เวลา H:i น.', 'd M Y, H:i'),
(27, 'DATE_LONG', 'a:7:{i:0;s:15:"ອາທິດ";i:1;s:9:"ຈັນ";i:2;s:18:"ອັງຄານ";i:3;s:9:"ພຸດ";i:4;s:15:"ພະຫັດ";i:5;s:9:"ສຸກ";i:6;s:12:"ເສົາ";}', 'array', 'index', 0, 'a:7:{i:0;s:21:"อาทิตย์";i:1;s:18:"จันทร์";i:2;s:18:"อังคาร";i:3;s:9:"พุธ";i:4;s:24:"พฤหัสบดี";i:5;s:15:"ศุกร์";i:6;s:15:"เสาร์";}', 'a:7:{i:0;s:6:"Sunday";i:1;s:6:"Monday";i:2;s:7:"Tuesday";i:3;s:9:"Wednesday";i:4;s:8:"Thursday";i:5;s:6:"Friday";i:6;s:8:"Saturday";}'),
(28, 'DATE_SHORT', 'a:7:{i:0;s:4:"ທ.";i:1;s:4:"ຈ.";i:2;s:4:"ຄ.";i:3;s:4:"ພ.";i:4;s:4:"ພ.";i:5;s:4:"ສ.";i:6;s:4:"ສ.";}', 'array', 'index', 0, 'a:7:{i:0;s:7:"อา.";i:1;s:4:"จ.";i:2;s:4:"อ.";i:3;s:4:"พ.";i:4;s:7:"พฤ.";i:5;s:4:"ศ.";i:6;s:4:"ส.";}', 'a:7:{i:0;s:2:"Su";i:1;s:2:"Mo";i:2;s:2:"Tu";i:3;s:2:"We";i:4;s:2:"Th";i:5;s:2:"Fr";i:6;s:2:"Sa";}'),
(29, 'DOWNLOAD_ACTIONS', 'a:2:{i:0;s:33:"ດາວໂຫຼດແຟ້ມ";i:1;s:53:"ເປີດແຟ້ມ(ທີ່ຮູ້ຈັກ)";}', 'array', 'index', 0, 'a:2:{i:0;s:39:"ดาวน์โหลดไฟล์";i:1;s:54:"เปิดไฟล์ (ที่รู้จัก)";}', 'a:2:{i:0;s:8:"Download";i:1;s:26:"Open file (know file type)";}'),
(30, 'ELEAVE_CATEGORIES', 'a:1:{s:10:"department";s:15:"ພະແນກ";}', 'array', 'index', 0, 'a:1:{s:10:"department";s:12:"แผนก";}', 'a:1:{s:10:"department";s:10:"Department";}'),
(31, 'LEAVE_PERIOD', 'a:3:{i:0;s:21:"ມື້ເຕັມ";i:1;s:39:"ມື້ເຊົ້າເຄິ່ງ";i:2;s:45:"ຕອນບ່າຍມື້ເຄິ່ງ";}', 'array', 'index', 0, 'a:3:{i:0;s:21:"เต็มวัน";i:1;s:36:"ครึ่งวันเช้า";i:2;s:36:"ครึ่งวันบ่าย";}', 'a:3:{i:0;s:7:"All day";i:1;s:16:"Half day morning";i:2;s:18:"Half day afternoon";}'),
(32, 'LEAVE_STATUS', 'a:3:{i:0;s:69:"ການອະນຸມັດທີ່ຍັງຄ້າງຢູ່";i:1;s:21:"ອະນຸມັດ";i:2;s:48:"ບໍ່ໄດ້ຮັບອະນຸມັດ";}', 'array', 'index', 0, 'a:3:{i:0;s:27:"รออนุมัติ";i:1;s:21:"อนุมัติ";i:2;s:30:"ไม่อนุมัติ";}', 'a:3:{i:0;s:7:"Pending";i:1;s:7:"Approve";i:2;s:11:"Not allowed";}'),
(33, 'LINE_FOLLOW_MESSAGE', 'ສະບາຍດີ, :name ນີ້ແມ່ນບັນຊີທາງການຂອງ :title ພວກເຮົາຈະສົ່ງຂ່າວໃຫ້ທ່ານຜ່ານຊ່ອງທາງນີ້.', 'text', 'index', 0, 'สวัสดี คุณ :name นี่คือบัญชีทางการของ :title เราจะส่งข่าวสารถึงคุณผ่านช่องทางนี้', 'Hello, :name This is :title official account. We will send you news via this channel.'),
(34, 'LINE_REPLY_MESSAGE', 'ຂໍອະໄພ, ບໍ່ສາມາດຕອບກັບຂໍ້ຄວາມນີ້ໄດ້.', 'text', 'index', 0, 'ขออภัยไม่สามารถตอบกลับข้อความนี้ได้', 'Sorry, can&#039;t reply to this message.'),
(35, 'LOGIN_FIELDS', 'a:2:{s:8:"username";s:15:"ອີເມວ";s:5:"phone";s:30:"ເບີໂທລະສັບ";}', 'array', 'index', 0, 'a:2:{s:8:"username";s:15:"อีเมล";s:5:"phone";s:39:"เบอร์โทรศัพท์";}', 'a:2:{s:8:"username";s:5:"Email";s:5:"phone";s:5:"Phone";}'),
(36, 'MAIL_PROGRAMS', 'a:3:{i:0;s:46:"ສົ່ງຈົດໝາຍດ້ວຍ PHP";i:1;s:75:"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+SMTP (ແນະນຳ)";i:2;s:61:"ສົ່ງຈົດໝາຍດ້ວຍ PHPMailer+PHP Mail";}', 'array', 'index', 0, 'a:3:{i:0;s:43:"ส่งจดหมายด้วย PHP";i:1;s:72:"ส่งจดหมายด้วย PHPMailer+SMTP (แนะนำ)";i:2;s:58:"ส่งจดหมายด้วย PHPMailer+PHP Mail";}', 'a:3:{i:0;s:13:"Send with PHP";i:1;s:38:"Send with PHPMailer+SMTP (recommended)";i:2;s:28:"Send with PHPMailer+PHP Mail";}'),
(37, 'MONTH_LONG', 'a:12:{i:1;s:18:"ມັງກອນ";i:2;s:15:"ກຸມພາ";i:3;s:12:"ມີນາ";i:4;s:12:"ເມສາ";i:5;s:21:"ພຶດສະພາ";i:6;s:18:"ມິຖຸນາ";i:7;s:21:"ກໍລະກົດ";i:8;s:15:"ສິງຫາ";i:9;s:15:"ກັນຍາ";i:10;s:12:"ຕຸລາ";i:11;s:15:"ພະຈິກ";i:12;s:15:"ທັນວາ";}', 'array', 'index', 0, 'a:12:{i:1;s:18:"มกราคม";i:2;s:30:"กุมภาพันธ์";i:3;s:18:"มีนาคม";i:4;s:18:"เมษายน";i:5;s:21:"พฤษภาคม";i:6;s:24:"มิถุนายน";i:7;s:21:"กรกฎาคม";i:8;s:21:"สิงหาคม";i:9;s:21:"กันยายน";i:10;s:18:"ตุลาคม";i:11;s:27:"พฤศจิกายน";i:12;s:21:"ธันวาคม";}', 'a:12:{i:1;s:7:"January";i:2;s:8:"February";i:3;s:5:"March";i:4;s:5:"April";i:5;s:3:"May";i:6;s:4:"June";i:7;s:4:"July";i:8;s:6:"August";i:9;s:9:"September";i:10;s:7:"October";i:11;s:8:"November";i:12;s:8:"December";}'),
(38, 'MONTH_SHORT', 'a:12:{i:1;s:8:"ມ.ກ.";i:2;s:8:"ກ.ພ.";i:3;s:11:"ມີ.ນ.";i:4;s:11:"ເມ.ສ.";i:5;s:8:"ພ.ພ.";i:6;s:11:"ມິ.ນ.";i:7;s:8:"ກ.ກ.";i:8;s:8:"ສ.ຫ.";i:9;s:8:"ກ.ຍ.";i:10;s:8:"ຕ.ລ.";i:11;s:8:"ພ.ຈ.";i:12;s:8:"ທ.ວ.";}', 'array', 'index', 0, 'a:12:{i:1;s:8:"ม.ค.";i:2;s:8:"ก.พ.";i:3;s:11:"มี.ค.";i:4;s:11:"เม.ย.";i:5;s:8:"พ.ค.";i:6;s:11:"มิ.ย.";i:7;s:8:"ก.ค.";i:8;s:8:"ส.ค.";i:9;s:8:"ก.ย.";i:10;s:8:"ต.ค.";i:11;s:8:"พ.ย.";i:12;s:8:"ธ.ค.";}', 'a:12:{i:1;s:3:"Jan";i:2;s:3:"Feb";i:3;s:3:"Mar";i:4;s:3:"Apr";i:5;s:3:"May";i:6;s:3:"Jun";i:7;s:3:"Jul";i:8;s:3:"Aug";i:9;s:3:"Sep";i:10;s:3:"Oct";i:11;s:3:"Nov";i:12;s:3:"Dec";}'),
(39, 'Name', 'ຊື່ ນາມສະກຸນ', 'text', 'index', 0, 'ชื่อ นามสกุล', 'Name Surname'),
(40, 'PERMISSIONS', 'a:1:{s:10:"can_config";s:60:"ສາມາດຕັ້ງຄ່າລະບົບໄດ້";}', 'array', 'index', 0, 'a:1:{s:10:"can_config";s:60:"สามารถตั้งค่าระบบได้";}', 'a:1:{s:10:"can_config";s:24:"Can configure the system";}'),
(41, 'PUBLISHEDS', 'a:2:{i:0;s:45:"ລະງັບການເຜີຍແຜ່";i:1;s:21:"ເຜີຍແຜ່";}', 'array', 'index', 0, 'a:2:{i:0;s:45:"ระงับการเผยแพร่";i:1;s:21:"เผยแพร่";}', 'a:2:{i:0;s:11:"Unpublished";i:1;s:9:"Published";}'),
(42, 'SEXES', 'a:2:{s:1:"f";s:9:"ຍິງ";s:1:"m";s:9:"ຊາຍ";}', 'array', 'index', 0, 'a:2:{s:1:"f";s:12:"หญิง";s:1:"m";s:9:"ชาย";}', 'a:2:{s:1:"f";s:6:"Female";s:1:"m";s:4:"Male";}'),
(43, 'SMTPSECURIES', 'a:2:{s:0:"";s:66:"ການເຊື່ອມຕໍ່ແບບປົກກະຕິ";s:3:"ssl";s:66:"ການເຊື່ອມຕໍ່ທີ່ປອດໄຟ (SSL)";}', 'array', 'index', 0, 'a:2:{s:0:"";s:57:"การเชื่อมต่อแบบปกติ";s:3:"ssl";s:72:"การเชื่อมต่อที่ปลอดภัย (SSL)";}', 'a:2:{s:0:"";s:10:"Clear Text";s:3:"ssl";s:38:"Server using a secure connection (SSL)";}'),
(44, 'TIME_FORMAT', 'H:i', 'text', 'index', 0, 'H:i น.', 'H:i'),
(45, 'YEAR_OFFSET', '0', 'int', 'index', 0, '543', '0'),
(46, '0.0.0.0 mean all IP addresses', '0.0.0.0 ຫມາຍຄວາມວ່າອະນຸຍາດໃຫ້ທັງຫມົດ', 'text', 'index', 0, '0.0.0.0 หมายถึงอนุญาตทั้งหมด', NULL),
(47, 'Add', 'ເພີ່ມ', 'text', 'index', 0, 'เพิ่ม', NULL),
(48, 'Add friend', 'ເພີ່ມເພື່ອນ', 'text', 'index', 0, 'เพิ่มเพื่อน', NULL),
(49, 'Address', 'ທີ່ຢູ່', 'text', 'index', 0, 'ที่อยู่', NULL),
(50, 'Address details', 'ລາຍລະອຽດທີ່ຢູ່', 'text', 'index', 0, 'รายละเอียดที่อยู่', NULL),
(51, 'Administrator status It is of utmost importance to do everything', 'ສະຖານະຜູ້ເບິ່ງແຍງລະບົບມີຄວາມສຳຄັນສຸງທີ່ສຸດສາມາດເຮັດໄດ້ທຸກຢ່າງ', 'text', 'index', 0, 'สถานะผู้ดูแลระบบ มีความสำคัญสูงสุดสามารถทำได้ทุกอย่าง', NULL),
(52, 'All :count entries, displayed :start to :end, page :page of :total pages', 'ທັງໝົດ :count ລາຍການ, ສະແດງ :start ເຖິງ :end, ໜ້າທີ່ :page ຈາກທັງໝົດ:total ໜ້າ', 'text', 'index', 0, 'ทั้งหมด :count รายการ, แสดง :start ถึง :end, หน้าที่ :page จากทั้งหมด :total หน้า', NULL),
(53, 'all items', 'ທັງໝົດ', 'text', 'index', 0, 'ทั้งหมด', NULL),
(54, 'API settings', 'ຕັ້ງຄ່າ API', 'text', 'index', 0, 'ตั้งค่า API', NULL),
(55, 'Approve', 'ອະນຸມັດ', 'text', 'index', 0, 'อนุมัติ', NULL),
(56, 'Attached file', 'ເອກະສານຕິດຄັດ', 'text', 'index', 0, 'ไฟล์แนบ', NULL),
(57, 'Authentication require', 'ການກວດກາຄວາມຖືກຕ້ອງ', 'text', 'index', 0, 'การตรวจสอบความถูกต้อง', NULL),
(58, 'Background color', 'ສີພື້ນຫລັງ', 'text', 'index', 0, 'สีพื้นหลัง', NULL),
(59, 'Background image', 'ພາບພື້ນຫລັງ', 'text', 'index', 0, 'รูปภาพพื้นหลัง', NULL),
(60, 'Browse file', 'ເລືອກໄຟລ໌', 'text', 'index', 0, 'เลือกไฟล์', NULL),
(61, 'Browse image uploaded, type :type size :width*:height pixel', 'ເລືອກຮູບພາບອັບໂຫຼດຊະນິດ :type ຂະໜາດ :width*:height ຟິດເຊວล', 'text', 'index', 0, 'เลือกรูปภาพอัปโหลด ชนิด :type ขนาด :width*:height พิกเซล', NULL),
(62, 'Can be approve', 'ສາມາດອະນຸມັດ', 'text', 'index', 0, 'สามารถอนุมัติได้', NULL),
(63, 'Can not be performed this request. Because they do not find the information you need or you are not allowed', 'ບໍ່ສາມາດດຳເນີນການຕາມທີ່ຮ້ອງຂໍໄດ້ເນື່ອງຈາກບໍ່ພົບຂໍ້ມູນທີ່ຕ້ອງການ ຫຼື ທ່ານບໍ່ມີສິດ', 'text', 'index', 0, 'ไม่สามารถดำเนินการตามที่ร้องขอได้ เนื่องจากไม่พบข้อมูลที่ต้องการ หรือ คุณไม่มีสิทธิ์', NULL),
(64, 'Can select multiple files', 'ສາມາດເລືອກເອກະສານໄດ້ຫຼາຍແບບ', 'text', 'index', 0, 'สามารถเลือกได้หลายไฟล์', NULL),
(65, 'Can set the module', 'ສາມາດຕັ້ງໂມດູນໄດ້', 'text', 'index', 0, 'สามารถตั้งค่าโมดูลได้', NULL),
(66, 'Can upload file', 'ສາມາດອັບໂຫຼດແຟ້ມໄດ້', 'text', 'index', 0, 'สามารถอัปโหลดไฟล์ได้', NULL),
(67, 'Can view or download file', 'ສາມາດເບິ່ງຫລືດາວໂຫລດເອກະສານໄດ້', 'text', 'index', 0, 'สามารถดูหรือดาวน์โหลดเอกสารได้', NULL),
(68, 'Cannot select this option', 'ທາງເລືອກນີ້ບໍ່ສາມາດເລືອກໄດ້.', 'text', 'index', 0, 'ไม่สามารถเลือกตัวเลือกนี้ได้', NULL),
(69, 'Change language', 'ປ່ຽນພາສາ', 'text', 'index', 0, 'สลับภาษา', NULL),
(70, 'Clear selected', 'ບໍ່ເລືອກ', 'text', 'index', 0, 'ไม่เลือก', NULL),
(71, 'Click to edit', 'ກົດເພື່ອແກ້ໄຂ', 'text', 'index', 0, 'คลิกเพื่อแก้ไข', NULL),
(72, 'Color', 'ສີ', 'text', 'index', 0, 'สี', NULL),
(73, 'Comment', 'ຫມາຍ​ເຫດ​', 'text', 'index', 0, 'หมายเหตุ', NULL),
(74, 'Communication', 'ຕິດຕໍ່', 'text', 'index', 0, 'การติดต่อ', NULL),
(75, 'Contact information during leave', 'ຕິດຕໍ່ຂໍ້ມູນໃນເວລາພັກຜ່ອນ', 'text', 'index', 0, 'ข้อมูลการติดต่อระหว่างการลา', NULL),
(76, 'Country', 'ປະເທດ', 'text', 'index', 0, 'ประเทศ', NULL),
(77, 'Create', 'ສ້າງ', 'text', 'index', 0, 'สร้าง', NULL),
(78, 'Create new account', 'ສ້າງບັນຊີໃໝ່', 'text', 'index', 0, 'สร้างบัญชีใหม่', NULL),
(79, 'Created', 'ສ້າງເມື່ອ', 'text', 'index', 0, 'สร้างเมื่อ', NULL),
(80, 'Current staff', 'ພະນັກງານໃນປະຈຸບັນ', 'text', 'index', 0, 'พนักงานปัจจุบัน', NULL),
(81, 'Date', 'ວັນທີ', 'text', 'index', 0, 'วันที่', NULL),
(82, 'Date of leave', 'ວັນພັກ', 'text', 'index', 0, 'วันที่ลา', NULL),
(83, 'days', 'ມື້', 'text', 'index', 0, 'วัน', NULL),
(84, 'Delete', 'ລືບ', 'text', 'index', 0, 'ลบ', NULL),
(85, 'Demo Mode', 'ຕົວຢ່າງ', 'text', 'index', 0, 'โหมดตัวอย่าง', NULL),
(86, 'Description', 'ຄຳອະທິບາຍ', 'text', 'index', 0, 'คำอธิบาย', NULL),
(87, 'Detail', 'ລາຍະລະອຽດ', 'text', 'index', 0, 'รายละเอียด', NULL),
(88, 'Details of', 'ລາຍລະອຽດຂອງ', 'text', 'index', 0, 'รายละเอียดของ', NULL),
(89, 'Determine the starting date of the calendar year, such as Y-10-01 (1 Oct according to the fiscal year) or Y-01-01 (1 January according to the calendar year)', 'ກຳ ນົດວັນທີເລີ່ມຕົ້ນຂອງປີຕາມປະຕິທິນເຊັ່ນ: Y-10-01 (1 ຕຸລາຕາມປີງົບປະມານ) ຫຼື Y-01-01 (1 ມັງກອນຕາມປີປະຕິທິນ)', 'text', 'index', 0, 'กำหนดวันที่เริ่มต้นของปีปฏิทินลา เช่น Y-10-01 (1 ตค. ตามปีงบประมาณ) หรือ Y-01-01 (1 มค. ตามปีปฏิทิน)', NULL),
(90, 'Document', 'ເອກະສານ', 'text', 'index', 0, 'เอกสาร', NULL),
(91, 'Document No.', 'ເລກທີເອກະສານ', 'text', 'index', 0, 'เลขที่เอกสาร', NULL),
(92, 'Document number', 'ເລກທີເອກະສານ', 'text', 'index', 0, 'เลขที่เอกสาร', NULL),
(93, 'Download', 'ດາວໂຫຼດ', 'text', 'index', 0, 'ดาวน์โหลด', NULL),
(94, 'Download history', 'ປະຫວັດການດາວໂຫຼດ', 'text', 'index', 0, 'ประวัติการดาวน์โหลด', NULL),
(95, 'drag to order', 'ຫຼາກເພື່ອຈັດລຳດັບ', 'text', 'index', 0, 'ลากเพื่อจัดลำดับ', NULL),
(96, 'E-Leave', 'ລະບົບລາພັກວຽກ', 'text', 'index', 0, 'ระบบลางาน', NULL),
(97, 'Edit', 'ແກ້ໄຂ', 'text', 'index', 0, 'แก้ไข', NULL),
(98, 'Editing your account', 'ແກ້ໄຂຂໍ້ມູນສ່ວນຕົວສະມາຊິກ', 'text', 'index', 0, 'แก้ไขข้อมูลส่วนตัว', NULL),
(99, 'Email', 'ອີເມວ', 'text', 'index', 0, 'อีเมล', NULL),
(100, 'Email address used for login or request a new password', 'ທີ່ຢູ່ອີເມວໃຊ້ສຳລັບການເຂົ້າລະບົບຫຼືການຂໍລະຫັດໃໝ່', 'text', 'index', 0, 'ที่อยู่อีเมล ใช้สำหรับการเข้าระบบหรือการขอรหัสผ่านใหม่', NULL),
(101, 'Email addresses for sender and do not reply such as no-reply@domain.tld', 'ທີ່ຢູ່ອີເມວໃຊ້ເປັນຜູ້ສົ່ງຈົດໝາຍ ສຳລັບຈົດໝາຍທີ່ບໍ່ຕ້ອງການຕອບກັບເຊັ່ນ no-reply@domain.tld', 'text', 'index', 0, 'ทีอยู่อีเมลใช้เป็นผู้ส่งจดหมาย สำหรับจดหมายที่ไม่ต้องการตอบกลับ เช่น no-reply@domain.tld', NULL),
(102, 'Email encoding', 'ລະຫັດພາສາຂອງຈົດໝາຍ', 'text', 'index', 0, 'รหัสภาษาของจดหมาย', NULL),
(103, 'Email settings', 'ຕັ້ງຄ່າອີເມວ', 'text', 'index', 0, 'ตั้งค่าอีเมล', NULL),
(104, 'Emailing', 'ສົ່ງອີເມວ', 'text', 'index', 0, 'การส่งอีเมล', NULL),
(105, 'Enable SSL encryption for sending email', 'ເປີດໃຊ້ການເຂົ້າລະຫັດ SSL ສຳລັບການສົ່ງອີເມວ', 'text', 'index', 0, 'เปิดใช้งานการเข้ารหัส SSL สำหรับการส่งอีเมล', NULL),
(106, 'End date', 'ວັນທີສິ້ນສຸດ', 'text', 'index', 0, 'วันที่สิ้นสุด', NULL),
(107, 'End date must be greater than or equal to the start date', 'ວັນທີສິ້ນສຸດຕ້ອງຈະໃຫຍ່ກວ່າຫຼືເທົ່າກັບວັນທີເລີ່ມຕົ້ນ.', 'text', 'index', 0, 'วันที่สิ้นสุดต้องมากกว่าหรือเท่ากับวันที่เริ่มต้น', NULL),
(108, 'Enter 0 if you want unlimited leave', 'ໃສ່ເບີ 0 ຖ້າທ່ານຕ້ອງການການພັກຜ່ອນແບບບໍ່ຈຳກັດ', 'text', 'index', 0, 'กรอก 0 ถ้าต้องการลาได้ไม่จำกัด', NULL),
(109, 'Enter the email address registered. A new password will be sent to this email address.', 'ເພີ່ມທີ່ຢູ່ອີເມວທີ່ລົງທະບຽນໄວ້ ລະບົບຈະສົ່ງລະຫັດຜ່ານໃໝ່ໄປຍັງທີ່ຢູ່ອີເມວນີ້', 'text', 'index', 0, 'กรอกที่อยู่อีเมลที่ลงทะเบียนไว้ ระบบจะส่งรหัสผ่านใหม่ไปยังที่อยู่อีเมลนี้', NULL),
(110, 'Enter the LINE user ID you received when adding friends. Or type userId sent to the official account to request a new user ID. This information is used for receiving private messages from the system via LINE.', 'ໃສ່ user ID ຂອງ LINE ທີ່ທ່ານໄດ້ຮັບໃນເວລາເພີ່ມເພື່ອນ. ຫຼືພິມ userId ທີ່ຖືກສົ່ງໄປຫາບັນຊີທາງການເພື່ອຮ້ອງຂໍ user ID ໃຫມ່. ຂໍ້ມູນນີ້ແມ່ນໃຊ້ສໍາລັບການຮັບຂໍ້ຄວາມສ່ວນຕົວຈາກລະບົບຜ່ານ LINE.', 'text', 'index', 0, 'กรอก user ID ของไลน์ที่ได้ตอนเพิ่มเพื่อน หรือพิมพ์คำว่า userId ส่งไปยังบัญชีทางการเพื่อขอ user ID ใหม่ ข้อมูลนี้ใช้สำหรับการรับข้อความส่วนตัวที่มาจากระบบผ่านไลน์', NULL),
(111, 'Enter your password again', 'ໃສ່ລະຫັດຜ່ານອີກຄັ້ງ', 'text', 'index', 0, 'ใส่รหัสผ่านอีกครั้ง', NULL),
(112, 'entries', 'ລາຍການ', 'text', 'index', 0, 'รายการ', NULL),
(113, 'Expiration date', 'ວັນໝົດອາຍຸ', 'text', 'index', 0, 'วันหมดอายุ', NULL),
(114, 'Fax', 'ແຟັກ', 'text', 'index', 0, 'โทรสาร', NULL),
(115, 'File', 'ແຟ້ມ', 'text', 'index', 0, 'ไฟล์', NULL),
(116, 'File name', 'ຊື່ແຟ້ມຂໍ້ມູນ', 'text', 'index', 0, 'ชื่อไฟล์', NULL),
(117, 'File not found', 'ບໍ່ພົບແຟ້ມທີ່ຕ້ອງການ', 'text', 'index', 0, 'ไม่พบไฟล์ที่ต้องการ', NULL),
(118, 'File size is less than :size', 'ຂະໜາດຂອງແຟ້ມບໍ່ເກີນ:size', 'text', 'index', 0, 'ขนาดของไฟล์ไม่เกิน :size', NULL),
(119, 'Fiscal year', 'ປີງົບປະມານ', 'text', 'index', 0, 'ปีงบประมาณ', NULL),
(120, 'for login by LINE account', 'ສໍາລັບການເຂົ້າສູ່ລະບົບດ້ວຍບັນຊີ LINE', 'text', 'index', 0, 'สำหรับการเข้าระบบโดยบัญชีไลน์', NULL),
(121, 'Forgot', 'ລືມລະຫັດຜ່ານ', 'text', 'index', 0, 'ลืมรหัสผ่าน', NULL),
(122, 'from', 'ຈາກ', 'text', 'index', 0, 'จาก', NULL),
(123, 'General', 'ທົ່ວໄປ', 'text', 'index', 0, 'ทั่วไป', NULL),
(124, 'General site settings', 'ຕັ້ງຄ່າພື້ນຖານຂອງເວັບໄຊ', 'text', 'index', 0, 'ตั้งค่าพื้นฐานของเว็บไซต์', NULL),
(125, 'Get new password', 'ຂໍລະຫັດຜ່ານ', 'text', 'index', 0, 'ขอรหัสผ่าน', NULL),
(126, 'go to page', 'ໄປທີ່ໜ້າ', 'text', 'index', 0, 'ไปหน้าที่', NULL),
(127, 'Height', 'ສູງ', 'text', 'index', 0, 'สูง', NULL),
(128, 'Home', 'ໜ້າຫຼັກ', 'text', 'index', 0, 'หน้าหลัก', NULL),
(129, 'How to define user authentication for mail servers. If you enable it, you must configure below correctly.', 'ກຳນົດວິທີການກວດສອບຜູ້ໃຊ້ສຳລັບເມນເຊິບເວີຫາກທ່ານເປີດໃຊ້ການທ່ານຕ້ອງກຳນົດຄ່າຕ່າງໆດ້ານລຸ່ມຖືກຕ້ອງ', 'text', 'index', 0, 'กำหนดวิธีการตรวจสอบผู้ใช้สำหรับเมล์เซิร์ฟเวอร์ หากคุณเปิดใช้งานคุณต้องกำหนดค่าต่างๆด้านล่างถูกต้อง', NULL),
(130, 'Identification No.', 'ເລກບັດປະຈຳຕົວ', 'text', 'index', 0, 'เลขประชาชน', NULL),
(131, 'Image', 'ຮູບພາບ', 'text', 'index', 0, 'รูปภาพ', NULL),
(132, 'Image size is in pixels', 'ຂະໜາດຂອງຮູບພາບເປັນພິກເຊວ', 'text', 'index', 0, 'ขนาดของรูปภาพเป็นพิกเซล', NULL),
(133, 'Import', 'ນຳເຂົ້າ', 'text', 'index', 0, 'นำเข้า', NULL),
(134, 'Installed modules', 'ໂມດູນທີ່ຕິດຕັ້ງ', 'text', 'index', 0, 'โมดูลที่ติดตั้งแล้ว', NULL),
(135, 'Invalid :name', ':name ບໍ່ຖືກຕ້ອງ', 'text', 'index', 0, ':name ไม่ถูกต้อง', NULL),
(136, 'Job today', 'ວຽກຊ່ອມວັນນີ້', 'text', 'index', 0, 'งานซ่อมวันนี้', NULL),
(137, 'Key', 'ແປ້ນພີມ', 'text', 'index', 0, 'คีย์', NULL),
(138, 'Language', 'ພາສາ', 'text', 'index', 0, 'ภาษา', NULL),
(139, 'Last login', 'ເຂົ້າລະບົບລ້າສຸດ', 'text', 'index', 0, 'เข้าระบบล่าสุด', NULL),
(140, 'Leave', 'ລາ', 'text', 'index', 0, 'ลา', NULL),
(141, 'Leave conditions', 'ເງື່ອນໄຂການໃຫ້ລາ', 'text', 'index', 0, 'เงื่อนไขการลา', NULL),
(142, 'Leave empty for generate auto', 'ປ່ອຍຫວ່າງໄວ້ເພື່ອສ້າງອັດໂນມັດ', 'text', 'index', 0, 'ปล่อยว่างไว้เพื่อสร้างอัตโนมัติ', NULL),
(143, 'Leave history', 'ປະຫວັດສາດການພັກ', 'text', 'index', 0, 'ประวัติการลา', NULL),
(144, 'Leave type', 'ປະເພດການພັກວຽກ', 'text', 'index', 0, 'ประเภทการลา', NULL),
(145, 'Limit access to only one account per member. Members who have logged in before will be forced to log out.', 'ຈໍາກັດການເຂົ້າເຖິງບັນຊີຫນຶ່ງ ສະມາຊິກທີ່ເຂົ້າສູ່ລະບົບກ່ອນຈະຖືກບັງຄັບໃຫ້ອອກຈາກລະບົບ.', 'text', 'index', 0, 'จำกัดการเข้าระบบต่อหนึ่งบัญชี สมาชิกที่เข้าระบบอยู่ก่อนหน้าจะถูกบังคับให้ออกจากระบบ', NULL),
(146, 'LINE official account (with @ prefix, e.g. @xxxx)', 'ບັນຊີທາງການຂອງ LINE (ມີ @ ຄໍານໍາຫນ້າ, ເຊັ່ນ: @xxxx)', 'text', 'index', 0, 'บัญชีทางการของไลน์ (มี @ นำหน้า เช่น @xxxx)', NULL),
(147, 'LINE settings', 'ຕັ້ງ​ຄ່າ LINE', 'text', 'index', 0, 'ตั้งค่าไลน์', NULL),
(148, 'List of', 'ລາຍການ', 'text', 'index', 0, 'รายการ', NULL),
(149, 'List of IPs that allow connection 1 line per 1 IP', 'ລາຍຊື່ IP ທີ່ອະນຸຍາດໃຫ້ເຊື່ອມຕໍ່ 1 ເສັ້ນຕໍ່ 1 IP', 'text', 'index', 0, 'รายการไอพีแอดเดรสทั้งหมดที่อนุญาต 1 บรรทัดต่อ 1 ไอพี', NULL),
(150, 'Local time', 'ເວລາທ້ອງຖິ່ນ', 'text', 'index', 0, 'เวลาท้องถิ่น', NULL),
(151, 'Login', 'ເຂົ້າສູ່ລະບົບ', 'text', 'index', 0, 'เข้าสู่ระบบ', NULL),
(152, 'Login by', 'ເຂົ້າສູ່ລະບົບໂດຍ', 'text', 'index', 0, 'เข้าระบบโดย', NULL),
(153, 'Login information', 'ຂໍ້ມູນການເຂົ້າລະບົບ', 'text', 'index', 0, 'ข้อมูลการเข้าระบบ', NULL),
(154, 'Login per one account', 'ເຂົ້າສູ່ລະບົບຕໍ່ຫນຶ່ງບັນຊີ', 'text', 'index', 0, 'การเข้าระบบต่อหนึ่งบัญชี', NULL),
(155, 'Login with an existing account', 'ເຂົ້າລະບົບດ້ວຍບັນຊີສະມາຊິກທີ່ມີຢູ່ແລ້ວ', 'text', 'index', 0, 'เข้าระบบด้วยบัญชีสมาชิกที่มีอยู่แล้ว', NULL),
(156, 'Logo', 'ໂລໂກ', 'text', 'index', 0, 'โลโก', NULL),
(157, 'Logout', 'ອອກຈາກລະບົບ', 'text', 'index', 0, 'ออกจากระบบ', NULL),
(158, 'Logout successful', 'ອອກຈາກລະບົບຮຽບຮ້ອຍ', 'text', 'index', 0, 'ออกจากระบบเรียบร้อย', NULL),
(159, 'Mail program', 'ໂປຮແກຮມສົ່ງອີເມວ', 'text', 'index', 0, 'โปรแกรมส่งอีเมล', NULL),
(160, 'Mail server', 'ເຊີບເວີອີເມວ', 'text', 'index', 0, 'เซิร์ฟเวอร์อีเมล', NULL),
(161, 'Mail server port number (default is 25, for GMail used 465, 587 for DirectAdmin).', 'ໝາຍເລກພອດຂອງເມວເຊີບເວີ(ຄ່າປົກກະຕິຄື 25, ສຳລັບ gmail ໃຊ້ 465, 587 ສຳລັບ DirectAdmin)', 'text', 'index', 0, 'หมายเลขพอร์ตของเมล์เซิร์ฟเวอร์ (ค่าปกติคือ 25, สำหรับ gmail ใช้ 465, 587 สำหรับ DirectAdmin)', NULL),
(162, 'Mail server settings', 'ຄ່າກຳນົດຂອງເມວເຊີບເວີ', 'text', 'index', 0, 'ค่ากำหนดของเมล์เซิร์ฟเวอร์', NULL),
(163, 'Manage languages', 'ຈັດການພາສາ', 'text', 'index', 0, 'จัดการภาษา', NULL),
(164, 'Member list', 'ລາຍຊື່ສະມາຊິກ', 'text', 'index', 0, 'รายชื่อสมาชิก', NULL),
(165, 'Member status', 'ສະຖານະສະມາຊິກ', 'text', 'index', 0, 'สถานะสมาชิก', NULL),
(166, 'Module', 'ໂມດູນ', 'text', 'index', 0, 'โมดูล', NULL),
(167, 'Module settings', 'ຕັ້ງຄ່າໂມດູນ', 'text', 'index', 0, 'ตั้งค่าโมดูล', NULL),
(168, 'New', 'ໃໝ່', 'text', 'index', 0, 'ใหม่', NULL),
(169, 'New document', 'ເອກະສານໃໝ່', 'text', 'index', 0, 'เอกสารใหม่', NULL),
(170, 'No need to fill in English text. If the English text matches the Key', 'ບໍ່ຈຳເປັນເພີ່ມຂໍ້ຄວາມໃນພາສາອັງກິດຫາກຂໍ້ຄວາມໃນພາສານອັງກົງກັບແປ້ນພີມ', 'text', 'index', 0, 'ไม่จำเป็นต้องกรอกข้อความในภาษาอังกฤษ หากข้อความในภาษาอังกฤษตรงกับคีย์', NULL),
(171, 'not a registered user', 'ບໍ່ພົບສະມາຊິກນີ້ລົງທະບຽນໄວ້', 'text', 'index', 0, 'ไม่พบสมาชิกนี้ลงทะเบียนไว้', NULL),
(172, 'Number of leave days', 'ຈຳນວນວັນຢຸດ', 'text', 'index', 0, 'จำนวนวันลา', NULL),
(173, 'Order', 'ລຳດັບ', 'text', 'index', 0, 'ลำดับ', NULL),
(174, 'Order of persons in positions', 'ລຳດັບບຸກຄົນໃນຕຳແໜ່ງ', 'text', 'index', 0, 'ลำดับบุคคลในตำแหน่ง', NULL),
(175, 'Other', 'ອື່ນໆ', 'text', 'index', 0, 'อื่นๆ', NULL),
(176, 'Password', 'ລະຫັດຜ່ານ', 'text', 'index', 0, 'รหัสผ่าน', NULL),
(177, 'Password of the mail server. (To change the fill.)', 'ລະຫັດຜ່ານຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)', 'text', 'index', 0, 'รหัสผ่านของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)', NULL),
(178, 'Passwords must be at least four characters', 'ລະຫັດຜ່ານຕ້ອງບໍ່ຕ່ຳກວ່າ 4 ຕົວອັກສອນ', 'text', 'index', 0, 'รหัสผ่านต้องไม่น้อยกว่า 4 ตัวอักษร', NULL),
(179, 'Past employees', 'ພະນັກງານທີ່ຜ່ານມາ', 'text', 'index', 0, 'พนักงานในอดีต', NULL),
(180, 'Permission', 'ສິດໃນການໃຊ້ວຽກ', 'text', 'index', 0, 'สิทธิ์การใช้งาน', NULL),
(181, 'Phone', 'ເບີໂທລະສັບ', 'text', 'index', 0, 'โทรศัพท์', NULL),
(182, 'Please fill in', 'ກະລຸນາຕື່ມຂໍ້ມູນໃສ່', 'text', 'index', 0, 'กรุณากรอก', NULL),
(183, 'Please select :name at least one item', 'ກະລຸນາເລືອກ :name ຢ່າງໜ້ອຍ 1 ລາຍການ', 'text', 'index', 0, 'กรุณาเลือก :name อย่างน้อย 1 รายการ', NULL),
(184, 'Port', 'ພອດ', 'text', 'index', 0, 'พอร์ต', NULL),
(185, 'Prename', 'ຄຳນຳໜ້າຊື່', 'text', 'index', 0, 'คำนำหน้าชื่อ', NULL),
(186, 'Profile', 'ຂໍ້ມູນສ່ວນຕົວ', 'text', 'index', 0, 'ข้อมูลส่วนตัว', NULL),
(187, 'Province', 'ແຂວງ', 'text', 'index', 0, 'จังหวัด', NULL),
(188, 'Reason', 'ເຫດຜົນ', 'text', 'index', 0, 'เหตุผล', NULL),
(189, 'Reasons for leave', 'ເຫດຜົນຂອງການພັກ', 'text', 'index', 0, 'เหตุผลการลา', NULL),
(190, 'Register', 'ສະໝັກສະມາຊິກ', 'text', 'index', 0, 'สมัครสมาชิก', NULL),
(191, 'Register successfully Please log in', 'ລົງທະບຽນຢ່າງສຳເລັດຜົນກະລຸນາເຂົ້າສູ່ລະບົບ', 'text', 'index', 0, 'ลงทะเบียนเรียบร้อยแล้วกรุณาเข้าสู่ระบบ', NULL),
(192, 'Register successfully, We have sent complete registration information to :email', 'ລົງທະບຽນສຳເລັດແລ້ວ ເຮົາໄດ້ສົ່ງຂໍ້ມູນການລົງທະບຽນໄປທີ່ :email', 'text', 'index', 0, 'ลงทะเบียนสมาชิกใหม่เรียบร้อย เราได้ส่งข้อมูลการลงทะเบียนไปยัง :email', NULL),
(193, 'Remain', 'ດຸ່ນດ່ຽງ', 'text', 'index', 0, 'คงเหลือ', NULL),
(194, 'Remove', 'ລຶບ', 'text', 'index', 0, 'ลบ', NULL),
(195, 'Repassword', 'ຢືນຢັນລະຫັດຜ່ານ', 'text', 'index', 0, 'ยืนยันรหัสผ่าน', NULL),
(196, 'Report', 'ບົດລາຍງານ', 'text', 'index', 0, 'รายงาน', NULL),
(197, 'Request for leave', 'ຮ້ອງຂໍລາພັກ', 'text', 'index', 0, 'คำขออนุมัติลา', NULL),
(198, 'Save', 'ບັນທຶກ', 'text', 'index', 0, 'บันทึก', NULL),
(199, 'Save and email completed', 'ບັນທຶກແລະສົ່ງອີເມວຮຽນຮ້ອຍ', 'text', 'index', 0, 'บันทึกและส่งอีเมลเรียบร้อย', NULL),
(200, 'Saved successfully', 'ບັນທຶກຮຽບຮ້ອຍ', 'text', 'index', 0, 'บันทึกเรียบร้อย', NULL),
(201, 'scroll to top', 'ເລື່ອນຂື້ນດ້ານເທິງ', 'text', 'index', 0, 'เลื่อนขึ้นด้านบน', NULL),
(202, 'Search', 'ຄົ້ນຫາ', 'text', 'index', 0, 'ค้นหา', NULL),
(203, 'Search <strong>:search</strong> found :count entries, displayed :start to :end, page :page of :total pages', 'ຄົ້ນຫາ <strong>:search</strong> ພົບ :count ລາຍການ ສະແດງລາຍການທີ່:start - :end ໜ້າທີ່:page ຈາກທັງໝົດ :total ໜ້າ', 'text', 'index', 0, 'ค้นหา <strong>:search</strong> พบ :count รายการ แสดงรายการที่ :start - :end หน้าที่ :page จากทั้งหมด :total หน้า', NULL),
(204, 'select all', 'ເລືອກທັງໝົດ', 'text', 'index', 0, 'เลือกทั้งหมด', NULL),
(205, 'Send a welcome email to new members', 'ສົ່ງອີເມວຕ້ອນຮັບກັບສະມາຊິກໃຫມ່', 'text', 'index', 0, 'ส่งข้อความต้อนรับสมาชิกใหม่', NULL),
(206, 'send message to user When a user adds LINE&#039;s official account as a friend', 'ສົ່ງຂໍ້ຄວາມຫາຜູ້ໃຊ້ ເມື່ອຜູ້ໃຊ້ເພີ່ມບັນຊີທາງການຂອງ LINE ເປັນໝູ່', 'text', 'index', 0, 'ส่งข้อความไปยังผู้ใช้ เมื่อผู้ใช้เพิ่มบัญชีทางการของไลน์เป็นเพื่อน', NULL),
(207, 'Send notification messages When making a transaction', 'ສົ່ງຂໍ້ຄວາມແຈ້ງເຕືອນເມື່ອມີການເຮັດທຸລະກຳ', 'text', 'index', 0, 'ส่งข้อความแจ้งเตือนเมื่อมีการทำรายการ', NULL),
(208, 'Server time', 'ເວລາຂອງເຊີບເວີ', 'text', 'index', 0, 'เวลาเซิร์ฟเวอร์', NULL),
(209, 'Set the application for send an email', 'ເລືອກໂປຮແກຮມທີ່ໃຊ້ໃນການສົ່ງອີເມວ', 'text', 'index', 0, 'เลือกโปรแกรมที่ใช้ในการส่งอีเมล', NULL),
(210, 'Setting up the email system', 'ການຕັ້ງຄ່າກ່ຽວກັບລະບົບອີເມວ', 'text', 'index', 0, 'การตั้งค่าเกี่ยวกับระบบอีเมล', NULL),
(211, 'Settings', 'ຕັ້ງຄ່າ', 'text', 'index', 0, 'ตั้งค่า', NULL),
(212, 'Settings the conditions for member login', 'ຕັ້ງເງື່ອນໄຂການກວດສອບການເຂົ້າລະບົບ', 'text', 'index', 0, 'ตั้งค่าเงื่อนไขในการตรวจสอบการเข้าสู่ระบบ', NULL),
(213, 'Settings the timing of the server to match the local time', 'ຕັ້ງຄ່າເຂດເວລາຂອງເຊີບເວີ ໃຫ້ກົງກັບເວລາທ້ອງຖີ່ນ', 'text', 'index', 0, 'ตั้งค่าเขตเวลาของเซิร์ฟเวอร์ ให้ตรงกันกับเวลาท้องถิ่น', NULL),
(214, 'Sex', 'ເພດ', 'text', 'index', 0, 'เพศ', NULL),
(215, 'Short description about your website', 'ຂໍ້ຄວາມສັ້ນໆ ອະທິບາຍວ່າເປັນເວັບໄຊກ່ຽວກັບຫຍັງ', 'text', 'index', 0, 'ข้อความสั้นๆอธิบายว่าเป็นเว็บไซต์เกี่ยวกับอะไร', NULL),
(216, 'Show', 'ສະແດງ', 'text', 'index', 0, 'แสดง', NULL),
(217, 'Show web title with logo', 'ສະແດງຊື່ເວັບແລະໂລໂກ້', 'text', 'index', 0, 'แสดงชื่อเว็บและโลโก', NULL),
(218, 'Site Name', 'ຊື່ຂອງເວັບໄຊ', 'text', 'index', 0, 'ชื่อของเว็บไซต์', NULL),
(219, 'Site settings', 'ຕັ້ງຄ່າເວັບໄຊ', 'text', 'index', 0, 'ตั้งค่าเว็บไซต์', NULL),
(220, 'Size of the file upload', 'ຂະໜາດຂອງແຟ້ມອັບໂຫຼດ', 'text', 'index', 0, 'ขนาดของไฟล์อัปโหลด', NULL),
(221, 'skip to content', 'ຂ້າມໄປຍັງເນື້ອຫາ', 'text', 'index', 0, 'ข้ามไปยังเนื้อหา', NULL),
(222, 'Sorry', 'ຂໍໂທດ', 'text', 'index', 0, 'ขออภัย', NULL),
(223, 'Sorry, Item not found It&#39;s may be deleted', 'ຂໍໂທດ ບໍ່ພົບລາຍການທີ່ເລືອກ ລາຍການນີ້ອາດຖືກລຶບໄປແລ້ວ', 'text', 'index', 0, 'ขออภัย ไม่พบรายการที่เลือก รายการนี้อาจถูกลบไปแล้ว', NULL),
(224, 'Specify the file extension that allows uploading. English lowercase letters and numbers 2-4 characters to separate each type with a comma (,) and without spaces. eg zip,rar,doc,docx', 'ລະບົບນາມສະກຸນຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້ ພາສາອັງກິດຕົວພີມນ້ອຍແລະຕົວເລກສອງເຖິງສີ່ຕົວອັກສອນ ຄັ່ນແຕ່ລະລາຍການດ້ວຍເຄື່ອງໝາຍຈຸດ(,)', 'text', 'index', 0, 'ระบุนามสกุลของไฟล์ที่สามารถอัปโหลดได้ ภาษาอังกฤษตัวพิมพ์เล็กและตัวเลขสองถึงสี่ตัวอักษร คั่นแต่ละรายการด้วยลูกน้ำ (,)', NULL),
(225, 'Specify the format of the document number as %04d means adding zeros until the four-digit number on the front, such as 0001.', 'ກຳນົດຮູບແບບເລກທີຂອງເອກະສານເຊັ່ນ %04d ໝາຍເຖິງຕື່ມເລກສູນດ້ານໜ້າຈົນຄົບສີ່ຫຼັກເຊັ່ນ 0001', 'text', 'index', 0, 'กำหนดรูปแบบเลขที่ของเอกสาร เช่น %04d หมายถึง เติมเลขศูนย์ด้านหน้าจนครบสี่หลัก เช่น 0001', NULL),
(226, 'Specify the language code of the email, as utf-8', 'ລະບຸລະຫັດພາສາຂອງອີເມວທີ່ສົ່ງເຊັ່ນ utf-8', 'text', 'index', 0, 'ระบุรหัสภาษาของอีเมลที่ส่ง เช่น utf-8', NULL),
(227, 'Start date', 'ວັນທີເລີ່ມຕົ້ນ', 'text', 'index', 0, 'วันที่เริ่มต้น', NULL),
(228, 'Statistics for leave', 'ສະຖິຕິການລາພັກ', 'text', 'index', 0, 'สถิติการลา', NULL),
(229, 'Status', 'ສະຖານະ', 'text', 'index', 0, 'สถานะ', NULL),
(230, 'Status for general members', 'ສະຖານະສຳລັບສະມາຊິກທົ່ວໄປ', 'text', 'index', 0, 'สถานะสำหรับสมาชิกทั่วไป', NULL),
(231, 'Style', 'ຮູບແບບ', 'text', 'index', 0, 'รูปแบบ', NULL),
(232, 'The file size larger than the limit', 'ຂະຫນາດຂອງໄຟໃຫຍ່ກວ່າທີ່ກໍາຫນົດ', 'text', 'index', 0, 'ขนาดของไฟล์ใหญ่กว่าที่กำหนด', NULL),
(233, 'The members status of the site', 'ສະຖານະຂອງສະມາຂິກຂອງເວັບໄຊ', 'text', 'index', 0, 'สถานะของสมาชิกของเว็บไซต์', NULL),
(234, 'The name of the mail server as localhost or smtp.gmail.com (To change the settings of your email is the default. To remove this box entirely.)', 'ຊື່ຂອງເມວເຊີບເວີເຊັ່ນ localhost หรือ chitdpt@gmail.com (ຕ້ອງປ່ຽນຄ່າກຳນົດຂອງອີເມວທັງໝົດເປັນຄ່າເລີ່ມຕົ້ນ ໃຫ້ລຶບຂໍ້ຄວາມໃນຊ່ອງນີ້ອອກທັງໝົດ)', 'text', 'index', 0, 'ชื่อของเมล์เซิร์ฟเวอร์ เช่น localhost หรือ smtp.gmail.com (ต้องการเปลี่ยนค่ากำหนดของอีเมลทั้งหมดเป็นค่าเริ่มต้น ให้ลบข้อความในช่องนี้ออกทั้งหมด)', NULL),
(235, 'The size of the files can be uploaded. (Should not exceed the value of the Server :upload_max_filesize.)', 'ຂະໜາດຂອງແຟ້ມທີ່ສາມາດອັບໂຫຼດໄດ້(ບໍ່ຄວນເກີນຄ່າກຳນົດຂອງເຊີບເວີ :upload_max_filesize)', 'text', 'index', 0, 'ขนาดของไฟล์ที่สามารถอัปโหลดได้ (ไม่ควรเกินค่ากำหนดของเซิร์ฟเวอร์ :upload_max_filesize)', NULL),
(236, 'The type of file is invalid', 'ຊະນິດຂອງແຟ້ມບໍ່ຮອງຮັບ', 'text', 'index', 0, 'ชนิดของไฟล์ไม่รองรับ', NULL),
(237, 'This :name already exist', 'ມີ :name ນີ້ຢູ່ກ່ອນແລ້ວ', 'text', 'index', 0, 'มี :name นี้อยู่ก่อนแล้ว', NULL),
(238, 'Time zone', 'ເຂດເວລາ', 'text', 'index', 0, 'เขตเวลา', NULL),
(239, 'times', 'ຄັ້ງ', 'text', 'index', 0, 'ครั้ง', NULL),
(240, 'to', 'ເຖິງ', 'text', 'index', 0, 'ถึง', NULL),
(241, 'To change your password, enter your password to match the two inputs', 'ຖ້າຕ້ອງການປ່ຽນລະຫັດຜ່ານກະລຸນາເພີ່ມລະຫັດຜ່ານສອງຊ່ອງໃຫ້ກົງກັນ', 'text', 'index', 0, 'ถ้าต้องการเปลี่ยนรหัสผ่าน กรุณากรอกรหัสผ่านสองช่องให้ตรงกัน', NULL),
(242, 'Topic', 'ຫົວຂໍ້', 'text', 'index', 0, 'หัวข้อ', NULL),
(243, 'Total', 'ລວມ', 'text', 'index', 0, 'รวม', NULL),
(244, 'Transaction date', 'ວັນທີ່ເຮັດລາຍະການ', 'text', 'index', 0, 'วันที่ทำรายการ', NULL),
(245, 'Type', 'ປະເພດ', 'text', 'index', 0, 'ประเภท', NULL),
(246, 'Type of file uploads', 'ຊະນິດຂອງແຟ້ມອັບໂຫຼດ', 'text', 'index', 0, 'ชนิดของไฟล์อัปโหลด', NULL),
(247, 'Unable to complete the transaction', 'ບໍ່ສາມາດເຮັດລາຍການນີ້ໄດ້', 'text', 'index', 0, 'ไม่สามารถทำรายการนี้ได้', NULL),
(248, 'Unlimited', 'ບໍ່ຈຳກັດ', 'text', 'index', 0, 'ไม่จำกัด', NULL),
(249, 'Upload', 'ອັບໂຫຼດ', 'text', 'index', 0, 'อัปโหลด', NULL),
(250, 'Upload :type files no larger than :size', 'ອັບໂຫຼດແຟ້ມຂໍ້ມູນ :type ຂະໜາດບໍ່ເກີນ :size', 'text', 'index', 0, 'อัปโหลดไฟล์ :type ขนาดไม่เกิน :size', NULL),
(251, 'User', 'ສະມາຊິກ', 'text', 'index', 0, 'สมาชิก', NULL),
(252, 'Username', 'ຊື່ຜູ້ໃຊ້', 'text', 'index', 0, 'ชื่อผู้ใช้', NULL),
(253, 'Username for the mail server. (To change, enter a new value.)', 'ຊື່ຜູ້ໃຊ້ຂອງເມວເຊີບເວີ (ຕ້ອງການປ່ຽນ ໃຫ້ເພີ່ມ)', 'text', 'index', 0, 'ชื่อผู้ใช้ของเมล์เซิร์ฟเวอร์ (ต้องการเปลี่ยน ให้กรอก)', NULL),
(254, 'Users', 'ສະມາຊິກ', 'text', 'index', 0, 'สมาชิก', NULL),
(255, 'Website title', 'ຊື່ເວັບ', 'text', 'index', 0, 'ชื่อเว็บ', NULL),
(256, 'Welcome', 'ສະບາຍດີ', 'text', 'index', 0, 'สวัสดี', NULL),
(257, 'Welcome %s, login complete', 'ສະບາຍດີທ່ານ %s ຍິນດີຕ້ອນຮັບເຂົ້າສູ່ລະບົບ', 'text', 'index', 0, 'สวัสดี คุณ %s ยินดีต้อนรับเข้าสู่ระบบ', NULL),
(258, 'Welcome new members', 'ຍິນດີຕ້ອນຮັບສະມາຊິກໃໝ່', 'text', 'index', 0, 'ยินดีต้อนรับสมาชิกใหม่', NULL),
(259, 'When download', 'ເມື່ອກົດດາວໂຫຼດ', 'text', 'index', 0, 'เมื่อคลิกดาวน์โหลด', NULL),
(260, 'When enabled Social accounts can be logged in as an administrator. (Some abilities will not be available)', 'ເມື່ອເປີດໃຊ້ງານ ບັນຊີສັງຄົມສາມາດເຂົ້າສູ່ລະບົບເປັນຜູ້ບໍລິຫານ. (ຄວາມສາມາດບາງຢ່າງຈະບໍ່ມີ)', 'text', 'index', 0, 'เมื่อเปิดใช้งาน บัญชีโซเชียลจะสามารถเข้าระบบเป็นผู้ดูแลได้ (ความสามารถบางอย่างจะไม่สามารถใช้งานได้)', NULL),
(261, 'Width', 'ກວ້າງ', 'text', 'index', 0, 'กว้าง', NULL),
(262, 'With selected', 'ເຮັດກັບທີ່ເລືອກ', 'text', 'index', 0, 'ทำกับที่เลือก', NULL),
(263, 'You can enter your LINE user ID below on your personal information page. to link your account to this official account', 'ທ່ານສາມາດໃສ່ LINE user ID ຂອງທ່ານຂ້າງລຸ່ມນີ້ຢູ່ໃນຫນ້າຂໍ້ມູນສ່ວນຕົວຂອງທ່ານ. ເພື່ອເຊື່ອມຕໍ່ບັນຊີຂອງທ່ານກັບບັນຊີທາງການນີ້', 'text', 'index', 0, 'คุณสามารถกรอก LINE user ID ด้านล่างในหน้าข้อมูลส่วนตัวของคุณ เพื่อผูกบัญชีของคุณเข้ากับบัญชีทางการนี้ได้', NULL),
(264, 'You want to', 'ທ່ານຕ້ອງການ', 'text', 'index', 0, 'คุณต้องการ', NULL),
(265, 'Your message was sent successfully', 'ສົ່ງຂໍ້ຄວາມໄປຍັງຜູ້ຮັບຮຽບຮ້ອຍແລ້ວ', 'text', 'index', 0, 'ส่งข้อความไปยังผู้ที่เกี่ยวข้องเรียบร้อยแล้ว', NULL),
(266, 'Your new password is', 'ລະຫັດຜ່ານໃໝ່ຂອງທ່ານຄື', 'text', 'index', 0, 'รหัสผ่านใหม่ของคุณคือ', NULL),
(267, 'Your registration information', 'ຂໍ້ມູນການລົງທະບຽນຂອງທ່ານ', 'text', 'index', 0, 'ข้อมูลการลงทะเบียนของคุณ', NULL),
(268, 'Zipcode', 'ລະຫັດໄປສະນີ', 'text', 'index', 0, 'รหัสไปรษณีย์', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eleave_mso_leave`
--

CREATE TABLE `eleave_mso_leave` (
  `id` int(11) NOT NULL,
  `topic` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `num_days` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleave_mso_leave`
--

INSERT INTO `eleave_mso_leave` (`id`, `topic`, `detail`, `num_days`, `published`) VALUES
(1, 'ลาป่วย', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น\r\nการลาป่วยต้องแนบใบรับรองแพทย์เสมอ\r\nสามารถลาย้อนหลังได้', 15, 1),
(2, 'ลากิจส่วนตัว', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1),
(3, 'ลาคลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 60, 1),
(4, 'ลาไปช่วยเหลือภรรยาที่คลอดบุตร', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 30, 1),
(5, 'ลาเข้ารับการตรวจเลือกทหารหรือเข้ารับการเตรียมพล', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 10, 1),
(6, 'ลาไปศึกษา ฝึกอบรม ปฏิบัติการวิจัย หรือดูงาน', 'พนักงานที่ประสงค์จะลาหยุดงาน จะต้องกรอกข้อมูลการลาในระบบ และยื่นขออนุญาตเป็นการล่วงหน้าต่อผู้บังคับบัญชาตามลำดับขั้น และจะหยุดได้ก็ต่อเมื่อผู้บังคับบัญชาได้อนุมัติการลาแล้วเท่านั้น', 5, 1),
(8, 'ลาพักผ่อน', '**', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `eleave_mso_leave_items`
--

CREATE TABLE `eleave_mso_leave_items` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `leave_id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `department` int(11) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `communication` text COLLATE utf8_unicode_ci NOT NULL,
  `days` float NOT NULL,
  `start_date` date NOT NULL,
  `start_period` tinyint(1) NOT NULL,
  `end_date` date NOT NULL,
  `end_period` tinyint(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleave_mso_leave_items`
--

INSERT INTO `eleave_mso_leave_items` (`id`, `member_id`, `leave_id`, `status`, `department`, `detail`, `communication`, `days`, `start_date`, `start_period`, `end_date`, `end_period`, `create_date`, `reason`) VALUES
(2, 5, 2, 1, 2, 'fgshfg', '', 5, '2022-04-25', 0, '2022-04-29', 0, '2022-04-12 01:10:08', ''),
(3, 5, 2, 1, 3, 'vsdvsdvasdvs', 'vsdvsdvasdcvs', 7, '2022-04-22', 0, '2022-04-28', 0, '2022-04-21 15:59:47', ''),
(4, 5, 8, 1, 3, 'arthaerthadf', '0415295214', 5, '2022-04-25', 0, '2022-04-29', 0, '2022-04-21 16:06:17', ''),
(5, 5, 2, 0, 2, 'aefaerfaerf', 'badfbadf', 1, '2022-04-26', 0, '2022-04-26', 0, '2022-04-21 16:17:11', NULL),
(6, 5, 1, 0, 3, 'ป่วย', '04182441652', 1, '2022-04-22', 0, '2022-04-22', 0, '2022-04-21 16:25:20', NULL),
(7, 31, 1, 0, 3, 'มีไข้ ไม่สบาย ปวดศีรษะ', 'โทรศัพท์ 0943857480', 1, '2022-05-19', 0, '2022-05-19', 0, '2022-05-30 15:43:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eleave_mso_user`
--

CREATE TABLE `eleave_mso_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `permission` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem_position` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mem_department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceID` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT 'TH',
  `visited` int(11) DEFAULT '0',
  `lastvisited` int(11) DEFAULT '0',
  `session_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `social` tinyint(1) DEFAULT '0',
  `line_uid` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleave_mso_user`
--

INSERT INTO `eleave_mso_user` (`id`, `username`, `salt`, `password`, `token`, `status`, `permission`, `name`, `sex`, `mem_position`, `mem_department`, `id_card`, `address`, `phone`, `provinceID`, `province`, `zipcode`, `country`, `visited`, `lastvisited`, `session_id`, `ip`, `create_date`, `active`, `social`, `line_uid`) VALUES
(1, 'admin@localhost', '14d5b75a4c4ac', 'dfc61a440ef25385f4d5e1d9795ba23e7209709d', '961d035621151f3dbfe1449cc380e13eba702331', 1, ',can_config,can_manage_eleave,can_approve_eleave,', 'แอดมิน(ทยุต)', 'm', 'ps22', '3', '', '22 หมู่ 4 ตำบลนาพึง อำเภอนาแห้ว', '0943857480', '42', 'เลย', '42170', 'TH', 13, 1653897058, '0d6l0o12jt6n7mkhgd78hpcgv1', '::1', '2022-04-11 04:39:12', 1, 0, NULL),
(2, 'demo', '625394d0bd7d1', '0ccc9f544e3fff18278b028431a903cd7b27ade3', NULL, 0, '', 'ตัวอย่าง', NULL, 'ps2', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, NULL, NULL, '2022-04-11 04:39:12', 1, 0, NULL),
(3, 'loei.pmj42@gmail.com', '46e5d3af82624', 'c3f030ac25d24f44adf6276caa5b61a586069222', 'b1a80da1c002a1026ab2d64443ef5291b9134622', 0, ',can_approve_eleave,', 'นางสาวจีรนันทน์ จันทร์พาณิชย์', 'f', 'ps2', '3', '', '', '', '10', 'กรุงเทพมหานคร', '', 'TH', 6, 1653897151, '0d6l0o12jt6n7mkhgd78hpcgv1', '::1', '2022-04-11 12:46:11', 1, 0, NULL),
(4, 'demotest', '380d51d190b88', 'f882845dfce72d75502cd83d48bdfa93ab1fb2d0', NULL, 0, ',can_approve_eleave,', 'นางบรรจบ สุวรรณศรี', 'f', 'ps3', '2', '', '', '', '', '', '', 'TH', 0, 0, 'kpia7sokq19c2sd128d8uua0c7', NULL, '2022-04-11 12:47:27', 1, 0, NULL),
(5, 'n.nuttapong@gmail.com', 'fdfba32b4e574', '86aa2dd9bb31cd8cc10bf891f966b1c0d0cbb0c5', 'dd97124e4f2c4db8eff0b6c6fceb542d163cedc9', 0, ',can_approve_eleave,', 'นายณัฐพงษ์ พรชัย', 'm', 'ps1', '1', '', '', '', '', '', '', 'TH', 6, 1653456131, 'd1trhhauvd0basl7inifmqef47', '::1', '2022-04-11 15:38:13', 1, 0, NULL),
(6, 'choochoo@gmail.com', 'd1212eb45ebbc', '3dcefef716449b02b05e1568869dd3ded6576a67', NULL, 0, ',can_approve_eleave,', 'นายพลวัฒน์ สุนทรโกษา', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:01:35', 1, 0, NULL),
(7, 'wiyada@localhost', 'b17d704973cae', '37113231d9d6144e952c47e46adbc7f646174ce3', NULL, 0, '', 'นางสาววิยะดา ชัชวาลย์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:04:05', 1, 0, NULL),
(8, 'pachara@localhost', 'c31c07261539d', '67f1f8b589e7100f5ead6948884d8cd984fa654d', NULL, 0, '', 'นายพชร ยะนิล', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:04:55', 1, 0, NULL),
(9, 'chanipha@localhost', 'fb05590b3e176', 'aab72cfc35e99fee2ef096d637bcb6f1a2edfa98', NULL, 0, '', 'นางสาวชนิภา โชควังทอง', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:05:56', 1, 0, NULL),
(10, 'thanutcha@localhost', '5b9176b4fcfc4', '2c62875246b91ac32eeace392433cdf8fd498bb0', NULL, 0, '', 'นางสาวธณัชชา สารวงษ์', '', '', '', '', '', '', '', '', '', 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:09:58', 1, 0, NULL),
(11, 'thanidsara@localhost', 'dc8a079abc45a', '79758a396e6f08e93e5f6bd17d1d9d5194bab6e8', NULL, 0, '', 'นางสาวธนิสสรา การรักษ์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:12:01', 1, 0, NULL),
(12, 'lumpong@localhost', '456113e931210', '01759610812b43de62027986fa18ff33fb7243ad', NULL, 0, '', 'นายลำพอง จันทร์พาณิชย์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:14:21', 1, 0, NULL),
(13, 'supaporn@localhost', 'db8f8ed6c2cd0', '71cd8994020524c4296ca8c72c2492c618b28be4', NULL, 0, '', 'นางสาวสุภาภรณ์ เสนานุช', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:15:01', 1, 0, NULL),
(14, 'uriwan@localhost', '1528681ddac95', '0a136c814709e158f58fb4dc7687c14ca2a7535d', NULL, 0, '', 'นางสาวอุไรวรรณ นามวงษ์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:25:34', 1, 0, NULL),
(15, 'panupong@localhost', '40b18125c67cf', '72e4186b7aad8c7fe184eec0c62a6001cc61a33d', NULL, 0, '', 'นายภาณุพงศ์ ศุกรนันทน์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:27:09', 1, 0, NULL),
(16, 'kodchaporn@localhost', 'fa8a6d86be8b8', '7131f7c5a5def4884d58db408656cae4c8eea84a', NULL, 0, '', 'นางสาวกชพร จิตตหงษ์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:28:57', 1, 0, NULL),
(17, 'supannee@localhost', 'a62563538fcbc', '245605db25b5995a786169f6239fc78d111e7aec', NULL, 0, '', 'นางสาวสุพรรณี ศรีทารัง', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:29:30', 1, 0, NULL),
(18, 'arnuphab@localhost', 'a22f761eeb5bc', 'bca128b5a64401189eee59811e37a129fc4fd376', NULL, 0, '', 'นายอานุภาพ ธนะบุตร', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:37:39', 1, 0, NULL),
(19, 'chanapha@localhost', 'ea0c9d327b191', '9bd06a848a9355fa91e7c4dadc6b96037642c6c8', NULL, 0, '', 'นางสาวชนาภา บุตรกะ', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:38:23', 1, 0, NULL),
(20, 'tongpoon@localhost', '9c591fe723120', '3d2871af116336aaad0cf9239bc677b7b428dfd4', NULL, 0, '', 'นายทองพูน เจริญสุข', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:38:56', 1, 0, NULL),
(21, 'nunnaphut@localhost', 'b55e4dab1ecca', 'db44ff3506abbfd52598ad090f2003f9ef264df4', NULL, 0, '', 'นางสาวนันท์นภัส วัฒนราช', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:39:21', 1, 0, NULL),
(22, 'wiliwan@localhost', '20419326788a9', 'b9f6320cd5164f0f4b187253882297a20ee09ef7', NULL, 0, '', 'นางวิไลรัตน์ จันทะมิตร', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:39:58', 1, 0, NULL),
(23, 'snor@localhost', 'e6f45930d3fbf', 'ebb2b29229153d35149473b84a934ce46e53680d', NULL, 0, '', 'นายเสนอ คำแสน', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:45:50', 1, 0, NULL),
(24, 'pornnutcha@localhost', '9bb54be48c0da', 'ed511103d07451fe1739f4627167d9bb3da09747', NULL, 0, '', 'นางพรนัชชา นาสูงชล', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:46:29', 1, 0, NULL),
(25, 'praphatson@localhost', '9fe3f8a6d7cd8', 'fb7be007545a0743b0dbc76d2ef6adfbf0b3badc', NULL, 0, '', 'นางสาวประภัสสรณ์ มานะโส', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:47:29', 1, 0, NULL),
(26, 'ammika@localhost', '88b4c2dc1cef4', 'f22400f7b43c897501e561117ee62529825be6d0', NULL, 0, '', 'นางสาวเอมมิกา ศรีกังวานใจ', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:49:24', 1, 0, NULL),
(27, 'skaoduan@localhost', '27fb5b261dcca', 'a9667f9626bb10716070bd7411a9af6ee6b4cf6f', NULL, 0, '', 'นางสาวสกาวเดือน คำแสน', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:54:41', 1, 0, NULL),
(28, 'jukkapun@localhost', '1943922ef39b9', '07c5bc5e562abac4b4e43c65544c9f09d50e4d8b', NULL, 0, '', 'นายจักรพันธ์ พูนสูงเนิน', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:55:23', 1, 0, NULL),
(29, 'widyaporn@localhost', 'de6f438557c41', '77cf314db8f49e7413754387867f34d255fe2b2b', NULL, 0, '', 'นางสาววิชญาพร วิสุเวส', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:56:01', 1, 0, NULL),
(30, 'udon@localhost', 'df8fcbe372be0', '04529ae312007b14b9f898146e6fe64ab5dd6d8f', NULL, 0, '', 'นายอุดร ชัยชนะ', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:56:24', 1, 0, NULL),
(31, 'thayut@localhost', '3a3ce811cc864', '137233c6ca2b28e43be55947e699a92d6058a6b5', '91c13a37e7a168e910ffd1cff19cadb9557cd8d2', 0, '', 'นายทยุต วงศ์โสภา', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 2, 1653898518, '0d6l0o12jt6n7mkhgd78hpcgv1', '::1', '2022-05-26 10:56:54', 1, 0, NULL),
(32, 'naphatchakamon@localhost', 'ecb733fdc3715', '018f08b907ac2bb14c3e869ea9fd6ee4f506c172', NULL, 0, '', 'นางสาวณภัชกมล อุทธาโกสม', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:57:39', 1, 0, NULL),
(33, 'siwadol@localhost', '31aaa36cc85fe', '141da4e3c650017a46019a7e899c550438efd0e2', NULL, 0, '', 'นายศิวดล ปัจฉิมกุล', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:58:03', 1, 0, NULL),
(34, 'sudarut@localhost', '54699a3e1b9ab', '760eef8852e3cd64a2fb1da8f4d87619ecbd6485', NULL, 0, '', 'นางสาวสุดารัตน์ โสภา', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:58:56', 1, 0, NULL),
(35, 'kodchakorn@localhost', '48715660d529b', '456353ac055ba9479ad345e05b92c8a8123fafec', NULL, 0, '', 'นางสาวกชกร ศิริสูตร', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 10:59:34', 1, 0, NULL),
(36, 'pitipong@localhost', '6f0fc89cebc3c', '85a45fda813b372804bdac121081cb9fc9232451', NULL, 0, '', 'ปิติพงษ์ สีหะวงศ์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:00:42', 1, 0, NULL),
(37, 'sukanya@localhost', 'ffa22a8c1165e', '2e3c6431faa663ed7dcb272dcf1c426f8c6ffd42', NULL, 0, '', 'นางสุกัลยา จันทร์พาณิชย์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:01:22', 1, 0, NULL),
(38, 'worawoot@localhost', 'eddb095d367d1', '23545ddeaf492b7319043a3955c9f3d716d17b0e', NULL, 0, '', 'นายวรวุฒิ บุตรราช', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:02:16', 1, 0, NULL),
(39, 'patompong@localhost', '8778515786afd', '6c70579140a97e435b7688aeb34d16543971d911', NULL, 0, '', 'นายปฐมพงษ์ ปิทบแสน', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:02:45', 1, 0, NULL),
(40, 'prapaporn@localhost', '9bbe2e8d3b3fd', '83b5d1a6d579b031b0a4f2696b2c712b3a18e55d', NULL, 0, '', 'นางสาวประภาพร จันทะคัด', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:03:21', 1, 0, NULL),
(41, 'punnapha@localhost', '5ed0e49e3c1e3', '919d7439373f2db88110179c8a25e3876291178b', NULL, 0, '', 'นางสาวพรรณนภา ธิมาทาน', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:03:49', 1, 0, NULL),
(42, 'naranrit@localhost', '65b03f692080b', 'a26d06c9e50f307cc5a01490c09e841051e9c2d8', NULL, 0, '', 'นายนเรนทร์ฤทธิ์ ไตรภูมิพิทักษ์', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'TH', 0, 0, 'ehvp2duvskhe24mjrclhe4b1qa', NULL, '2022-05-26 11:04:25', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ileave_type`
--

CREATE TABLE `ileave_type` (
  `type_id` int(2) NOT NULL,
  `type_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_day` int(3) NOT NULL,
  `type_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_department`
--

CREATE TABLE `mso_department` (
  `dep_id` int(2) NOT NULL,
  `dep_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_ileave_status`
--

CREATE TABLE `mso_ileave_status` (
  `ile_id` int(2) NOT NULL,
  `ile_status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ile_active` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_position`
--

CREATE TABLE `mso_position` (
  `ps_id` int(2) NOT NULL,
  `ps_neme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ps_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dep_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_status`
--

CREATE TABLE `mso_status` (
  `sta_id` int(2) NOT NULL,
  `sta_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sta_activet` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sta_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mso_user`
--

CREATE TABLE `mso_user` (
  `ms_idcard` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_prefix` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_position` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_group` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_department` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_active` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_connect` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_subdistrict` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_distract` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_province` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_line_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ms_timeline` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `us_id` int(2) NOT NULL,
  `us_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_active` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eleave_mso_category`
--
ALTER TABLE `eleave_mso_category`
  ADD KEY `type` (`type`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `eleave_mso_language`
--
ALTER TABLE `eleave_mso_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eleave_mso_leave`
--
ALTER TABLE `eleave_mso_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eleave_mso_leave_items`
--
ALTER TABLE `eleave_mso_leave_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `eleave_mso_user`
--
ALTER TABLE `eleave_mso_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `token` (`token`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `ileave_type`
--
ALTER TABLE `ileave_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `mso_department`
--
ALTER TABLE `mso_department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `mso_ileave_status`
--
ALTER TABLE `mso_ileave_status`
  ADD PRIMARY KEY (`ile_id`);

--
-- Indexes for table `mso_position`
--
ALTER TABLE `mso_position`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `mso_status`
--
ALTER TABLE `mso_status`
  ADD PRIMARY KEY (`sta_id`);

--
-- Indexes for table `mso_user`
--
ALTER TABLE `mso_user`
  ADD PRIMARY KEY (`ms_idcard`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eleave_mso_language`
--
ALTER TABLE `eleave_mso_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `eleave_mso_leave`
--
ALTER TABLE `eleave_mso_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eleave_mso_leave_items`
--
ALTER TABLE `eleave_mso_leave_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `eleave_mso_user`
--
ALTER TABLE `eleave_mso_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `ileave_type`
--
ALTER TABLE `ileave_type`
  MODIFY `type_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_department`
--
ALTER TABLE `mso_department`
  MODIFY `dep_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_ileave_status`
--
ALTER TABLE `mso_ileave_status`
  MODIFY `ile_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_position`
--
ALTER TABLE `mso_position`
  MODIFY `ps_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mso_status`
--
ALTER TABLE `mso_status`
  MODIFY `sta_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `us_id` int(2) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
