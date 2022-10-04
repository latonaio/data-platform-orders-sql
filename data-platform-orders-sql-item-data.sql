CREATE TABLE `data_platform_orders_item_data`
(
  `BusinessPartner`                    varchar(10) NOT NULL,      --新規追加
  `OrderID`                            varchar(10) NOT NULL,      --名称変更
  `OrderItem`                          varchar(6) NOT NULL,       --名称変更
  `OrderItemCategory`                  varchar(4) DEFAULT NULL,   --名称変更
  `OrderItemText`                      varchar(40) DEFAULT NULL,  --名称変更
  `Product`                            varchar(40) DEFAULT NULL,  --名称変更
  `PricingDate`                        varchar(80) DEFAULT NULL,
  `OrderQuantity`                      varchar(17) DEFAULT NULL,  --名称変更
  `OrderQuantityUnit`                  varchar(3) DEFAULT NULL,   --名称変更
  `StockConfirmationPartnerFunction`   varchar(2) DEFAULT NULL,   --新規追加
  `StockConfirmationBusinessPartner`   varchar(10) DEFAULT NULL,  --新規追加
  `StockConfirmationPlant`             varchar(4) DEFAULT NULL,   --新規追加
  `StockConfirmationPolicy`            varchar(4) DEFAULT NULL,   --新規追加
  `StockConfirmationStatus`            varchar(2) DEFAULT NULL,   --新規追加
  `ConfdDelivQtyInOrderQtyUnit`        varchar(3) DEFAULT NULL,
  `ItemGrossWeight`                    varchar(17) DEFAULT NULL,
  `ItemNetWeight`                      varchar(17) DEFAULT NULL,
  `ItemWeightUnit`                     varchar(3) DEFAULT NULL,
  `TransactionCurrency`                varchar(5) DEFAULT NULL,
  `NetAmount`                          varchar(17) DEFAULT NULL,
  `ProductGroup`                       varchar(9) DEFAULT NULL,   --名称変更
  `ProductPricingGroup`                varchar(2) DEFAULT NULL,   --名称変更
  `BillingDocumentDate`                varchar(80) DEFAULT NULL,
  `Batch`                              varchar(10) DEFAULT NULL,
  `ProductionPlant`                    varchar(4) DEFAULT NULL,
  `ProductionPlantStorageLocation`     varchar(4) DEFAULT NULL,  --名称変更
  `IssuingPlant`                       varchar(4) DEFAULT NULL,  --新規追加
  `IssuingPlantStorageLocation`        varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingPlant`                     varchar(4) DEFAULT NULL,  --新規追加
  `ReceivingPlantStorageLocation`      varchar(4) DEFAULT NULL,  --新規追加 
  `IncotermsClassification`            varchar(3) DEFAULT NULL,
  `CustomerTaxClassification1`         varchar(1) DEFAULT NULL,  --新規追加
  `ProductTaxClassification1`          varchar(1) DEFAULT NULL,
  `TaxAmount`                          varchar(13) DEFAULT NULL,
  `ProductAccountAssignmentGroup`      varchar(2) DEFAULT NULL,  --名称変更
  `PaymentTerms`                       varchar(4) DEFAULT NULL,  --名称変更
  `DocumentRjcnReason`                 varchar(2) DEFAULT NULL,  --名称変更
  `ItemBillingBlockReason`             varchar(2) DEFAULT NULL,
  `Project`                            varchar(24) DEFAULT NULL,  --新規追加
  `ProfitCenter`                       varchar(10) DEFAULT NULL,
  `AccountingExchangeRate`             varchar(11) DEFAULT NULL,
  `ReferenceDocument`                  varchar(10) DEFAULT NULL,  --名称変更
  `ReferenceDocumentItem`              varchar(6) DEFAULT NULL,   --名称変更
  `IssuingStatus`                      varchar(2) DEFAULT NULL,  --新規追加
  `ReceivingStatus`                    varchar(2) DEFAULT NULL,  --新規追加
  `BillingStatus`                      varchar(2) DEFAULT NULL,  --新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`),
    CONSTRAINT `DataPlatformOrdersItemData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
