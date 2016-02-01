CREATE TABLE IF NOT EXISTS `#__feed` (
	`id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`catid` int(11) unsigned NOT NULL DEFAULT '0',
	`alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
	`created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`created_by` int(11) unsigned NOT NULL DEFAULT '0',
	`publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
	PRIMARY KEY (id)
)
CHARACTER SET utf8
COLLATE utf8_general_ci;
