<?php /* Smarty version 2.6.26, created on 2014-07-16 07:38:18
         compiled from system/input.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'system/input.tpl', 34, false),array('modifier', 'h', 'system/input.tpl', 35, false),array('modifier', 'sfGetErrorColor', 'system/input.tpl', 97, false),array('modifier', 'sfGetChecked', 'system/input.tpl', 97, false),array('function', 't', 'system/input.tpl', 40, false),array('function', 'html_options', 'system/input.tpl', 87, false),)), $this); ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => (@TEMPLATE_ADMIN_REALDIR)."admin_popup_header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<script type="text/javascript">
<!--
self.moveTo(20,20);self.focus();
//-->
</script>

<form name="form1" id="form1" method="post" action="" onsubmit="return fnRegistMember();">
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_mode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<input type="hidden" name="member_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_member_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<input type="hidden" name="pageno" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_pageno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<input type="hidden" name="old_login_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_old_login_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">

<h2><?php echo smarty_function_t(array('string' => "tpl_Member registration/editing_01"), $this);?>
</h2>

<table>
    <col width="20%" />
    <col width="80%" />
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Name_03'), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input type="text" name="name" size="30" class="box30" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
            <span class="attention"><?php echo smarty_function_t(array('string' => "tpl_* Enter required_01"), $this);?>
</span>
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Affiliation_01'), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['department'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['department'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input type="text" name="department" size="30" class="box30" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['department'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Login ID_01'), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['login_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['login_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input type="text" name="login_id" size="20" class="box20"    value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['login_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/>
            <span class="attention"><?php echo smarty_function_t(array('string' => "tpl_* Enter required_01"), $this);?>
</span><br />
            <?php echo smarty_function_t(array('string' => "tpl_* Alphanumeric characters T_ARG1 to T_ARG2 _01",'T_ARG1' => ((is_array($_tmp=@ID_MIN_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'T_ARG2' => ((is_array($_tmp=@ID_MAX_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>

        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Password_01'), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['password'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['password'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['password02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <input type="password" name="password" size="20" class="box20" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['arrForm']['password'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" onfocus="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_onfocus'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/>
            <span class="attention"><?php echo smarty_function_t(array('string' => "tpl_* Enter required_01"), $this);?>
</span><br />
            <?php echo smarty_function_t(array('string' => "tpl_* Alphanumeric characters T_ARG1 to T_ARG2 _01",'T_ARG1' => ((is_array($_tmp=@ID_MIN_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'T_ARG2' => ((is_array($_tmp=@ID_MAX_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>

            <br />
            <input type="password" name="password02" size="20" class="box20" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['arrForm']['password02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" onfocus="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_onfocus'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"/>
            <p><span class="attention mini"><?php echo smarty_function_t(array('string' => 'tpl_Enter twice for confirmation_01'), $this);?>
</span></p>
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Access_01'), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['authority'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['authority'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <select name="authority">
                <option value=""><?php echo smarty_function_t(array('string' => 'tpl_Please make a selection_01'), $this);?>
</option>
                <?php echo smarty_function_html_options(array('options' => ((is_array($_tmp=$this->_tpl_vars['arrAUTHORITY'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'selected' => ((is_array($_tmp=$this->_tpl_vars['arrForm']['authority'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>

            </select>
            <span class="attention"><?php echo smarty_function_t(array('string' => "tpl_* Enter required_01"), $this);?>
</span>
        </td>
    </tr>
    <tr>
        <th><?php echo smarty_function_t(array('string' => "tpl_Operating/Not operating_01"), $this);?>
</th>
        <td>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?><span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span><?php endif; ?>
            <?php $this->assign('key', 'work'); ?>
            <input type="radio" id="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
_1" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="1" style="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrErr']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetErrorColor', true, $_tmp) : SC_Utils_Ex::sfGetErrorColor($_tmp)); ?>
" <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetChecked', true, $_tmp, 1) : SC_Utils_Ex::sfGetChecked($_tmp, 1)); ?>
 /><label for="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
_1"><?php echo smarty_function_t(array('string' => 'tpl_Operating_01'), $this);?>
</label>
            <input type="radio" id="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
_0" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="0" style="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrErr']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetErrorColor', true, $_tmp) : SC_Utils_Ex::sfGetErrorColor($_tmp)); ?>
" <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['work'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetChecked', true, $_tmp, 0) : SC_Utils_Ex::sfGetChecked($_tmp, 0)); ?>
 /><label for="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
_0"><?php echo smarty_function_t(array('string' => 'tpl_Not operating_01'), $this);?>
</label>
            <span class="attention"><?php echo smarty_function_t(array('string' => "tpl_* Enter required_01"), $this);?>
</span>
        </td>
    </tr>
</table>

<div class="btn-area">
    <ul>
        <li><a class="btn-action" href="javascript:;" onclick="fnFormModeSubmit('form1', '<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_mode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
', '', ''); return false;"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Save and continue_01'), $this);?>
</span></a></li>
    </ul>
</div>
</form>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => (@TEMPLATE_ADMIN_REALDIR)."admin_popup_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>