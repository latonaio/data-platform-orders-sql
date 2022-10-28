CREATE TABLE `data_platform_orders_header_pdf_data`
(
  `OrderID`                        int(16) NOT NULL,
  `DocType`                        varchar(40) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  
    PRIMARY KEY (`OrderID`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformOrdersHeaderPDFData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformOrdersHeaderPDFDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformOrdersHeaderPDFDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
