CREATE TABLE `data_platform_orders_header_partner_plant_data` --新規追加
(
  `BusinessPartner`                  varchar(10) NOT NULL,     --新規追加
  `OrderID`                          varchar(10) NOT NULL,     --新規追加
  `PartnerFunction`                  varchar(2) NOT NULL,      --新規追加
  `PartnerFunctionBusinessPartner`   varchar(2) NOT NULL,      --新規追加
  `Plant`                            varchar(4) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `PartnerFunction`, `PartnerFunctionBusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_orders_header_data` (`BusinessPartner`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
