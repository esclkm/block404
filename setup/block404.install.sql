-- Pages table
CREATE TABLE IF NOT EXISTS `cot_block404` (
  `block404_id` int(11) unsigned NOT NULL auto_increment,
  `block404_from` varchar(255) collate utf8_unicode_ci NOT NULL,
  `block404_date` int(11) NOT NULL default '0',
  `block404_type` varchar(16) collate utf8_unicode_ci default NULL,
  `block404_regex` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`block404_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;