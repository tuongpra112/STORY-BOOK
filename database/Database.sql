SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `dabm_database`
--
DROP DATABASE IF EXISTS dabm_database;
CREATE DATABASE dabm_database;
USE dabm_database;

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `total_price_sale` (`id_order` VARCHAR(45)) RETURNS MEDIUMINT(9)  BEGIN
    DECLARE total MEDIUMINT;
    SET total = 0;

    SELECT SUM(si.sale_quantity * b.sale_price) INTO total
    FROM sale_include si
    JOIN book b ON si.book_ID = b.book_ID
    WHERE si.sale_ID = id_order;

    RETURN total;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_ID` varchar(45) NOT NULL,
  `author_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

-- SQL script for inserting author
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("01", "Nhiều tác giả");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("11", "Mark P. O. Morford");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("12", "Richard Bruce Wright");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("13", "Carlo D'Este");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("14", "Gina Bari Kolata");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("15", "E. J. W. Barber");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("16", "Amy Tan");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("17", "Robert Cowley");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("18", "Scott Turow");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("19", "David Cordingly");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("20", "Ann Beattie");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("21", "David Adams Richards");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("22", "Adam Lebor");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("23", "Sheila Heti");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("24", "R. J. Kaiser");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("25", "Jack Canfield");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("26", "Loren D. Estleman");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("27", "Robert Hendrickson");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("28", "Julia Oliver");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("29", "John Grisham");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("30", "Toni Morrison");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("31", "The Onion");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("32", "Celia Brooks Brown");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("33", "J. R. Parrish");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("34", "Mary-Kate &amp, Ashley Olsen");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("35", "Robynn Clairday");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("36", "Kathleen Duey");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("37", "Rich Shapero");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("38", "Michael Crichton");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("39", "MICHAEL CRICHTON");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("40", "C.S. Lewis");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("41", "ARTHUR PHILLIPS");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("42", "Stephan Jaramillo");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("43", "Mordecai Richler");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("44", "Eleanor Cooney");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("45", "Charlotte Link");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("46", "Richard North Patterson");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("47", "Mark Salzman");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("48", "Harper Lee");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("49", "LAURA HILLENBRAND");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("50", "Barbara Kingsolver");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("51", "Jo Dereske");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("52", "Jane Austen");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("53", "Dolores Krieger");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("54", "Anne Rivers Siddons");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("55", "Dean R. Koontz");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("56", "Mary Higgins Clark");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("57", "Dean Koontz");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("58", "Patricia Cornwell");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("59", "J.D. Robb");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("60", "Maeve Binchy");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("61", "Laura J. Mixon");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("62", "Tim Lahaye");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("63", "JOHN GRISHAM");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("64", "M.D. Bernie S. Siegel");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("65", "Robert Penn Warren");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("66", "Hans Johannes Hoefer");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("67", "Mark Helprin");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("68", "O. Carol Simonton Md");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("69", "Chuck Hill");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("70", "David Iglehart");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("71", "Larry McMurtry");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("72", "SUZANNE FISHER STAPLES");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("73", "SUZANNE FISHER STAPLES");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("74", "Michel Tournier");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("75", "Carl Sagan");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("76", "Aleksandr Zinoviev");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("77", "Anne Tyler");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("78", "Amy Tan");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("79", "Joseph Conrad");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("80", "Deepak Chopra");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("81", "Thomas Hardy");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("82", "Charles Noland");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("83", "Valerie Frankel");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("84", "Benjamin Hoff");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("85", "LAURA HILLENBRAND");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("86", "Niccolo Machiavelli");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("87", "H. Jackson Brown");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("88", "Robert A. Heinlein");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("89", "PHILIP PULLMAN");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("90", "Anna Sewell");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("91", "MICHAEL ONDAATJE");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("92", "Sandra Levy Ceren");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("93", "P.J. O'Rourke");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("94", "Mike Gayle");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("95", "Stel Pavlou");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("96", "Sarah Payne Stuart");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("97", "Dan Quayle");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("98", "Donald F. Kettl");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("99", "DAVID FRUM");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("100", "Louis Lamour");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("101", "J.D. Salinger");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("102", "J. R. R. Tolkien");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("103", "J. R. R. Tolkien");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("104", "J. R. R. Tolkien");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("105", "John Berendt");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("106", "Mary Higgins Clark");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("107", "Jennifer Crusie");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("108", "Jane Heller");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("109", "Michael Rips");
INSERT INTO `author` (`author_ID`, `author_name`) VALUES ("110", "Simon Mawer");


-- --------------------------------------------------------

--
-- Table structure for table `belongs_to`
--

CREATE TABLE `belongs_to` (
  `book_ID` varchar(45) NOT NULL,
  `genre_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belongs_to`
--

INSERT INTO `belongs_to` (`book_ID`, `genre_ID`) VALUES
('1', '01'),
('10', '02'),
('100', '02'),
('101', '03'),
('102', '02'),
('103', '04'),
('104', '03'),
('105', '04'),
('106', '03'),
('107', '03'),
('108', '03'),
('109', '01'),
('11', '01'),
('110', '03'),
('12', '01'),
('13', '02'),
('14', '03'),
('15', '04'),
('16', '01'),
('17', '02'),
('18', '02'),
('19', '02'),
('2', '01'),
('20', '04'),
('21', '04'),
('22', '02'),
('23', '03'),
('24', '04'),
('25', '02'),
('26', '03'),
('27', '03'),
('28', '04'),
('29', '01'),
('3', '01'),
('30', '01'),
('31', '04'),
('32', '04'),
('33', '02'),
('34', '01'),
('35', '04'),
('36', '02'),
('37', '02'),
('38', '04'),
('39', '03'),
('4', '01'),
('40', '02'),
('41', '03'),
('42', '02'),
('43', '03'),
('44', '02'),
('45', '01'),
('46', '02'),
('47', '04'),
('48', '04'),
('49', '01'),
('5', '04'),
('50', '04'),
('51', '03'),
('52', '02'),
('53', '03'),
('54', '04'),
('55', '04'),
('56', '04'),
('57', '04'),
('58', '03'),
('59', '02'),
('6', '03'),
('60', '03'),
('61', '03'),
('62', '01'),
('63', '03'),
('64', '04'),
('65', '04'),
('66', '04'),
('67', '04'),
('68', '03'),
('69', '03'),
('7', '01'),
('70', '02'),
('71', '03'),
('72', '01'),
('73', '03'),
('74', '01'),
('75', '02'),
('76', '04'),
('77', '01'),
('78', '03'),
('79', '04'),
('8', '03'),
('80', '02'),
('81', '03'),
('82', '02'),
('83', '04'),
('84', '01'),
('85', '01'),
('86', '01'),
('87', '04'),
('88', '02'),
('89', '04'),
('9', '02'),
('90', '04'),
('91', '01'),
('92', '04'),
('93', '01'),
('94', '03'),
('95', '01'),
('96', '04'),
('97', '03'),
('98', '03'),
('99', '02');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_ID` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `publication_year` year(4) NOT NULL,
  `release_date` date NOT NULL,
  `page_count` int(11) NOT NULL,
  `purchase_price` mediumint(9) NOT NULL,
  `sale_price` mediumint(9) NOT NULL,
  `remaining_quantity` int(11) NOT NULL,
  `display_status` varbinary(45) NOT NULL,
  `deleted_tag` int(11) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `publisher_ID` varchar(45) NOT NULL,
  `img_path` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_ID`, `book_name`, `publication_year`, `release_date`, `page_count`, `purchase_price`, `sale_price`, `remaining_quantity`, `display_status`, `deleted_tag`, `description`, `publisher_ID`, `img_path`) VALUES
('1', 'Tiếng Việt 1 (Tập 1)', '2020', '2020-01-01', 189, 30000, 41000, 125, 0x417661696c61626c65, 0, NULL, '001', 'img/Books_Images/tiengviet1_tap1.jpg'),
('10', 'Shin - Cậu Bé Bút Chì', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x417661696c61626c65, 0, NULL, '001', 'img/Books_Images/shin.jpeg'),
('100', 'Daybreakers Louis Lamour Collection', '1981', '1981-01-01', 266, 268000, 271000, 264, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '100', 'http://images.amazon.com/images/P/0553062042.01.LZZZZZZZ.jpg'),
('101', 'The Catcher in the Rye', '1991', '1991-01-01', 285, 367000, 370000, 295, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '101', 'http://images.amazon.com/images/P/0316769487.01.LZZZZZZZ.jpg'),
('102', 'El Senor De Los Anillos: LA Comunidad Del Ani', '2001', '2001-01-01', 437, 168000, 171000, 249, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '102', 'http://images.amazon.com/images/P/8445071408.01.LZZZZZZZ.jpg'),
('103', 'El Senor De Los Anillos: Las DOS Torres (Lord', '2001', '2001-01-01', 293, 245000, 248000, 297, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '103', 'http://images.amazon.com/images/P/8445071769.01.LZZZZZZZ.jpg'),
('104', 'El Senor De Los Anillos: El Retorno Del Rey (', '2001', '2001-01-01', 346, 470000, 473000, 230, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '104', 'http://images.amazon.com/images/P/8445071777.01.LZZZZZZZ.jpg'),
('105', 'Midnight in the Garden of Good and Evil: A Sa', '1994', '1994-01-01', 192, 214000, 217000, 107, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '105', 'http://images.amazon.com/images/P/0679429220.01.LZZZZZZZ.jpg'),
('106', 'Pretend You Don\'t See Her', '1998', '1998-01-01', 211, 151000, 154000, 271, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '106', 'http://images.amazon.com/images/P/0671867156.01.LZZZZZZZ.jpg'),
('107', 'Fast Women', '2001', '2001-01-01', 395, 18000, 21000, 101, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '107', 'http://images.amazon.com/images/P/0312252617.01.LZZZZZZZ.jpg'),
('108', 'Female Intelligence', '2001', '2001-01-01', 219, 71000, 74000, 184, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '108', 'http://images.amazon.com/images/P/0312261594.01.LZZZZZZZ.jpg'),
('109', 'Pasquale\'s Nose: Idle Days in an Italian Town', '2002', '2002-01-01', 304, 478000, 481000, 141, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '109', 'http://images.amazon.com/images/P/0316748641.01.LZZZZZZZ.jpg'),
('11', 'Classical Mythology', '2002', '2002-01-01', 94, 248000, 251000, 208, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '011', 'http://images.amazon.com/images/P/0195153448.01.LZZZZZZZ.jpg'),
('110', 'The Gospel of Judas: A Novel', '2002', '2002-01-01', 427, 149000, 152000, 139, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '110', 'http://images.amazon.com/images/P/0316973742.01.LZZZZZZZ.jpg'),
('12', 'Clara Callan', '2001', '2001-01-01', 474, 307000, 310000, 267, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '012', 'http://images.amazon.com/images/P/0002005018.01.LZZZZZZZ.jpg'),
('13', 'Decision in Normandy', '1991', '1991-01-01', 382, 473000, 476000, 231, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '013', 'http://images.amazon.com/images/P/0060973129.01.LZZZZZZZ.jpg'),
('14', 'Flu: The Story of the Great Influenza Pandemi', '1999', '1999-01-01', 324, 341000, 344000, 187, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '014', 'http://images.amazon.com/images/P/0374157065.01.LZZZZZZZ.jpg'),
('15', 'The Mummies of Urumchi', '1999', '1999-01-01', 380, 498000, 501000, 280, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '015', 'http://images.amazon.com/images/P/0393045218.01.LZZZZZZZ.jpg'),
('16', 'The Kitchen God\'s Wife', '1991', '1991-01-01', 147, 367000, 370000, 203, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '016', 'http://images.amazon.com/images/P/0399135782.01.LZZZZZZZ.jpg'),
('17', 'What If?: The World\'s Foremost Military Histo', '2000', '2000-01-01', 281, 479000, 482000, 146, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '017', 'http://images.amazon.com/images/P/0425176428.01.LZZZZZZZ.jpg'),
('18', 'PLEADING GUILTY', '1993', '1993-01-01', 184, 419000, 422000, 277, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '018', 'http://images.amazon.com/images/P/0671870432.01.LZZZZZZZ.jpg'),
('19', 'Under the Black Flag: The Romance and the Rea', '1996', '1996-01-01', 418, 218000, 221000, 265, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '019', 'http://images.amazon.com/images/P/0679425608.01.LZZZZZZZ.jpg'),
('2', 'Tiếng Việt 1 (Tập 2)', '2020', '2020-01-01', 190, 30000, 41000, 100, 0x556e617661696c61626c65, 0, NULL, '001', 'img/Books_Images/tiengviet1_tap2.jpg'),
('20', 'Where You\'ll Find Me: And Other Stories', '2002', '2002-01-01', 152, 299000, 302000, 236, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '020', 'http://images.amazon.com/images/P/074322678X.01.LZZZZZZZ.jpg'),
('21', 'Nights Below Station Street', '1988', '1988-01-01', 243, 21000, 24000, 174, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '021', 'http://images.amazon.com/images/P/0771074670.01.LZZZZZZZ.jpg'),
('22', 'Hitler\'s Secret Bankers: The Myth of Swiss Ne', '2000', '2000-01-01', 279, 352000, 355000, 230, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '022', 'http://images.amazon.com/images/P/080652121X.01.LZZZZZZZ.jpg'),
('23', 'The Middle Stories', '2004', '2004-01-01', 288, 181000, 184000, 292, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '023', 'http://images.amazon.com/images/P/0887841740.01.LZZZZZZZ.jpg'),
('24', 'Jane Doe', '1999', '1999-01-01', 146, 14000, 17000, 187, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '024', 'http://images.amazon.com/images/P/1552041778.01.LZZZZZZZ.jpg'),
('25', 'A Second Chicken Soup for the Woman\'s Soul (C', '1998', '1998-01-01', 107, 21000, 24000, 272, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '025', 'http://images.amazon.com/images/P/1558746218.01.LZZZZZZZ.jpg'),
('26', 'The Witchfinder (Amos Walker Mystery Series)', '1998', '1998-01-01', 312, 336000, 339000, 189, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '026', 'http://images.amazon.com/images/P/1567407781.01.LZZZZZZZ.jpg'),
('27', 'More Cunning Than Man: A Social History of Ra', '1999', '1999-01-01', 434, 135000, 138000, 285, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '027', 'http://images.amazon.com/images/P/1575663937.01.LZZZZZZZ.jpg'),
('28', 'Goodbye to the Buttermilk Sky', '1994', '1994-01-01', 489, 254000, 257000, 222, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '028', 'http://images.amazon.com/images/P/1881320189.01.LZZZZZZZ.jpg'),
('29', 'The Testament', '1999', '1999-01-01', 346, 437000, 440000, 287, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '029', 'http://images.amazon.com/images/P/0440234743.01.LZZZZZZZ.jpg'),
('3', 'Lược Sử Thời Gian', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x417661696c61626c65, 0, NULL, '001', 'img/Books_Images/LuocSuThoiGian.jpeg'),
('30', 'Beloved (Plume Contemporary Fiction)', '1994', '1994-01-01', 314, 203000, 206000, 266, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '030', 'http://images.amazon.com/images/P/0452264464.01.LZZZZZZZ.jpg'),
('31', 'Our Dumb Century: The Onion Presents 100 Year', '1999', '1999-01-01', 384, 117000, 120000, 203, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '031', 'http://images.amazon.com/images/P/0609804618.01.LZZZZZZZ.jpg'),
('32', 'New Vegetarian: Bold and Beautiful Recipes fo', '2001', '2001-01-01', 182, 318000, 321000, 204, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '032', 'http://images.amazon.com/images/P/1841721522.01.LZZZZZZZ.jpg'),
('33', 'If I\'d Known Then What I Know Now: Why Not Le', '2003', '2003-01-01', 312, 50000, 53000, 112, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '033', 'http://images.amazon.com/images/P/1879384493.01.LZZZZZZZ.jpg'),
('34', 'Mary-Kate &amp, Ashley Switching Goals (Mary-', '2000', '2000-01-01', 242, 285000, 288000, 145, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '034', 'http://images.amazon.com/images/P/0061076031.01.LZZZZZZZ.jpg'),
('35', 'Tell Me This Isn\'t Happening', '1999', '1999-01-01', 108, 154000, 157000, 202, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '035', 'http://images.amazon.com/images/P/0439095026.01.LZZZZZZZ.jpg'),
('36', 'Flood : Mississippi 1927', '1998', '1998-01-01', 354, 459000, 462000, 276, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '036', 'http://images.amazon.com/images/P/0689821166.01.LZZZZZZZ.jpg'),
('37', 'Wild Animus', '2004', '2004-01-01', 310, 400000, 403000, 173, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '037', 'http://images.amazon.com/images/P/0971880107.01.LZZZZZZZ.jpg'),
('38', 'Airframe', '1997', '1997-01-01', 114, 234000, 237000, 182, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '038', 'http://images.amazon.com/images/P/0345402871.01.LZZZZZZZ.jpg'),
('39', 'Timeline', '2000', '2000-01-01', 259, 39000, 42000, 245, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '039', 'http://images.amazon.com/images/P/0345417623.01.LZZZZZZZ.jpg'),
('4', 'Đất Rừng Phương Nam', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x417661696c61626c65, 0, NULL, '001', 'img/Books_Images/Dat_Rung_Phuong_Nam.jpeg'),
('40', 'OUT OF THE SILENT PLANET', '1996', '1996-01-01', 325, 443000, 446000, 208, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '040', 'http://images.amazon.com/images/P/0684823802.01.LZZZZZZZ.jpg'),
('41', 'Prague : A Novel', '2003', '2003-01-01', 157, 167000, 170000, 246, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '041', 'http://images.amazon.com/images/P/0375759778.01.LZZZZZZZ.jpg'),
('42', 'Chocolate Jesus', '1998', '1998-01-01', 449, 491000, 494000, 232, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '042', 'http://images.amazon.com/images/P/0425163091.01.LZZZZZZZ.jpg'),
('43', 'Wie Barney es sieht.', '2002', '2002-01-01', 330, 144000, 147000, 223, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '043', 'http://images.amazon.com/images/P/3404921038.01.LZZZZZZZ.jpg'),
('44', 'Der Fluch der Kaiserin. Ein Richter- Di- Roma', '2001', '2001-01-01', 485, 194000, 197000, 224, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '044', 'http://images.amazon.com/images/P/3442353866.01.LZZZZZZZ.jpg'),
('45', 'Sturmzeit. Roman.', '1991', '1991-01-01', 177, 361000, 364000, 107, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '045', 'http://images.amazon.com/images/P/3442410665.01.LZZZZZZZ.jpg'),
('46', 'Tage der Unschuld.', '2000', '2000-01-01', 417, 137000, 140000, 272, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '046', 'http://images.amazon.com/images/P/3442446937.01.LZZZZZZZ.jpg'),
('47', 'Lying Awake', '2000', '2000-01-01', 373, 191000, 194000, 156, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '047', 'http://images.amazon.com/images/P/0375406328.01.LZZZZZZZ.jpg'),
('48', 'To Kill a Mockingbird', '1988', '1988-01-01', 140, 288000, 291000, 128, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '048', 'http://images.amazon.com/images/P/0446310786.01.LZZZZZZZ.jpg'),
('49', 'Seabiscuit: An American Legend', '2002', '2002-01-01', 355, 143000, 146000, 190, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '049', 'http://images.amazon.com/images/P/0449005615.01.LZZZZZZZ.jpg'),
('5', 'Doraemon', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x417661696c61626c65, 0, NULL, '001', 'img/Books_Images/Doraemon.jpeg'),
('50', 'Pigs in Heaven', '1993', '1993-01-01', 119, 199000, 202000, 274, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '050', 'http://images.amazon.com/images/P/0060168013.01.LZZZZZZZ.jpg'),
('51', 'Miss Zukas and the Raven\'s Dance', '1996', '1996-01-01', 492, 448000, 451000, 131, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '051', 'http://images.amazon.com/images/P/038078243X.01.LZZZZZZZ.jpg'),
('52', 'Pride and Prejudice', '1983', '1983-01-01', 256, 298000, 301000, 285, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '052', 'http://images.amazon.com/images/P/055321215X.01.LZZZZZZZ.jpg'),
('53', 'The Therapeutic Touch: How to Use Your Hands ', '1979', '1979-01-01', 112, 323000, 326000, 256, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '053', 'http://images.amazon.com/images/P/067176537X.01.LZZZZZZZ.jpg'),
('54', 'Downtown', '1995', '1995-01-01', 325, 385000, 388000, 288, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '054', 'http://images.amazon.com/images/P/0061099686.01.LZZZZZZZ.jpg'),
('55', 'Icebound', '2000', '2000-01-01', 314, 44000, 47000, 128, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '055', 'http://images.amazon.com/images/P/0553582909.01.LZZZZZZZ.jpg'),
('56', 'I\'ll Be Seeing You', '1994', '1994-01-01', 327, 52000, 55000, 181, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '056', 'http://images.amazon.com/images/P/0671888587.01.LZZZZZZZ.jpg'),
('57', 'From the Corner of His Eye', '2001', '2001-01-01', 433, 358000, 361000, 252, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '057', 'http://images.amazon.com/images/P/0553582747.01.LZZZZZZZ.jpg'),
('58', 'Isle of Dogs', '2002', '2002-01-01', 436, 166000, 169000, 273, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '058', 'http://images.amazon.com/images/P/0425182908.01.LZZZZZZZ.jpg'),
('59', 'Purity in Death', '2002', '2002-01-01', 211, 57000, 60000, 250, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '059', 'http://images.amazon.com/images/P/042518630X.01.LZZZZZZZ.jpg'),
('6', 'Giải tích 2', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x556e617661696c61626c65, 0, NULL, '001', 'img/Books_Images/GiaiTich2.jpeg'),
('60', 'This Year It Will Be Different: And Other Sto', '1997', '1997-01-01', 413, 88000, 91000, 103, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '060', 'http://images.amazon.com/images/P/0440223571.01.LZZZZZZZ.jpg'),
('61', 'Proxies', '1999', '1999-01-01', 206, 239000, 242000, 256, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '061', 'http://images.amazon.com/images/P/0812523873.01.LZZZZZZZ.jpg'),
('62', 'Left Behind: A Novel of the Earth\'s Last Days', '2000', '2000-01-01', 226, 293000, 296000, 159, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '062', 'http://images.amazon.com/images/P/0842342702.01.LZZZZZZZ.jpg'),
('63', 'The Street Lawyer', '1999', '1999-01-01', 101, 439000, 442000, 124, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '063', 'http://images.amazon.com/images/P/0440225701.01.LZZZZZZZ.jpg'),
('64', 'Love, Medicine and Miracles', '1988', '1988-01-01', 115, 299000, 302000, 122, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '064', 'http://images.amazon.com/images/P/0060914068.01.LZZZZZZZ.jpg'),
('65', 'All the King\'s Men', '1982', '1982-01-01', 269, 361000, 364000, 266, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '065', 'http://images.amazon.com/images/P/0156047624.01.LZZZZZZZ.jpg'),
('66', 'Pacific Northwest', '1985', '1985-01-01', 365, 213000, 216000, 254, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '066', 'http://images.amazon.com/images/P/0245542957.01.LZZZZZZZ.jpg'),
('67', 'A Soldier of the Great War', '1992', '1992-01-01', 424, 322000, 325000, 146, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '067', 'http://images.amazon.com/images/P/0380715899.01.LZZZZZZZ.jpg'),
('68', 'Getting Well Again', '1992', '1992-01-01', 401, 361000, 364000, 263, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '068', 'http://images.amazon.com/images/P/0553280333.01.LZZZZZZZ.jpg'),
('69', 'Northwest Wines and Wineries', '1993', '1993-01-01', 323, 52000, 55000, 143, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '069', 'http://images.amazon.com/images/P/0961769947.01.LZZZZZZZ.jpg'),
('7', 'Giết Con Chim Nhại', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x556e617661696c61626c65, 0, NULL, '001', 'img/Books_Images/GietConChimNhai.png'),
('70', 'An Atmosphere of Eternity: Stories of India', '2002', '2002-01-01', 198, 25000, 28000, 160, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '070', 'http://images.amazon.com/images/P/0964778319.01.LZZZZZZZ.jpg'),
('71', 'LONESOME DOVE', '1986', '1986-01-01', 309, 43000, 46000, 254, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '071', 'http://images.amazon.com/images/P/0671623249.01.LZZZZZZZ.jpg'),
('72', 'Shabanu: Daughter of the Wind (Border Trilogy', '1991', '1991-01-01', 381, 427000, 430000, 109, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '072', 'http://images.amazon.com/images/P/0679810307.01.LZZZZZZZ.jpg'),
('73', 'Haveli (Laurel Leaf Books)', '1995', '1995-01-01', 301, 374000, 377000, 159, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '073', 'http://images.amazon.com/images/P/0679865691.01.LZZZZZZZ.jpg'),
('74', 'Lieux dits', '2002', '2002-01-01', 109, 406000, 409000, 284, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '074', 'http://images.amazon.com/images/P/2070423204.01.LZZZZZZZ.jpg'),
('75', 'The Dragons of Eden: Speculations on the Evol', '1978', '1978-01-01', 379, 185000, 188000, 120, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '075', 'http://images.amazon.com/images/P/0345260317.01.LZZZZZZZ.jpg'),
('76', 'The yawning heights', '1980', '1980-01-01', 377, 382000, 385000, 173, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '076', 'http://images.amazon.com/images/P/0394743741.01.LZZZZZZZ.jpg'),
('77', 'Breathing Lessons', '1994', '1994-01-01', 197, 184000, 187000, 211, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '077', 'http://images.amazon.com/images/P/042511774X.01.LZZZZZZZ.jpg'),
('78', 'The Joy Luck Club', '1994', '1994-01-01', 390, 447000, 450000, 107, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '078', 'http://images.amazon.com/images/P/0804106304.01.LZZZZZZZ.jpg'),
('79', 'Heart of Darkness (Wordsworth Collection)', '1998', '1998-01-01', 102, 36000, 39000, 260, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '079', 'http://images.amazon.com/images/P/1853262404.01.LZZZZZZZ.jpg'),
('8', 'Mắt Biếc', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x556e617661696c61626c65, 0, NULL, '001', 'img/Books_Images/MatBiec.jpeg'),
('80', 'The Angel Is Near', '2000', '2000-01-01', 230, 431000, 434000, 211, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '080', 'http://images.amazon.com/images/P/0312970242.01.LZZZZZZZ.jpg'),
('81', 'Tess of the D\'Urbervilles (Wordsworth Classic', '1997', '1997-01-01', 408, 365000, 368000, 150, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '081', 'http://images.amazon.com/images/P/1853260053.01.LZZZZZZZ.jpg'),
('82', 'The Adventures of Drew and Ellie: The Magical', '2003', '2003-01-01', 198, 95000, 98000, 297, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '082', 'http://images.amazon.com/images/P/1414035004.01.LZZZZZZZ.jpg'),
('83', 'The Accidental Virgin', '2003', '2003-01-01', 328, 365000, 368000, 219, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '083', 'http://images.amazon.com/images/P/0060938412.01.LZZZZZZZ.jpg'),
('84', 'The Tao of Pooh', '1983', '1983-01-01', 125, 82000, 85000, 132, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '084', 'http://images.amazon.com/images/P/0140067477.01.LZZZZZZZ.jpg'),
('85', 'Seabiscuit', '2003', '2003-01-01', 336, 393000, 396000, 298, 0x417661696c61626c65, 0, 'This is a dummy description for testing purposes', '085', 'http://images.amazon.com/images/P/0345465083.01.LZZZZZZZ.jpg'),
('86', 'The Prince', '1952', '1952-01-01', 253, 66000, 69000, 113, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '086', 'http://images.amazon.com/images/P/0451625889.01.LZZZZZZZ.jpg'),
('87', 'Life\'s Little Instruction Book (Life\'s Little', '1991', '1991-01-01', 262, 185000, 188000, 104, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '087', 'http://images.amazon.com/images/P/1558531025.01.LZZZZZZZ.jpg'),
('88', 'Starship Troopers', '1987', '1987-01-01', 429, 478000, 481000, 167, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '088', 'http://images.amazon.com/images/P/0441783589.01.LZZZZZZZ.jpg'),
('89', 'The Ruby in the Smoke (Sally Lockhart Trilogy', '1988', '1988-01-01', 422, 39000, 42000, 136, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '089', 'http://images.amazon.com/images/P/0394895894.01.LZZZZZZZ.jpg'),
('9', 'Thám Tử Lừng Danh Conan', '2017', '2020-01-01', 189, 30000, 41000, 125, 0x556e617661696c61626c65, 0, NULL, '001', 'img/Books_Images/conan.jpeg'),
('90', 'Black Beauty (Illustrated Classics)', '1995', '1995-01-01', 484, 103000, 106000, 165, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '090', 'http://images.amazon.com/images/P/1569871213.01.LZZZZZZZ.jpg'),
('91', 'Anil\'s Ghost', '2000', '2000-01-01', 296, 335000, 338000, 158, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '091', 'http://images.amazon.com/images/P/0375410538.01.LZZZZZZZ.jpg'),
('92', 'Prescription for Terror', '1999', '1999-01-01', 339, 53000, 56000, 177, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '092', 'http://images.amazon.com/images/P/0966986105.01.LZZZZZZZ.jpg'),
('93', 'Modern Manners: An Etiquette Book for Rude Pe', '1990', '1990-01-01', 311, 476000, 479000, 223, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '093', 'http://images.amazon.com/images/P/087113375X.01.LZZZZZZZ.jpg'),
('94', 'Turning Thirty', '2000', '2000-01-01', 123, 493000, 496000, 207, 0x556e617661696c61626c65, 0, 'This is a dummy description for testing purposes', '094', 'http://images.amazon.com/images/P/0340767936.01.LZZZZZZZ.jpg'),
('95', 'Decipher', '2002', '2002-01-01', 112, 337000, 340000, 283, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '095', 'http://images.amazon.com/images/P/0743403843.01.LZZZZZZZ.jpg'),
('96', 'My First Cousin Once Removed: Money, Madness,', '1999', '1999-01-01', 323, 458000, 461000, 195, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '096', 'http://images.amazon.com/images/P/0060930365.01.LZZZZZZZ.jpg'),
('97', 'Standing Firm: A Vice-Presidential Memoir', '1994', '1994-01-01', 99, 159000, 162000, 250, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '097', 'http://images.amazon.com/images/P/0060177586.01.LZZZZZZZ.jpg'),
('98', 'Team Bush : Leadership Lessons from the Bush ', '2003', '2003-01-01', 447, 473000, 476000, 249, 0x417661696c61626c65, 1, 'This is a dummy description for testing purposes', '098', 'http://images.amazon.com/images/P/0071416331.01.LZZZZZZZ.jpg'),
('99', 'The Right Man : The Surprise Presidency of Ge', '2003', '2003-01-01', 227, 234000, 237000, 152, 0x556e617661696c61626c65, 1, 'This is a dummy description for testing purposes', '099', 'http://images.amazon.com/images/P/0375509038.01.LZZZZZZZ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `cart` (`ID`) VALUES
('10010101'),
('10020202'),
('10030303'),
('10040404'),
('10050505'),
('10060606'),
('00000000'),
('10010111'),
('10020222'),
('10030333'),
('10040444'),
('10050555'),
('10060666'),
('10070777'),
('10080888'),
('10090999');


-- --------------------------------------------------------

--
-- Table structure for table `cart_include`
--

CREATE TABLE `cart_include` (
  `ID` varchar(45) NOT NULL,
  `book_ID` varchar(45) NOT NULL,
  `cart_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` varchar(45) NOT NULL,
  `book_ID` varchar(45) NOT NULL,
  `content` longtext DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `address` varchar(255) NOT NULL,
  `ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` varchar(45) NOT NULL,
  `start_date` date DEFAULT NULL,
  `employee_status` varbinary(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `start_date`, `employee_status`) VALUES
('00000001', '2010-01-01', 0x46756c6c2d74696d65);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_ID` varchar(45) NOT NULL,
  `genre_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_ID`, `genre_name`) VALUES
('01', 'Sách giáo khoa - giáo trình'),
('02', 'Truyện cổ tích'),
('03', 'Tiểu thuyết'),
('04', 'Trinh thám');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`) VALUES
('10010101'),
('10020202'),
('10030303'),
('10040404'),
('10050505'),
('10060606'),
('00000000'),
('10010111'),
('10020222'),
('10030333'),
('10040444'),
('10050555'),
('10060666'),
('10070777'),
('10080888'),
('10090999');


-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_ID` varchar(45) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_info` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_ID`, `order_date`, `order_info`) VALUES
('ONL1', '2023-04-07', 'Online, Đã duyệt, Không'),
('ONL10', '2023-07-08', 'Online, Đã duyệt, Không'),
('ONL100', '2023-06-27', 'Online, Đã duyệt, Không'),
('ONL11', '2023-05-09', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL12', '2023-02-08', 'Online, Đã duyệt, Không'),
('ONL13', '2023-06-23', 'Online, Đang chờ duyệt, Không'),
('ONL14', '2023-09-30', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL15', '2023-11-02', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL16', '2023-02-22', 'Online, Đang chờ duyệt, Không'),
('ONL17', '2023-08-09', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL18', '2023-01-24', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL19', '2023-11-26', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL2', '2023-10-04', 'Online, Đã duyệt, Không'),
('ONL20', '2023-08-16', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL21', '2023-12-30', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL22', '2023-03-24', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL23', '2023-08-30', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL24', '2023-09-28', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL25', '2023-12-07', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL26', '2023-08-29', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL27', '2023-02-17', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL28', '2023-05-18', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL29', '2023-09-10', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL3', '2023-11-10', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL30', '2023-06-05', 'Online, Đang chờ duyệt, Không'),
('ONL31', '2023-03-15', 'Online, Đã duyệt, Không'),
('ONL32', '2023-02-09', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL33', '2023-09-21', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL34', '2023-12-27', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL35', '2023-08-01', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL36', '2023-03-21', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL37', '2023-07-01', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL38', '2023-04-13', 'Online, Đang chờ duyệt, Không'),
('ONL39', '2023-08-26', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL4', '2023-11-04', 'Online, Đã duyệt, Không'),
('ONL40', '2023-01-22', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL41', '2023-12-04', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL42', '2023-08-29', 'Online, Đã duyệt, Không'),
('ONL43', '2023-12-17', 'Online, Đang chờ duyệt, Không'),
('ONL44', '2023-08-24', 'Online, Đã duyệt, Không'),
('ONL45', '2023-02-19', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL46', '2023-03-22', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL47', '2023-09-12', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL48', '2023-09-09', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL49', '2023-06-11', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL5', '2023-11-18', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL50', '2023-09-17', 'Online, Đã duyệt, Không'),
('ONL51', '2023-04-06', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL52', '2023-11-30', 'Online, Đang chờ duyệt, Không'),
('ONL53', '2023-10-13', 'Online, Đã duyệt, Không'),
('ONL54', '2023-04-21', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL55', '2023-06-23', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL56', '2023-12-19', 'Online, Đã duyệt, Không'),
('ONL57', '2023-07-19', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL58', '2023-04-07', 'Online, Đã duyệt, Không'),
('ONL59', '2023-07-10', 'Online, Đã duyệt, Không'),
('ONL6', '2023-11-05', 'Online, Đã duyệt, Không'),
('ONL60', '2023-04-25', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL61', '2023-02-25', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL62', '2023-08-25', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL63', '2023-07-15', 'Online, Đã duyệt, Không'),
('ONL64', '2023-06-18', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL65', '2023-12-05', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL66', '2023-06-12', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL67', '2023-06-21', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL68', '2023-08-22', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL69', '2023-10-15', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL7', '2023-02-04', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL70', '2023-09-08', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL71', '2023-10-08', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL72', '2023-05-13', 'Online, Đã duyệt, Không'),
('ONL73', '2023-11-10', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL74', '2023-08-22', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL75', '2023-03-25', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL76', '2023-09-08', 'Online, Đang chờ duyệt, Không'),
('ONL77', '2023-02-19', 'Online, Đang chờ duyệt, Không'),
('ONL78', '2023-06-02', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL79', '2023-08-03', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL8', '2023-04-17', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL80', '2023-05-05', 'Online, Đang chờ duyệt, Không'),
('ONL81', '2023-06-03', 'Online, Đang chờ duyệt, Không'),
('ONL82', '2023-09-21', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL83', '2023-12-21', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL84', '2023-02-15', 'Online, Đang chờ duyệt, Không'),
('ONL85', '2023-06-25', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL86', '2023-04-20', 'Online, Đang chờ duyệt, Không'),
('ONL87', '2023-12-25', 'Online, Đã duyệt, Gọi trước 30p'),
('ONL88', '2023-08-10', 'Online, Đang chờ duyệt, Không'),
('ONL89', '2023-10-04', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL9', '2023-07-28', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL90', '2023-09-12', 'Online, Đang chờ duyệt, Mua nợ 690k'),
('ONL91', '2023-04-15', 'Online, Đang chờ duyệt, Không'),
('ONL92', '2023-05-07', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL93', '2023-04-22', 'Online, Đang chờ duyệt, Không'),
('ONL94', '2023-11-27', 'Online, Đang chờ duyệt, Không'),
('ONL95', '2023-10-04', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL96', '2023-06-20', 'Online, Đang chờ duyệt, Gọi trước 30p'),
('ONL97', '2023-05-20', 'Online, Đã duyệt, Không'),
('ONL98', '2023-05-12', 'Online, Đã duyệt, Mua nợ 690k'),
('ONL99', '2023-09-20', 'Online, Đã duyệt, Không'),
('PCH1', '2023-10-30', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH10', '2023-06-25', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH100', '2023-11-09', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH11', '2023-12-15', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH12', '2023-10-19', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH13', '2023-02-03', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH14', '2023-08-22', 'Đơn nhập hàng, , Không'),
('PCH15', '2023-01-27', 'Đơn nhập hàng, , Không'),
('PCH16', '2023-03-07', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH17', '2023-09-11', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH18', '2023-04-05', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH19', '2023-10-26', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH2', '2023-12-30', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH20', '2023-03-05', 'Đơn nhập hàng, , Không'),
('PCH21', '2023-03-17', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH22', '2023-03-30', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH23', '2023-01-08', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH24', '2023-01-27', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH25', '2023-03-15', 'Đơn nhập hàng, , Không'),
('PCH26', '2023-03-29', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH27', '2023-05-07', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH28', '2023-08-22', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH29', '2023-02-09', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH3', '2023-09-17', 'Đơn nhập hàng, , Không'),
('PCH30', '2023-06-08', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH31', '2023-10-15', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH32', '2023-10-27', 'Đơn nhập hàng, , Không'),
('PCH33', '2023-02-03', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH34', '2023-02-20', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH35', '2023-09-27', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH36', '2023-03-01', 'Đơn nhập hàng, , Không'),
('PCH37', '2023-07-03', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH38', '2023-03-08', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH39', '2023-01-22', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH4', '2023-06-23', 'Đơn nhập hàng, , Không'),
('PCH40', '2023-11-13', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH41', '2023-10-05', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH42', '2023-01-18', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH43', '2023-01-14', 'Đơn nhập hàng, , Không'),
('PCH44', '2023-02-09', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH45', '2023-01-01', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH46', '2023-08-20', 'Đơn nhập hàng, , Không'),
('PCH47', '2023-04-24', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH48', '2023-07-08', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH49', '2023-05-11', 'Đơn nhập hàng, , Không'),
('PCH5', '2023-05-12', 'Đơn nhập hàng, , Không'),
('PCH50', '2023-02-03', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH51', '2023-09-11', 'Đơn nhập hàng, , Không'),
('PCH52', '2023-04-04', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH53', '2023-07-15', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH54', '2023-06-19', 'Đơn nhập hàng, , Không'),
('PCH55', '2023-10-30', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH56', '2023-09-01', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH57', '2023-10-15', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH58', '2023-07-14', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH59', '2023-10-23', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH6', '2023-09-29', 'Đơn nhập hàng, , Không'),
('PCH60', '2023-07-13', 'Đơn nhập hàng, , Không'),
('PCH61', '2023-02-19', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH62', '2023-09-05', 'Đơn nhập hàng, , Không'),
('PCH63', '2023-09-16', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH64', '2023-10-11', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH65', '2023-09-16', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH66', '2023-02-28', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH67', '2023-07-30', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH68', '2023-07-13', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH69', '2023-06-27', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH7', '2023-11-24', 'Đơn nhập hàng, , Không'),
('PCH70', '2023-02-11', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH71', '2023-08-26', 'Đơn nhập hàng, , Không'),
('PCH72', '2023-09-16', 'Đơn nhập hàng, , Không'),
('PCH73', '2023-04-20', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH74', '2023-02-11', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH75', '2023-08-16', 'Đơn nhập hàng, , Không'),
('PCH76', '2023-02-07', 'Đơn nhập hàng, , Không'),
('PCH77', '2023-02-06', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH78', '2023-02-19', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH79', '2023-10-24', 'Đơn nhập hàng, , Không'),
('PCH8', '2023-03-17', 'Đơn nhập hàng, , Không'),
('PCH80', '2023-07-02', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH81', '2023-09-17', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH82', '2023-05-11', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH83', '2023-03-09', 'Đơn nhập hàng, , Không'),
('PCH84', '2023-12-23', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH85', '2023-01-07', 'Đơn nhập hàng, , Không'),
('PCH86', '2023-04-06', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH87', '2023-09-14', 'Đơn nhập hàng, , Không'),
('PCH88', '2023-02-18', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH89', '2023-03-10', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH9', '2023-02-07', 'Đơn nhập hàng, , Mua nợ 690k'),
('PCH90', '2023-08-20', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH91', '2023-06-30', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH92', '2023-07-05', 'Đơn nhập hàng, , Không'),
('PCH93', '2023-01-18', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH94', '2023-05-28', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH95', '2023-06-12', 'Đơn nhập hàng, , Không'),
('PCH96', '2023-09-06', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH97', '2023-01-19', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH98', '2023-07-15', 'Đơn nhập hàng, , Gọi trước 30p'),
('PCH99', '2023-11-03', 'Đơn nhập hàng, , Gọi trước 30p'),
('STO1', '2023-06-30', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO10', '2023-01-10', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO100', '2023-06-12', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO11', '2023-08-25', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO12', '2023-04-16', 'Mua tại store, Đã duyệt, Không'),
('STO13', '2023-04-16', 'Mua tại store, Đã duyệt, Không'),
('STO14', '2023-08-13', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO15', '2023-03-15', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO16', '2023-10-23', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO17', '2023-10-17', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO18', '2023-11-25', 'Mua tại store, Đã duyệt, Không'),
('STO19', '2023-03-24', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO2', '2023-01-03', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO20', '2023-10-02', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO21', '2023-04-14', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO22', '2023-04-01', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO23', '2023-04-03', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO24', '2023-07-18', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO25', '2023-12-19', 'Mua tại store, Đã duyệt, Không'),
('STO26', '2023-12-05', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO27', '2023-04-13', 'Mua tại store, Đã duyệt, Không'),
('STO28', '2023-04-11', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO29', '2023-03-07', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO3', '2023-08-28', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO30', '2023-07-08', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO31', '2023-02-19', 'Mua tại store, Đã duyệt, Không'),
('STO32', '2023-06-04', 'Mua tại store, Đã duyệt, Không'),
('STO33', '2023-09-05', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO34', '2023-07-25', 'Mua tại store, Đã duyệt, Không'),
('STO35', '2023-12-28', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO36', '2023-11-25', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO37', '2023-08-13', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO38', '2023-05-07', 'Mua tại store, Đã duyệt, Không'),
('STO39', '2023-04-05', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO4', '2023-02-21', 'Mua tại store, Đã duyệt, Không'),
('STO40', '2023-03-26', 'Mua tại store, Đã duyệt, Không'),
('STO41', '2023-04-28', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO42', '2023-04-18', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO43', '2023-10-13', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO44', '2023-10-23', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO45', '2023-01-11', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO46', '2023-10-20', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO47', '2023-06-04', 'Mua tại store, Đã duyệt, Không'),
('STO48', '2023-02-08', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO49', '2023-12-26', 'Mua tại store, Đã duyệt, Không'),
('STO5', '2023-05-06', 'Mua tại store, Đã duyệt, Không'),
('STO50', '2023-04-28', 'Mua tại store, Đã duyệt, Không'),
('STO51', '2023-08-29', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO52', '2023-05-17', 'Mua tại store, Đã duyệt, Không'),
('STO53', '2023-02-08', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO54', '2023-04-22', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO55', '2023-04-07', 'Mua tại store, Đã duyệt, Không'),
('STO56', '2023-10-07', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO57', '2023-09-16', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO58', '2023-08-17', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO59', '2023-11-14', 'Mua tại store, Đã duyệt, Không'),
('STO6', '2023-12-20', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO60', '2023-01-18', 'Mua tại store, Đã duyệt, Không'),
('STO61', '2023-03-11', 'Mua tại store, Đã duyệt, Không'),
('STO62', '2023-03-09', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO63', '2023-04-02', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO64', '2023-01-28', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO65', '2023-03-29', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO66', '2023-02-25', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO67', '2023-11-16', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO68', '2023-05-15', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO69', '2023-01-03', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO7', '2023-05-30', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO70', '2023-07-01', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO71', '2023-03-20', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO72', '2023-02-25', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO73', '2023-07-02', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO74', '2023-05-24', 'Mua tại store, Đã duyệt, Không'),
('STO75', '2023-07-03', 'Mua tại store, Đã duyệt, Không'),
('STO76', '2023-08-23', 'Mua tại store, Đã duyệt, Không'),
('STO77', '2023-03-05', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO78', '2023-04-20', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO79', '2023-12-17', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO8', '2023-04-16', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO80', '2023-01-20', 'Mua tại store, Đã duyệt, Không'),
('STO81', '2023-11-18', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO82', '2023-09-24', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO83', '2023-12-08', 'Mua tại store, Đã duyệt, Không'),
('STO84', '2023-12-08', 'Mua tại store, Đã duyệt, Không'),
('STO85', '2023-08-08', 'Mua tại store, Đã duyệt, Không'),
('STO86', '2023-01-26', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO87', '2023-04-09', 'Mua tại store, Đã duyệt, Không'),
('STO88', '2023-05-07', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO89', '2023-08-01', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO9', '2023-08-08', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO90', '2023-10-21', 'Mua tại store, Đã duyệt, Không'),
('STO91', '2023-02-21', 'Mua tại store, Đã duyệt, Không'),
('STO92', '2023-06-24', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO93', '2023-11-12', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO94', '2023-04-18', 'Mua tại store, Đã duyệt, Không'),
('STO95', '2023-09-06', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO96', '2023-01-02', 'Mua tại store, Đã duyệt, Gọi trước 30p'),
('STO97', '2023-09-04', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO98', '2023-10-09', 'Mua tại store, Đã duyệt, Mua nợ 690k'),
('STO99', '2023-10-24', 'Mua tại store, Đã duyệt, Không');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_ID` varchar(45) NOT NULL,
  `publisher_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

-- SQL script for inserting publisher
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("001", "NXB Giáo dục Việt Nam");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("011", "Oxford University Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("012", "HarperFlamingo Canada");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("013", "HarperPerennial");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("014", "Farrar Straus Giroux");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("015", "W. W. Norton &amp, Company");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("016", "Putnam Pub Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("017", "Berkley Publishing Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("018", "Audioworks");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("019", "Random House");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("020", "Scribner");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("021", "Emblem Editions");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("022", "Citadel Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("023", "House of Anansi Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("024", "Mira Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("025", "Health Communications");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("026", "Brilliance Audio - Trade");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("027", "Kensington Publishing Corp.");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("028", "River City Pub");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("029", "Dell");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("030", "Plume");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("031", "Three Rivers Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("032", "Ryland Peters &amp, Small Ltd");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("033", "Cypress House");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("034", "HarperEntertainment");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("035", "Scholastic");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("036", "Aladdin");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("037", "Too Far");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("038", "Ballantine Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("039", "Ballantine Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("040", "Scribner");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("041", "Random House Trade Paperbacks");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("042", "Berkley Publishing Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("043", "L�?¼bbe");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("044", "Goldmann");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("045", "Goldmann");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("046", "Goldmann");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("047", "Alfred A. Knopf");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("048", "Little Brown &amp, Company");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("049", "Ballantine Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("050", "Harpercollins");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("051", "Avon");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("052", "Bantam");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("053", "Fireside");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("054", "HarperTorch");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("055", "Bantam Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("056", "Pocket");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("057", "Bantam Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("058", "Berkley Publishing Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("059", "Berkley Publishing Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("060", "Dell");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("061", "Tor Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("062", "Tyndale House Publishers");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("063", "Dell");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("064", "HarperCollins Publishers");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("065", "Harvest Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("066", "Chambers Harrap Publishers Ltd");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("067", "Avon Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("068", "Bantam");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("069", "Speed Graphics");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("070", "Sunflower Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("071", "Pocket");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("072", "Laurel Leaf");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("073", "Laurel Leaf");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("074", "Gallimard");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("075", "Ballantine Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("076", "Random House");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("077", "Berkley Publishing Group");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("078", "Prentice Hall (K-12)");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("079", "NTC/Contemporary Publishing Company");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("080", "St. Martin's Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("081", "NTC/Contemporary Publishing Company");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("082", "1stBooks Library");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("083", "Avon Trade");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("084", "Penguin Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("085", "Ballantine Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("086", "Signet Book");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("087", "Thomas Nelson");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("088", "Ace Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("089", "Laurel Leaf");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("090", "Landoll");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("091", "Knopf");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("092", "Andrew Scott Publishers");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("093", "Atlantic Monthly Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("094", "Hodder &amp, Stoughton General Division");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("095", "Simon &amp, Schuster (Trade Division)");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("096", "Perennial");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("097", "Harpercollins");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("098", "McGraw-Hill");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("099", "Random House");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("100", "Bantam Doubleday Dell");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("101", "Little, Brown");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("102", "Minotauro");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("103", "Minotauro");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("104", "Distribooks");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("105", "Random House");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("106", "Pocket");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("107", "St. Martin's Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("108", "St. Martin's Press");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("109", "Back Bay Books");
INSERT INTO `publisher` (`publisher_ID`, `publisher_name`) VALUES ("110", "Back Bay Books");

-- --------------------------------------------------------

--
-- Table structure for table `purchase_include`
--

CREATE TABLE `purchase_include` (
  `purchase_ID` varchar(45) NOT NULL,
  `book_ID` varchar(45) NOT NULL,
  `purchase_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_include`
--

INSERT INTO `purchase_include` (`purchase_ID`, `book_ID`, `purchase_quantity`) VALUES
('PCH100', '41', 189),
('PCH11', '106', 66),
('PCH11', '92', 122),
('PCH11', '95', 112),
('PCH13', '35', 156),
('PCH14', '102', 143),
('PCH14', '110', 180),
('PCH14', '14', 155),
('PCH14', '37', 140),
('PCH15', '25', 185),
('PCH16', '59', 193),
('PCH17', '60', 62),
('PCH18', '53', 71),
('PCH19', '18', 160),
('PCH20', '107', 137),
('PCH21', '97', 176),
('PCH22', '75', 164),
('PCH23', '101', 140),
('PCH23', '73', 171),
('PCH25', '54', 112),
('PCH26', '106', 191),
('PCH26', '28', 147),
('PCH28', '66', 120),
('PCH28', '88', 182),
('PCH28', '98', 182),
('PCH29', '28', 135),
('PCH31', '56', 180),
('PCH32', '3', 129),
('PCH33', '95', 56),
('PCH35', '77', 101),
('PCH37', '59', 162),
('PCH37', '6', 83),
('PCH39', '41', 171),
('PCH39', '78', 139),
('PCH4', '2', 193),
('PCH4', '62', 197),
('PCH41', '55', 77),
('PCH42', '12', 102),
('PCH44', '103', 180),
('PCH45', '59', 60),
('PCH47', '92', 165),
('PCH48', '106', 140),
('PCH5', '12', 107),
('PCH5', '70', 148),
('PCH5', '95', 110),
('PCH50', '101', 101),
('PCH50', '72', 58),
('PCH52', '106', 97),
('PCH52', '107', 82),
('PCH52', '17', 110),
('PCH52', '31', 96),
('PCH53', '26', 149),
('PCH54', '101', 99),
('PCH54', '67', 151),
('PCH55', '62', 154),
('PCH55', '71', 154),
('PCH56', '104', 79),
('PCH57', '14', 127),
('PCH57', '16', 185),
('PCH57', '20', 171),
('PCH58', '43', 148),
('PCH59', '13', 94),
('PCH59', '20', 51),
('PCH63', '104', 128),
('PCH64', '103', 94),
('PCH64', '41', 65),
('PCH64', '6', 152),
('PCH65', '63', 181),
('PCH65', '76', 156),
('PCH66', '6', 154),
('PCH66', '89', 112),
('PCH66', '99', 114),
('PCH67', '44', 93),
('PCH68', '59', 142),
('PCH68', '87', 146),
('PCH69', '3', 139),
('PCH7', '109', 90),
('PCH7', '3', 127),
('PCH7', '36', 90),
('PCH7', '7', 169),
('PCH70', '25', 114),
('PCH70', '98', 105),
('PCH71', '108', 98),
('PCH71', '33', 193),
('PCH76', '100', 182),
('PCH77', '36', 130),
('PCH81', '44', 78),
('PCH81', '52', 141),
('PCH81', '84', 74),
('PCH82', '28', 63),
('PCH87', '79', 109),
('PCH89', '25', 137),
('PCH89', '49', 185),
('PCH9', '107', 160),
('PCH91', '63', 97),
('PCH92', '41', 60),
('PCH93', '51', 189),
('PCH95', '59', 71),
('PCH96', '41', 162),
('PCH99', '38', 52);

--
-- Triggers `purchase_include`
--
DELIMITER $$
CREATE TRIGGER `update_remaining_quantity_purchase` AFTER INSERT ON `purchase_include` FOR EACH ROW BEGIN
    DECLARE remaining_qty INT;

    -- Get the current remaining_quantity for the corresponding book_ID
    SELECT remaining_quantity INTO remaining_qty
    FROM book
    WHERE book_ID = NEW.book_ID;

    -- Update the remaining_quantity in the book table
    UPDATE book
    SET remaining_quantity = remaining_qty + NEW.purchase_quantity
    WHERE book_ID = NEW.book_ID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_ID` varchar(45) NOT NULL,
  `employee_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_ID`, `employee_ID`) VALUES
('PCH1', '00000001'),
('PCH10', '00000001'),
('PCH100', '00000001'),
('PCH13', '00000001'),
('PCH40', '00000001'),
('PCH43', '00000001'),
('PCH7', '00000001'),
('PCH9', '00000001'),
('PCH92', '00000001'),
('PCH11', '00000001'),
('PCH12', '00000001'),
('PCH14', '00000001'),
('PCH33', '00000001'),
('PCH52', '00000001'),
('PCH56', '00000001'),
('PCH64', '00000001'),
('PCH78', '00000001'),
('PCH80', '00000001'),
('PCH81', '00000001'),
('PCH83', '00000001'),
('PCH87', '00000001'),
('PCH90', '00000001'),
('PCH15', '00000001'),
('PCH18', '00000001'),
('PCH34', '00000001'),
('PCH35', '00000001'),
('PCH36', '00000001'),
('PCH42', '00000001'),
('PCH44', '00000001'),
('PCH48', '00000001'),
('PCH62', '00000001'),
('PCH68', '00000001'),
('PCH79', '00000001'),
('PCH91', '00000001'),
('PCH16', '00000001'),
('PCH19', '00000001'),
('PCH21', '00000001'),
('PCH22', '00000001'),
('PCH32', '00000001'),
('PCH4', '00000001'),
('PCH46', '00000001'),
('PCH55', '00000001'),
('PCH58', '00000001'),
('PCH59', '00000001'),
('PCH69', '00000001'),
('PCH75', '00000001'),
('PCH77', '00000001'),
('PCH8', '00000001'),
('PCH17', '00000001'),
('PCH20', '00000001'),
('PCH30', '00000001'),
('PCH38', '00000001'),
('PCH39', '00000001'),
('PCH5', '00000001'),
('PCH50', '00000001'),
('PCH63', '00000001'),
('PCH65', '00000001'),
('PCH73', '00000001'),
('PCH74', '00000001'),
('PCH86', '00000001'),
('PCH93', '00000001'),
('PCH2', '00000001'),
('PCH23', '00000001'),
('PCH29', '00000001'),
('PCH3', '00000001'),
('PCH47', '00000001'),
('PCH49', '00000001'),
('PCH6', '00000001'),
('PCH61', '00000001'),
('PCH66', '00000001'),
('PCH67', '00000001'),
('PCH70', '00000001'),
('PCH71', '00000001'),
('PCH82', '00000001'),
('PCH88', '00000001'),
('PCH89', '00000001'),
('PCH94', '00000001'),
('PCH95', '00000001'),
('PCH96', '00000001'),
('PCH97', '00000001'),
('PCH24', '00000001'),
('PCH25', '00000001'),
('PCH27', '00000001'),
('PCH41', '00000001'),
('PCH51', '00000001'),
('PCH53', '00000001'),
('PCH54', '00000001'),
('PCH72', '00000001'),
('PCH99', '00000001'),
('PCH26', '00000001'),
('PCH28', '00000001'),
('PCH31', '00000001'),
('PCH45', '00000001'),
('PCH57', '00000001'),
('PCH76', '00000001'),
('PCH84', '00000001'),
('PCH85', '00000001'),
('PCH98', '00000001'),
('PCH37', '00000001');

-- --------------------------------------------------------

--
-- Table structure for table `sale_include`
--

CREATE TABLE `sale_include` (
  `sale_ID` varchar(45) NOT NULL,
  `book_ID` varchar(45) NOT NULL,
  `sale_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_include`
--

INSERT INTO `sale_include` (`sale_ID`, `book_ID`, `sale_quantity`) VALUES
('ONL13', '60', 56),
('ONL13', '99', 73),
('ONL17', '97', 68),
('ONL18', '44', 104),
('ONL19', '66', 168),
('ONL2', '30', 138),
('ONL23', '42', 198),
('ONL24', '14', 71),
('ONL24', '90', 135),
('ONL3', '106', 80),
('ONL31', '15', 152),
('ONL33', '39', 165),
('ONL34', '56', 86),
('ONL36', '21', 158),
('ONL4', '61', 185),
('ONL41', '52', 193),
('ONL42', '97', 127),
('ONL43', '56', 133),
('ONL45', '103', 102),
('ONL49', '92', 166),
('ONL50', '5', 126),
('ONL51', '92', 76),
('ONL59', '109', 157),
('ONL6', '90', 148),
('ONL63', '106', 84),
('ONL64', '6', 129),
('ONL65', '95', 175),
('ONL66', '8', 74),
('ONL68', '25', 57),
('ONL69', '20', 193),
('ONL73', '63', 54),
('ONL74', '19', 119),
('ONL74', '4', 52),
('ONL78', '72', 187),
('ONL82', '76', 108),
('ONL83', '76', 92),
('ONL9', '8', 97),
('ONL9', '89', 141),
('ONL91', '39', 74),
('ONL91', '45', 72),
('ONL93', '62', 177),
('ONL95', '87', 82),
('ONL99', '102', 51),
('ONL100', '102', 1),
('ONL11', '3', 4),
('ONL14', '3', 4),
('ONL21', '3', 4),
('ONL22', '31', 1),
('STO1', '99', 105),
('STO100', '97', 89),
('STO11', '31', 197),
('STO11', '89', 95),
('STO12', '2', 71),
('STO14', '107', 117),
('STO21', '101', 125),
('STO21', '2', 142),
('STO23', '79', 107),
('STO27', '93', 178),
('STO31', '109', 146),
('STO33', '68', 128),
('STO34', '48', 117),
('STO37', '104', 183),
('STO39', '35', 192),
('STO4', '109', 170),
('STO42', '4', 156),
('STO43', '99', 176),
('STO44', '92', 200),
('STO45', '58', 80),
('STO48', '59', 180),
('STO49', '51', 133),
('STO49', '52', 86),
('STO51', '60', 81),
('STO52', '60', 177),
('STO54', '65', 58),
('STO54', '71', 64),
('STO55', '11', 98),
('STO56', '29', 154),
('STO56', '65', 190),
('STO63', '106', 122),
('STO64', '48', 66),
('STO65', '21', 193),
('STO68', '104', 66),
('STO72', '14', 136),
('STO73', '65', 81),
('STO73', '73', 77),
('STO78', '14', 184),
('STO78', '15', 85),
('STO79', '34', 137),
('STO79', '72', 195),
('STO8', '16', 62),
('STO81', '78', 78),
('STO83', '71', 80),
('STO83', '88', 114),
('STO83', '94', 63),
('STO84', '21', 143),
('STO85', '53', 139),
('STO86', '85', 145),
('STO87', '76', 127),
('STO87', '96', 142),
('STO9', '69', 167),
('STO9', '71', 123),
('STO92', '94', 158),
('STO93', '47', 83),
('STO98', '75', 54);

--
-- Triggers `sale_include`
--
DELIMITER $$
CREATE TRIGGER `update_remaining_quantity` AFTER INSERT ON `sale_include` FOR EACH ROW BEGIN
    DECLARE remaining_qty INT;

    -- Get the current remaining_quantity for the corresponding book_ID
    SELECT remaining_quantity INTO remaining_qty
    FROM book
    WHERE book_ID = NEW.book_ID;

    -- Update the remaining_quantity in the book table
    UPDATE book
    SET remaining_quantity = remaining_qty - NEW.sale_quantity
    WHERE book_ID = NEW.book_ID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_order`
--

CREATE TABLE `sale_order` (
  `sale_ID` varchar(45) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_address` longtext DEFAULT NULL,
  `payment_status` varbinary(45) DEFAULT NULL,
  `member_ID` varchar(45) NOT NULL,
  `employee_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_order`
--

-- INSERT INTO `sale_order` (`sale_ID`, `delivery_date`, `delivery_address`, `payment_status`, `member_ID`, `employee_ID`) VALUES
-- ('ONL100', '2023-09-21', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20010101'),
-- ('ONL11', '2023-02-04', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20020202'),
-- ('ONL13', '2023-05-24', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20030303'),
-- ('ONL14', '2023-10-27', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20030303'),
-- ('ONL16', '2023-07-07', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('ONL17', '2023-08-09', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('ONL18', '2023-10-28', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20040404'),
-- ('ONL19', '2023-11-26', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20040404'),
-- ('ONL2', '2023-09-26', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20060606'),
-- ('ONL21', '2023-06-27', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20020202'),
-- ('ONL22', '2023-01-27', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20010101'),
-- ('ONL26', '2023-09-26', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20050505'),
-- ('ONL27', '2023-01-17', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20020202'),
-- ('ONL29', '2023-11-23', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20010101'),
-- ('ONL30', '2023-06-18', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20010101'),
-- ('ONL31', '2023-04-25', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20010101'),
-- ('ONL33', '2023-12-25', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20040404'),
-- ('ONL34', '2023-10-27', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20080808'),
-- ('ONL35', '2023-04-09', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20030303'),
-- ('ONL36', '2023-07-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('ONL37', '2023-02-01', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20020202'),
-- ('ONL39', '2023-09-18', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20060606'),
-- ('ONL42', '2023-09-22', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20070707'),
-- ('ONL43', '2023-10-11', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20050505'),
-- ('ONL44', '2023-12-04', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20080808'),
-- ('ONL46', '2023-03-01', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20020202'),
-- ('ONL49', '2023-08-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20020202'),
-- ('ONL50', '2023-11-02', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20020202'),
-- ('ONL51', '2023-06-10', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20040404'),
-- ('ONL52', '2023-09-19', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20020202'),
-- ('ONL55', '2023-05-16', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20070707'),
-- ('ONL59', '2023-03-25', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20080808'),
-- ('ONL61', '2023-05-17', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20050505'),
-- ('ONL69', '2023-01-14', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20010101'),
-- ('ONL8', '2023-07-02', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('ONL81', '2023-09-05', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20040404'),
-- ('ONL89', '2023-06-20', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('ONL92', '2023-02-18', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20050505'),
-- ('ONL93', '2023-06-05', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('ONL94', '2023-06-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20040404'),
-- ('ONL95', '2023-12-11', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20040404'),
-- ('ONL96', '2023-12-05', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20060606'),
-- ('ONL99', '2023-08-26', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20040404'),
-- ('STO10', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20080808'),
-- ('STO100', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20050505'),
-- ('STO14', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20060606'),
-- ('STO15', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20020202'),
-- ('STO16', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20050505'),
-- ('STO17', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20060606'),
-- ('STO20', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20060606'),
-- ('STO24', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO25', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20070707'),
-- ('STO26', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20020202'),
-- ('STO3', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO30', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO34', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20050505'),
-- ('STO35', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20060606'),
-- ('STO37', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20050505'),
-- ('STO38', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('STO39', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20040404'),
-- ('STO4', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20060606'),
-- ('STO40', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO48', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO5', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20030303'),
-- ('STO53', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20020202'),
-- ('STO55', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20020202'),
-- ('STO56', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20060606'),
-- ('STO57', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20080808'),
-- ('STO58', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20010101'),
-- ('STO60', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO61', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO63', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20030303'),
-- ('STO69', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20020202'),
-- ('STO7', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20050505'),
-- ('STO70', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20050505'),
-- ('STO72', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '20030303'),
-- ('STO74', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20010101'),
-- ('STO75', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20040404'),
-- ('STO77', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20060606'),
-- ('STO79', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20020202'),
-- ('STO8', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20060606'),
-- ('STO82', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20020202'),
-- ('STO85', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '20080808'),
-- ('STO89', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '20070707'),
-- ('STO90', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '20080808'),
-- ('STO93', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20070707'),
-- ('STO95', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '20010101');

INSERT INTO `sale_order` (`sale_ID`, `delivery_date`, `delivery_address`, `payment_status`, `member_ID`, `employee_ID`) VALUES
('ONL100', '2023-09-21', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL11', '2023-02-04', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL13', '2023-05-24', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL14', '2023-10-27', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL16', '2023-07-07', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL17', '2023-08-09', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL18', '2023-10-28', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL19', '2023-11-26', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL2', '2023-09-26', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL21', '2023-06-27', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL22', '2023-01-27', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL26', '2023-09-26', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL27', '2023-01-17', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL29', '2023-11-23', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL30', '2023-06-18', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL31', '2023-04-25', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL33', '2023-12-25', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL34', '2023-10-27', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL35', '2023-04-09', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL36', '2023-07-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL37', '2023-02-01', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL39', '2023-09-18', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL42', '2023-09-22', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL43', '2023-10-11', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL44', '2023-12-04', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL46', '2023-03-01', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('ONL49', '2023-08-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL50', '2023-11-02', 'Dĩ An, Bình Dương', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL51', '2023-06-10', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL52', '2023-09-19', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL55', '2023-05-16', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL59', '2023-03-25', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL61', '2023-05-17', 'Thiên đình', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('ONL69', '2023-01-14', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL8', '2023-07-02', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL81', '2023-09-05', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL89', '2023-06-20', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL92', '2023-02-18', 'Nhà trắng', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL93', '2023-06-05', 'Paris', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL94', '2023-06-28', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('ONL95', '2023-12-11', 'Moscow', 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('ONL96', '2023-12-05', 'KTX Khu A', 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('ONL99', '2023-08-26', '268 Lý Thường Kiệt', 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('STO10', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('STO100', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('STO14', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO15', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO16', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO17', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO20', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO24', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO25', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO26', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO3', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO30', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO34', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO35', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO37', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO38', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO39', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO4', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO40', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO48', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO5', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO53', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('STO55', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO56', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO57', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO58', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO60', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO61', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO63', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO69', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO7', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO70', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('STO72', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10030303', '00000001'),
('STO74', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO75', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('STO77', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO79', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO8', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO82', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO85', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10050505', '00000001'),
('STO89', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10010101', '00000001'),
('STO90', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10040404', '00000001'),
('STO93', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001'),
('STO95', NULL, NULL, 0xc490c3a3207468616e6820746fc3a16e, '10020202', '00000001');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--
CREATE TABLE `user` (
  `ID` varchar(45) NOT NULL,
  `sur_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_num` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_info` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `sur_name`, `last_name`, `phone_num`, `email`, `username`, `password`, `user_info`) VALUES
('10010101', 'Trần Nguyễn Nam', 'Anh', '0765710073', 'sallytran2809@gmail.com', 'na', 'na2809', 'TNNA is a test user'),
('10020202', 'Trần Đông', 'Nhi', '0782341526', 'dongnhimehat@gmail.com', 'nhi', 'nhinhinhanh', 'TĐN is a test user'),
('10030303', 'Nguyễn Ngọc Bảo', 'Châu', '0913667729', 'bouchou@gmail.com', 'chou', 'bouchou', 'NNBC is a test user'),
('10040404', 'Đỗ Ngọc', 'Ánh', '0918511314', 'dna3@gmail.com', 'dna', 'dnadna', 'ĐNA is a test user'),
('10050505', 'Linh Ngọc Thùy', 'Ngân', '0938271688', 'bow@gmail.com', 'bowne', 'ngankhung', 'LNTN is a test user'),
('10060606', 'Phan Trần Minh', 'Đat', '0900000000', 'datholuon@gmail.com', 'minhdat', 'luonleo', 'PTMĐ is a test user'),
('10010111', 'Nguyen Van', 'A', '0901010101', 'test1@gmail.com', 'test1', 'test1', 'Nguyen Van A is a test user'),
('10020222', 'Nguyen Thi', 'A', '0902020202', 'test2@gmail.com', 'test2', 'test2', 'Nguyen Thi A is a test user'),
('10030333', 'Nguyen Thi', 'B', '0903030303', 'test3@gmail.com', 'test3', 'test3', 'Nguyen Thi B is a test user'),
('10040444', 'Le Van', 'C', '0904040404', 'test4@gmail.com', 'test4', 'test4', 'Le Van C is a test user'),
('10050555', 'Le Thi', 'D', '0905050505', 'test5@gmail.com', 'test5', 'test5', 'Le Thi D is a test user'),
('10060666', 'Dao Van', 'E', '0906060606', 'test6@gmail.com', 'test6', 'test6', 'Dao Van E is a test user'),
('10070777', 'Dao Thi', 'F', '0907070707', 'test7@gmail.com', 'test7', 'test7', 'Dao Thi F is a test user'),
('10080888', 'Tran Van', 'G', '0908080808', 'test8@gmail.com', 'test8', 'test8', 'Tran Van G is a test user'),
('10090999', 'Tran Thi', 'H', '0909090909', 'test9@gmail.com', 'test9', 'test9', 'Tran Thi H is a test user'),
('00000001', '', 'Admin', '', '', 'admin', 'admin', 'admin is an admin'),
('00000000', 'Khách ', 'vãn lai', '00000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `written_by`
--

CREATE TABLE `written_by` (
  `book_ID` varchar(45) NOT NULL,
  `author_ID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `written_by`
--
-- SQL script for inserting written_by
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("1", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("2", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("3", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("4", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("5", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("6", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("7", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("8", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("9", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("10", "01");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("11", "11");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("12", "12");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("13", "13");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("14", "14");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("15", "15");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("16", "16");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("17", "17");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("18", "18");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("19", "19");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("20", "20");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("21", "21");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("22", "22");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("23", "23");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("24", "24");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("25", "25");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("26", "26");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("27", "27");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("28", "28");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("29", "29");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("30", "30");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("31", "31");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("32", "32");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("33", "33");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("34", "34");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("35", "35");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("36", "36");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("37", "37");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("38", "38");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("39", "39");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("40", "40");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("41", "41");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("42", "42");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("43", "43");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("44", "44");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("45", "45");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("46", "46");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("47", "47");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("48", "48");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("49", "49");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("50", "50");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("51", "51");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("52", "52");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("53", "53");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("54", "54");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("55", "55");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("56", "56");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("57", "57");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("58", "58");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("59", "59");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("60", "60");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("61", "61");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("62", "62");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("63", "63");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("64", "64");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("65", "65");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("66", "66");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("67", "67");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("68", "68");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("69", "69");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("70", "70");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("71", "71");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("72", "72");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("73", "73");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("74", "74");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("75", "75");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("76", "76");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("77", "77");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("78", "78");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("79", "79");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("80", "80");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("81", "81");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("82", "82");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("83", "83");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("84", "84");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("85", "85");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("86", "86");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("87", "87");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("88", "88");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("89", "89");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("90", "90");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("91", "91");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("92", "92");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("93", "93");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("94", "94");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("95", "95");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("96", "96");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("97", "97");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("98", "98");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("99", "99");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("100", "100");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("101", "101");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("102", "102");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("103", "103");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("104", "104");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("105", "105");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("106", "106");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("107", "107");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("108", "108");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("109", "109");
INSERT INTO `written_by` (`book_ID`, `author_ID`) VALUES ("110", "110");

--
-- Indexes for dumped tables
--
SET foreign_key_checks=0;
--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_ID`);

--
-- Indexes for table `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD PRIMARY KEY (`book_ID`,`genre_ID`),
  ADD KEY `FK_1` (`book_ID`),
  ADD KEY `FK_2` (`genre_ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_ID`),
  ADD KEY `FK_1` (`publisher_ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_1` (`ID`);

--
-- Indexes for table `cart_include`
--
ALTER TABLE `cart_include`
  ADD PRIMARY KEY (`ID`,`book_ID`),
  ADD KEY `FK_1` (`ID`),
  ADD KEY `FK_2` (`book_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`,`book_ID`),
  ADD KEY `FK_1` (`ID`),
  ADD KEY `FK_2` (`book_ID`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`address`,`ID`),
  ADD KEY `FK_1` (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_1` (`ID`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_1` (`ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_ID`);

--
-- Indexes for table `purchase_include`
--
ALTER TABLE `purchase_include`
  ADD PRIMARY KEY (`purchase_ID`,`book_ID`),
  ADD KEY `FK_1` (`purchase_ID`),
  ADD KEY `FK_2` (`book_ID`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_ID`),
  ADD KEY `FK_1` (`purchase_ID`),
  ADD KEY `FK_2` (`employee_ID`);

--
-- Indexes for table `sale_include`
--
ALTER TABLE `sale_include`
  ADD PRIMARY KEY (`sale_ID`,`book_ID`),
  ADD KEY `FK_1` (`sale_ID`),
  ADD KEY `FK_2` (`book_ID`);

--
-- Indexes for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`sale_ID`),
  ADD KEY `FK_1` (`sale_ID`),
  ADD KEY `FK_2` (`member_ID`),
  ADD KEY `FK_3` (`employee_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `written_by`
--
ALTER TABLE `written_by`
  ADD PRIMARY KEY (`book_ID`,`author_ID`),
  ADD KEY `FK_1` (`book_ID`),
  ADD KEY `FK_2` (`author_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD CONSTRAINT `FK_15` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`),
  ADD CONSTRAINT `FK_16` FOREIGN KEY (`genre_ID`) REFERENCES `genre` (`genre_ID`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_19` FOREIGN KEY (`publisher_ID`) REFERENCES `publisher` (`publisher_ID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_4` FOREIGN KEY (`ID`) REFERENCES `member` (`ID`);

--
-- Constraints for table `cart_include`
--
ALTER TABLE `cart_include`
  ADD CONSTRAINT `FK_11` FOREIGN KEY (`ID`) REFERENCES `cart` (`ID`),
  ADD CONSTRAINT `FK_14` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_21` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`),
  ADD CONSTRAINT `FK_22` FOREIGN KEY (`ID`) REFERENCES `member` (`ID`);

--
-- Constraints for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD CONSTRAINT `FK_3` FOREIGN KEY (`ID`) REFERENCES `member` (`ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `FK_2` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `purchase_include`
--
ALTER TABLE `purchase_include`
  ADD CONSTRAINT `FK_12` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`),
  ADD CONSTRAINT `FK_9` FOREIGN KEY (`purchase_ID`) REFERENCES `purchase_order` (`purchase_ID`);

--
-- Constraints for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD CONSTRAINT `FK_20` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`ID`),
  ADD CONSTRAINT `FK_5` FOREIGN KEY (`purchase_ID`) REFERENCES `order` (`order_ID`);

--
-- Constraints for table `sale_include`
--
ALTER TABLE `sale_include`
  ADD CONSTRAINT `FK_10` FOREIGN KEY (`sale_ID`) REFERENCES `sale_order` (`sale_ID`),
  ADD CONSTRAINT `FK_13` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`);

--
-- Constraints for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD CONSTRAINT `FK_6` FOREIGN KEY (`sale_ID`) REFERENCES `order` (`order_ID`),
  ADD CONSTRAINT `FK_7` FOREIGN KEY (`member_ID`) REFERENCES `member` (`ID`),
  ADD CONSTRAINT `FK_8` FOREIGN KEY (`employee_ID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `written_by`
--
ALTER TABLE `written_by`
  ADD CONSTRAINT `FK_17` FOREIGN KEY (`book_ID`) REFERENCES `book` (`book_ID`),
  ADD CONSTRAINT `FK_18` FOREIGN KEY (`author_ID`) REFERENCES `author` (`author_ID`);
COMMIT;







-- For Statistics

DROP PROCEDURE IF EXISTS GetTotalPurchaseAndSalesInRange;

DELIMITER //
CREATE PROCEDURE GetTotalPurchaseAndSalesInRange(IN startDate DATE, IN endDate DATE)
BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_table AS (
        SELECT 
            COALESCE(purchases.month, sales.month) AS month,
            purchases.total_purchases,
            sales.total_sales,
            (sales.total_sales - purchases.total_purchases) AS total_profit
        FROM 
            (SELECT 
                DATE_FORMAT(o.order_date, '%Y-%m') AS month,
                SUM(pi.purchase_quantity * b.purchase_price) AS total_purchases
            FROM `order` o
            JOIN purchase_include pi ON o.order_ID = pi.purchase_ID
            JOIN book b ON pi.book_ID = b.book_ID
            WHERE o.order_date BETWEEN startDate AND endDate
            GROUP BY month) purchases
        LEFT JOIN 
            (SELECT 
                DATE_FORMAT(o.order_date, '%Y-%m') AS month,
                SUM(si.sale_quantity * b.sale_price) AS total_sales
            FROM `order` o
            JOIN sale_include si ON o.order_ID = si.sale_ID
            JOIN book b ON si.book_ID = b.book_ID
            WHERE o.order_date BETWEEN startDate AND endDate
            GROUP BY month) sales
        ON purchases.month = sales.month
    );

    SELECT * FROM temp_table
    UNION ALL
    SELECT 
        'Tổng cộng' AS month,
        SUM(total_purchases),
        SUM(total_sales),
        SUM(total_profit)
    FROM temp_table;

    DROP TEMPORARY TABLE IF EXISTS temp_table;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS GetTotalPurchaseAndSalesInRangeWithGenre;

DELIMITER //
CREATE PROCEDURE GetTotalPurchaseAndSalesInRangeWithGenre(IN startDate DATE, IN endDate DATE, IN genre_ID INT)
BEGIN
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_table AS (
        SELECT 
            COALESCE(purchases.month, sales.month) AS month,
            purchases.total_purchases,
            sales.total_sales,
            (sales.total_sales - purchases.total_purchases) AS total_profit
        FROM 
            (SELECT 
                DATE_FORMAT(o.order_date, '%Y-%m') AS month,
                SUM(pi.purchase_quantity * b.purchase_price) AS total_purchases
            FROM `order` o
            JOIN purchase_include pi ON o.order_ID = pi.purchase_ID
            JOIN book b ON pi.book_ID = b.book_ID
            JOIN belongs_to bt ON b.book_ID = bt.book_ID
            WHERE o.order_date BETWEEN startDate AND endDate AND bt.genre_ID = genre_ID
            GROUP BY month) purchases
        LEFT JOIN 
            (SELECT 
                DATE_FORMAT(o.order_date, '%Y-%m') AS month,
                SUM(si.sale_quantity * b.sale_price) AS total_sales
            FROM `order` o
            JOIN sale_include si ON o.order_ID = si.sale_ID
            JOIN book b ON si.book_ID = b.book_ID
            JOIN belongs_to bt ON b.book_ID = bt.book_ID
            WHERE o.order_date BETWEEN startDate AND endDate AND bt.genre_ID = genre_ID
            GROUP BY month) sales
        ON purchases.month = sales.month
    );

    SELECT * FROM temp_table
    UNION ALL
    SELECT 
        'Tổng cộng' AS month,
        SUM(total_purchases),
        SUM(total_sales),
        SUM(total_profit)
    FROM temp_table;

    DROP TEMPORARY TABLE IF EXISTS temp_table;
END //
DELIMITER ;
