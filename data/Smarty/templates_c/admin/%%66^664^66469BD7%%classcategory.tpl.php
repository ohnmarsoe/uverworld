<?php /* Smarty version 2.6.26, created on 2014-07-16 04:18:52
         compiled from products/classcategory.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'products/classcategory.tpl', 26, false),array('modifier', 'h', 'products/classcategory.tpl', 30, false),array('function', 't', 'products/classcategory.tpl', 36, false),)), $this); ?>

<form name="form1" id="form1" method="post" action="">
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="edit" />
<input type="hidden" name="classcategory_id" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrHidden'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
    <input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
<?php endforeach; endif; unset($_from); ?>
<div id="products" class="contents-main">

    <table>
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Standard name_01'), $this);?>
</th>
            <td><?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_class_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</td>
        </tr>
        <tr>
            <th><?php echo smarty_function_t(array('string' => "tpl_Category name<span class='attention'> *</span>_01",'escape' => 'none'), $this);?>
</th>
            <td>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                    <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
                <?php endif; ?>
                <input type="text" name="name" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" style="" size="30" class="box30" />
                <span class="attention"> <?php echo smarty_function_t(array('string' => "tpl_(T_ARG1 characters max)_01",'T_ARG1' => ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>
</span>
            </td>
        </tr>
    </table>
    <div class="btn-area">
        <ul>
            <li><a class="btn-action" href="javascript:;" onclick="fnFormModeSubmit('form1', 'edit', '', ''); return false;"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Save and continue_01'), $this);?>
</span></a></li>
        </ul>
    </div>

    <table class="list">
        <col />
        <col width="10%" />
        <col width="10%" />
        <col width="15%" />
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Category name_02'), $this);?>
</th>
            <th class="edit"><?php echo smarty_function_t(array('string' => 'tpl_Edit_01'), $this);?>
</th>
            <th class="delete"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Move_01'), $this);?>
</th>
        </tr>
        <?php unset($this->_sections['cnt']);
$this->_sections['cnt']['name'] = 'cnt';
$this->_sections['cnt']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['arrClassCat'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['cnt']['show'] = true;
$this->_sections['cnt']['max'] = $this->_sections['cnt']['loop'];
$this->_sections['cnt']['step'] = 1;
$this->_sections['cnt']['start'] = $this->_sections['cnt']['step'] > 0 ? 0 : $this->_sections['cnt']['loop']-1;
if ($this->_sections['cnt']['show']) {
    $this->_sections['cnt']['total'] = $this->_sections['cnt']['loop'];
    if ($this->_sections['cnt']['total'] == 0)
        $this->_sections['cnt']['show'] = false;
} else
    $this->_sections['cnt']['total'] = 0;
if ($this->_sections['cnt']['show']):

            for ($this->_sections['cnt']['index'] = $this->_sections['cnt']['start'], $this->_sections['cnt']['iteration'] = 1;
                 $this->_sections['cnt']['iteration'] <= $this->_sections['cnt']['total'];
                 $this->_sections['cnt']['index'] += $this->_sections['cnt']['step'], $this->_sections['cnt']['iteration']++):
$this->_sections['cnt']['rownum'] = $this->_sections['cnt']['iteration'];
$this->_sections['cnt']['index_prev'] = $this->_sections['cnt']['index'] - $this->_sections['cnt']['step'];
$this->_sections['cnt']['index_next'] = $this->_sections['cnt']['index'] + $this->_sections['cnt']['step'];
$this->_sections['cnt']['first']      = ($this->_sections['cnt']['iteration'] == 1);
$this->_sections['cnt']['last']       = ($this->_sections['cnt']['iteration'] == $this->_sections['cnt']['total']);
?>
            <tr style="background:<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>#ffffff<?php else: ?><?php echo ((is_array($_tmp=@SELECT_RGB)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php endif; ?>;">
                <td><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</td>
                <td align="center" >
                    <?php if (((is_array($_tmp=$this->_tpl_vars['tpl_classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                        <a href="?" onclick="fnModeSubmit('pre_edit','classcategory_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_Edit_01'), $this);?>
</a>
                    <?php else: ?>
                        <?php echo smarty_function_t(array('string' => 'tpl_being edited_01'), $this);?>

                    <?php endif; ?>
                </td>
                <td align="center">
                    <a href="?" onclick="fnModeSubmit('delete','classcategory_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</a>
                </td>
                <td align="center">
                    <?php if (((is_array($_tmp=$this->_sections['cnt']['iteration'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != 1): ?>
                        <a href="?" onclick="fnModeSubmit('up','classcategory_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_To top_01'), $this);?>
</a>
                    <?php endif; ?>
                    <?php if (((is_array($_tmp=$this->_sections['cnt']['iteration'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_sections['cnt']['last'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                        <a href="?" onclick="fnModeSubmit('down','classcategory_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrClassCat'][$this->_sections['cnt']['index']]['classcategory_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_To bottom_01'), $this);?>
</a>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endfor; endif; ?>
    </table>
    <div class="btn">
        <a class="btn-action" href="./class.php"><span class="btn-prev"><?php echo smarty_function_t(array('string' => 'tpl_Return to the standard list_01'), $this);?>
</span></a>
    </div>
</div>
</form>