    <!--{*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2013 LOCKON CO.,LTD. All Rights Reserved.
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
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA    02111-1307, USA.
 *}-->

<body>


    <div id="bst-wrap" class="outer-wrap">

    <div id="main-wrap" class="store">

        <!--{$GLOBAL_ERR}-->

            <!--{* ▼HeaderHeaderTop COLUMN*}-->
            <!--{if $arrPageLayout.HeaderTopNavi|@count > 0}-->
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=HeaderTopNaviKey item=HeaderTopNaviItem from=$arrPageLayout.HeaderTopNavi}-->
                        <!-- ▼<!--{$HeaderTopNaviItem.bloc_name}-->
                        <!--{if $HeaderTopNaviItem.php_path != ""}-->
                            <!--{include_php file=$HeaderTopNaviItem.php_path items=$HeaderTopNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$HeaderTopNaviItem.tpl_path items=$HeaderTopNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$HeaderTopNaviItem.bloc_name}--> 
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
            <!--{/if}-->
            <!--{* ▲HeaderHeaderTop COLUMN*}-->
            <!--{* ▼HEADER *}-->
            <!--{if $arrPageLayout.header_chk != 2}-->
                <!--{include file= $header_tpl}-->
            <!--{/if}-->
            <!--{* ▲HEADER *}-->

            

        <!-- EC -->
        <div id="ec-wrap">
            <a name="top" id="top"></a>
            <div id="label-sec">
            <div id="label-bg" class="wrap-outer">
                <div id="label-wrap">
                    <div id="label-inner" class="wrap-inner">
                        <div class="labels">
                            <div id="label-pkz" class="label">
                                <ul id="pankuzu">
                                <!--{if $smarty.server.PHP_SELF == '/store/index.php'}-->
                                    <li><span>SHOP</span></li>
                                <!--{elseif $smarty.server.PHP_SELF == '/store/products/list.php'}-->
                                    <li><a href="<!--{$smarty.const.ROOT_URLPATH}-->">SHOP</a></li>
                                    <li><span><!--{$tpl_subtitle|h}--></span></li>
                                <!--{elseif $smarty.server.PHP_SELF == '/store/products/detail.php'}-->
                                    <li><a href="<!--{$smarty.const.ROOT_URLPATH}-->">SHOP</a></li>
                                <!--{section name=r loop=$arrRelativeCat}-->
                                <!--{section name=s loop=$arrRelativeCat[r]}-->
                                    <li><a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$arrRelativeCat[r][s].category_id}-->">
<!--{$arrRelativeCat[r][s].category_name|h}--></a></li>
                                <!--{/section}-->
                                <!--{/section}-->
                                    <li><span><!--{$tpl_subtitle|h}--></span></li>
                                <!--{else}-->
                                    <li><a href="<!--{$smarty.const.ROOT_URLPATH}-->">SHOP</a></li>
                                <!--{if $tpl_subtitle}-->
                                    <li><span><!--{$tpl_subtitle|h}--></span></li>
                                <!--{else}-->
                                <li><span><!--{if $is_regist == 1}-->新規登録<!--{else}--><!--{$tpl_title|h}--><!--{/if}--></span></li>
                                <!--{/if}-->
                                <!--{/if}-->
                                </ul>
                            </div>
                            <!-- cart -->
                            <!--{foreach key=TopNaviKey item=TopNaviItem from=$arrPageLayout.TopNavi}-->
                                <!-- ▼<!--{$TopNaviItem.bloc_name}--> -->
                            <!--{if $TopNaviItem.php_path != ""}-->
                                <!--{include_php file=$TopNaviItem.php_path items=$TopNaviItem}-->
                            <!--{else}-->
                                <!--{include file=$TopNaviItem.tpl_path items=$TopNaviItem}-->
                            <!--{/if}-->
                                <!-- ▲<!--{$TopNaviItem.bloc_name}--> -->
                            <!--{/foreach}-->

                                <div id="label-cart" class="label">
                                <div class="ec-menu anim">
                                    <a href="<!--{$smarty.const.ROOT_URLPATH}-->"><img src="<!--{$TPL_URLPATH}-->shared/img/store/icon_ecmenu.png" width="42" height="42" alt="menu icon" /></a>
                                </div>
                                <div class="cart">
                                    <a class="anim" href="<!--{$smarty.const.ROOT_URLPATH}-->cart">
                                        <p><span class="icon">2</span>カートを見る</p>
                                        <ul class="carticon">
                                            <li><img src="<!--{$TPL_URLPATH}-->shared/img/store/icon_cart.png" width="42" height="42" alt="cart icon" /></li>
                                            <li class="count"><span> </span></li>
                                        </ul>
                                    </a>
                                </div>
                            </div>
                            
                        </div>
                        <div id="top-arw"><a href="<!--{$smarty.const.ROOT_URLPATH}-->"><img src="<!--{$TPL_URLPATH}-->shared/img/label/home.png" alt="home" width="42" height="42" /></a></div>
                    </div>
                </div>
            </div>
            </div><!-- label-sec end -->

            <div id="content">
            <div id="content-bg" class="wrap-outer">
                <div class="wrap-inner">
                
                    <div id="content-wrap" class="lines">
                        <!-- メインエリア -->
                        <section id="ec" class="line line-left">
                        <div class="line-inner">
                        <!--{if $smarty.server.PHP_SELF == '/store/index.php'}-->
                        <div id="main_image">
                            <img src="<!--{$TPL_URLPATH}-->img/store/top_mainimage.png" alt="<!--{$arrSiteInfo.shop_name|h}--> | UVERWorld" />
                        </div>
                        <!--{/if}-->

                            <!-- ↓EC main -->
                            <div id="ec-inner">
                            <!-- ↓EC main -->
                            <!--{* ▼メイン *}-->
                            <!--{include file=$tpl_mainpage}-->
                            <!--{* ▲メイン *}-->
                            <!--{* ▼メイン下部 *}-->
                            <!--{if $arrPageLayout.MainFoot|@count > 0}-->
                                <!--{foreach key=MainFootKey item=MainFootItem from=$arrPageLayout.MainFoot}-->
                                    <!-- ▼<!--{$MainFootItem.bloc_name}--> -->
                                    <!--{if $MainFootItem.php_path != ""}-->
                                        <!--{include_php file=$MainFootItem.php_path items=$MainFootItem}-->
                                    <!--{else}-->
                                        <!--{include file=$MainFootItem.tpl_path items=$MainFootItem}-->
                                    <!--{/if}-->
                                    <!-- ▲<!--{$MainFootItem.bloc_name}--> -->
                                <!--{/foreach}-->
                            <!--{/if}-->
                            <!--{* ▲メイン下部 *}-->
            </div><!-- ec-inner -->
            <!-- ↑EC main -->

        </div><!-- line-inner -->

                <!--{* ▼RIGHT COLUMN *}-->
                        <!-- ec menu -SMP -->
            

            </section>
                        <!-- ↑メインエリア -->



            <!-- ec menu -PC -->
            <section class="line line-ecmenu">
            <div class="line-inner">
                            
            <section id="line-sec-ecbtnlist" class="ec-menulist">
                <!--{if $arrPageLayout.RightNavi|@count > 0}-->
                                <!--{* ▼右ナビ *}-->
                                <!--{foreach key=RightNaviKey item=RightNaviItem from=$arrPageLayout.RightNavi}-->
                                        <!-- ▼<!--{$RightNaviItem.bloc_name}--> -->
                                        <!--{if $RightNaviItem.php_path != ""}-->
                                                <!--{include_php file=$RightNaviItem.php_path items=$RightNaviItem}-->
                                        <!--{else}-->
                                                <!--{include file=$RightNaviItem.tpl_path items=$RightNaviItem}-->
                                        <!--{/if}-->
                                        <!-- ▲<!--{$RightNaviItem.bloc_name}--> -->
                                <!--{/foreach}-->
                                <!--{* ▲右ナビ *}-->
                <!--{/if}-->
            </section><!-- line-sec-ecbtnlist -->
            
            </div>
            </section>
                <!--{* ▲RIGHT COLUMN *}-->
                        
                        
        </div>
        
        </div>
    </div>
    </div><!-- content -->
            
            
    </div><!-- ec-wrap -->

        <!--{* ▲CONTENTS *}-->

            <!--{* ▼FOOTER *}-->
            <!--{if $arrPageLayout.footer_chk != 2}-->
                <!--{include file=$footer_tpl}-->
            <!--{/if}-->
            <!--{* ▲FOOTER *}-->
            <!--{* ▼FooterBottom COLUMN*}-->
            <!--{if $arrPageLayout.FooterBottomNavi|@count > 0}-->
                    <!--{* ▼上ナビ *}-->
                    <!--{foreach key=FooterBottomNaviKey item=FooterBottomNaviItem from=$arrPageLayout.FooterBottomNavi}-->
                        <!-- ▼<!--{$FooterBottomNaviItem.bloc_name}--> -->
                        <!--{if $FooterBottomNaviItem.php_path != ""}-->
                            <!--{include_php file=$FooterBottomNaviItem.php_path items=$FooterBottomNaviItem}-->
                        <!--{else}-->
                            <!--{include file=$FooterBottomNaviItem.tpl_path items=$FooterBottomNaviItem}-->
                        <!--{/if}-->
                        <!-- ▲<!--{$FooterBottomNaviItem.bloc_name}--> -->
                    <!--{/foreach}-->
                    <!--{* ▲上ナビ *}-->
            <!--{/if}-->
            <!--{* ▲FooterBottom COLUMN*}-->
        </div>

    </body>
