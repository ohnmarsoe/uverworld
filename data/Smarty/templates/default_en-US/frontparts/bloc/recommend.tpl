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

<!--{if count($arrBestProducts) > 0}-->
   <div id="ec-top-recommend" class="item-list">
                                <h2>商品一覧</h2>
                <ul class="clearfix">
                <!--{foreach from=$arrBestProducts item=arrProduct name="recommend_products"}-->

                        <li>
                                    <div class="img-box">
                                        <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->">
                                <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$arrProduct.main_list_image|sfNoImageMainList|h}-->&amp;width=260&amp;height=260" alt="<!--{$arrProduct.name|h}-->" />
                            </a>
                                        <div class="img-over">
                                            <div class="inner">
                                                <a href="#item"><img src="<!--{$TPL_URLPATH}-->shared/img/store/img_over_zoom.png" width="108" height="128" alt="zoom" /></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                    <h3> <a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a></h3>
                                    <div class="price-box">
                                        <p><!--{$smarty.const.SALE_PRICE_TITLE}-->(tax included): <span class="price">&#36; <!--{$arrProduct.price02_min_inctax|number_format}--><span class="tax">（税込）</span></p>
                                        <span class="icon">"</span>
                                    </div>
                                    </a>
                                </li>
                        <!--{if $smarty.foreach.recommend_products.iteration % 2 === 0}-->
                        <div class="clear"></div>
                    <!--{/if}-->
                <!--{/foreach}-->
            </div>
    </div>
    
<!--{/if}-->