<?php /* Smarty version 2.6.26, created on 2014-07-18 05:08:27
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/footer.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/footer.tpl', 36, false),array('modifier', 'h', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/footer.tpl', 48, false),)), $this); ?>

<!--▼FOOTER-->
		<div id="footer">
			<address>Copyright&nbsp;&copy;&nbsp;2005-2014&nbsp;&nbsp;POWERPLAY&nbsp;INC.&nbsp; All&nbsp;rights&nbsp;reserved.</address>
		</div><!-- footer -->
	</div><!-- main-wrap .inner -->
	
	
	<!-- HEADER -->
	<div id="header-wrap">
			<div id="header-bg"></div>
			
			<header id="head-top" class="wrap-outer">
				<div class="wrap-inner clearfix">
					<div id="logo"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/img/header/head_logo.png" alt="logo" /></a></div>
					
					<div id="smp-menu" class="clearfix">
						<ul id="sns-btn">
							<li><a href="https://twitter.com/UVERworld_dR2" target="_blank"><span class="icon">t</span></a></li>
						</ul>
					</div>
					
					<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_login'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
					<!-- ログイン後 -->
					<form name="login_form" id="login_form" class="form_logout1" method="post" action="<?php echo ((is_array($_tmp=@HTTPS_URL)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
frontparts/login_check.php" onsubmit="return eccube.checkLoginFormInputted('login_form')">
						<input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
						<input type="hidden" name="url" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$_SERVER['REQUEST_URI'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
						<div id="head-after-login" class="clearfix">
							<div class="logout">
								<div><a href="#"><span class="icon">></span>ログアウト</a></div>
							</div>
							<ul class="username clearfix">
								<li><p>ようこそ</p></li>
								<li><p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrSession']['name01'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
 <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrSession']['name02'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
<span>さま</span></p></li>
							</ul>
						</div>
					</form>
					<?php else: ?>
					<!-- ログイン前 -->
					<div id="head-before-login">
						<ul class="clearfix">
							<li><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
abouts/"><span class="icon">></span>ご利用ガイド</a></li>
							<li><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
mypage/login.php"><span class="icon">></span>ログイン</a></li>
						</ul>
					</div>
					<?php endif; ?>

				</div>
			</header>
			
		</div><!-- header -->
	
	</div><!-- bst-wrap .outer -->
<script type="text/javascript" src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/js/common.js"></script>
<script type="text/javascript" src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/js/smartphone.js"></script>
<script type="text/javascript" src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/js/jqueryAutoHeight.js"></script>
<script type="text/javascript" src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/js/store.js"></script>

<script>
	$(document).ready(function(){
			
		});
</script>
