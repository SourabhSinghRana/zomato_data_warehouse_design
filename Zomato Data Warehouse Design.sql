CREATE TABLE `review` (
  `review_id` varchar(255) PRIMARY KEY,
  `order_id` varchar(255),
  `review_text` varchar(255),
  `star` float,
  `created_at` timestamp
);

CREATE TABLE `orders` (
  `order_id` varchar(255) PRIMARY KEY,
  `item_id` varchar(255),
  `order_date_time` timestamp,
  `city` varchar(255),
  `delivery_address` varchar(255),
  `review_id` varchar(255)
);

CREATE TABLE `menu` (
  `item_id` varchar(255) PRIMARY KEY,
  `restaurant_id` varchar(255),
  `price` integer,
  `available` boolean,
  `availability_status` varchar(255)
);

CREATE TABLE `item_details` (
  `item_id` varchar(255) PRIMARY KEY,
  `item_name` varchar(255)
);

CREATE TABLE `restaurants` (
  `restaurant_id` varchar(255) PRIMARY KEY,
  `restaurant_name` varchar(255),
  `address` varchar(255),
  `opened_on` timestamp,
  `open_time` timestamp,
  `close_time` timestamp
);

CREATE TABLE `delivery` (
  `delivery__id` varchar(255) PRIMARY KEY,
  `order_id` varchar(255),
  `delivery_person_id` varchar(255),
  `vehicle_id` varchar(255)
);

CREATE TABLE `delivery_person` (
  `delivery_person_id` varchar(255) PRIMARY KEY,
  `available` boolean,
  `availability_status` varchar(255),
  `name` varchar(255),
  `age` varchar(255),
  `sex` varchar(255),
  `salary` float,
  `home_adress` varchar(255),
  `vehicle_registered_number` varchar(255)
);

CREATE TABLE `delivery_vehichle` (
  `vehicle_id` varchar(255) PRIMARY KEY,
  `available` boolean,
  `availability_status` varchar(255),
  `fuel_status` varchar(255),
  `vehicle_type` varchar(255),
  `vehicle_registered_number` varchar(255)
);

CREATE TABLE `promotion` (
  `promotion_id` varchar(255) PRIMARY KEY,
  `item_id` varchar(255),
  `dicount` float,
  `restaurant_id` varchar(255)
);

ALTER TABLE `menu` ADD FOREIGN KEY (`item_id`) REFERENCES `orders` (`item_id`);

ALTER TABLE `review` ADD FOREIGN KEY (`review_id`) REFERENCES `orders` (`review_id`);

ALTER TABLE `restaurants` ADD FOREIGN KEY (`restaurant_id`) REFERENCES `menu` (`restaurant_id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`order_id`) REFERENCES `delivery` (`order_id`);

ALTER TABLE `delivery_vehichle` ADD FOREIGN KEY (`vehicle_id`) REFERENCES `delivery` (`vehicle_id`);

ALTER TABLE `delivery_person` ADD FOREIGN KEY (`delivery_person_id`) REFERENCES `delivery` (`delivery_person_id`);

ALTER TABLE `restaurants` ADD FOREIGN KEY (`restaurant_id`) REFERENCES `promotion` (`restaurant_id`);

ALTER TABLE `menu` ADD FOREIGN KEY (`item_id`) REFERENCES `promotion` (`item_id`);

ALTER TABLE `item_details` ADD FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);
