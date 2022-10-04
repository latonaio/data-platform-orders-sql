CREATE TABLE `data_platform_orders_item_schedule_line_data`
(
  `BusinessPartner`                varchar(10) NOT NULL,
  `OrderID`                        varchar(10) NOT NULL,
  `OrderItem`                      varchar(6) NOT NULL,
  `ScheduleLine`                   varchar(3) NOT NULL,
  `Product`                        varchar(4) DEFAULT NULL, --新規追加
  `StockConfirmationPlant`         varchar(4) DEFAULT NULL, --新規追加
  `RequestedDeliveryDate`          varchar(80) DEFAULT NULL,
  `ConfirmedDeliveryDate`          varchar(80) DEFAULT NULL,
  `OrderQuantityUnit`              varchar(3) DEFAULT NULL,
  `ScheduleLineOrderQuantity`      varchar(15) DEFAULT NULL,
  `ConfdOrderQtyByPDTAvailCheck`   varchar(15) DEFAULT NULL, --名称変更
  `DeliveredQtyInOrderQtyUnit`     varchar(15) DEFAULT NULL,
  `OpenConfdDelivQtyInOrdQtyUnit`  varchar(15) DEFAULT NULL,
  `DelivBlockReasonForSchedLine`   varchar(2) DEFAULT NULL,
  `PlusMinusFlag`                  varchar(1) DEFAULT NULL, --新規追加
    PRIMARY KEY (`BusinessPartner`, `OrderID`, `OrderItem`, `ScheduleLine`),
    CONSTRAINT `DataPlatformOrdersItemScheduleLineData_fk` FOREIGN KEY (`OrderID`) REFERENCES `data_platform_orders_header_data` (`OrderID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
