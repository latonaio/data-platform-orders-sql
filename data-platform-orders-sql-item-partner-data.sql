CREATE TABLE `data_platform_orders_item_partner_data`
(
  `BusinessPartner`                     int(10) NOT NULL,      -- 新規追加
  `OrderID`                             int(10) NOT NULL,      -- 名称変更
  `OrderItem`                           int(6) NOT NULL,       -- 名称変更
  `PartnerFunction`                     varchar(2) NOT NULL,
  `PartnerFunctionBusinessPartner`      int(10) DEFAULT NULL,  
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`, `PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersItemPartnerData_fk` FOREIGN KEY (`BusinessPartner`, `OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`BusinessPartner`, `OrderID`, `OrderItem`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
