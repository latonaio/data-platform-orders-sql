CREATE TABLE `data_platform_orders_item_pricing_element_data`
(
  `BusinessPartner`                varchar(10) NOT NULL,      --新規追加
  `OrderID`                        varchar(10) NOT NULL,      --名称変更
  `OrderItem`                      varchar(6) NOT NULL,       --名称変更
  `PricingProcedureStep`           varchar(3) NOT NULL,
  `PricingProcedureCounter`        varchar(3) NOT NULL,
  `ConditionType`                  varchar(4) DEFAULT NULL,
  `PriceConditionDeterminationDte` varchar(80) DEFAULT NULL,
  `ConditionRateValue`             varchar(25) DEFAULT NULL,
  `ConditionCurrency`              varchar(5) DEFAULT NULL,
  `ConditionRecord`                varchar(10) DEFAULT NULL,
  `ConditionSequentialNumber`      varchar(3) DEFAULT NULL,
  `TaxCode`                        varchar(2) DEFAULT NULL,
  `TransactionCurrency`            varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`     tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`, `PricingProcedureStep`, `PricingProcedureCounter`),
    CONSTRAINT `DataPlatformOrdersItemPricingElementData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
