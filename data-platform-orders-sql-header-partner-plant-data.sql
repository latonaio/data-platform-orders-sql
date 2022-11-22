CREATE TABLE `data_platform_orders_header_partner_plant_data`
(
    `OrderID`                         int(16) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `Plant`                           varchar(4) NOT NULL,

    PRIMARY KEY (`OrderID`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    
    CONSTRAINT `DataPlatformOrdersHeaderPartnerPlantData_fk` FOREIGN KEY (`OrderID`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_orders_header_partner_data` (`OrderID`, `PartnerFunction`, `BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderPartnerPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
