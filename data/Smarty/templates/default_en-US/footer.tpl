<!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2012 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *}-->

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
					<div id="logo"><a href="<!--{$smarty.const.ROOT_URLPATH}-->"><img src="<!--{$TPL_URLPATH}-->shared/img/header/head_logo.png" alt="logo" /></a></div>
					
					<div id="smp-menu" class="clearfix">
						<ul id="sns-btn">
							<li><a href="https://twitter.com/UVERworld_dR2" target="_blank"><span class="icon">t</span></a></li>
						</ul>
					</div>
					
					<!--{if $tpl_login}-->
					<!-- ログイン後 -->
					<form name="login_form" id="login_form" class="form_logout1" method="post" action="<!--{$smarty.const.HTTPS_URL}-->frontparts/login_check.php" onsubmit="return eccube.checkLoginFormInputted('login_form')">
						<input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
						<input type="hidden" name="url" value="<!--{$smarty.server.REQUEST_URI|h}-->" />
						<div id="head-after-login" class="clearfix">
							<div class="logout">
								<div><a href="#"><span class="icon">></span>ログアウト</a></div>
							</div>
							<ul class="username clearfix">
								<li><p>ようこそ</p></li>
								<li><p><!--{$arrSession.name01|h}--> <!--{$arrSession.name02|h}--><span>さま</span></p></li>
							</ul>
						</div>
					</form>
					<!--{else}-->
					<!-- ログイン前 -->
					<div id="head-before-login">
						<ul class="clearfix">
							<li><a href="<!--{$smarty.const.ROOT_URLPATH}-->abouts/"><span class="icon">></span>ご利用ガイド</a></li>
							<li><a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/login.php"><span class="icon">></span>ログイン</a></li>
						</ul>
					</div>
					<!--{/if}-->

				</div>
			</header>
			
		</div><!-- header -->
	
	</div><!-- bst-wrap .outer -->
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->shared/js/common.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->shared/js/smartphone.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->shared/js/jqueryAutoHeight.js"></script>
<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->shared/js/store.js"></script>

<script>
	$(document).ready(function(){
			
		});
</script>

