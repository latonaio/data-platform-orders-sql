CREATE TABLE `data_platform_orders_header_supplier_contact_data`
(
  `OrderID`                       int(10) NOT NULL,            -- 新規追加
  `Supplier`                      int(10) NOT NULL,            -- 新規追加
  `ContactID`                     int(4) NOT NULL,             -- 新規追加
  `ContactPersionName`            varchar(100) DEFAULT NULL,   -- 新規追加
  `EmailAddress`                  varchar(200) DEFAULT NULL,   -- 新規追加
  `PhoneNumber`                   varchar(100) DEFAULT NULL,   -- 新規追加
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,   -- 新規追加
  `FaxNumber`                     varchar(100) DEFAULT NULL,   -- 新規追加
  `ContactTag1`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag2`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag3`                   varchar(40) DEFAULT NULL,    -- 新規追加
  `ContactTag4`                   varchar(40) DEFAULT NULL,    -- 新規追加 
  PRIMARY KEY (`OrderID`, `Supplier`, `ContactID`) ,
  CONSTRAINT `DataPlatformOrdersHeaderSupplierContactData_fk` FOREIGN KEY (`OrderID`, `Supplier`) REFERENCES `data_platform_orders_header_data` (`OrderID`, `Supplier`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
