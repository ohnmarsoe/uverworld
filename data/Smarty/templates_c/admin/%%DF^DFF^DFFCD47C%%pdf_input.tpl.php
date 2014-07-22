<?php /* Smarty version 2.6.26, created on 2014-07-16 04:47:53
         compiled from order/pdf_input.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'order/pdf_input.tpl', 40, false),array('modifier', 'h', 'order/pdf_input.tpl', 43, false),array('modifier', 'join', 'order/pdf_input.tpl', 141, false),array('function', 't', 'order/pdf_input.tpl', 134, false),array('function', 'sfSetErrorStyle', 'order/pdf_input.tpl', 148, false),array('function', 'html_options', 'order/pdf_input.tpl', 158, false),)), $this); ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => (@TEMPLATE_ADMIN_REALDIR)."admin_popup_header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<script type="text/javascript">
<!--
self.moveTo(20,20);self.focus();

function lfPopwinSubmit(formName) {
    win02('about:blank','pdf','1000','900');
    document[formName].target = "pdf";
    document[formName].submit();
    return false;
}

	$(function(){
        //console.log(ymd);
        var dateFormat = $.datepicker.regional['<?php echo ((is_array($_tmp=@LANG_CODE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
'].dateFormat;

        <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != '' && ((is_array($_tmp=$this->_tpl_vars['arrForm']['month'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != '' && ((is_array($_tmp=$this->_tpl_vars['arrForm']['day'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ''): ?>
        var year  = '<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
';
        var month = '<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['month'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
';
        var day   = '<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['day'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
';
        var ymd = $.datepicker.formatDate(dateFormat, new Date(year, month - 1, day));
        $("#datepicker").val(ymd);
        //console.log(ymd);
        <?php endif; ?>

		$( "#datepicker" ).datepicker({
		beforeShowDay: function(date) {
			if(date.getDay() == 0) {
				return [true,"date-sunday"];
			} else if(date.getDay() == 6){
				return [true,"date-saturday"];
			} else {
				return [true];
			}
		}
        ,changeMonth: 'true'
		,changeYear: 'true'
		,onSelect: function(dateText, inst){
            var year  = inst.selectedYear;
            var month = inst.selectedMonth + 1;
            var day   = inst.selectedDay;
			setDate(year + '/' + month + '/' + day);
		},
		showButtonPanel: true,
		beforeShow: showAdditionalButton,
		onChangeMonthYear: showAdditionalButton
		});

		$("#datepicker").change( function() {
            var dateText   = $(this).val();
            var dateFormat = $.datepicker.regional['<?php echo ((is_array($_tmp=@LANG_CODE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
'].dateFormat;
            // console.log(dateText);
            // console.log(dateFormat);
            var date;
            var year  = '';
            var month = '';
            var day   = '';
            try {
                date = $.datepicker.parseDate(dateFormat, dateText);
                year  = date.getFullYear();
                month = date.getMonth() + 1;
                day   = date.getDate();
            } catch (e) {
                // console.log(e);
                // clear date text
                $(this).val('');
            }
            setDate(year + '/' + month + '/' + day);
		});

	});

	var btn = $('<button class="ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all" type="button">Clear</button>');

	var showAdditionalButton = function (input) {
		setTimeout(function () {
			var buttonPane = $(input)
					 .datepicker("widget")
					 .find(".ui-datepicker-buttonpane");
			btn
					.unbind("click")
					.bind("click", function () {
						$.datepicker._clearDate(input);
						$("*[name=year]").val("");
						$("*[name=month]").val("");
						$("*[name=day]").val("");
					});
			btn.appendTo(buttonPane);
		}, 1);
	};

    function setDate(dateText){
        var dates = dateText.split('/');
        $("*[name=year]").val(dates[0]);
        $("*[name=month]").val(dates[1]);
        $("*[name=day]").val(dates[2]);
    }

//-->
</script>

<form name="form1" id="form1" method="post" action="?">
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="confirm" />
<?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrForm']['order_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['order_id']):
?>
    <input type="hidden" name="order_id[]" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['order_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<?php endforeach; endif; unset($_from); ?>

<h2><!--コンテンツタイトル--><?php echo smarty_function_t(array('string' => 'tpl_Ledger creation_01'), $this);?>
</h2>

<table class="form">
    <col width="20%" />
    <col width="80%" />
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Order number_01'), $this);?>
</th>
        <td><?php echo join(((is_array($_tmp=$this->_tpl_vars['arrForm']['order_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)), ', '); ?>
</td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => "tpl_Issuance date<span class='attention'> *</span>_01",'escape' => 'none'), $this);?>
</th>
        <td><?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input id="datepicker"
                   type="text"
                   value="" <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?><?php echo SC_Utils_Ex::sfSetErrorStyle(array(), $this);?>
<?php endif; ?> />
            <input type="hidden" name="year" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['year'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
            <input type="hidden" name="month" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['month'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
            <input type="hidden" name="day" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['day'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Ledger type_01'), $this);?>
</th>
        <td><?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['download'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['download'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <select name="type">
            <?php echo smarty_function_html_options(array('options' => ((is_array($_tmp=$this->_tpl_vars['arrType'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'selected' => ((is_array($_tmp=$this->_tpl_vars['arrForm']['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>

            </select>
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Download method_01'), $this);?>
</th>
        <td><?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['download'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['download'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <select name="download">
            <?php echo smarty_function_html_options(array('options' => ((is_array($_tmp=$this->_tpl_vars['arrDownload'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'selected' => ((is_array($_tmp=$this->_tpl_vars['arrForm']['download'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>

            </select>
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Ledger title_01'), $this);?>
</th>
        <td><?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['title'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['title'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input type="text" name="title" size="40" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['arrForm']['title'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <span style="font-size: 80%;"><?php echo smarty_function_t(array('string' => "tpl_* The default title is displayed when field is blank._01"), $this);?>
</span><br />
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Ledger message_01'), $this);?>
</th>
        <td><?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['msg1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['msg1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php echo smarty_function_t(array('string' => "tpl_1st line:_01"), $this);?>
<input type="text" name="msg1" size="40" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['msg1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['msg2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['msg1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php echo smarty_function_t(array('string' => "tpl_2nd line:_01"), $this);?>
<input type="text" name="msg2" size="40" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['msg2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['msg3'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['msg3'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php echo smarty_function_t(array('string' => "tpl_3rd line:_01"), $this);?>
<input type="text" name="msg3" size="40" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['msg3'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <span style="font-size: 80%;"><?php echo smarty_function_t(array('string' => "tpl_* The default message is displayed when fields are blank. _01"), $this);?>
</span><br />
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Remarks_01'), $this);?>
</th>
        <td>
            <?php echo smarty_function_t(array('string' => "tpl_1st line:_01"), $this);?>
<input type="text" name="etc1" size="40" value="" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['etc2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['msg1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php echo smarty_function_t(array('string' => "tpl_2nd line:_01"), $this);?>
<input type="text" name="etc2" size="40" value="" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['etc3'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['msg3'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php echo smarty_function_t(array('string' => "tpl_3rd line:_01"), $this);?>
<input type="text" name="etc3" size="40" value="" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/><br />
            <span style="font-size: 80%;"><?php echo smarty_function_t(array('string' => "tpl_* Not displayed when fields are blank._01"), $this);?>
</span><br />
        </td>
    </tr>
    <?php if (((is_array($_tmp=@USE_POINT)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) !== false): ?>
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Point notation_01'), $this);?>
</th>
            <td>
                <label><input type="radio" name="disp_point" value="1" checked="checked" /><?php echo smarty_function_t(array('string' => 'tpl_Yes_01'), $this);?>
</label>&nbsp;<label><input type="radio" name="disp_point" value="0" /><?php echo smarty_function_t(array('string' => 'tpl_No_01'), $this);?>
</label><br />
                <span style="font-size: 80%;"><?php echo smarty_function_t(array('string' => "tpl_* Even if 'Yes' is selected, it is not displayed unless the customer is a member._01"), $this);?>
</span>
            </td>
        </tr>
    <?php else: ?>
        <input type="hidden" name="disp_point" value="0" />
    <?php endif; ?>
</table>

<div class="btn-area">
    <ul>
        <li><a class="btn-action" href="javascript:;" onclick="return lfPopwinSubmit('form1');"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Create using these contents_01'), $this);?>
</span></a></li>
    </ul>
</div>

</form>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => (@TEMPLATE_ADMIN_REALDIR)."admin_popup_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>