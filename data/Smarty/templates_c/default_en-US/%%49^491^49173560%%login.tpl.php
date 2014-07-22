<?php /* Smarty version 2.6.26, created on 2014-07-15 11:06:08
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 25, false),array('modifier', 'h', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 29, false),array('modifier', 'number_format', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 35, false),array('modifier', 'default', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 35, false),array('modifier', 'sfGetChecked', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 50, false),array('modifier', 'sfTrimURL', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/frontparts/bloc/login.tpl', 58, false),)), $this); ?>

<div class="block_outer">
    <div id="login_area">
        <h2><img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
img/title/icon_bloc_login.gif" /><span class="title">Login</span></h2>
        <form name="login_form" id="login_form" method="post" action="<?php echo ((is_array($_tmp=@HTTPS_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
frontparts/login_check.php" onsubmit="return fnCheckLogin('login_form')">
            <input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
            <input type="hidden" name="mode" value="login" />
            <input type="hidden" name="url" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$_SERVER['REQUEST_URI'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
            <div class="block_body">
                <?php if (((is_array($_tmp=$this->_tpl_vars['tpl_login'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                    <p>Welcome<br />
                        <span class="user_name"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_name1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
 <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_name2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</span><br />
                        <?php if (((is_array($_tmp=@USE_POINT)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) !== false): ?>
                            Points:<span class="point"> <?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_user_point'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)))) ? $this->_run_mod_handler('default', true, $_tmp, 0) : smarty_modifier_default($_tmp, 0)); ?>
 pts</span>
                        <?php endif; ?>
                    </p>
                    <?php if (! ((is_array($_tmp=$this->_tpl_vars['tpl_disable_logout'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                        <p class="btn">
							<button class="bt02" onclick="fnFormModeSubmit('login_form', 'logout', '', ''); return false;">Log out</button>						
                        </p>
                    <?php endif; ?>
                <?php else: ?>
                    <dl class="formlist">
                        <dt>E-mail address</dt>
                        <dd>
                            <input type="text" name="login_email" class="box140" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_login_email'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" style="ime-mode: disabled;" />
                        </dd>
                        <dd class="mini">
                            <input type="checkbox" name="login_memory" id="login_memory" value="1" <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_login_memory'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfGetChecked', true, $_tmp, 1) : SC_Utils_Ex::sfGetChecked($_tmp, 1)); ?>
 />
                            <label for="login_memory"><span>Remember password</span></label>
                        </dd>
                    </dl>
                    <dl class="formlist">
                        <dt class="password">Password</dt>
                        <dd><input type="password" name="login_pass" class="box140" /></dd>
                        <dd class="mini">
                        <a href="<?php echo ((is_array($_tmp=((is_array($_tmp=@HTTPS_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfTrimURL', true, $_tmp) : SC_Utils_Ex::sfTrimURL($_tmp)); ?>
/forgot/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" onclick="win01('<?php echo ((is_array($_tmp=((is_array($_tmp=@HTTPS_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfTrimURL', true, $_tmp) : SC_Utils_Ex::sfTrimURL($_tmp)); ?>
/forgot/<?php echo ((is_array($_tmp=@DIR_INDEX_PATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
','forget','600','400'); return false;" target="_blank">Retrieve lost password here</a>
                        </dd>
                    </dl>
                    <p class="btn">
						<button class="bt02">Login</button>
                    </p>
                <?php endif; ?>
            </div>
        </form>
    </div>
</div>