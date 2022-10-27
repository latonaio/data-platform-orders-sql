CREATE TABLE `data_platform_orders_item_partner_data`
(
    `OrderID`                         int(16) NOT NULL,
    `OrderItem`                       int(6) NOT NULL,
    `PartnerFunction`                 varchar(40) NOT NULL,
    `BusinessPartner`                 int(12) NOT NULL,
    `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
    `BusinessPartnerName`             varchar(100) DEFAULT NULL,
    `Organization`                    varchar(4) DEFAULT NULL,
    `Language`                        varchar(2) DEFAULT NULL,
    `Currency`                        varchar(5) DEFAULT NULL,
    `AddressID`                       int(12) DEFAULT NULL,
    
    PRIMARY KEY (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`),
    
    CONSTRAINT `DataPlatformOrdersItemPartnerData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformOrdersItemPartnerDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
