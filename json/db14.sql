-- MySQL Script generated by MySQL Workbench
-- Sun Feb 22 16:06:32 2015
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
SHOW WARNINGS;
-- -----------------------------------------------------
-- Schema DBHSP
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DBHSP` ;
CREATE SCHEMA IF NOT EXISTS `DBHSP` DEFAULT CHARACTER SET latin1 ;
SHOW WARNINGS;
USE `DBHSP` ;

-- -----------------------------------------------------
-- Table `DBHSP`.`DBER001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`DBER001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`DBER001MB` (
  `ERR_CODE` VARCHAR(10) NULL DEFAULT NULL,
  `ERR_DESC` VARCHAR(200) NULL DEFAULT NULL,
  `ERROR_PAGE` VARCHAR(100) NULL DEFAULT NULL,
  `ERROR_TEXT` VARCHAR(40000) NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `PROD_ID` INT(11) NULL DEFAULT NULL,
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `PAGE_GRP_ID` INT(11) NULL DEFAULT NULL,
  `PAGE_ID` INT(11) NULL DEFAULT NULL,
  `USR_ID` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;
CREATE INDEX `IND_DB_ERRORS_MKR_ID` USING BTREE ON `DBHSP`.`DBER001MB` (`MKR_ID` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PROD001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PROD001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PROD001MB` (
  `PROD_ID` INT(10) NOT NULL,
  `PROD_NAME` VARCHAR(45) NULL DEFAULT NULL,
  `PROD_VERSION` VARCHAR(45) NULL DEFAULT NULL,
  `PROD_ST_DT` VARCHAR(45) NULL DEFAULT NULL,
  `MKR_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_CREATED` VARCHAR(45) NULL DEFAULT NULL,
  `ATH_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_MODIFIED` VARCHAR(45) NULL DEFAULT NULL,
  `DBNAME` VARCHAR(45) NULL DEFAULT NULL,
  `HOSTNAME` VARCHAR(45) NULL DEFAULT NULL,
  `BASE_HOME` VARCHAR(45) NULL DEFAULT NULL,
  `PORT` VARCHAR(45) NULL DEFAULT NULL,
  `PROTOCAL` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GRP001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GRP001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GRP001MB` (
  `PROD_ID` INT(11) NULL DEFAULT NULL,
  `GRP_ID` INT(11) NOT NULL,
  `GRP_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `CUR_BAL` DOUBLE(25,4) NULL DEFAULT NULL,
  `MAX_PEND_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `MAX_LEDGER` DOUBLE(25,4) NULL DEFAULT NULL,
  `PASSWORD` VARCHAR(60) NULL DEFAULT NULL,
  `LAST_LOGIN` DATE NULL DEFAULT NULL,
  `MAX_PEND_Q_CNT` INT(11) NULL DEFAULT NULL,
  `MAX_APVD_Q_CNT` INT(11) NULL DEFAULT NULL,
  `LANG` VARCHAR(60) NULL DEFAULT NULL,
  `MAX_USR_CNT` INT(11) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  `STATUS` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GID001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GID001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GID001MB` (
  `USR_ID` INT(11) NOT NULL,
  `GRP_ID` INT(11) NOT NULL DEFAULT '0',
  `F_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `L_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `EMAIL_ID` VARCHAR(60) NULL DEFAULT NULL,
  `CUR_BAL` DOUBLE(25,4) NULL DEFAULT NULL,
  `PEND_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `LEDGER` DOUBLE(25,4) NULL DEFAULT NULL,
  `ACCT_TYPE` VARCHAR(60) NULL DEFAULT NULL,
  `PASSWORD` VARCHAR(60) NULL DEFAULT NULL,
  `LAST_LOGIN` DATE NULL DEFAULT NULL,
  `PEND_Q_CNT` INT(11) NULL DEFAULT NULL,
  `APVD_Q_CNT` INT(11) NULL DEFAULT NULL,
  `LANG` VARCHAR(60) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  `STATUS` VARCHAR(60) NULL DEFAULT NULL,
  `ADMIN_FLG` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`USR_ID`, `GRP_ID`),
  CONSTRAINT `FK_GID001MB_GRP_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GRP001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GID001TB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GID001TB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GID001TB` (
  `USR_ID` INT(11) NOT NULL,
  `F_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `L_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `EMAIL_ID` VARCHAR(60) NULL DEFAULT NULL,
  `CUR_BAL` DOUBLE(25,4) NULL DEFAULT NULL,
  `PEND_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `LEDGER` DOUBLE(25,4) NULL DEFAULT NULL,
  `ACCT_TYPE` VARCHAR(60) NULL DEFAULT NULL,
  `PASSWORD` VARCHAR(60) NULL DEFAULT NULL,
  `LAST_LOGIN` DATE NULL DEFAULT NULL,
  `PEND_Q_CNT` INT(11) NULL DEFAULT NULL,
  `APVD_Q_CNT` INT(11) NULL DEFAULT NULL,
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `LANG` VARCHAR(60) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  `STATUS` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Global Identity Table',
  `OTPE` VARCHAR(120) NULL DEFAULT NULL,
  `OTP` VARCHAR(12) NULL DEFAULT NULL,
  PRIMARY KEY (`USR_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GRBL001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GRBL001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GRBL001MB` (
  `PEND_Q_CNT` INT(11) NULL DEFAULT NULL,
  `APVD_Q_CNT` INT(11) NULL DEFAULT NULL,
  `GRP_ID` INT(11) NOT NULL,
  `HOLD_AMT` INT(11) NULL DEFAULT NULL,
  `HOLD_CNT` INT(11) NULL DEFAULT NULL,
  `SPL_HOLD_AMT` INT(11) NULL DEFAULT NULL,
  `SPL_HOLD_CNT` INT(11) NULL DEFAULT NULL,
  `DT_CREATED` VARCHAR(45) NULL DEFAULT NULL,
  `MKR_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_MODIFIED` VARCHAR(45) NULL DEFAULT NULL,
  `ATH_ID` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`),
  CONSTRAINT `FK_GRBL001_GRP_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GRP001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `FK_GRBL001_GRP_ID_idx` ON `DBHSP`.`GRBL001MB` (`GRP_ID` ASC)  COMMENT 'Extension of the GRP001MB';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GRP001TB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GRP001TB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GRP001TB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `GRP_NAME` VARCHAR(60) NULL DEFAULT NULL,
  `LEDGER` DOUBLE(25,4) NULL DEFAULT NULL,
  `PASSWORD` VARCHAR(60) NULL DEFAULT NULL,
  `LAST_LOGIN` DATE NULL DEFAULT NULL,
  `LANG` VARCHAR(60) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  `STATUS` VARCHAR(60) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`GTRN002MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`GTRN002MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`GTRN002MB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `GBKT_TXN_ID` INT(11) NOT NULL DEFAULT '0',
  `TRAN_ST` VARCHAR(1) NULL DEFAULT NULL,
  `DR_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `CR_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `PND_CR_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `PND_DR_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `DT_MODIFIED` DOUBLE(25,4) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  `DESCR` VARCHAR(300) NULL DEFAULT NULL,
  `BILL_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `BILL_DT` DATE NULL DEFAULT NULL,
  `CARD_NUM` INT(11) NULL DEFAULT NULL,
  `SHARE_CNT` DOUBLE(25,4) NULL DEFAULT NULL,
  `BILL_REF` VARCHAR(300) NULL DEFAULT NULL,
  `BANK` VARCHAR(300) NULL DEFAULT NULL,
  `PAY_MD` VARCHAR(300) NULL DEFAULT NULL,
  `STMT_ID` INT(11) NULL DEFAULT NULL,
  `TRAN_TYPE` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`GBKT_TXN_ID`),
  CONSTRAINT `FK_GTRN002MB_GRP_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GID001MB` (`USR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`LGNL001HT`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`LGNL001HT` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`LGNL001HT` (
  `BRWSR_NAME` VARCHAR(50) NULL DEFAULT NULL,
  `DEVICE` VARCHAR(45) NULL DEFAULT NULL,
  `OS` VARCHAR(45) NULL DEFAULT NULL,
  `LOGIN_DATE` DATETIME NULL DEFAULT NULL,
  `LOGOUT_DATE` DATETIME NULL DEFAULT NULL,
  `LOGIN_STATUS` VARCHAR(25) NULL DEFAULT NULL,
  `LOGIN_DESRC` VARCHAR(100) NULL DEFAULT NULL,
  `CLIENT_IP` VARCHAR(45) NULL DEFAULT NULL,
  `CLIENT_HOST` VARCHAR(45) NULL DEFAULT NULL,
  `GEO_COUNTRY` VARCHAR(120) NULL DEFAULT NULL,
  `LANG` INT(11) NULL DEFAULT NULL,
  `USR_ID` INT(11) NULL DEFAULT NULL,
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `PROD_ID` INT(11) NULL DEFAULT NULL,
  `GEO_CITY` VARCHAR(60) NULL DEFAULT NULL,
  `GEO_DTL` VARCHAR(1000) NULL DEFAULT NULL,
  CONSTRAINT `FK_LGNL001HT_USR_ID`
    FOREIGN KEY (`USR_ID` , `GRP_ID`)
    REFERENCES `DBHSP`.`GID001MB` (`USR_ID` , `GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PRTL002MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PRTL002MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PRTL002MB` (
  `PROD_ID` INT(10) NOT NULL,
  `PRTL_ID` INT(10) NOT NULL,
  `PRTL_NAME` VARCHAR(45) NULL DEFAULT NULL,
  `PRTL_VERSION` VARCHAR(45) NULL DEFAULT NULL,
  `PRTL_ST` VARCHAR(15) NULL,
  `PRTL_ST_DT` DATETIME NULL DEFAULT NULL,
  `MKR_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_CREATED` VARCHAR(45) NULL DEFAULT NULL,
  `ATH_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_MODIFIED` VARCHAR(45) NULL DEFAULT NULL,
  `DBNAME` VARCHAR(45) NULL DEFAULT NULL,
  `HOSTNAME` VARCHAR(45) NULL DEFAULT NULL,
  `BASE_HOME` VARCHAR(45) NULL DEFAULT NULL,
  `PORT` VARCHAR(45) NULL DEFAULT NULL,
  `PROTOCAL` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`PRTL_ID`),
  CONSTRAINT `FK_PRTL001MB_PROD_ID`
    FOREIGN KEY (`PROD_ID`)
    REFERENCES `DBHSP`.`PROD001MB` (`PROD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PGGR005MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PGGR005MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PGGR005MB` (
  `PRTL_PAGE_GRP_ID` INT(11) NULL,
  `PRTL_ID` INT NULL,
  `PAGE_GRP_ID` INT NULL,
  `PAGE_GRP_TITLE` VARCHAR(45) NULL,
  `DT_CREATED` DATETIME NULL,
  `MKR_ID` INT NULL,
  `DT_MODIFIED` DATETIME NULL,
  `ATH_ID` INT NULL,
  `PAGE_GRP_KEY` VARCHAR(45) NULL,
  CONSTRAINT `FK_PGGR005MB_PRTL_ID`
    FOREIGN KEY (`PRTL_ID`)
    REFERENCES `DBHSP`.`PRTL002MB` (`PRTL_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`ROLA003MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`ROLA003MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`ROLA003MB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `ROLE_ID` INT(11) NULL DEFAULT NULL,
  `ROLE_NAME` VARCHAR(300) NULL DEFAULT NULL,
  `ROLE_ACCESS` VARCHAR(300) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  CONSTRAINT `FK_ROLA003MB_GRP_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GRP001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`RAPG004LB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`RAPG004LB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`RAPG004LB` (
  `ROLE_PAGE_ID` VARCHAR(45) NULL DEFAULT NULL,
  `PRTL_PAGE_GRP_ID` INT(11) NULL DEFAULT NULL,
  `ROLE_ID` INT(11) NOT NULL,
  `ACCESS_IND` VARCHAR(45) NULL DEFAULT NULL,
  `DT_CREATED` VARCHAR(45) NULL DEFAULT NULL,
  `MKR_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_MODIFIED` VARCHAR(45) NULL DEFAULT NULL,
  `ATH_ID` VARCHAR(45) NULL DEFAULT NULL,
  `PAGE_GRP_ID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  CONSTRAINT `FK_RAPG004LB_PROD_PAGE_GRP_ID`
    FOREIGN KEY ()
    REFERENCES `DBHSP`.`PGGR005MB` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_RAPG004LB_ROLE_ID`
    FOREIGN KEY (`ROLE_ID`)
    REFERENCES `DBHSP`.`ROLA003MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`MEMA001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`MEMA001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`MEMA001MB` (
  `ROLE_ID` INT(11) NOT NULL,
  `USR_ID` INT(11) NULL DEFAULT NULL,
  `ACCESS_IND` VARCHAR(45) NULL DEFAULT NULL,
  `DT_CREATED` DATETIME NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `DT_MODIFIED` DATETIME NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  CONSTRAINT `FK_MEMA001MB_ROLE_ID`
    FOREIGN KEY (`ROLE_ID`)
    REFERENCES `DBHSP`.`RAPG004LB` (`ROLE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_MEMA001MB_USR_ID`
    FOREIGN KEY (`USR_ID`)
    REFERENCES `DBHSP`.`GID001MB` (`USR_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`ROLE001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`ROLE001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`ROLE001MB` (
  `PRTL_ID` INT(11) NULL DEFAULT NULL,
  `ROLE_ID` VARCHAR(45) NULL,
  `ROLE_NAME` VARCHAR(45) NULL,
  `DT_CREATED` DATE NULL,
  `DT_MODIFIED` DATE NULL,
  `MKR_ID` INT NULL,
  `ATH_ID` INT NULL,
  `STATUS` VARCHAR(45) NULL,
  CONSTRAINT `FK_ ROLE001MB_PRTL_ID`
    FOREIGN KEY (`PRTL_ID`)
    REFERENCES `DBHSP`.`PRTL002MB` (`PRTL_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PDPG002MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PDPG002MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PDPG002MB` (
  `PROD_ID` INT(11) NOT NULL,
  `PROD_PAGE_GRP_ID` INT(11) NULL DEFAULT NULL,
  `ACESS_IND` VARCHAR(2) NULL DEFAULT NULL,
  `DT_CREATED` VARCHAR(45) NULL DEFAULT NULL,
  `MKR_ID` VARCHAR(45) NULL DEFAULT NULL,
  `DT_MODIFIED` VARCHAR(45) NULL DEFAULT NULL,
  `ATH_ID` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PERSON`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PERSON` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PERSON` (
  `PERSON_ID` INT(11) NULL DEFAULT NULL,
  `MAX_NUM` INT(11) NULL DEFAULT NULL,
  `PER_1_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PER_2_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PER_3_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PER_4_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PER_5_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PER_6_NAME` VARCHAR(100) NULL DEFAULT NULL)
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PGDT006MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PGDT006MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PGDT006MB` (
  `PAGE_ID` INT(11) NOT NULL,
  `PAGE_BASE` VARCHAR(300) NULL DEFAULT NULL,
  `PAGE_KEY` VARCHAR(60) NULL DEFAULT NULL,
  `PAGE_NAME` VARCHAR(100) NULL DEFAULT NULL,
  `PAGE_TYPE` VARCHAR(1) NULL DEFAULT NULL,
  `AUTH_REQ_FLG` VARCHAR(1) NULL DEFAULT NULL,
  `DISP_ORDER` INT(11) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;
CREATE INDEX `IND_PAGE_ID` ON `DBHSP`.`PGDT006MB` (`PAGE_ID` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PGPD009LB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PGPD009LB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PGPD009LB` (
  `PAGE_ID` INT(11) NOT NULL,
  `PRTL_PAGE_GRP_ID` INT(11) NULL DEFAULT NULL,
  `ACCESS_IND` VARCHAR(45) NULL DEFAULT NULL,
  `MKR_ID` INT NULL,
  `DT_CREATED` DATETIME NULL,
  `ATH_ID` INT NULL,
  `DT_MODIFIED` DATETIME NULL,
  PRIMARY KEY (`PAGE_ID`),
  CONSTRAINT `FK_PGPD009LB_PAGE_ID`
    FOREIGN KEY (`PAGE_ID`)
    REFERENCES `DBHSP`.`PGDT006MB` (`PAGE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_PGPD009LB_PROD_PAGE_GRP_ID`
    FOREIGN KEY (`PRTL_PAGE_GRP_ID`)
    REFERENCES `DBHSP`.`PGGR005MB` (`PRTL_PAGE_GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `FK_PGPD009LB_PROD_PAGE_GRP_ID_idx` ON `DBHSP`.`PGPD009LB` (`PRTL_PAGE_GRP_ID` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`PGRL010LB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`PGRL010LB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`PGRL010LB` (
  `ROLE_PAGE_ID` INT(11) NOT NULL,
  `PAGE_ID` INT(11) NULL DEFAULT NULL,
  `ACCESS_IND` VARCHAR(45) NULL DEFAULT NULL,
  `DT_CREATED` DATETIME NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `DT_MODIFIED` DATETIME NULL DEFAULT NULL,
  `ATH_ID` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_PAGE_ID`),
  CONSTRAINT `FK_PGRL010LB_ROLE_PAGE_ID`
    FOREIGN KEY (`ROLE_PAGE_ID`)
    REFERENCES `DBHSP`.`RAPG004LB` (`ROLE_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`CNTY001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`CNTY001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`CNTY001MB` (
  `PROD_ID` VARCHAR(45) NULL,
  `COUNTRY_ID` VARCHAR(45) NOT NULL,
  `COUNTRY_CODE` INT(11) NOT NULL,
  `COUNTRY_ISO` VARCHAR(45) NOT NULL,
  `CURRENCY_CODE` VARCHAR(45) NOT NULL,
  `CURRENCY_NAME` VARCHAR(45) NULL,
  `TIMEZONE` VARCHAR(45) NULL,
  `DST` VARCHAR(45) NULL,
  `MKR_ID` VARCHAR(45) NULL,
  `ATH_ID` VARCHAR(45) NULL,
  `DT_CREATED` VARCHAR(45) NULL,
  `DT_MODIFIED` VARCHAR(45) NULL,
  `STATUS` VARCHAR(45) NULL,
  CONSTRAINT `FK_CNTY001MB_PROD_ID`
    FOREIGN KEY ()
    REFERENCES `DBHSP`.`PROD001MB` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`REGISTERED_MEMBERS`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`REGISTERED_MEMBERS` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`REGISTERED_MEMBERS` (
  `ID` INT(4) NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(65) NOT NULL,
  `EMAIL` VARCHAR(65) NOT NULL,
  `PASSWORD` VARCHAR(65) NOT NULL,
  `COUNTRY` VARCHAR(65) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`SEQ`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`SEQ` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`SEQ` (
  `NAME` VARCHAR(20) NOT NULL,
  `VAL` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`NAME`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`STMT001MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`STMT001MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`STMT001MB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `DESCR` VARCHAR(30) NULL DEFAULT NULL,
  `STATUS` VARCHAR(10) NULL DEFAULT NULL,
  `DT_CREATED` DATE NULL DEFAULT NULL,
  `MKR_ID` INT(11) NULL DEFAULT NULL,
  `DT_MODIFIED` DATE NULL DEFAULT NULL,
  `AUTH_ID` INT(11) NULL DEFAULT NULL,
  CONSTRAINT `FK_STMT001MB_GRP_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GRP001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`STMT002MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`STMT002MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`STMT002MB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `USR_ID` INT(11) NULL DEFAULT NULL,
  `STMT_ID` INT(11) NULL DEFAULT NULL,
  `MON_BAL` DOUBLE(25,4) NULL DEFAULT NULL,
  `MON_SPND` DOUBLE(25,4) NULL DEFAULT NULL,
  `DESCR` VARCHAR(30) NULL DEFAULT NULL,
  `CREATED_DT` DATE NULL DEFAULT NULL,
  `MAKER_ID` INT(11) NULL DEFAULT NULL,
  `MODIFIED_DT` DATE NULL DEFAULT NULL,
  `AUTH_ID` INT(11) NULL DEFAULT NULL,
  CONSTRAINT `FK_STMT002MB_STMT_ID`
    FOREIGN KEY (`STMT_ID`)
    REFERENCES `DBHSP`.`STMT001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`TRN003MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`TRN003MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`TRN003MB` (
  `GRP_ID` INT(11) NULL DEFAULT NULL,
  `GBKT_TXN_ID` INT(11) NULL DEFAULT NULL,
  `TBKT_TXN_ID` INT(11) NULL DEFAULT NULL,
  `USR_ID` INT(11) NULL DEFAULT NULL,
  `TRAN_AMT` DOUBLE(25,4) NULL DEFAULT NULL,
  `DR_CR_FLG` CHAR(1) NULL DEFAULT NULL,
  `VALUE_DT` DATE NULL DEFAULT NULL,
  `CRETED_DT` DATE NULL DEFAULT NULL,
  `MAKER_ID` INT(11) NULL DEFAULT NULL,
  `MODIFIED_DT` DATE NULL DEFAULT NULL,
  `AUTH_ID` INT(11) NULL DEFAULT NULL,
  `BUS_DT` DATE NULL DEFAULT NULL,
  CONSTRAINT `FK_TRN003MB_GBKT_TXN_ID`
    FOREIGN KEY (`GBKT_TXN_ID`)
    REFERENCES `DBHSP`.`GTRN002MB` (`GBKT_TXN_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_TRN003MB_GR_ID`
    FOREIGN KEY (`GRP_ID`)
    REFERENCES `DBHSP`.`GRP001MB` (`GRP_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = COMPACT;

SHOW WARNINGS;
CREATE INDEX `PRI_TRN003MB_TBKT_TXN_ID` ON `DBHSP`.`TRN003MB` (`TBKT_TXN_ID` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`_SEQUENCE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`_SEQUENCE` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`_SEQUENCE` (
  `SEQ_NAME` VARCHAR(50) NOT NULL,
  `SEQ_VAL` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`SEQ_NAME`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1
ROW_FORMAT = DYNAMIC;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`STAT002MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`STAT002MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`STAT002MB` (
  `COUNTRY_ID` VARCHAR(45) NOT NULL,
  `STATE_ID` INT(11) NOT NULL,
  `STATE_CODE` VARCHAR(45) NOT NULL,
  `STATE_NAME` VARCHAR(45) NOT NULL,
  `TIMEZONE` VARCHAR(45) NULL,
  `MKR_ID` VARCHAR(45) NULL,
  `ATH_ID` VARCHAR(45) NULL,
  `DT_CREATED` VARCHAR(45) NULL,
  `DT_MODIFIED` VARCHAR(45) NULL,
  `STATUS` VARCHAR(45) NULL,
  `PROD_ID` INT NULL,
  CONSTRAINT `FK_STAT002MB_COUNTRY_ID`
    FOREIGN KEY ()
    REFERENCES `DBHSP`.`CNTY001MB` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `DBHSP`.`ADDR003MB`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBHSP`.`ADDR003MB` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `DBHSP`.`ADDR003MB` (
  `ADDR_ID` INT NOT NULL,
  `PROD_ID` INT NULL,
  `ADDR_TYPE` VARCHAR(45) NULL,
  `ADDR_LINE1` VARCHAR(60) NOT NULL,
  `ADDR_LINE2` VARCHAR(60) NOT NULL,
  `ADDR_LINE3` VARCHAR(45) NULL,
  `CITY` VARCHAR(45) NULL,
  `ATH_ID` VARCHAR(45) NULL,
  `STATE_ID` INT(11) NOT NULL,
  `COUNTRY_ID` VARCHAR(45) NOT NULL,
  `DT_CREATED` VARCHAR(45) NULL,
  `DT_MODIFIED` VARCHAR(45) NULL,
  `STATUS` VARCHAR(45) NULL,
  `USR_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`ADDR_ID`),
  CONSTRAINT `FK_ADDR003MB_PROD_ID`
    FOREIGN KEY (`PROD_ID`)
    REFERENCES `DBHSP`.`PROD001MB` (`PROD_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

