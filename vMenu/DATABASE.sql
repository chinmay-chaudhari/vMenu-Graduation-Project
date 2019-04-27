/*
SQLyog Community v11.11 (32 bit)
MySQL - 5.0.41-community-nt : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_id` varchar(20) NOT NULL,
  `a_name` varchar(30) default NULL,
  `pass` varchar(10) default NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`a_id`,`a_name`,`pass`) values ('admin','XYZ','password');

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `bill_no` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `date` varchar(11) NOT NULL default '',
  `status` varchar(6) default NULL,
  PRIMARY KEY  (`bill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bill` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(30) default NULL,
  `c_no` varchar(10) default NULL,
  `table_no` int(10) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `c_id` int(11) default NULL,
  `email_id` text,
  `f_desc` text,
  PRIMARY KEY  (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(30) default NULL,
  `m_cost` float default NULL,
  `category` varchar(20) default NULL,
  `m_desc` text,
  PRIMARY KEY  (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu_items` */

insert  into `menu_items`(`m_id`,`m_name`,`m_cost`,`category`,`m_desc`) values (1,'Sweet Corn Soup',175,'Soup','Boiled Sweet Corn With Vegetables'),(2,'Lemon Coriander Chicken',200,'Soup','Oriental Chicken Broth With Vegetables'),(3,'Thai Tom Yum Soup',250,'Soup','Choice Of Soup With Seafood'),(4,'Flame Roasted Tomato Soup',175,'Soup','Oven Roasted Baby Tomato & Roma Tomato Soup With Ciabatta Bread'),(5,'Wild Mushroom Soup',175,'Soup','Porcini & Button Mushroom Soup With Truffle Oil'),(6,'Greek Salald',325,'Salad','Feta, Kalamata Olives, Bell Peppers, Cucumber, Tomatoes, Onions In lemon & Dry Thyme Vinaigrette'),(7,'Classic Caesar Salad',350,'Salad','Choice Of Caesar With Vegetable Romaine Lettuce Tossed With Our Classic Homemade Caesar, Parmesan Cheese & Bread Croutons'),(8,'Butter Gralic Cochin Prawn',400,'Salad','tossed Wild Arugula, Vine Ripened Cherry Tomatoes & Fresh Red Chilles'),(9,'Grilled Mushroom',350,'Sizzler','Served With Fried Rice Or Noddles, Creamy Mushroom Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Mushrooms'),(10,'Vegetable Manchurian',250,'Sizzler','Served With Fried Rice Or Noddles, Barbecue Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Manchurian Chunks'),(11,'Grilled Paneer Tikka',350,'Sizzler','Served With Fried Rice Or Noddles, Perri Perri Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Cottage Cheese Cubes'),(12,'Grilled Chicken',375,'Sizzler','Served With Fried Rice Or Noddles, Red Wine Jus Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Grilled Spicy Chicken'),(13,'Grilled Fish',400,'Sizzler','Served With Fried Rice Or Noddles, Shashlik Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Grilled Fish Fingers'),(14,'Grilled Prawns',425,'Sizzler','Served With Fried Rice Or Noddles, Harissa Mayo Sauce, French Fries, Mash Potato, Grilled Vegetable, Stuffed Peppers With Grilled Prawns'),(15,'Fussily',450,'Pasta','With Wild Mushroom Sauce, Aged Pecorino Cheese'),(16,'Baked Vegetable Lasagna',450,'Pasta','Buffalo Mozzarella, Sweet Bell Peppers Coulis'),(17,'Tagliateela',450,'Pasta','Tagliatella, Fresh Water Scampi, Cherry Tomato, Saffron & Basil'),(18,'Suprema',400,'Pasta','Green Olive, Black Olive, Bell Pepper, Mushroom, Onion & Baby Corn'),(19,'Penne Alla Vodka E Gamberi',500,'Pasta','Penne Pasta, Tiger Prawns In Creamy Tomato Sauce With Vodka & Basil'),(20,'Veg Paneer Kathi Roll',200,'Roll & Sandwich','Paneer & Vegetable Roll With Indian Spices In Indian Tortria Sheet'),(21,'chicken Masala Roll',250,'Roll & Sandwich','Chicken & Vegetable Roll With Indian Spices In Indian Tortria Sheet With Mayo'),(22,'Double Egg Roll',200,'Roll & Sandwich','Double Egg & Vegetable Roll With Indian Spices In Indian Tortria Sheet With Southwest & Mayo'),(23,'Grilled Vegetable Sandwich',175,'Roll & Sandwich','Fresh Grilled Zucchini Red & Yellow BEll Pepper, Lemon Mayonnaise, Cheese & Roasted Mushroom'),(24,'The Mugshot Club Sandwich',275,'Roll & Sandwich','Wheat Bread, Chicken Breast, Sun Dried Tomatoes, Roasted Bell Peppers, Guacamole, Crisp Bacon'),(25,'The Mugshot Buger',275,'Roll & Sandwich','Prime Cut Lamb Patty, Sauteed Mushroom, Cheddar Cheese In Sesame Bun & Crispy Bacon'),(26,'Garden Buger',200,'Roll & Sandwich','In House Smoked Vegetable Patty, Lettuce, Onion, Plum Tomatoes, Pickles,Cheddar Cheese'),(27,'Paneer Tikka Masala',250,'Main Course','Cottage Cheese Marinated In Indian Spices, Onion, Bell Peppers & Thick Gravy'),(28,'Paneer Jaali Kebab',275,'Main Course','Piccata Of Paneer Flavoured With Mint & Tamarind Chuteny, Baked In Tandoor'),(29,'Mushroom 65',225,'Main Course','Mushroon Tossed In South Indian Style'),(30,'Firdausi Aaloo',200,'Main Course','Paneer & Cashew Nut Stuffed Potatoes Roasted In Clay Oven'),(31,'Noori Kebab',325,'Main Course','Chicken Kebeb Marinated With Cardamom & Cashew Nuts'),(32,'Videshi Macchi',350,'Main Course','Basa Cooked In Tandoor With Indian Spices'),(33,'Chicken Tikka Masala',350,'Main Course','Tandoor Cooked Chicken Finished In Rich Tomato Gravy'),(34,'Kate Masala Ka Murgh',400,'Main Course','Semi Dry Onion Gravy Cooked With Chicken'),(35,'Jalapenos Cheese Poppers',325,'Main Course','Batter Fried Cheddar Cheese Poppers Stuffed With Jalapeno'),(36,'Nacho Vegetarian',175,'Main Course','Fresh Corn Tortia Mixed With Cheddar Cheese'),(37,'Panzerotti',250,'Main Course','Mini Pizza Stuffed With Fresh Buffalo Mozzarella, Vegetables & Red Pepper Pesto'),(38,'Rotti',35,'Main Course','Plain Wheat Rotti'),(39,'Butter Rotti',40,'Main Course','Butter Wheat Rotti'),(40,'Garlic Butter Naan',50,'Main Course','Butter Naan With Garlic'),(41,'Kulcha',75,'Main Course','Kulcha With Onion & Cheese'),(42,'Paratha',60,'Main Course','Butter Paratha'),(43,'Aaloo Khada Masala',275,'Main Course','Baby Potatoes Cooked With Whole Garam Masala'),(44,'Lasooni Dal Tadak',200,'Main Course','Yellow Lentils Tempered With Chili And Garlic'),(45,'Dal Makhani',250,'Main Course','Mug Shot Signature Dal'),(46,'Goan Fish Curry',450,'Main Course','Fish Curry With Coriander, Chili And Cumin'),(47,'King Fish Masala',500,'Main Course','King Fish Steak Marinated With Chili & Indian Spice & grilled'),(48,'Jhinga Masaledar',600,'Main Course','Fresh Water Prawns Cooked With Onions, Tomatoes & Kadhai Masala'),(49,'Steamed Rice',150,'Main Course','Plain Steamed Rice'),(50,'Jeera Rice',175,'Main Course','Steamed Rice Tempered With Cumin & Coriander'),(51,'Dum Mutton Biryani',350,'Main Course','Served With Raitha & Salan'),(52,'Lucknowi Chicken Biryani',325,'Main Course','Served With Raitha & Salan'),(53,'Mud Pie',200,'Dessert','Melted Chocolate brownie with Chocolate Sauce & Served With Vanilla Ice Cream'),(54,'Philadelphia Cheese Cake',300,'Dessert','The Original Cheesecake, Creamy, Baked'),(55,'Bilgium Chocolate Mousse',175,'Dessert','Sinful Chocolate Mousse, Made With Imported Chocolate From Belgium'),(56,'Walnut Chocolate Browine',200,'Dessert','Browine Served Warm With Vanilla Ice Cream'),(57,'Granny Smith Apple Pie',250,'Dessert','US Apple Pie With Vanilla Ice Cream'),(58,'Gulab Jamun With Ice Cream',150,'Dessert','Gulab Jamun Served With Vanilla Ice Cream'),(59,'Red Bull',180,'Beverages','Energy Drink'),(60,'Mix Fruit Juice',80,'Beverages','Juice Made From Fresh Fruits'),(61,'Ice Tea',70,'Beverages','Black Lemom Tea With Ice'),(62,'Aerated Drinks',60,'Beverages','Sprite'),(63,'Packaged Water',60,'Beverages','Mineral Water'),(64,'Tea',50,'Beverages','Masala Tea With Ginger'),(65,'Coffee',50,'Beverages','NesCafe Coffee'),(66,'Paneer Chilly',250,'Starter','Cottage Cheese Cubes In Indian Spices, onion, bell pepper with '),(67,'Wok Tossed Panner',275,'Starter','With Sweet Chilly Sauce'),(68,'Vegetable Spring Roll',250,'Starter','butter tossed vegetbles with onion garlic and rolled in sheet, deep fried'),(69,'Sweet chily potato',200,'Starter','Sweet Potato tossed from wok		'),(70,'Beach Cocktail',600,'Bevrages','Red Wine + Coke');

/*Table structure for table `ordr` */

DROP TABLE IF EXISTS `ordr`;

CREATE TABLE `ordr` (
  `o_id` int(11) NOT NULL,
  `c_id` int(11) default NULL,
  `table_no` int(10) default NULL,
  `m_id` int(11) default NULL,
  `quantity` int(11) default NULL,
  `cost` decimal(11,0) default NULL,
  `total` decimal(10,0) default NULL,
  `m_name` varchar(30) default NULL,
  `status` varchar(6) default NULL,
  PRIMARY KEY  (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ordr` */

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `s_id` varchar(20) NOT NULL,
  `s_name` varchar(30) default NULL,
  `s_pass` varchar(20) default NULL,
  `s_addr` text,
  `s_no` decimal(10,0) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`s_id`,`s_name`,`s_pass`,`s_addr`,`s_no`) values ('mac','Mandar Chaudhari','123456','Aundh',7028025336);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
