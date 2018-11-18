-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               8.0.12 - MySQL Community Server - GPL
-- Server Betriebssystem:        Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncCreateClientState
DROP PROCEDURE IF EXISTS `SyncCreateClientState`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncCreateClientStateOnNewTable
DROP PROCEDURE IF EXISTS `SyncCreateClientStateOnNewTable`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncCreateDeletedRowForDevices
DROP PROCEDURE IF EXISTS `SyncCreateDeletedRowForDevices`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncCreateInsertedRowForDevices
DROP PROCEDURE IF EXISTS `SyncCreateInsertedRowForDevices`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncCreateUpdatedRowForDevices
DROP PROCEDURE IF EXISTS `SyncCreateUpdatedRowForDevices`;

-- Daten Export vom Benutzer nicht ausgewählt
-- Exportiere Struktur von Prozedur IGE_DATA.SyncGetTablesToSync
DROP PROCEDURE IF EXISTS `SyncGetTablesToSync`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncInsertOrUpdateClientState
DROP PROCEDURE IF EXISTS `SyncInsertOrUpdateClientState`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncPullRequest
DROP PROCEDURE IF EXISTS `SyncPullRequest`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncPullResponse
DROP PROCEDURE IF EXISTS `SyncPullResponse`;

-- Exportiere Struktur von Prozedur IGE_DATA.SyncResetClientState
DROP PROCEDURE IF EXISTS `SyncResetClientState`;


-- TRIGGER --

-- Exportiere Struktur von Trigger IGE_DATA.SyncClientConfiguration_after_delete
DROP TRIGGER IF EXISTS `SyncClientConfiguration_after_delete`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncClientConfiguration_after_insert
DROP TRIGGER IF EXISTS `SyncClientConfiguration_after_insert`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncConfiguration_after_delete
DROP TRIGGER IF EXISTS `SyncConfiguration_after_delete`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncConfiguration_after_insert
DROP TRIGGER IF EXISTS `SyncConfiguration_after_insert`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncDeletedRows_before_insert
DROP TRIGGER IF EXISTS `SyncDeletedRows_before_insert`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncDeletedRows_before_update
DROP TRIGGER IF EXISTS `SyncDeletedRows_before_update`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncLastTableChanges_before_insert
DROP TRIGGER IF EXISTS `SyncLastTableChanges_before_insert`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncLastTableChanges_before_update
DROP TRIGGER IF EXISTS `SyncLastTableChanges_before_update`;

-- Exportiere Struktur von Trigger IGE_DATA.SyncProtocolClients_before_insert
DROP TRIGGER IF EXISTS `SyncProtocolClients_before_insert`;


-- TABLES --

-- Exportiere Struktur von Tabelle IGE_DATA.SyncClientConfiguration
DROP TABLE IF EXISTS `SyncClientConfiguration`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncClientState
DROP TABLE IF EXISTS `SyncClientState`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncConfiguration
DROP TABLE IF EXISTS `SyncConfiguration`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncDeletedRows
DROP TABLE IF EXISTS `SyncDeletedRows`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncLastTableChanges
DROP TABLE IF EXISTS `SyncLastTableChanges`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncProtocolClients
DROP TABLE IF EXISTS `SyncProtocolClients`;

-- Exportiere Struktur von Tabelle IGE_DATA.SyncSystemLog
DROP TABLE IF EXISTS `SyncSystemLog`;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
