<form method="post">
<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center">
{if !$FRAMEWORK_TIENE_TITULO_MODULO}
<tr class="moduleTitle">
  <td>
    <br>
    <fieldset>
      <legend><b><img src="{$icon}" border="0" align="absmiddle" />&nbsp;&nbsp;{$title}</b></legend>
    </fieldset>
  </td>
</tr>
{/if}

<tr>
  <td>
  	<br>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="table">
      <tr>
	    <td width="20%">{$cliente.LABEL}: <span class="required">*</span></td>
	    <td width="40%">{$cliente.INPUT}</td>
	    <td width="20%">&nbsp;</td>
	    <td width="20%">&nbsp;</td>
      </tr>
      <tr>
		<td width="20%">{$descripcion.LABEL}: <span  class="required">*</span></td>
		<td width="40%">{$descripcion.INPUT}</td>
	    <td width="20%">&nbsp;</td>
	    <td width="20%">&nbsp;</td>
      </tr>
    </table>

        <table width="60%" cellpadding="4" cellspacing="0" border="0">
          <tr>
            <td align="left">
              {if $mode eq 'input'}
              <input class="button" type="submit" name="submit_guardar_cliente" value="{$SAVE}" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="{$CANCEL}"/>
                {literal}<script type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                </script>{/literal}
              {elseif $mode eq 'edit'}
              <input class="button" type="submit" name="submit_guardar_cambios" value="{$APPLY_CHANGES}" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="{$CANCEL}"/>
                {literal}<script type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                </script>{/literal}
              {else}
              <input class="button" type="submit" name="edit" value="{$EDIT}"/>
              <input class="button" type="submit" name="delete" value="{$DELETE}"  onClick="return confirmSubmit('{$CONFIRM_CONTINUE}')" />
              <input class="button" type="button" id="btn_cancel" name="cancel" value="{$CANCEL}"/>
                {literal}<script type='text/javascript'>
                    $(document).ready(function(e) {
                        $('#btn_cancel').click(function(event) {
                          window.location.href = "?menu=clientes&action=cancel";
                        });
                    });
                </script>{/literal}
              {/if}
            </td>
            {if $mode ne 'view'}
              <td align="left" nowrap><span class="letra12"><span  class="required">*</span> {$REQUIRED_FIELD}</span></td>
            {/if}
         </tr>
       </table>
  </td>
</tr>
<td>
    

</td>
</table>
<input type="hidden" name="IdCliente" value="{$IdCliente}" />
</form>