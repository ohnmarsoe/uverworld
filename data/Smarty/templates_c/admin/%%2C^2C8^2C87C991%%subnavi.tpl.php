<?php /* Smarty version 2.6.26, created on 2014-07-15 10:51:09
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/design/subnavi.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/design/subnavi.tpl', 26, false),array('function', 't', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/admin/design/subnavi.tpl', 26, false),)), $this); ?>

<ul class="level1">
    <li class="on_level2"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_PC_01'), $this);?>
</span></a>
        <ul class="level2">
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'layout'): ?> class="on"<?php endif; ?> id="navi-design-layout-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Layout settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'main_edit'): ?> class="on"<?php endif; ?> id="navi-design-main-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/main_edit.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Page detail settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'bloc'): ?> class="on"<?php endif; ?> id="navi-design-bloc-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/bloc.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Block settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'header'): ?> class="on"<?php endif; ?> id="navi-design-header-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/header.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => "tpl_Header/footer settings_01"), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'css'): ?> class="on"<?php endif; ?> id="navi-design-css-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/css.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_CSS settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'template'): ?> class="on"<?php endif; ?> id="navi-design-template-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/template.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'up_down'): ?> class="on"<?php endif; ?> id="navi-design-add-<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/up_down.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_PC)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template addition_01'), $this);?>
</span></a></li>
        </ul>
    </li>
<?php if (((is_array($_tmp=@USE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) !== false): ?>
    <li class="on_level2"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Mobile_01'), $this);?>
</span></a>
        <ul class="level2">
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'layout'): ?> class="on"<?php endif; ?> id="navi-design-layout-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Layout settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'main_edit'): ?> class="on"<?php endif; ?> id="navi-design-main-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/main_edit.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Page detail settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'bloc'): ?> class="on"<?php endif; ?> id="navi-design-bloc-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/bloc.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Block settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'header'): ?> class="on"<?php endif; ?> id="navi-design-header-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/header.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => "tpl_Header/footer settings_01"), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'css'): ?> class="on"<?php endif; ?> id="navi-design-css-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/css.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_CSS settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'template'): ?> class="on"<?php endif; ?> id="navi-design-template-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/template.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'up_down'): ?> class="on"<?php endif; ?> id="navi-design-add-<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/up_down.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_MOBILE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template addition_01'), $this);?>
</span></a></li>
        </ul>
    </li>
<?php endif; ?>
    <li class="on_level2"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Smartphone_01'), $this);?>
</span></a>
        <ul class="level2">
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'layout'): ?> class="on"<?php endif; ?> id="navi-design-layout-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Layout settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'main_edit'): ?> class="on"<?php endif; ?> id="navi-design-main-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/main_edit.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Page detail settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'bloc'): ?> class="on"<?php endif; ?> id="navi-design-bloc-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/bloc.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Block settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'header'): ?> class="on"<?php endif; ?> id="navi-design-header-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/header.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => "tpl_Header/footer settings_01"), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'css'): ?> class="on"<?php endif; ?> id="navi-design-css-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/css.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_CSS settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'template'): ?> class="on"<?php endif; ?> id="navi-design-template-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/template.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template settings_01'), $this);?>
</span></a></li>
            <li<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_subno'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'up_down'): ?> class="on"<?php endif; ?> id="navi-design-add-<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php echo ((is_array($_tmp=@ADMIN_DIR)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
design/up_down.php?device_type_id=<?php echo ((is_array($_tmp=@DEVICE_TYPE_SMARTPHONE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_Template addition_01'), $this);?>
</span></a></li>
        </ul>
    </li>
</ul>