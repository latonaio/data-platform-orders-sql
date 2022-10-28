CREATE TABLE `data_platform_orders_item_partner_plant_data`
(
    `OrderID`                         int(16) NOT NULL,
    `OrderItem`                       int(6) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `Plant`                           varchar(4) NOT NULL,

    PRIMARY KEY (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    
    CONSTRAINT `DataPlatformOrdersHeaderPartnerData_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`) REFERENCES `data_platform_orders_item_partner_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderPartnerDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
