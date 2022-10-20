CREATE TABLE `data_platform_orders_header_customer_contact_data`
(
  `BusinessPartner`               int(10) NOT NULL,            -- 新規追加
  `OrderID`                       int(10) NOT NULL,            -- 新規追加
  `Customer`                      int(10) NOT NULL,            -- 新規追加
  `ContactID`                     int(4) NOT NULL,             -- 新規追加
  `ContactPersonName`             varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                  varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                   varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                   varchar(40) DEFAULT NULL,    -- 新規追加 
  PRIMARY KEY (`BusinessPartner`, `OrderID`, `Customer`, `ContactID`) ,
  CONSTRAINT `DataPlatformOrdersHeaderCustomerContactData_fk` FOREIGN KEY (`BusinessPartner`, `OrderID`, `Customer`) REFERENCES `data_platform_orders_header_data` (`BusinessPartner`, `OrderID`, `Customer`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
