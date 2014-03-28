<!-- BEGIN: MAIN -->
<h2>block404</h2>
<form action="{ADMIN_BLOCK404_UPDATE_URL}" method="post" name="pageform">
<table class="cells">
	<tr>
		<td class="coltop width5">#</td>
		<td class="coltop width35">{PHP.L.301_from}</td>
		<td class="coltop width35">{PHP.L.301_date}</td>
		<td class="coltop width25">{PHP.L.Action}</td>
	</tr>
	<!-- BEGIN: R301_ROW -->
	<tr>
		<td>{ADMIN_BLOCK404_ITEM_ID}</td>
		<td>{ADMIN_BLOCK404_FROM}</td>
		<td>{ADMIN_BLOCK404_DATE}</td>
		<td class="centerall action">
			<a title="{PHP.L.Delete}" href="{ADMIN_BLOCK404_DEL_URL}" class="button">{PHP.L.Delete}</a>
		</td>
	</tr>
	<!-- END: R301_ROW -->
	<!-- BEGIN: R301_NOROW -->
	<tr>
		<td colspan="6">{PHP.L.None}</td>
	</tr>
	<!-- END: R301_NOROW -->
	<td colspan="6" class="valid">
			<button type="submit" name="rpaste" value="ok" class="submit">{PHP.L.Update}</button>
	</td>
</table>
</form>
<h2>{PHP.L.New}</h2>
<form action="{ADMIN_BLOCK404_ADD_URL}" method="post" name="pageform">
<table class="cells">
	<tr>
		<td>{PHP.L.301_from}</td>
		<td>{ADMIN_BLOCK404_FROM}</td>
	</tr>
	<tr>
		<td>{PHP.L.301_date}</td>
		<td>{ADMIN_BLOCK404_DATE}</td>
	</tr>
	<td colspan="2" class="valid">
			<button type="submit" name="rpaste" value="ok" class="submit">{PHP.L.Add}</button>
	</td>
</table>	
</form>	
<!-- END: MAIN -->