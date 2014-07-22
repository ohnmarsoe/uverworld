<?php /* Smarty version 2.6.26, created on 2014-07-16 06:56:30
         compiled from total/page_products.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 't', 'total/page_products.tpl', 27, false),array('modifier', 'script_escape', 'total/page_products.tpl', 36, false),array('modifier', 'h', 'total/page_products.tpl', 49, false),array('modifier', 'sfCutString', 'total/page_products.tpl', 50, false),array('modifier', 'number_format', 'total/page_products.tpl', 53, false),)), $this); ?>

<table id="total-products" class="list">
    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Ranking_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Product code_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Product name_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Number of items purchased_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Quantity_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Unit price_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Amount_01'), $this);?>
</th>
    </tr>

    <?php unset($this->_sections['cnt']);
$this->_sections['cnt']['name'] = 'cnt';
$this->_sections['cnt']['loop'] = is_array($_loop=((is_array($_tmp=$this->_tpl_vars['arrResults'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
                <?php $this->assign('type', ($this->_sections['cnt']['index']%2)); ?>
        <?php if (((is_array($_tmp=$this->_tpl_vars['type'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 0): ?>
                        <?php $this->assign('color', 'even'); ?>
        <?php else: ?>
                        <?php $this->assign('color', 'odd'); ?>
        <?php endif; ?>

        <tr class="<?php echo ((is_array($_tmp=$this->_tpl_vars['color'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
            <td class="center"><?php echo ((is_array($_tmp=$this->_sections['cnt']['iteration'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</td>
            <td class="right"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['product_code'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</td>
            <td class="left"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['product_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfCutString', true, $_tmp, 40, false) : SC_Utils_Ex::sfCutString($_tmp, 40, false)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</td>
            <td class="right"><?php echo smarty_function_t(array('string' => 'tpl_T_ARG1 item_01','T_ARG1' => ((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['order_count'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))), $this);?>
</td>
            <td class="right"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['products_count'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</td>
            <td class="right"><?php echo smarty_function_t(array('string' => "tpl_&#36; T_ARG1_01",'escape' => 'none','T_ARG1' => ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['price'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp))), $this);?>
</td>
            <td class="right"><?php echo smarty_function_t(array('string' => "tpl_&#36; T_ARG1_01",'escape' => 'none','T_ARG1' => ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrResults'][$this->_sections['cnt']['index']]['total'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp))), $this);?>
</td>
        </tr>
    <?php endfor; endif; ?>

    <tr>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Ranking_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Product code_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Product name_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Number of items purchased_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Quantity_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Unit price_01'), $this);?>
</th>
        <th><?php echo smarty_function_t(array('string' => 'tpl_Amount_01'), $this);?>
</th>
    </tr>
</table>