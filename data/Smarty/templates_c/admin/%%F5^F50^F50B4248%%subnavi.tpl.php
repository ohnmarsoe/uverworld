<?php /* Smarty version 2.6.26, created on 2014-07-15 10:51:09
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/order/subnavi.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/order/subnavi.tpl', 26, false),array('function', 't', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/order/subnavi.tpl', 26, false),)), $this); ?>

<ul class="level1">
    <li id="navi-order-index" class="<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_mainno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'order' && ((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'index'): ?>on<?php endif; ?>"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
order/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Orders_01'), $this);?>
</span></a></li>
    <li id="navi-order-add" class="<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_mainno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'order' && ((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'add'): ?>on<?php endif; ?>"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
order/edit.php?mode=add"><span><?php echo smarty_function_t(array('string' => 'tpl_Order receipt registration_01'), $this);?>
</span></a></li>
    <li id="navi-order-status"
        class="<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_mainno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'order' && ((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'status'): ?>on<?php endif; ?>"
    ><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
order/status.php"><span><?php echo smarty_function_t(array('string' => 'tpl_Response status_02'), $this);?>
</span></a></li>
</ul>