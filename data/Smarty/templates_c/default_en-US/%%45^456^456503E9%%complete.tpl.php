<?php /* Smarty version 2.6.26, created on 2014-07-16 03:08:41
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/shopping/complete.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/shopping/complete.tpl', 33, false),array('modifier', 'h', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/shopping/complete.tpl', 33, false),array('modifier', 'nl2br', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/shopping/complete.tpl', 43, false),array('modifier', 'escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/shopping/complete.tpl', 59, false),)), $this); ?>

<div id="undercolumn">
    <div id="undercolumn_shopping">
        <div class="flow_area">
			<ol>
			<li><span>&gt; STEP1</span><br />Delivery destination</li>
			<li class="large"><span>&gt; STEP2</span><br />Payment method and delivery time</li>
			<li><span>&gt; STEP3</span><br />Confirmation</li>
			<li class="last active"><span>&gt; STEP4</span><br />Order complete</li>
			</ol>
		</div>
        <h2 class="title"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_title'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</h2>

        <!-- ▼その他決済情報を表示する場合は表示 -->
        <?php if (((is_array($_tmp=$this->_tpl_vars['arrOther']['title']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
            <p><span class="attention">*<?php echo ((is_array($_tmp=$this->_tpl_vars['arrOther']['title']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
 information</span><br />
                <?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrOther'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
                    <?php if (((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != 'title'): ?>
                        <?php if (((is_array($_tmp=$this->_tpl_vars['item']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
                            <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
:
                        <?php endif; ?>
                            <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['value'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
<br />
                    <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?>
            </p>
        <?php endif; ?>
        <!-- ▲コンビに決済の場合には表示 -->

        <div id="complete_area">
            <p class="message">Thank you for purchasing from <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrInfo']['shop_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
.</p>
            <p>A confirmation e-mail regarding your order has just been sent.<br />
               In the event that a response mail is not received, please contact us.<br />
               We look forward to doing business with you again in the future.</p>

            <div class="shop_information">
                <p class="name"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrInfo']['shop_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</p>
                <p>Phone:<?php echo ((is_array($_tmp=$this->_tpl_vars['arrInfo']['tel01'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
-<?php echo ((is_array($_tmp=$this->_tpl_vars['arrInfo']['tel02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
-<?php echo ((is_array($_tmp=$this->_tpl_vars['arrInfo']['tel03'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
 <?php if (((is_array($_tmp=$this->_tpl_vars['arrInfo']['business_hour'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>(Available hours/<?php echo ((is_array($_tmp=$this->_tpl_vars['arrInfo']['business_hour'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
)<?php endif; ?><br />
                E-mail:<a href="mailto:<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrInfo']['email02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp, 'hex') : smarty_modifier_escape($_tmp, 'hex')); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrInfo']['email02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp, 'hexentity') : smarty_modifier_escape($_tmp, 'hexentity')); ?>
</a>
                </p>
            </div>
        </div>

        <div class="btn_area">
            <ul>
                <li>
                    <a class="bt02" href="<?php echo ((is_array($_tmp=@TOP_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">Home</a>
                </li>
            </ul>
        </div>

    </div>
</div>