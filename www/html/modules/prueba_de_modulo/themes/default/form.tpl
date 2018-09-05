<table width="100%" border="0" cellspacing="0" cellpadding="4" align="center">
    <tr class="letra12">
        {if $mode eq 'input'}
        <td align="left">
            <input class="button" type="submit" name="save_new" value="{$SAVE}">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="{$CANCEL}">
        </td>
        {elseif $mode eq 'view'}
        <td align="left">
            <input class="button" type="submit" name="cancel" value="{$CANCEL}">
        </td>
        {elseif $mode eq 'edit'}
        <td align="left">
            <input class="button" type="submit" name="save_edit" value="{$EDIT}">&nbsp;&nbsp;
            <input class="button" type="submit" name="cancel" value="{$CANCEL}">
        </td>
        {/if}
        <td align="right" nowrap><span class="letra12"><span  class="required">*</span> {$REQUIRED_FIELD}</span></td>
    </tr>
</table>
<table class="tabForm" style="font-size: 16px;" width="100%" >
    <tr class="letra12">
        <td align="left"><b>{$algo.LABEL}: <span  class="required">*</span></b></td>
        <td align="left">{$algo.INPUT}</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b>{$prueba.LABEL}: <span  class="required">*</span></b></td>
        <td align="left">{$prueba.INPUT}</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b>{$campo.LABEL}: <span  class="required">*</span></b></td>
        <td align="left">{$campo.INPUT}</td>
    </tr>
    <tr class="letra12">
        <td align="left"><b>{$area.LABEL}: <span  class="required">*</span></b></td>
        <td align="left">{$area.INPUT}</td>
    </tr>

</table>
<input class="button" type="hidden" name="id" value="{$ID}" />