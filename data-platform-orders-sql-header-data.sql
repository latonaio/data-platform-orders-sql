CREATE TABLE `data_platform_orders_header_data`
(
  `BusinessPartner`                int(10) NOT NULL,          -- 新規追加
  `OrderID`                        int(10) NOT NULL,          -- 名称変更
  `OrderType`                      varchar(3) DEFAULT NULL,
  `OrderDate`                      varchar(80) DEFAULT NULL,  -- 名称変更
  `SalesOrganization`              varchar(4) DEFAULT NULL,
  `PurchaseOrganization`           varchar(4) DEFAULT NULL,
  `DistributionChannel`            varchar(2) DEFAULT NULL,
  `Division`                       varchar(2) DEFAULT NULL,   -- 名称変更
  `District`                       varchar(6) DEFAULT NULL,   -- 名称変更
  `Customer`                       int(10) DEFAULT NULL,      -- 名称変更
  `Supplier`                       int(10) DEFAULT NULL,
  `CreationDate`                   varchar(80) DEFAULT NULL,
  `LastChangeDate`                 varchar(80) DEFAULT NULL,
  `SalesExternalDocumentID`        varchar(40) DEFAULT NULL,  -- 新規追加
  `PurchaseExternalDocumentID`     varchar(40) DEFAULT NULL,  -- 新規追加
  `TotalNetAmount`                 varchar(25) DEFAULT NULL,
  `OverallDeliveryStatus`          varchar(2) DEFAULT NULL,
  `TotalBlockStatus`               tinyint(1) DEFAULT NULL,
  `OverallOrdReltdBillgStatus`     varchar(2) DEFAULT NULL,
  `OverallDocReferenceStatus`      varchar(4) DEFAULT NULL,   -- 名称変更
  `TransactionCurrency`            varchar(5) DEFAULT NULL,
  `PricingDate`                    varchar(80) DEFAULT NULL,
  `PriceDetnExchangeRate`          varchar(80) DEFAULT NULL,
  `RequestedDeliveryDate`          varchar(80) DEFAULT NULL,
  `CompleteDeliveryIsDefined`      tinyint(1) DEFAULT NULL,
  `HeaderBillingBlockReason`       tinyint(1) DEFAULT NULL,
  `DeliveryBlockReason`            tinyint(1) DEFAULT NULL,
  `Incoterms`                      varchar(3) DEFAULT NULL,   -- 名称変更
  `PaymentTerms`                   varchar(4) DEFAULT NULL,
  `PaymentMethod`                  varchar(1) DEFAULT NULL,
  `ReferenceDocument`              int(10) DEFAULT NULL,      -- 名称変更
  `ReferenceDocumentItem`          int(6) DEFAULT NULL,       -- 新規追加
  `AccountAssignmentGroup`         varchar(2) DEFAULT NULL,   -- 名称変更
  `AccountingExchangeRate`         varchar(16) DEFAULT NULL,
  `BPTaxClassification1`           varchar(1) DEFAULT NULL,   -- 名称変更
  `BillingDocumentDate`            varchar(80) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
