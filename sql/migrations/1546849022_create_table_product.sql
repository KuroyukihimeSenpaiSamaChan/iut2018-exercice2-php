CREATE TABLE `product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(60) NOT NULL,
  `ean` varchar(13) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url_key` varchar(255) NOT NULL,
  `price` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `price_incl_tax` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `tva` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `stock_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `special_price` int(10) unsigned DEFAULT NULL,
  `special_price_from_date` timestamp NULL DEFAULT NULL,
  `special_price_to_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `UQ_PRODUCT_URL_KEY` (`url_key`),
  UNIQUE KEY `UQ_PRODUCT_SKU` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
