CREATE TABLE `data_platform_orders_item_partner_data`
(
  `BusinessPartner`                     varchar(10) NOT NULL,  --新規追加
  `OrderID`                             varchar(10) NOT NULL,  --名称変更
  `OrderItem`                           varchar(6) NOT NULL,   --名称変更
  `PartnerFunction`                     varchar(2) NOT NULL,
  `PartnerFunctionBusinessPartner`      varchar(2) DEFAULT NULL,  
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`, `PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersItemPartnerData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
