<?php /* Smarty version 2.6.26, created on 2014-07-16 03:51:43
         compiled from products/category.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'products/category.tpl', 25, false),array('modifier', 'h', 'products/category.tpl', 36, false),array('modifier', 'sfCutString', 'products/category.tpl', 69, false),array('function', 't', 'products/category.tpl', 41, false),)), $this); ?>

<script type="text/javascript" src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
js/breadcrumbs.js"></script>
<script type="text/javascript">//<![CDATA[
    $(function() {
        $('h2').breadcrumbs({
            'bread_crumbs': <?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_bread_crumbs'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>

        });
    });
//]]></script>
<form name="form1" id="form1" method="post" action="?" enctype="multipart/form-data">
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="edit" />
<input type="hidden" name="parent_category_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['parent_category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<input type="hidden" name="category_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
">
<input type="hidden" name="keySet" value="">
<div id="products" class="contents-main">
    <div class="btn">
        <a class="btn-normal" href="javascript:;" onclick="fnModeSubmit('csv','',''); return false;"><?php echo smarty_function_t(array('string' => 'tpl_CSV download_01'), $this);?>
</a>
        <a class="btn-normal" href='../contents/csv.php?tpl_subno_csv=category'><?php echo smarty_function_t(array('string' => 'tpl_CSV output settings_01'), $this);?>
</a>
    </div>

        <div id="products-category-left">
        <a href="?"><img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
img/contents/folder_close.gif" alt="Folder">&nbsp;<?php echo smarty_function_t(array('string' => 'tpl_Home_01'), $this);?>
</a><br />
        <?php unset($this->_sections['cnt']);
$this->_sections['cnt']['name'] = 'cnt';
$this->_sections['cnt']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['arrTree'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
            <?php $this->assign('level', ($this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['level'])); ?>

                        <?php $this->assign('close_cnt', ($this->_tpl_vars['before_level']-$this->_tpl_vars['level']+1)); ?>
            <?php if (((is_array($_tmp=$this->_tpl_vars['close_cnt'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) > 0): ?>
                <?php unset($this->_sections['n']);
$this->_sections['n']['name'] = 'n';
$this->_sections['n']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['close_cnt'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['n']['show'] = true;
$this->_sections['n']['max'] = $this->_sections['n']['loop'];
$this->_sections['n']['step'] = 1;
$this->_sections['n']['start'] = $this->_sections['n']['step'] > 0 ? 0 : $this->_sections['n']['loop']-1;
if ($this->_sections['n']['show']) {
    $this->_sections['n']['total'] = $this->_sections['n']['loop'];
    if ($this->_sections['n']['total'] == 0)
        $this->_sections['n']['show'] = false;
} else
    $this->_sections['n']['total'] = 0;
if ($this->_sections['n']['show']):

            for ($this->_sections['n']['index'] = $this->_sections['n']['start'], $this->_sections['n']['iteration'] = 1;
                 $this->_sections['n']['iteration'] <= $this->_sections['n']['total'];
                 $this->_sections['n']['index'] += $this->_sections['n']['step'], $this->_sections['n']['iteration']++):
$this->_sections['n']['rownum'] = $this->_sections['n']['iteration'];
$this->_sections['n']['index_prev'] = $this->_sections['n']['index'] - $this->_sections['n']['step'];
$this->_sections['n']['index_next'] = $this->_sections['n']['index'] + $this->_sections['n']['step'];
$this->_sections['n']['first']      = ($this->_sections['n']['iteration'] == 1);
$this->_sections['n']['last']       = ($this->_sections['n']['iteration'] == $this->_sections['n']['total']);
?></div><?php endfor; endif; ?>
            <?php endif; ?>

                        <?php unset($this->_sections['n']);
$this->_sections['n']['name'] = 'n';
$this->_sections['n']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['level'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['n']['show'] = true;
$this->_sections['n']['max'] = $this->_sections['n']['loop'];
$this->_sections['n']['step'] = 1;
$this->_sections['n']['start'] = $this->_sections['n']['step'] > 0 ? 0 : $this->_sections['n']['loop']-1;
if ($this->_sections['n']['show']) {
    $this->_sections['n']['total'] = $this->_sections['n']['loop'];
    if ($this->_sections['n']['total'] == 0)
        $this->_sections['n']['show'] = false;
} else
    $this->_sections['n']['total'] = 0;
if ($this->_sections['n']['show']):

            for ($this->_sections['n']['index'] = $this->_sections['n']['start'], $this->_sections['n']['iteration'] = 1;
                 $this->_sections['n']['iteration'] <= $this->_sections['n']['total'];
                 $this->_sections['n']['index'] += $this->_sections['n']['step'], $this->_sections['n']['iteration']++):
$this->_sections['n']['rownum'] = $this->_sections['n']['iteration'];
$this->_sections['n']['index_prev'] = $this->_sections['n']['index'] - $this->_sections['n']['step'];
$this->_sections['n']['index_next'] = $this->_sections['n']['index'] + $this->_sections['n']['step'];
$this->_sections['n']['first']      = ($this->_sections['n']['iteration'] == 1);
$this->_sections['n']['last']       = ($this->_sections['n']['iteration'] == $this->_sections['n']['total']);
?>&nbsp;&nbsp;<?php endfor; endif; ?>

                        <?php $this->assign('disp_name', ($this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_id']).".".($this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_name'])); ?>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['level'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=@LEVEL_MAX)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                <a href="?" onclick="fnModeSubmit('tree', 'parent_category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;">
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['parent_category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                    <img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
img/contents/folder_open.gif" alt="Folder">
                <?php else: ?>
                    <img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
img/contents/folder_close.gif" alt="Folder">
                <?php endif; ?>
                <?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['disp_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfCutString', true, $_tmp, 10, false) : SC_Utils_Ex::sfCutString($_tmp, 10, false)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</a><br />
            <?php else: ?>
                <img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
img/contents/folder_close.gif" alt="Folder">
                <?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['disp_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfCutString', true, $_tmp, 10, false) : SC_Utils_Ex::sfCutString($_tmp, 10, false)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</a><br />
            <?php endif; ?>

            <?php if (((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['display'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == true): ?>
                <div id="f<?php echo ((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
            <?php else: ?>
                <div id="f<?php echo ((is_array($_tmp=$this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" style="display:none">
            <?php endif; ?>

            <?php if (((is_array($_tmp=$this->_sections['cnt']['last'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                <?php unset($this->_sections['n']);
$this->_sections['n']['name'] = 'n';
$this->_sections['n']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['level'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['n']['show'] = true;
$this->_sections['n']['max'] = $this->_sections['n']['loop'];
$this->_sections['n']['step'] = 1;
$this->_sections['n']['start'] = $this->_sections['n']['step'] > 0 ? 0 : $this->_sections['n']['loop']-1;
if ($this->_sections['n']['show']) {
    $this->_sections['n']['total'] = $this->_sections['n']['loop'];
    if ($this->_sections['n']['total'] == 0)
        $this->_sections['n']['show'] = false;
} else
    $this->_sections['n']['total'] = 0;
if ($this->_sections['n']['show']):

            for ($this->_sections['n']['index'] = $this->_sections['n']['start'], $this->_sections['n']['iteration'] = 1;
                 $this->_sections['n']['iteration'] <= $this->_sections['n']['total'];
                 $this->_sections['n']['index'] += $this->_sections['n']['step'], $this->_sections['n']['iteration']++):
$this->_sections['n']['rownum'] = $this->_sections['n']['iteration'];
$this->_sections['n']['index_prev'] = $this->_sections['n']['index'] - $this->_sections['n']['step'];
$this->_sections['n']['index_next'] = $this->_sections['n']['index'] + $this->_sections['n']['step'];
$this->_sections['n']['first']      = ($this->_sections['n']['iteration'] == 1);
$this->_sections['n']['last']       = ($this->_sections['n']['iteration'] == $this->_sections['n']['total']);
?></div><?php endfor; endif; ?>
            <?php endif; ?>

            <?php $this->assign('before_level', ($this->_tpl_vars['arrTree'][$this->_sections['cnt']['index']]['level'])); ?>
        <?php endfor; endif; ?>
    </div>
    
        <div id="products-category-right">


        <div class="now_dir">
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
                <?php endif; ?>
                <input type="text" name="category_name" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm']['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" size="30" class="box30" maxlength="<?php echo ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
                <a class="btn-normal" href="javascript:;" onclick="fnModeSubmit('edit','',''); return false;"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Register_02'), $this);?>
</span></a><span class="attention">&nbsp;<?php echo smarty_function_t(array('string' => "tpl_(max T_ARG1 characters)_01",'T_ARG1' => ((is_array($_tmp=@STEXT_LEN)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>
</span>
        </div>

        <h2></h2>
        <?php if (count ( ((is_array($_tmp=$this->_tpl_vars['arrList'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 0): ?>

        <table class="list" id="categoryTable">
            <col width="5%" />
            <col width="60%" />
            <col width="10%" />
            <col width="10%" />
            <col width="25%" />
            <tr class="nodrop nodrag">
                <th><?php echo smarty_function_t(array('string' => 'tpl_ID_01'), $this);?>
</th>
                <th><?php echo smarty_function_t(array('string' => 'tpl_Category name_01'), $this);?>
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
$this->_sections['cnt']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['arrList'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
            <tr id="<?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" style="background:<?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>#ffffff<?php else: ?><?php echo ((is_array($_tmp=@SELECT_RGB)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php endif; ?>;" align="left">
                <td class="center"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</td>
                <td>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['level'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=@LEVEL_MAX)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                    <a href="?" onclick="fnModeSubmit('tree', 'parent_category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</a>
                <?php else: ?>
                    <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>

                <?php endif; ?>
                </td>
                <td class="center">
                    <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                    <a href="?" onclick="fnModeSubmit('pre_edit', 'category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_Edit_01'), $this);?>
</a>
                    <?php else: ?>
                    <?php echo smarty_function_t(array('string' => 'tpl_being edited_01'), $this);?>

                    <?php endif; ?>
                </td>
                <td class="center">
                    <a href="?" onclick="fnModeSubmit('delete', 'category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</a>
                </td>
                <td class="center">
                                <?php if (((is_array($_tmp=$this->_sections['cnt']['iteration'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != 1): ?>
                <a href="?" onclick="fnModeSubmit('up','category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_To top_01'), $this);?>
</a>
                <?php endif; ?>
                <?php if (((is_array($_tmp=$this->_sections['cnt']['iteration'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=$this->_sections['cnt']['last'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                <a href="?" onclick="fnModeSubmit('down','category_id', <?php echo ((is_array($_tmp=$this->_tpl_vars['arrList'][$this->_sections['cnt']['index']]['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
); return false;"><?php echo smarty_function_t(array('string' => 'tpl_To bottom_01'), $this);?>
</a>
                <?php endif; ?>
                </td>

            </tr>
            <?php endfor; endif; ?>
        </table>
        <?php else: ?>
        <p><?php echo smarty_function_t(array('string' => "tpl_No categories are registered for this hierarchy._01"), $this);?>
</p>
        <?php endif; ?>
    </div>
    
</div>
</form>