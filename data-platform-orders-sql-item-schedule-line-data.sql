CREATE TABLE `data_platform_orders_item_schedule_line_data`
(
  `OrderID`                         int(16) NOT NULL,
  `OrderItem`                       int(6) NOT NULL,
  `ScheduleLine`                    int(3) NOT NULL,
  `Product`                         varchar(40) NOT NULL,
  `StockConfirmationPlant`          varchar(4) NOT NULL,
  `RequestedDeliveryDate`           date NOT NULL,
  `ConfirmedDeliveryDate`           date DEFAULT NULL,
  `OrderQuantityUnit`               varchar(3) DEFAULT NULL,
  `ScheduleLineOrderQuantity`       float(15) DEFAULT NULL,
  `ConfdOrderQtyByPDTAvailCheck`    float(15) DEFAULT NULL,
  `DeliveredQtyInOrderQtyUnit`      float(15) DEFAULT NULL,
  `OpenConfdDelivQtyInOrdQtyUnit`   float(15) DEFAULT NULL,
  `DelivBlockReasonForSchedLine`    tinyint(1) DEFAULT NULL,
  `PlusMinusFlag`                   varchar(1) NOT NULL,
  
  PRIMARY KEY (`OrderID`, `OrderItem`, `ScheduleLine`),
    
  CONSTRAINT `DataPlatformOrdersItemScheduleLineData_fk` FOREIGN KEY (`OrderID`, `OrderItem`) REFERENCES `data_platform_orders_item_data` (`OrderID`, `OrderItem`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
