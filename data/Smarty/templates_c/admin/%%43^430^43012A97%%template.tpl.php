<?php /* Smarty version 2.6.26, created on 2014-07-18 07:00:25
         compiled from design/template.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 't', 'design/template.tpl', 28, false),array('modifier', 'script_escape', 'design/template.tpl', 39, false),array('modifier', 'h', 'design/template.tpl', 42, false),)), $this); ?>

<script type="text/javascript"><!--
function submitRegister() {
    var form = document.form1;
    var msg    = "<?php echo smarty_function_t(array('string' => "tpl_The template will be changed._01"), $this);?>
";

    if (window.confirm(msg)) {
        form['mode'].value = 'register';
        form.submit();
    }
}
// -->
</script>

<form name="form1" method="post" action="?">
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="" />
<input type="hidden" name="template_code" value="" />
<input type="hidden" name="device_type_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
<div id="design" class="contents-main">
    <p class="remark">
        <?php echo smarty_function_t(array('string' => "tpl_Select a template and click the 'Save and Continue' button to,<br />change the designtemplate._01",'escape' => 'none'), $this);?>

    </p>

    <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['err'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
        <div class="message">
            <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['err'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
        </div>
    <?php endif; ?>

    <table class="list center">
        <col width="5%" />
        <col width="30%" />
        <col width="50%" />
        <col width="10%" />
        <col width="5%" />
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Selection_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Name_03'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Saving destination_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Download_01'), $this);?>
</th>
            <th class="delete"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</th>
        </tr>
        <?php $_from = ((is_array($_tmp=$this->_tpl_vars['templates'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['tpl']):
?>
        <?php $this->assign('tplcode', ((is_array($_tmp=$this->_tpl_vars['tpl']['template_code'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))); ?>
        <tr class="center">
            <td><input type="radio" name="template_code" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tplcode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" <?php if (((is_array($_tmp=$this->_tpl_vars['tplcode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ((is_array($_tmp=$this->_tpl_vars['tpl_select'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>checked="checked"<?php endif; ?> /></td>
            <td class="left"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl']['template_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</td>
            <td class="left">data/Smarty/templates/<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tplcode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
/</td>
            <td><span class="icon_confirm"><a href="javascript:;" onClick="fnFormModeSubmit('form2', 'download','template_code','<?php echo ((is_array($_tmp=$this->_tpl_vars['tplcode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
');return false;"><?php echo smarty_function_t(array('string' => 'tpl_Download_01'), $this);?>
</a></span></td>
            <td><span class="icon_delete"><a href="javascript:;" onClick="fnFormModeSubmit('form2', 'delete','template_code','<?php echo ((is_array($_tmp=$this->_tpl_vars['tplcode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
');return false;"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</a></span></td>
        </tr>
        <?php endforeach; endif; unset($_from); ?>
    </table>
    <div class="btn-area">
        <ul>
            <li><a class="btn-action" href="javascript:;" onclick="submitRegister();return false;"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Save and continue_01'), $this);?>
</span></a></li>
        </ul>
    </div>
</div>
</form>
<form name="form2" method="post" action="?">
    <input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
    <input type="hidden" name="mode" value="" />
    <input type="hidden" name="template_code" value="" />
    <input type="hidden" name="device_type_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
</form>