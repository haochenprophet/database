ALTER TABLE `education`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `audio`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `chip`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `law`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `life`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `medical`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `template`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
ALTER TABLE `video`.`url` ADD COLUMN `priority` INT NOT NULL DEFAULT 0 AFTER `remark`;
