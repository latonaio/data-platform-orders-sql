CREATE TABLE `data_platform_orders_item_partner_data`
(
    `OrderID`                         int(16) NOT NULL,
    `OrderItem`                       int(6) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    
    PRIMARY KEY (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformOrdersItemPartnerData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
