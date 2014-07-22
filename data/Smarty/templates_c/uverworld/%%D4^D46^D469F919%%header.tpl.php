<?php /* Smarty version 2.6.26, created on 2014-07-15 10:54:51
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/uverworld/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/uverworld/header.tpl', 33, false),array('modifier', 'h', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/uverworld/header.tpl', 33, false),)), $this); ?>

<!--▼HEADER-->



 <!-- HEADER -->
    <div id="header-wrap">
            <div id="header-bg"></div>
            
            <header id="head-top" class="wrap-outer">
                <div class="wrap-inner clearfix">
                    <div id="logo"><a href="<?php echo ((is_array($_tmp=@TOP_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
"><img src= "<?php echo ((is_array($_tmp=$this->_tpl_vars['TPL_URLPATH'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
shared/img/header/head_logo.png" alt="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrSiteInfo']['shop_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" /></a></div>
                    
                    <div id="smp-menu" class="clearfix">
                        <ul id="sns-btn">
                            <li><a href="#"><span class="icon">t</span></a></li>
                        </ul>
                    </div>
                
                    <div id="head-after-login" class="clearfix">
                        <div class="logout">
                            <div><a href="#"><span class="icon">></span>ログアウト</a></div>
                        </div>
                        <ul class="username clearfix">
                            <li><p>ようこそ</p></li>
                            <li><p>熊井之ディカプリオ総<span>さま</span></p></li>
                        </ul>
                    </div>
                    
                </div>
            </header>
            
        </div><!-- header -->


