<?php /* Smarty version 2.6.26, created on 2014-07-30 04:50:02
         compiled from /Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 23, false),array('modifier', 'h', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 36, false),array('modifier', 'number_format', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 43, false),array('modifier', 'default', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 43, false),array('modifier', 'nl2br', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 66, false),array('modifier', 'sfNoImageMainList', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 130, false),array('modifier', 'sfCalcIncTax', '/Applications/MAMP/htdocs/uverworld/html/../data/Smarty/templates/default_en-US/cart/index.tpl', 139, false),)), $this); ?>

<script type="text/javascript" src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
js/jquery.facebox/facebox.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
js/jquery.facebox/facebox.css" media="screen" />
<script type="text/javascript">//<![CDATA[
    $(document).ready(function() {
        $('a.expansion').facebox({
            loadingImage : '<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
js/jquery.facebox/loading.gif',
            closeImage   : '<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
js/jquery.facebox/closelabel.png'
        });
    });
//]]></script>

<div id="undercolumn">
    <div id="undercolumn_cart">
        <h2><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_title'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</h2>

    <?php if (((is_array($_tmp=@USE_POINT)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) !== false || count ( ((is_array($_tmp=$this->_tpl_vars['arrProductsClass'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 0): ?>
        <!--★ポイント案内★-->
        <?php if (((is_array($_tmp=@USE_POINT)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) !== false): ?>
           <!--  <div class="point_announce">
                <?php if (((is_array($_tmp=$this->_tpl_vars['tpl_login'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                     <span class="user_name"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</span>, you currently have "<span class="point"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_user_point'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)))) ? $this->_run_mod_handler('default', true, $_tmp, 0) : smarty_modifier_default($_tmp, 0)); ?>
 pts</span>."<br />
                <?php else: ?>
                  <!--   If using the point system, please complete member registration and log in.<br />
                <?php endif; ?>
               <!-- It is possible to use points for this purchase.<span class="price">1pts = &#36; <?php echo ((is_array($_tmp=@POINT_VALUE)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>

             <!-- </span><br />
            </div> -->
        <?php endif; ?>
    <?php endif; ?>

    <p class="totalmoney_area">
                <?php if (count ( ((is_array($_tmp=$this->_tpl_vars['cartKeys'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 1): ?>
            <span class="attentionSt"><?php $_from = ((is_array($_tmp=$this->_tpl_vars['cartKeys'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['cartKey'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['cartKey']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['key']):
        $this->_foreach['cartKey']['iteration']++;
?><?php echo ((is_array($_tmp=$this->_tpl_vars['arrProductType'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<?php if (! ((is_array($_tmp=($this->_foreach['cartKey']['iteration'] == $this->_foreach['cartKey']['total']))) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?> and <?php endif; ?><?php endforeach; endif; unset($_from); ?> cannot be purchased simultaneously.<br />
                        Please carry out separate purchasing procedures.
            </span>
        <?php endif; ?>

        <?php if (strlen ( ((is_array($_tmp=$this->_tpl_vars['tpl_error'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) != 0): ?>
            <p class="attention"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_error'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</p>
        <?php endif; ?>

        <?php if (strlen ( ((is_array($_tmp=$this->_tpl_vars['tpl_message'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) != 0): ?>
            <p class="attention"><?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_message'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)))) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
        <?php endif; ?>
    </p>

    <?php if (count ( ((is_array($_tmp=$this->_tpl_vars['cartItems'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 0): ?>
    <?php $_from = ((is_array($_tmp=$this->_tpl_vars['cartKeys'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key']):
?>
    <div class="form_area">
        <form name="form<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" id="form<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" method="post" action="?">
            <input type="hidden" name="<?php echo ((is_array($_tmp=@TRANSACTION_ID_NAME)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['transactionid'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
            <input type="hidden" name="mode" value="confirm" />
            <input type="hidden" name="cart_no" value="" />
            <input type="hidden" name="cartKey" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
            <input type="hidden" name="category_id" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
" />
            <?php if (count ( ((is_array($_tmp=$this->_tpl_vars['cartKeys'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 1): ?>
            <h3><?php echo ((is_array($_tmp=$this->_tpl_vars['arrProductType'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</h3>
                <p>
                    The total amount for <?php echo ((is_array($_tmp=$this->_tpl_vars['arrProductType'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
 is "<span class="price">&#36; <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_total_inctax'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span>".
                    <?php if (((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=@PRODUCT_TYPE_DOWNLOAD)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                        <?php if (((is_array($_tmp=$this->_tpl_vars['arrInfo']['free_rule'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) > 0): ?>
                            <?php if (! ((is_array($_tmp=$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['is_deliv_free'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                                Spend "<span class="price">&#36; <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_deliv_free'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span>" more for free shipping!!
                            <?php else: ?>
                                "<span class="attention">Free shipping</span>" now!!
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endif; ?>
                </p>
            <?php else: ?>
                <p>
                   <!-- The total of your purchase is "<span class="price">&#36; <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_total_inctax'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span>".
                    <?php if (((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ((is_array($_tmp=@PRODUCT_TYPE_DOWNLOAD)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                        <?php if (((is_array($_tmp=$this->_tpl_vars['arrInfo']['free_rule'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) > 0): ?>
                            <?php if (! ((is_array($_tmp=$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['is_deliv_free'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp))): ?>
                                Spend "<span class="price">&#36; <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_deliv_free'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span>" more for free shipping!!
                            <?php else: ?>
                                "<span class="attention">Free shipping</span>" now!!
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endif; ?> 
                </p>
            <?php endif; ?>

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
                                               <?php $_from = ((is_array($_tmp=$this->_tpl_vars['cartItems'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
                                              <tr>
                                                <td><span>

                                                    <img src="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
resize_image.php?image=<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['main_list_image'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfNoImageMainList', true, $_tmp) : SC_Utils_Ex::sfNoImageMainList($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
&amp;width=98&amp;height=98" alt="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
"
                                                    </span></td>
                                                <td><p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?>
</p><br />
                            <?php if (((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['classcategory_name1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
                                <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['class_name1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
:<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['classcategory_name1'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br />
                            <?php endif; ?>
                            <?php if (((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['classcategory_name2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
                                <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['class_name2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
:<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['productsClass']['classcategory_name2'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>

                            <?php endif; ?></p></td>
                                            <td>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['price'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('sfCalcIncTax', true, $_tmp) : SC_Helper_DB_Ex::sfCalcIncTax($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</td>
                                                <td><?php echo ((is_array($_tmp=$this->_tpl_vars['item']['quantity'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</td>
                                                <td>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['total_inctax'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</td>
                                                <td><a href="#">取消</a></td>
                                              </tr>
                                               <?php endforeach; endif; unset($_from); ?>
                                            </table>
                                            

                                            
                                        
                                    </div><!-- cart-list-bloc -->
                                    
                                   
                                
                                </section><!-- #cart-list-wrap -->
                                
                                
                                <section id="cart-area-wrap">
                                    <div class="cart-area">
                                        <ul>
                                            <li>商品合計</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['total_inctax'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                        <ul>
                                            <li>送料（$ 3,00以上で送料無料）</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['tpl_total_inctax'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                        <ul class="total">
                                            <li>合計金額</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['total']-$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['deliv_fee'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                                
                                        <div class="btn-area">
                                            <p class="attention">※ ショッピングカートに入れた状態では、まだ、商品は確保されていません。ご注文完了時に商品は確保されます。</p>
                                            

                                            <div class="btn btn-buybtn">
                                                <?php if (strlen ( ((is_array($_tmp=$this->_tpl_vars['tpl_error'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) == 0): ?>
                                                                    <input type="hidden" name="cartKey" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" />
                                                                    <button > <span class="icon">></span> 購入手続き </button>
                                                                <?php endif; ?>
                                                
                                            </div>
                                            <p class="attention">※ 商品のご購入には、48GROPU握手会倶楽部への会員登録が必要です。<a href="#">握手会倶楽部とは？</a></p>
                                        </div>
                                    </div>
                                    
                                    <div class="cart-area" style="margin-top: 30px;">
                                        <ul>
                                            <li>商品合計</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['total_inctax'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                        <ul>
                                            <li>送料（￥3,000以上で送料無料）</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['total']-$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['deliv_fee'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                        <ul class="total">
                                            <li>合計金額</li>
                                            <li><span>&#36;<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['total']-$this->_tpl_vars['arrData'][$this->_tpl_vars['key']]['deliv_fee'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp) : number_format($_tmp)); ?>
</span></li>
                                        </ul>
                                                
                                        <div class="btn-area">
                                            <p class="attention">※ 商品のご購入には、48GROPU握手会倶楽部への会員登録が必要です。<a href="#">握手会倶楽部とは？</a></p>
                                            <ul class="btn-login clearfix">
                                                <li class="btn black"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
mypage/login.php"><span class="icon">></span>ログイン</a></li>
                                                <li class="btn pink"><a href="<?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
entry/kiyaku.php"><span class="icon">></span>今すぐ会員登録</a></li>
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
                <?php if (strlen ( ((is_array($_tmp=$this->_tpl_vars['tpl_error'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) == 0): ?>
                    <!-- <p class="alignC">If you are finished shopping, please click the "Checkout" button.</p> -->
                <?php endif; ?>
            
        </form>
        </div>
    <?php endforeach; endif; unset($_from); ?>
    <?php else: ?>
        <p class="empty"><span class="attention">* Your shopping cart is empty.  </span></p>
    <?php endif; ?>
    </div>
</div>