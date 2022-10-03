CREATE TABLE `data_platform_orders_header_partner_data`
(
  `BusinessPartner`                 varchar(10) NOT NULL,     --新規追加
  `OrderID`                         varchar(10) NOT NULL,     --名称変更
  `PartnerFunction`                 varchar(2) NOT NULL,
  `PartnerFunctionBusinessPartner`  varchar(10) DEFAULT NULL, --名称変更
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersHeaderPartnerData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
