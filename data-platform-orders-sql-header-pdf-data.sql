CREATE TABLE `data_platform_orders_header_pdf_data`           -- 新規追加
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `OrderID`                        int(10) NOT NULL,          -- 新規追加
  `DocType`                        varchar(20) NOT NULL,      -- 新規追加
  `DocVersionID`                   int(4) NOT NULL,           -- 新規追加
  `DocID`                          varchar(100) NOT NULL,     -- 新規追加
  `FileName`                       varchar(200) DEFAULT NULL, -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `DocType`, `DocVersionID`, `DocID`),
    CONSTRAINT `DataPlatformOrdersHeaderPDFData_fk` FOREIGN KEY (`BusinessPartner`, `OrderID`) REFERENCES `data_platform_orders_header_data` (`BusinessPartner`, `OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
