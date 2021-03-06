<div id="${dialogId}" title="倉庫検索" style="display: none;">
	<span id="${dialogId}_errors" style="color: red">
	</span>
	<form>
		<table class="forms" summary="倉庫検索条件" style="width: 550px;">
			<colgroup>
				<col span="1" style="width: 12%">
				<col span="1" style="width: 20%">
				<col span="1" style="width: 16%">
				<col span="1" style="width: 20%">
			</colgroup>
			<tr>
				<th>倉庫コード</th><td><input id="${dialogId}_warehouseCode" name="${dialogId}_warehouseCode" type="text" value="" style="width:80px; ime-mode: disabled;" tabindex="10000"></td>
				<th>倉庫名</th><td><input id="${dialogId}_warehouseName" name="${dialogId}_warehouseName" type="text" value="" style="width:150px;" tabindex="10001"></td>
			</tr>
			<tr>
				<th>倉庫状態</th>
				<td colspan="3">
				<select id="${dialogId}_warehouseState" name="${dialogId}_warehouseState" tabindex="10003">
					<option value=""></option>
					<option value="運用中">運用中</option>
					<option value="棚卸中">棚卸中</option>
					<option value="廃止">廃止</option>
				</select>
				</td>
			</tr>
		</table>

		<div style="width: 550px; text-align: right">
			<button type="reset" style="width: 70px" tabindex="10050" onclick="$('#${dialogId}_errors').empty();">初期化</button>
			<button type="button" style="width: 70px" tabindex="10051"
				onclick="$('#${dialogId}_selectButton').attr('disabled', true);
					_searchWarehouse( '${dialogId}');">検索</button>
		</div>
	</form>

	<span id="${dialogId}ListContainer">
		検索結果件数： 0件
		<div style="padding: 0px; border: none; width: 550px; height: 220px; overflow: hidden;">
			<table id="${dialogId}List" summary="倉庫検索結果" style="width: 540px;">
				<colgroup>
					<col span="1" style="width: 10%">
					<col span="1" style="width: 15%">
					<col span="1" style="width: 20%">
					<col span="1" style="width: 45%">
				</colgroup>
				<tr>
					<th>&nbsp;</th>
					<th>倉庫コード</th>
					<th>倉庫名</th>
					<th>倉庫状態</th>
				</tr>
			</table>
		</div>
	</span>

	<div style="width: 550px; text-align: right">
		<button id="${dialogId}_selectButton" type="button" style="width: 70px" tabindex="10150"
			onclick="_selectSearchResult( '${dialogId}', 'selectedWarehouse' );
					$('#${dialogId}').dialog('close');" disabled>選択</button>
		<button id="" type="button" style="width: 70px" tabindex="10151"
			onclick="$('#${dialogId}').dialog('close');">閉じる</button>
	</div>

</div>