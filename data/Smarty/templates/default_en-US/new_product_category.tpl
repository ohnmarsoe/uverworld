<section class="line line-ecmenu">
    <div class="line-inner">
                        	
        <section id="line-sec-ecbtnlist" class="ec-menulist">
            <h2><span>Product Category</span></h2>
                <div class="btnlist">
                    <ul>
                        <li class="level<!--{$level}--><!--{if in_array($arrTree[cnt].category_id, $tpl_category_id)}--> onmark<!--{/if}-->">
                            <a href="<!--{$smarty.const.ROOT_URLPATH}-->products/list.php?category_id=<!--{$arrTree[cnt].category_id}-->"></a>
                        </li>
                    </ul>
                </div>
        </section>
    </div>
</section>