<?php /* Smarty version 2.6.26, created on 2014-07-16 06:56:07
         compiled from total/subtitle.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'total/subtitle.tpl', 25, false),array('function', 't', 'total/subtitle.tpl', 26, false),)), $this); ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'term' || ((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ""): ?>
    <strong><?php echo smarty_function_t(array('string' => 'tpl_Sales by period_01'), $this);?>
</strong>&nbsp;(
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'day' || ((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ''): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_By date_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'day');"><?php echo smarty_function_t(array('string' => 'tpl_By date_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'month'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_By month_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'month');"><?php echo smarty_function_t(array('string' => 'tpl_By month_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'year'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_By year_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'year');"><?php echo smarty_function_t(array('string' => 'tpl_By year_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'wday'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_By day_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'wday');"><?php echo smarty_function_t(array('string' => 'tpl_By day_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'hour'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_By time_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'hour');"><?php echo smarty_function_t(array('string' => 'tpl_By time_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    )
<?php endif; ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'products'): ?>
    <strong><?php echo smarty_function_t(array('string' => 'tpl_Sales by product_01'), $this);?>
</strong>&nbsp;(
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'all' || ((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ''): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_Overall_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'all');"><?php echo smarty_function_t(array('string' => 'tpl_Overall_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'member'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_Member_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'member');"><?php echo smarty_function_t(array('string' => 'tpl_Member_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'nonmember'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => "tpl_Non-member_01"), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'nonmember');"><?php echo smarty_function_t(array('string' => "tpl_Non-member_01"), $this);?>
</a>&nbsp;
    <?php endif; ?>
    )
<?php endif; ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'age'): ?>
    <strong><?php echo smarty_function_t(array('string' => 'tpl_Sales by age group_01'), $this);?>
</strong>&nbsp;(
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'all' || ((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ''): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_Overall_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'all');"><?php echo smarty_function_t(array('string' => 'tpl_Overall_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'member'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_Member_01'), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'member');"><?php echo smarty_function_t(array('string' => 'tpl_Member_01'), $this);?>
</a>&nbsp;
    <?php endif; ?>
    <?php if (((is_array($_tmp=$_POST['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'nonmember'): ?>
        <span class="over"><?php echo smarty_function_t(array('string' => "tpl_Non-member_01"), $this);?>
</span>&nbsp;
    <?php else: ?>
        <a href="?" onclick="document.form1.mode.value='search'; return fnSetFormSubmit('form1', 'type', 'nonmember');"><?php echo smarty_function_t(array('string' => "tpl_Non-member_01"), $this);?>
</a>&nbsp;
    <?php endif; ?>
    )
<?php endif; ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'job'): ?>
    <strong><?php echo smarty_function_t(array('string' => 'tpl_Sales by occupation_01'), $this);?>
</strong>&nbsp;(
    <span class="over"><?php echo smarty_function_t(array('string' => 'tpl_Overall_01'), $this);?>
</span>
    )
    <?php endif; ?>

<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['page']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'member'): ?>
    <strong><?php echo smarty_function_t(array('string' => 'tpl_Sales by member_01'), $this);?>
</strong>
<?php endif; ?>