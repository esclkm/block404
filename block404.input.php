<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=input
 * Order=1
 * [END_COT_EXT]
 */
 
/**
 * plugin block404 for Cotonti Siena
 * 
 * @package block404
 * @version 1.0.0
 * @author esclkm
 * @copyright 
 * @license BSD
 *  */
// Generated by Cotonti developer tool (littledev.ru)
defined('COT_CODE') or die('Wrong URL.');
global $rep_path,$del_path;
$db_block404 = !empty($db_block404) ? $db_block404 : $db_x.'block404';

//$sear_path = "http://" . $_SERVER['SERVER_NAME'] . $_SERVER['REQUEST_URI']; 
//$del_path = $cfg['mainurl'].((substr($cfg['mainurl'], -1) == '/') ? '' : '/');

//$rep_path = str_replace($del_path, '', $sear_path);
$rep_path = $_SERVER['REQUEST_URI'];
// удаляем старое
$db->delete($db_block404, "block404_date < ".(int)$sys['now']." AND block404_date <> 0");

$block404_go = $db->query("SELECT * FROM $db_block404 WHERE block404_from ='".$db->prep($rep_path)."' OR block404_from ='".$db->prep($sear_path)."' ORDER BY block404_date DESC LIMIT 1")->fetch();
if(!empty($block404_go['block404_from']) && cot_plugin_active('urleditor'))
{
	$_GET['rwr'] = str_replace($del_path, '', cot_url('page', 'c=system&al=al404'));
}

