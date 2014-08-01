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

<script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.js"></script>
<link rel="stylesheet" type="text/css" href="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/facebox.css" media="screen" />
<script type="text/javascript">//<![CDATA[
    $(document).ready(function() {
        $('a.expansion').facebox({
            loadingImage : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/loading.gif',
            closeImage   : '<!--{$smarty.const.ROOT_URLPATH}-->js/jquery.facebox/closelabel.png'
        });
    });
//]]></script>

<div id="undercolumn">
    <div id="undercolumn_cart">
        <h2><!--{$tpl_title|h}--></h2>

    <!--{if $smarty.const.USE_POINT !== false || count($arrProductsClass) > 0}-->
        <!--★ポイント案内★-->
        <!--{if $smarty.const.USE_POINT !== false}-->
           <!--  <div class="point_announce">
                <!--{if $tpl_login}-->
                     <span class="user_name"><!--{$tpl_name|h}--></span>, you currently have "<span class="point"><!--{$tpl_user_point|number_format|default:0}--> pts</span>."<br />
                <!--{else}-->
                  <!--   If using the point system, please complete member registration and log in.<br />
                <!--{/if}-->
               <!-- It is possible to use points for this purchase.<span class="price">1pts = &#36; <!--{$smarty.const.POINT_VALUE}-->
             <!-- </span><br />
            </div> -->
        <!--{/if}-->
    <!--{/if}-->

    <p class="totalmoney_area">
        <!--{* カゴの中に商品がある場合にのみ表示 *}-->
        <!--{if count($cartKeys) > 1}-->
            <span class="attentionSt"><!--{foreach from=$cartKeys item=key name=cartKey}--><!--{$arrProductType[$key]}--><!--{if !$smarty.foreach.cartKey.last}--> and <!--{/if}--><!--{/foreach}--> cannot be purchased simultaneously.<br />
                        Please carry out separate purchasing procedures.
            </span>
        <!--{/if}-->

        <!--{if strlen($tpl_error) != 0}-->
            <p class="attention"><!--{$tpl_error|h}--></p>
        <!--{/if}-->

        <!--{if strlen($tpl_message) != 0}-->
            <p class="attention"><!--{$tpl_message|h|nl2br}--></p>
        <!--{/if}-->
    </p>

    <!--{if count($cartItems) > 0}-->
    <!--{foreach from=$cartKeys item=key}-->
    <div class="form_area">
        <form name="form<!--{$key}-->" id="form<!--{$key}-->" method="post" action="?">
            <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
            <input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="cart_no" value="" />
            <input type="hidden" name="cartKey" value="<!--{$key}-->" />
            <input type="hidden" name="category_id" value="<!--{$tpl_category_id|h}-->" />
            <!--{if count($cartKeys) > 1}-->
            <h3><!--{$arrProductType[$key]}--></h3>
                <p>
                    The total amount for <!--{$arrProductType[$key]}--> is "<span class="price">&#36; <!--{$tpl_total_inctax[$key]|number_format}--></span>".
                    <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
                        <!--{if $arrInfo.free_rule > 0}-->
                            <!--{if !$arrData[$key].is_deliv_free}-->
                                Spend "<span class="price">&#36; <!--{$tpl_deliv_free[$key]|number_format}--></span>" more for free shipping!!
                            <!--{else}-->
                                "<span class="attention">Free shipping</span>" now!!
                            <!--{/if}-->
                        <!--{/if}-->
                    <!--{/if}-->
                </p>
            <!--{else}-->
                <p>
                   <!-- The total of your purchase is "<span class="price">&#36; <!--{$tpl_total_inctax[$key]|number_format}--></span>".
                    <!--{if $key != $smarty.const.PRODUCT_TYPE_DOWNLOAD}-->
                        <!--{if $arrInfo.free_rule > 0}-->
                            <!--{if !$arrData[$key].is_deliv_free}-->
                                Spend "<span class="price">&#36; <!--{$tpl_deliv_free[$key]|number_format}--></span>" more for free shipping!!
                            <!--{else}-->
                                "<span class="attention">Free shipping</span>" now!!
                            <!--{/if}-->
                        <!--{/if}-->
                    <!--{/if}--> 
                </p>
            <!--{/if}-->

            <!-- cart table -->
            <div id="ec-cart-list">
                    <h3><span class="attention">23</span>点の商品がカートの中にあります</h3>
                                <p class="attention">※「ミリオンがいっぱい~AKB48ミュージックビデオ集~スペシャルBOX (6枚組Blu-ray Dis」は販売制限(または在庫が不足)しております。一度に数量5を超える購入はできません。</p>
                                <section id="cart-list-wrap">
                                
                                    <div class="cart-list-bloc">
                                        
                                            
                                            
                                            <table>
                                              <tr>
                                                <th colspan="2">商品</th>
                                                <th>価格<span>（税込）</span></th>
                                                <th>数量</th>
                                                <th>小計</th>
                                                <th>取消</th>
                                              </tr>
                                               <!--{foreach from=$cartItems[$key] item=item}-->
                                              <tr>
                                                <td><span>

                                                    <img src="<!--{$smarty.const.ROOT_URLPATH}-->resize_image.php?image=<!--{$item.productsClass.main_list_image|sfNoImageMainList|h}-->&amp;width=98&amp;height=98" alt="<!--{$item.productsClass.name|h}-->"
                                                    </span></td>
                                                <td><!--{* 商品名 *}--><p><!--{$item.productsClass.name|h}--></p><br />
                            <!--{if $item.productsClass.classcategory_name1 != ""}-->
                                <!--{$item.productsClass.class_name1}-->:<!--{$item.productsClass.classcategory_name1}--><br />
                            <!--{/if}-->
                            <!--{if $item.productsClass.classcategory_name2 != ""}-->
                                <!--{$item.productsClass.class_name2}-->:<!--{$item.productsClass.classcategory_name2}-->
                            <!--{/if}--></p></td>
                                            <td>&#36;<!--{$item.price|sfCalcIncTax|number_format}--></td>
                                                <td><!--{$item.quantity}--></td>
                                                <td>&#36;<!--{$item.total_inctax|number_format}--></td>
                                                <td><a href="#">取消</a></td>
                                              </tr>
                                               <!--{/foreach}-->
                                            </table>
                                            

                                            
                                        
                                    </div><!-- cart-list-bloc -->
                                    
                                   
                                
                                </section><!-- #cart-list-wrap -->
                                
                                
                                <section id="cart-area-wrap">
                                    <div class="cart-area">
                                        <ul>
                                            <li>商品合計</li>
                                            <li><span>&#36;<!--{$item.total_inctax|number_format}--></span></li>
                                        </ul>
                                        <ul>
                                            <li>送料（$ 3,00以上で送料無料）</li>
                                            <li><span>&#36;<!--{$tpl_total_inctax[$key]|number_format}--></span></li>
                                        </ul>
                                        <ul class="total">
                                            <li>合計金額</li>
                                            <li><span>&#36;<!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format}--></span></li>
                                        </ul>
                                                
                                        <div class="btn-area">
                                            <p class="attention">※ ショッピングカートに入れた状態では、まだ、商品は確保されていません。ご注文完了時に商品は確保されます。</p>
                                            

                                            <div class="btn btn-buybtn">
                                                <!--{if strlen($tpl_error) == 0}-->
                                                                    <input type="hidden" name="cartKey" value="<!--{$key}-->" />
                                                                    <button > <span class="icon">></span> 購入手続き </button>
                                                                <!--{/if}-->
                                                
                                            </div>
                                            <p class="attention">※ 商品のご購入には、48GROPU握手会倶楽部への会員登録が必要です。<a href="#">握手会倶楽部とは？</a></p>
                                        </div>
                                    </div>
                                    
                                    <div class="cart-area" style="margin-top: 30px;">
                                        <ul>
                                            <li>商品合計</li>
                                            <li><span>&#36;<!--{$item.total_inctax|number_format}--></span></li>
                                        </ul>
                                        <ul>
                                            <li>送料（￥3,000以上で送料無料）</li>
                                            <li><span>&#36;<!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format}--></span></li>
                                        </ul>
                                        <ul class="total">
                                            <li>合計金額</li>
                                            <li><span>&#36;<!--{$arrData[$key].total-$arrData[$key].deliv_fee|number_format}--></span></li>
                                        </ul>
                                                
                                        <div class="btn-area">
                                            <p class="attention">※ 商品のご購入には、48GROPU握手会倶楽部への会員登録が必要です。<a href="#">握手会倶楽部とは？</a></p>
                                            <ul class="btn-login clearfix">
                                                <li class="btn black"><a href="<!--{$smarty.const.ROOT_URLPATH}-->mypage/login.php"><span class="icon">></span>ログイン</a></li>
                                                <li class="btn pink"><a href="<!--{$smarty.const.ROOT_URLPATH}-->entry/kiyaku.php"><span class="icon">></span>今すぐ会員登録</a></li>
                                            </ul>
                                            <ul class="attention">
                                                <li>商品のご購入には、決済サービスhubsynch（ハブシンク）への会員登録（無料）が必要です。<a href="http://hubsynch.com/about-hubsynch" target="_blank">hubsynch（ハブシンク）とは？</a></li>
                                                <li>ショッピングカートに入れた状態では、まだ、商品は確保されていません。ご注文完了時に商品は確保されます。</li>
                                                <li>上記金額に送料として一律650円(税込)、決済方法にて「銀行振込決済」を選択された場合は決済手数料50円(税込)、「代引き決済」を選択された場合は決済手数料350円(税込)がかかります。<br>なお、銀行振込の際の振込手数料は別途お客様負担となります。</li>
                                                <li>商品の個数を必ずご確認ください。変更がある場合はカートボタンをクリックし、一旦 取消を行い、再度 商品ページより正しい個数をカートに入れてください。</li>
                                                <li>複数回に分かれてお申し込みいただいた場合の「おまとめ（一括梱包）」は対応できかねます。それぞれに手数料・送料がかかります。</li>
                                                <li>お申し込み後のキャンセル及び変更はできかねます。</li>
                                            </ul>
                                        </div>
                                    </div>
                                </section><!-- #cart-area-wrap -->
                </div>
            <!-- cart table -->
                <!--{if strlen($tpl_error) == 0}-->
                    <!-- <p class="alignC">If you are finished shopping, please click the "Checkout" button.</p> -->
                <!--{/if}-->
            
        </form>
        </div>
    <!--{/foreach}-->
    <!--{else}-->
        <p class="empty"><span class="attention">* Your shopping cart is empty.  </span></p>
    <!--{/if}-->
    </div>
</div>
