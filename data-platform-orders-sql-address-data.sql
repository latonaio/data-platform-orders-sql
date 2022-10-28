CREATE TABLE `data_platform_orders_address_data`
(
    `OrderID`                 int(16) NOT NULL,           -- 新規追加
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,    -- 名称変更
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,    -- 新規追加
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Builiding`               varchar(100) DEFAULT NULL,  -- 新規追加
    `Floor`                   int(4) DEFAULT NULL,        -- 新規追加
    `Room`                    int(8) DEFAULT NULL,        -- 新規追加
    
    PRIMARY KEY (`OrderID`, `AddressID`),
    
    CONSTRAINT `DataPlatformOrdersAddressData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformOrdersAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
