CREATE TABLE `data_platform_orders_item_data`
(
  `BusinessPartner`                    int(10) NOT NULL,          -- 新規追加
  `OrderID`                            int(10) NOT NULL,          -- 名称変更
  `OrderItem`                          int(6) NOT NULL,           -- 名称変更
  `OrderItemCategory`                  varchar(4) DEFAULT NULL,   -- 名称変更
  `OrderItemText`                      varchar(100) DEFAULT NULL,  -- 名称変更
  `Product`                            varchar(40) DEFAULT NULL,  -- 名称変更
  `ProductStandardID`                  varchar(18) DEFAULT NULL,  -- 新規追加
  `ProductByCustomer`                  varchar(40) DEFAULT NULL,  -- 名称変更
  `PricingDate`                        varchar(80) DEFAULT NULL,
  `OrderQuantity`                      varchar(17) DEFAULT NULL,  -- 名称変更
  `OrderQuantityUnit`                  varchar(3) DEFAULT NULL,   -- 名称変更
  `StockConfirmationPartnerFunction`   varchar(2) DEFAULT NULL,   -- 新規追加
  `StockConfirmationBusinessPartner`   int(10) DEFAULT NULL,      -- 新規追加
  `StockConfirmationPlant`             varchar(4) DEFAULT NULL,   -- 新規追加
  `StockConfirmationPolicy`            varchar(4) DEFAULT NULL,   -- 新規追加
  `StockConfirmationStatus`            varchar(2) DEFAULT NULL,   -- 新規追加
  `ConfdDelivQtyInOrderQtyUnit`        varchar(3) DEFAULT NULL,
  `ItemGrossWeight`                    varchar(17) DEFAULT NULL,
  `ItemNetWeight`                      varchar(17) DEFAULT NULL,
  `ItemWeightUnit`                     varchar(3) DEFAULT NULL,
  `TransactionCurrency`                varchar(5) DEFAULT NULL,
  `BusinessPartnerCurrency`            varchar(5) DEFAULT NULL,   -- 新規追加
  `NetAmount`                          varchar(17) DEFAULT NULL,
  `ProductGroup`                       varchar(9) DEFAULT NULL,   -- 名称変更
  `ProductPricingGroup`                varchar(2) DEFAULT NULL,   -- 名称変更
  `BillingDocumentDate`                varchar(80) DEFAULT NULL,
  `Batch`                              varchar(10) DEFAULT NULL,
  `ProductionPlant`                    varchar(4) DEFAULT NULL,
  `ProductionPlantStorageLocation`     varchar(4) DEFAULT NULL,  -- 名称変更
  `IssuingPlant`                       varchar(4) DEFAULT NULL,  -- 新規追加
  `IssuingPlantStorageLocation`        varchar(4) DEFAULT NULL,  -- 新規追加
  `ReceivingPlant`                     varchar(4) DEFAULT NULL,  -- 新規追加
  `ReceivingPlantStorageLocation`      varchar(4) DEFAULT NULL,  -- 新規追加 
  `Incoterms`                          varchar(3) DEFAULT NULL,  -- 名称変更
  `BPTaxClassification1`               varchar(1) DEFAULT NULL,  -- 新規追加
  `ProductTaxClassification1`          varchar(1) DEFAULT NULL,
  `TaxAmount`                          varchar(13) DEFAULT NULL,
  `ProductAccountAssignmentGroup`      varchar(2) DEFAULT NULL,  -- 名称変更
  `PaymentTerms`                       varchar(4) DEFAULT NULL,  -- 名称変更
  `DocumentRjcnReason`                 tinyint(1) DEFAULT NULL,  -- 名称変更
  `ItemBillingBlockReason`             tinyint(1) DEFAULT NULL,
  `Project`                            varchar(24) DEFAULT NULL,  -- 新規追加
  `ProfitCenter`                       varchar(10) DEFAULT NULL,
  `AccountingExchangeRate`             varchar(11) DEFAULT NULL,
  `ReferenceDocument`                  int(10) DEFAULT NULL,      -- 名称変更
  `ReferenceDocumentItem`              int(6) DEFAULT NULL,       -- 名称変更
  `IssuingStatus`                      varchar(2) DEFAULT NULL,   -- 新規追加
  `ReceivingStatus`                    varchar(2) DEFAULT NULL,   -- 新規追加
  `BillingStatus`                      varchar(2) DEFAULT NULL,   -- 新規追加
  `TaxCode`                            varchar(2) DEFAULT NULL,   -- 新規追加
  `CountryOfOrigin`                    varchar(3) DEFAULT NULL,   -- 新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformOrdersItemData_fk` FOREIGN KEY (`BusinessPartner`, `OrderID`) REFERENCES `data_platform_orders_header_data` (`BusinessPartner`, `OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
