<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=global
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

$rep_path = preg_replace('/(.+)\?(.+)/', '$1', $rep_path);
if ($_GET['e']=='page' && empty($_GET['m']) && cot_plugin_active('urleditor'))
{
	$path = cot_url('page', 'c='.$_GET['c'].'&al='.$_GET['al'].'&id='.$_GET['id']);

	if ($path != $rep_path) 
	{
		$_GET['c'] = 'system';
		$_GET['al'] = 'al404';
	}
}