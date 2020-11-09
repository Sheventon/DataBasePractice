ALTER TABLE `complectation`
    ADD INDEX `privod_id_idx` (`privod_id` ASC) VISIBLE,
    ADD INDEX `disk_id_idx` (`disk_id` ASC) VISIBLE;
;
ALTER TABLE `complectation`
    ADD CONSTRAINT /*`privod_id`*/
        FOREIGN KEY (`privod_id`)
            REFERENCES `privod` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`disk_id`*/
        FOREIGN KEY (`disk_id`)
            REFERENCES `disk` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `employee`
    CHANGE COLUMN `position_id` `position_id` INT UNSIGNED NOT NULL,
    ADD INDEX `car_showroom_id_idx` (`car_showroom_id` ASC) VISIBLE,
    ADD INDEX `service_id_idx` (`service_id` ASC) VISIBLE,
    ADD INDEX `position_id_idx` (`position_id` ASC) VISIBLE;
;
ALTER TABLE `employee`
    ADD CONSTRAINT /*`position_id`*/
        FOREIGN KEY (`position_id`)
            REFERENCES `position` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_showroom_id`*/
        FOREIGN KEY (`car_showroom_id`)
            REFERENCES `car_showroom` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`service_id`*/
        FOREIGN KEY (`service_id`)
            REFERENCES `service` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `employee_chronology`
    CHANGE COLUMN `position_id` `position_id` INT UNSIGNED NOT NULL,
    ADD INDEX `position_id_idx` (`position_id` ASC) VISIBLE,
    ADD INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE;
;
ALTER TABLE `employee_chronology`
    ADD CONSTRAINT /*`position_id`*/
        FOREIGN KEY (`position_id`)
            REFERENCES `position` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`employee_id`*/
        FOREIGN KEY (`employee_id`)
            REFERENCES `employee` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `salary`
    ADD INDEX `position_id_idx` (`position_id` ASC) VISIBLE;
;
ALTER TABLE `salary`
    ADD CONSTRAINT /*`position_id`*/
        FOREIGN KEY (`position_id`)
            REFERENCES `position` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `comment`
    CHANGE COLUMN `client_id` `client_id` BIGINT UNSIGNED NOT NULL,
    ADD INDEX `client_id_idx` (`client_id` ASC) VISIBLE;
;
ALTER TABLE `comment`
    ADD CONSTRAINT /*`client_id`*/
        FOREIGN KEY (`client_id`)
            REFERENCES `client` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `car`
    ADD INDEX `engine_id_idx` (`engine_id` ASC) VISIBLE,
    ADD INDEX `complectatoin_id_idx` (`complectation_id` ASC) VISIBLE;
;
ALTER TABLE `car`
    ADD CONSTRAINT /*`engine_id`*/
        FOREIGN KEY (`engine_id`)
            REFERENCES `engine` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`complectatoin_id`*/
        FOREIGN KEY (`complectation_id`)
            REFERENCES `complectation` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`model_id`*/
        FOREIGN KEY (`model_id`)
            REFERENCES `model` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `car_showroom`
    CHANGE COLUMN `address_id` `address_id` SMALLINT UNSIGNED NOT NULL,
    ADD INDEX `address_id_idx` (`address_id` ASC) VISIBLE;
;
ALTER TABLE `car_showroom`
    ADD CONSTRAINT /*`address_id`*/
        FOREIGN KEY (`address_id`)
            REFERENCES `address` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `location_status`
    ADD INDEX `car_id_idx` (`car_id` ASC) VISIBLE,
    ADD INDEX `car_showroom_id_idx` (`car_showroom_id` ASC) VISIBLE
;
ALTER TABLE `location_status`
    ADD CONSTRAINT /*`car_id`*/
        FOREIGN KEY (`car_id`)
            REFERENCES `car` (`serial_number`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_showroom_id`*/
        FOREIGN KEY (`car_showroom_id`)
            REFERENCES `car_showroom` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `drive`
    CHANGE COLUMN `client_id` `client_id`   BIGINT UNSIGNED NOT NULL,
    CHANGE COLUMN `emploee_id` `emploee_id` INT UNSIGNED    NOT NULL,
    ADD INDEX `client_id_idx` (`client_id` ASC) VISIBLE,
    ADD INDEX `employee_id_idx` (`emploee_id` ASC) VISIBLE,
    ADD INDEX `car_showroom_id_idx` (`car_showroom_id` ASC) VISIBLE,
    ADD INDEX `car_idx` (`car_id` ASC) VISIBLE;
;
ALTER TABLE `drive`
    ADD CONSTRAINT /*`client_id`*/
        FOREIGN KEY (`client_id`)
            REFERENCES `client` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`employee_id`*/
        FOREIGN KEY (`emploee_id`)
            REFERENCES `employee` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_showroom_id`*/
        FOREIGN KEY (`car_showroom_id`)
            REFERENCES `car_showroom` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_id`*/
        FOREIGN KEY (`car_id`)
            REFERENCES `car` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `buy`
    CHANGE COLUMN `client_id` `client_id` BIGINT UNSIGNED NOT NULL,
    ADD INDEX `client_id_idx` (`client_id` ASC) VISIBLE,
    ADD INDEX `car_showroom_id_idx` (`car_showroom_id` ASC) VISIBLE,
    ADD INDEX `car_idx` (`car_id` ASC) VISIBLE;
;
ALTER TABLE `buy`
    ADD CONSTRAINT /*`client_id`*/
        FOREIGN KEY (`client_id`)
            REFERENCES `client` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_showroom_id`*/
        FOREIGN KEY (`car_showroom_id`)
            REFERENCES `car_showroom` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`car_id`*/
        FOREIGN KEY (`car_id`)
            REFERENCES `car` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `service_sign_up`
    CHANGE COLUMN `client_id` `client_id` BIGINT UNSIGNED NOT NULL,
    ADD INDEX `client_id_idx` (`client_id` ASC) VISIBLE,
    ADD INDEX `service_id_idx` (`service_id` ASC) VISIBLE,
    ADD INDEX `usluga_id_idx` (`usluga_id` ASC) VISIBLE;
;
ALTER TABLE `service_sign_up`
    ADD CONSTRAINT /*`client_id`*/
        FOREIGN KEY (`client_id`)
            REFERENCES `client` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`service_id`*/
        FOREIGN KEY (`service_id`)
            REFERENCES `service` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`usluga_id`*/
        FOREIGN KEY (`usluga_id`)
            REFERENCES `uslugi` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `service`
    CHANGE COLUMN `address_id` `address_id` SMALLINT UNSIGNED NOT NULL,
    ADD INDEX `address_id_idx` (`address_id` ASC) VISIBLE;
;
ALTER TABLE `service`
    ADD CONSTRAINT /*`address_id`*/
        FOREIGN KEY (`address_id`)
            REFERENCES `address` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `uslugi_of_service`
    CHANGE COLUMN `service_id` `service_id` SMALLINT NOT NULL,
    ADD INDEX `service_id_idx` (`service_id` ASC) VISIBLE,
    ADD INDEX `usluga_id_idx` (`usluga_id` ASC) VISIBLE,
    DROP PRIMARY KEY;
;
ALTER TABLE `uslugi_of_service`
    ADD CONSTRAINT /*`service_id`*/
        FOREIGN KEY (`service_id`)
            REFERENCES `service` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    ADD CONSTRAINT /*`usluga_id`*/
        FOREIGN KEY (`usluga_id`)
            REFERENCES `uslugi` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

ALTER TABLE `price_list`
    CHANGE COLUMN `usluga_id` `usluga_id` SMALLINT NOT NULL,
    ADD INDEX `usluga_id_idx` (`usluga_id` ASC) VISIBLE,
    DROP PRIMARY KEY;
;
ALTER TABLE `price_list`
    ADD CONSTRAINT /*`usluga_id`*/
        FOREIGN KEY (`usluga_id`)
            REFERENCES `uslugi` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;