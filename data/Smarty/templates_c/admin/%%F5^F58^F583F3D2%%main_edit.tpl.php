<?php /* Smarty version 2.6.26, created on 2014-07-16 07:34:49
         compiled from design/main_edit.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'design/main_edit.tpl', 35, false),array('modifier', 'h', 'design/main_edit.tpl', 37, false),array('modifier', 'sfGetErrorColor', 'design/main_edit.tpl', 53, false),array('modifier', 'u', 'design/main_edit.tpl', 100, false),array('modifier', 'strlen', 'design/main_edit.tpl', 122, false),array('modifier', 'escape', 'design/main_edit.tpl', 128, false),array('function', 't', 'design/main_edit.tpl', 47, false),)), $this); ?>

<script type="text/javascript">
<!--
function fnTargetSelf(){
    document.form_edit.target = "_self";
}
//-->
</script>


<form name="form_edit" id="form_edit" method="post" action="?" >
<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
<input type="hidden" name="mode" value="" />
<input type="hidden" name="page_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
<input type="hidden" name="device_type_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />

    <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['err'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
        <div class="message">
            <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['err'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
        </div>
    <?php endif; ?>
    <table>
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Name_01'), $this);?>
</th>
            <td>
                <?php $this->assign('key', 'page_name'); ?>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['edit_flg']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 2): ?>
                    <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
<input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
                <?php else: ?>
                    <input type="text" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['length'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" style="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetErrorColor', true, $_tmp) : SC_Utils_Ex::sfGetErrorColor($_tmp)); ?>
" size="60" class="box60" /><span class="attention"> <?php echo smarty_function_t(array('string' => "tpl_(T_ARG1 characters max)_01",'T_ARG1' => ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['length'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp))), $this);?>
</span>
                <?php endif; ?>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
                    <div class="message">
                        <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
                    </div>
                <?php endif; ?>
            </td>
        </tr>
        <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_URL_01'), $this);?>
</th>
            <td>
                <?php $this->assign('key', 'filename'); ?>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['edit_flg']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 2): ?>
                    <?php echo ((is_array($_tmp=((is_array($_tmp=@HTTP_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
.php
                    <input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
                <?php else: ?>
                    <?php echo ((is_array($_tmp=((is_array($_tmp=@USER_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
<input type="text" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" maxlength="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['length'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" style="ime-mode: disabled;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetErrorColor', true, $_tmp) : SC_Utils_Ex::sfGetErrorColor($_tmp)); ?>
" size="40" class="box40" />.php<span class="attention"> <?php echo smarty_function_t(array('string' => "tpl_(T_ARG1 characters max)_01",'T_ARG1' => ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrForm'][$this->_tpl_vars['key']]['length'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp))), $this);?>
</span>
                <?php endif; ?>
                <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
                    <div class="attention">
                        <span class="attention"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
                    </div>
                <?php endif; ?>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <label for="header-chk"><input type="checkbox" name="header_chk" id="header-chk" value="1" <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['header_chk']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == '1'): ?>checked="checked"<?php endif; ?> /><?php echo smarty_function_t(array('string' => 'tpl_Use a common header_01'), $this);?>
</label>&nbsp;
                <label for="footer-chk"><input type="checkbox" name="footer_chk" id="footer-chk" value="1" <?php if (((is_array($_tmp=$this->_tpl_vars['arrForm']['footer_chk']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == '1'): ?>checked="checked"<?php endif; ?> /><?php echo smarty_function_t(array('string' => 'tpl_Use a common footer_01'), $this);?>
</label>
                <div>
                    <textarea id="tpl_data" class="top" name="tpl_data" rows=<?php echo ((is_array($_tmp=$this->_tpl_vars['text_row'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
 style="width: 98%;"><?php echo "\n"; ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['arrForm']['tpl_data']['value'])) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</textarea>
                    <input type="hidden" name="html_area_row" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['text_row'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" /><br />
                    <a id="resize-btn" class="btn-normal" href="javascript:;" onclick="ChangeSize('#resize-btn', '#tpl_data', 50, 13); return false;"><span><?php echo smarty_function_t(array('string' => 'tpl_Enlarge the image_01'), $this);?>
</span></a>
                </div>
            </td>
        </tr>
    </table>

    <div class="btn-area">
        <ul>
            <li><a class="btn-action" href="javascript:;" name='subm' onclick="fnTargetSelf(); fnFormModeSubmit('form_edit','confirm','',''); return false;"><span class="btn-next"><?php echo smarty_function_t(array('string' => 'tpl_Register_01'), $this);?>
</span></a></li>
        </ul>
    </div>

    <h2><?php echo smarty_function_t(array('string' => 'tpl_List of pages that can be edited_01'), $this);?>
</h2>
    <div class="btn addnew">
        <a class="btn-normal" href="?device_type_id=<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('u', true, $_tmp) : smarty_modifier_u($_tmp)); ?>
"><span><?php echo smarty_function_t(array('string' => 'tpl_New input of page_01'), $this);?>
</span></a>
    </div>
    <table class="list">
        <col width="70%" />
        <col width="10%" />
        <col width="10%" />
        <col width="10%" />
        <tr>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Name_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Layout_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Page details_01'), $this);?>
</th>
            <th><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</th>
        </tr>
        <?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrPageList'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
            <tr style="<?php if (((is_array($_tmp=$this->_tpl_vars['item']['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == ((is_array($_tmp=$this->_tpl_vars['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>background-color: <?php echo ((is_array($_tmp=@SELECT_RGB)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
;<?php endif; ?>">
                <td>
                    <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['page_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>

                </td>
                <td class="center">
                    <a href="./<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
?page_id=<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
&amp;device_type_id=<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" ><?php echo smarty_function_t(array('string' => 'tpl_Edit_01'), $this);?>
</a>
                </td>
                <td class="center">
                    <?php if (((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['filename'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('strlen', true, $_tmp) : strlen($_tmp)) >= 1): ?>
                        <a href="?page_id=<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
&amp;device_type_id=<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['device_type_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><?php echo smarty_function_t(array('string' => 'tpl_Edit_01'), $this);?>
</a>
                    <?php endif; ?>
                </td>
                <td class="center">
                    <?php if (((is_array($_tmp=$this->_tpl_vars['item']['edit_flg'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 1): ?>
                        <a href="javascript:;" onclick="fnTargetSelf(); fnFormModeSubmit('form_edit','delete','page_id','<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['page_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp, 'javascript') : smarty_modifier_escape($_tmp, 'javascript')))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
'); return false;"><?php echo smarty_function_t(array('string' => 'tpl_Remove_01'), $this);?>
</a>
                    <?php endif; ?>
                </td>
            </tr>
        <?php endforeach; endif; unset($_from); ?>
    </table>
</form>