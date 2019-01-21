CREATE TABLE `order_address` (
  `order_address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `quote_address_id` int(10) unsigned DEFAULT NULL,
  `customer_address_id` int(10) unsigned DEFAULT NULL,
  `address_type` tinyint(1) unsigned NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street_1` varchar(255) NOT NULL,
  `street_2` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` char(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_address_id`),
  KEY `IDX_ORDER_ADDRESS_QUOTE_ADDRESS` (`quote_address_id`),
  KEY `IDX_ORDER_ADDRESS_ORDER` (`order_id`),
  KEY `IDX_ORDER_ADDRESS_CUSTOMER_ADDRESS` (`customer_address_id`),
  CONSTRAINT `FK_ORDER_ADDRESS_CUSTOMER_ADDRESS` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customer_address_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_ADDRESS_ORDER` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ORDER_ADDRESS_QUOTE_ADDRESS` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`quote_address_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
