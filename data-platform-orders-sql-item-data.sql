CREATE TABLE `data_platform_orders_item_data`
(
    `OrderID`                                       int(16) NOT NULL,
    `OrderItem`                                     int(6) NOT NULL,
    `OrderItemCategory`                             varchar(4) NOT NULL,
    `OrderItemText`                                 varchar(200) NOT NULL,
    `OrderItemTextByBuyer`                          varchar(200) NOT NULL,
    `OrderItemTextBySeller`                         varchar(200) NOT NULL,
    `Product`                                       varchar(40) NOT NULL,
    `ProductStandardID`                             varchar(18) NOT NULL,
    `ProductGroup`                                  varchar(9) DEFAULT NULL,
    `BaseUnit`                                      varchar(3) NOT NULL,
    `PricingDate`                                   date NOT NULL,
    `PriceDetnExchangeRate`                         float(8) DEFAULT NULL,
    `RequestedDeliveryDate`                         date NOT NULL,
    `DeliverFromParty`                              int(12) DEFAULT NULL,
    `DeliverToParty`                                int(12) DEFAULT NULL,
    `StockConfirmationPartnerFunction`              varchar(40) DEFAULT NULL,
    `StockConfirmationBusinessPartner`              int(12) DEFAULT NULL,
    `StockConfirmationPlant`                        varchar(4) DEFAULT NULL,
    `StockConfirmationPlantBatch`                   varchar(10) DEFAULT NULL,
    `StockConfirmationPlantBatchValidityStartDate`  date DEFAULT NULL,
    `StockConfirmationPlantBatchValidityEndDate`    date DEFAULT NULL,
    `ProductIsBatchManagedInStockConfirmationPlant` tinyint(1) DEFAULT NULL,
    `OrderQuantityInBaseUnit`                       float(15) NOT NULL,
    `OrderQuantityInIssuingUnit`                    float(15) NOT NULL,
    `OrderQuantityInReceivingUnit                   float(15) NOT NULL,
    `OrderIssuingUnit`                              varchar(3) NOT NULL,
    `OrderReceivingUnit`                            varchar(3) NOT NULL,
    `StockConfirmationPolicy`                       varchar(4) DEFAULT NULL,
    `StockConfirmationStatus`                       varchar(2) DEFAULT NULL,
    `ConfirmedOrderQuantityInBaseUnit`              float(15) DEFAULT NULL,
    `ItemWeightUnit`                                varchar(3) DEFAULT NULL,
    `ProductGrossWeight`                            float(15) DEFAULT NULL,
    `ItemGrossWeight`                               float(15) DEFAULT NULL,
    `ProductNetWeight`                              float(15) DEFAULT NULL,
    `ItemNetWeight`                                 float(15) DEFAULT NULL,
    `NetAmount`                                     float(13) DEFAULT NULL,
    `TaxAmount`                                     float(13) DEFAULT NULL,
    `GrossAmount`                                   float(13) DEFAULT NULL,
    `BillingDocumentDate`                           date DEFAULT NULL,
    `ProductionPlantPartnerFunction`                varchar(40) DEFAULT NULL,
    `ProductionPlantBusinessPartner`                int(12) DEFAULT NULL,
    `ProductionPlant`                               varchar(4) DEFAULT NULL,
    `ProductionPlantTimeZone`                       varchar(3) DEFAULT NULL,
    `ProductionPlantStorageLocation`                varchar(4) DEFAULT NULL,
    `IssuingPlantPartnerFunction`                   varchar(40) DEFAULT NULL,
    `IssuingPlantBusinessPartner`                   int(12) DEFAULT NULL,
    `IssuingPlant`                                  varchar(4) DEFAULT NULL,
    `IssuingPlantTimeZone`                          varchar(3) DEFAULT NULL,
    `IssuingPlantStorageLocation`                   varchar(4) DEFAULT NULL,
    `ReceivingPlantPartnerFunction`                 varchar(40) DEFAULT NULL,
    `ReceivingPlantBusinessPartner`                 int(12) DEFAULT NULL,
    `ReceivingPlant`                                varchar(4) DEFAULT NULL,
    `ReceivingPlantTimeZone`                        varchar(3) DEFAULT NULL,
    `ReceivingPlantStorageLocation`                 varchar(4) DEFAULT NULL,
    `ProductIsBatchManagedInProductionPlant`        tinyint(1) DEFAULT NULL,
    `ProductIsBatchManagedInIssuingPlant`           tinyint(1) DEFAULT NULL,
    `ProductIsBatchManagedInReceivingPlant`         tinyint(1) DEFAULT NULL,
    `BatchMgmtPolicyInProductionPlant`              varchar(4) DEFAULT NULL,
    `BatchMgmtPolicyInIssuingPlant`                 varchar(4) DEFAULT NULL,
    `BatchMgmtPolicyInReceivingPlant`               varchar(4) DEFAULT NULL,   
    `ProductionPlantBatch`                          varchar(10) DEFAULT NULL,
    `IssuingPlantBatch`                             varchar(10) DEFAULT NULL,
    `ReceivingPlantBatch`                           varchar(10) DEFAULT NULL,
    `ProductionPlantBatchValidityStartDate`         date DEFAULT NULL,
    `ProductionPlantBatchValidityEndDate`           date DEFAULT NULL,
    `IssuingPlantBatchValidityStartDate`            date DEFAULT NULL,
    `IssuingPlantBatchValidityEndDate`              date DEFAULT NULL,
    `ReceivingPlantBatchValidityStartDate`          date DEFAULT NULL,
    `ReceivingPlantBatchValidityEndDate`            date DEFAULT NULL,
    `Incoterms`                                     varchar(4) DEFAULT NULL,
    `BPTaxClassification`                           varchar(1) NOT NULL,
    `ProductTaxClassification`                      varchar(1) NOT NULL,
    `BPAccountAssignmentGroup`                      varchar(2) NOT NULL,
    `ProductAccountAssignmentGroup`                 varchar(2) NOT NULL,
    `PaymentTerms`                                  varchar(4) NOT NULL,
    `PaymentMethod`                                 varchar(1) NOT NULL,
    `ItemBlockStatus`                               tinyint(1) DEFAULT NULL,
    `ItemBillingBlockStatus`                        tinyint(1) DEFAULT NULL,
    `ItemDeliveryBlockStatus`                       tinyint(1) DEFAULT NULL,
    `Project`                                       varchar(24) DEFAULT NULL,
    `AccountingExchangeRate`                        float(8) DEFAULT NULL,
    `ReferenceDocument`                             int(16) DEFAULT NULL,
    `ReferenceDocumentItem`                         int(6) DEFAULT NULL,
    `ItemCompleteDeliveryIsDefined`                 tinyint(1) DEFAULT NULL,
    `ItemDeliveryStatus`                            varchar(2) DEFAULT NULL,
    `IssuingStatus`                                 varchar(2) DEFAULT NULL,
    `ReceivingStatus`                               varchar(2) DEFAULT NULL,
    `ItemBillingStatus`                             varchar(2) DEFAULT NULL,
    `TaxCode`                                       varchar(2) DEFAULT NULL,
    `TaxRate`                                       float(6) DEFAULT NULL,
    `CountryOfOrigin`                               varchar(3) DEFAULT NULL,

    PRIMARY KEY (`OrderID`, `OrderItem`),
    
    CONSTRAINT `DataPlatformOrdersItemData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`),
    CONSTRAINT `DataPlatformOrdersItemDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`),
    CONSTRAINT `DataPlatformOrdersItemDataProductGroup_fk` FOREIGN KEY (`ProductGroup`) REFERENCES `data_platform_product_group_product_group_data` (`ProductGroup`),
    CONSTRAINT `DataPlatformOrdersItemDataBaseUnit_fk` FOREIGN KEY (`BaseUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverFromParty_fk` FOREIGN KEY (`DeliverFromParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersItemDataDeliverToParty_fk` FOREIGN KEY (`DeliverToParty`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersItemDataStockConfirmationPlant_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `StockConfirmationPartnerFunction`, `StockConfirmationBusinessPartner`, `StockConfirmationPlant`) REFERENCES `data_platform_orders_item_partner_plant_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformOrdersItemDataOrderIssuingQuantityUnit_fk` FOREIGN KEY (`OrderIssuingQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataOrderReceivingQuantityUnit_fk` FOREIGN KEY (`OrderReceivingQuantityUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataItemWeightUnit_fk` FOREIGN KEY (`ItemWeightUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`),
    CONSTRAINT `DataPlatformOrdersItemDataProductionPlant_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `ProductionPlantPartnerFunction`, `ProductionPlantBusinessPartner`, `ProductionPlant`) REFERENCES `data_platform_orders_item_partner_plant_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformOrdersItemDataIssuingPlant_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `IssuingPlantPartnerFunction`, `IssuingPlantBusinessPartner`, `IssuingPlant`) REFERENCES `data_platform_orders_item_partner_plant_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformOrdersItemDataReceivingPlant_fk` FOREIGN KEY (`OrderID`, `OrderItem`, `ReceivingPlantPartnerFunction`, `ReceivingPlantBusinessPartner`, `ReceivingPlant`) REFERENCES `data_platform_orders_item_partner_plant_data` (`OrderID`, `OrderItem`, `PartnerFunction`, `BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformOrdersItemDataProductionPlantTimeZone_fk` FOREIGN KEY (`ProductionPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataIssuingPlantTimeZone_fk` FOREIGN KEY (`IssuingPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataReceivingPlantTimeZone_fk` FOREIGN KEY (`ReceivingPlantTimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DataPlatformOrdersItemDataProductionPlantBatch_fk` FOREIGN KEY (`ProductionPlantBusinessPartner`, `ProductionPlant`, `ProductionPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataIssuingPlantBatch_fk` FOREIGN KEY (`IssuingPlantBusinessPartner`, `IssuingPlant`, `IssuingPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataReceivingPlantBatch_fk` FOREIGN KEY (`ReceivingPlantBusinessPartner`, `ReceivingPlant`, `ReceivingPlantBatch`) REFERENCES `data_platform_batch_master_record_batch_data` (`BusinessPartner`, `Plant`, `Batch`),
    CONSTRAINT `DataPlatformOrdersItemDataIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformOrdersItemDataPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`),
    CONSTRAINT `DataPlatformOrdersItemDataCountryOfOrigin_fk` FOREIGN KEY (`CountryOfOrigin`) REFERENCES `data_platform_country_country_data` (`Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
