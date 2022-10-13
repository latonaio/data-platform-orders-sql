CREATE TABLE `data_platform_orders_header_partner_plant_data`  -- 新規追加
(
  `BusinessPartner`                  int(10) NOT NULL,         -- 新規追加
  `OrderID`                          int(10) NOT NULL,         -- 新規追加
  `PartnerFunction`                  varchar(2) NOT NULL,      -- 新規追加
  `PartnerFunctionBusinessPartner`   int(10) NOT NULL,         -- 新規追加
  `Plant`                            varchar(4) DEFAULT NULL,  -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `PartnerFunction`, `PartnerFunctionBusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `OrderID`, `PartnerFunction`) REFERENCES `data_platform_orders_header_partner_data` (`BusinessPartner`, `OrderID`, `PartnerFunction`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
