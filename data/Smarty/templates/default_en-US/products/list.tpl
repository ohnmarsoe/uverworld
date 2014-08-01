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

<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/products.js"></script>
<script type="text/javascript">//<![CDATA[
    function fnSetClassCategories(form, classcat_id2_selected) {
        var $form = $(form);
        var product_id = $form.find('input[name=product_id]').val();
        var $sele1 = $form.find('select[name=classcategory_id1]');
        var $sele2 = $form.find('select[name=classcategory_id2]');
        setClassCategories($form, product_id, $sele1, $sele2, classcat_id2_selected);
    }
    // 並び順を変更
    function fnChangeOrderby(orderby) {
        fnSetVal('orderby', orderby);
        fnSetVal('pageno', 1);
        fnSubmit();
    }
    // 表示件数を変更
    function fnChangeDispNumber(dispNumber) {
        fnSetVal('disp_number', dispNumber);
        fnSetVal('pageno', 1);
        fnSubmit();
    }
    // カゴに入れる
    function fnInCart(productForm) {
        var searchForm = $("#form1");
        var cartForm = $(productForm);
        // 検索条件を引き継ぐ
        var hiddenValues = ['mode','category_id','maker_id','name','orderby','disp_number','pageno','rnd'];
        $.each(hiddenValues, function(){
            // 商品別のフォームに検索条件の値があれば上書き
            if (cartForm.has('input[name='+this+']').length != 0) {
                cartForm.find('input[name='+this+']').val(searchForm.find('input[name='+this+']').val());
            }
            // なければ追加
            else {
                cartForm.append($('<input type="hidden" />').attr("name", this).val(searchForm.find('input[name='+this+']').val()));
            }
        });
        // 商品別のフォームを送信
        cartForm.submit();
    }
//]]></script>

<div id="undercolumn">
    <form name="form1" id="form1" method="get" action="?">
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <input type="hidden" name="mode" value="<!--{$mode|h}-->" />
        <!--{* ▼検索条件 *}-->
        <input type="hidden" name="category_id" value="<!--{$arrSearchData.category_id|h}-->" />
        <input type="hidden" name="maker_id" value="<!--{$arrSearchData.maker_id|h}-->" />
        <input type="hidden" name="name" value="<!--{$arrSearchData.name|h}-->" />
        <!--{* ▲検索条件 *}-->
        <!--{* ▼ページナビ関連 *}-->
        <input type="hidden" name="orderby" value="<!--{$orderby|h}-->" />
        <input type="hidden" name="disp_number" value="<!--{$disp_number|h}-->" />
        <input type="hidden" name="pageno" value="<!--{$tpl_pageno|h}-->" />
        <!--{* ▲ページナビ関連 *}-->
        <input type="hidden" name="rnd" value="<!--{$tpl_rnd|h}-->" />
    </form>

    <!--★タイトル★-->
    <!-- <h2><!--{$tpl_subtitle|h}--></h2> -->

    <!--▼検索条件-->
    <!--{if $tpl_subtitle == "Search results"}-->
        <ul class="pagecond_area">
            <li><strong>Product category:</strong><!--{$arrSearch.category|h}--></li>
        <!--{if $arrSearch.maker|strlen >= 1}--><li><strong>Manufacturer:</strong><!--{$arrSearch.maker|h}--></li><!--{/if}-->
            <li><strong>Product name:</strong><!--{$arrSearch.name|h}--></li>
        </ul>
    <!--{/if}-->
    <!--▲検索条件-->

    <!--▼ページナビ(本文)-->
    <!--{capture name=page_navi_body}-->
        <div class="pagenumber_area clearfix">
            <div class="change">
                <!--{if $orderby != 'price'}-->
                    <a href="javascript:fnChangeOrderby('price');">By price </a>
                <!--{else}-->
                    <strong>By price</strong>
                <!--{/if}-->&nbsp;
                <!--{if $orderby != "date"}-->
                        <a href="javascript:fnChangeOrderby('date');">Recent</a>
                <!--{else}-->
                    <strong>Recent</strong>
                <!--{/if}-->&nbsp;
                Items displayed
                <select name="disp_number" onchange="javascript:fnChangeDispNumber(this.value);">
                    <!--{foreach from=$arrPRODUCTLISTMAX item="dispnum" key="num"}-->
                        <!--{if $num == $disp_number}-->
                            <option value="<!--{$num}-->" selected="selected" ><!--{$dispnum}--></option>
                        <!--{else}-->
                            <option value="<!--{$num}-->" ><!--{$dispnum}--></option>
                        <!--{/if}-->
                    <!--{/foreach}-->
                </select>
            </div>
            <div class="navi"><!--{$tpl_strnavi}--></div>
        </div>
    <!--{/capture}-->
    <!--▲ページナビ(本文)-->

        <div id="ec-item-list" class="item-list">
                                <h2><!--{$tpl_subtitle|h}--></h2>
                                
                                <h3><span class="attention">23</span>点の商品があります</h3>
                                
                                <ul class="clearfix">
                                    
    <!--{foreach from=$arrProducts item=arrProduct name=arrProducts}-->

                                <!--{assign var=id value=$arrProduct.product_id}-->
                                <!--{assign var=arrErr value=$arrProduct.arrErr}-->
                                <!--▼商品-->
                                
                                <li>
                                    <div class="img-box">
                                        <a href="#item"><span><img src="<!--{$smarty.const.IMAGE_SAVE_URLPATH}--><!--{$arrProduct.main_list_image|sfNoImageMainList|h}-->" alt="<!--{$arrProduct.name|h}-->" width="268" height="268" alt="image" /></span></a>
                                        <div class="img-over">
                                            <div class="inner">
                                                <ul>
                                                    <li>
                                                        <input type="hidden" name="quantity" class="box" value="<!--{$arrProduct.quantity|default:1|h}-->" maxlength="<!--{$smarty.const.INT_LEN}-->" style="<!--{$arrErr.quantity|sfGetErrorColor}-->" />
                                                        <a href="#cart"><img src="<!--{$TPL_URLPATH}-->shared/img/store/img_over_cart.png" width="108" height="128" alt="zoom" /></a></li>
                                                    <li><a href="#item"><img src="<!--{$TPL_URLPATH}-->shared/img/store/img_over_look.png" width="108" height="128" alt="zoom" /></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="#">
                                    <h3><a href="<!--{$smarty.const.P_DETAIL_URLPATH}--><!--{$arrProduct.product_id|u}-->"><!--{$arrProduct.name|h}--></a></h3>
                                    <div class="price-box">
                                       <!--  <p>¥&nbsp;2,500<span class="tax">（税込）</span></p> -->
                                        <span class="price">
                                            &#036;
                                            <span id="price02_default_<!--{$id}-->"><!--{strip}-->
                                                <!--{if $arrProduct.price02_min_inctax == $arrProduct.price02_max_inctax}-->
                                                    <!--{$arrProduct.price02_min_inctax|number_format}-->
                                                <!--{else}-->
                                                    <!--{$arrProduct.price02_min_inctax|number_format}--> - <!--{$arrProduct.price02_max_inctax|number_format}-->
                                                <!--{/if}-->
                                            </span><span id="price02_dynamic_<!--{$id}-->"></span><!--{/strip}-->
                                            </span>
                                        <span class="icon">"</span>
                                    </div>
                                    </a>
                                </li>
                                
                                
                                
                                
                               
                                
                                
                                
                                

    <!--{foreachelse}-->
        <!--{include file="frontparts/search_zero.tpl"}-->
    <!--{/foreach}-->

    </ul>
                                
    </div><!-- #ec-item-list -->

</div>
