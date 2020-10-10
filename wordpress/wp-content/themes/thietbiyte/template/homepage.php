<?php
/* Template Name: Trang chủ */
get_header();


//lấy Id
$id = get_the_ID();
$banner_home = get_field('banner_home');

//lấy danh sách sản phẩm theo taxonomy
$cates = get_terms(['taxonomy' => 'product_cat', 'hide_empty' => false,]);

$args_post = array(
       'post_type' => 'product',
//                                'tax_query' => array(
//                                    array(
//                                        'taxonomy' => 'danh_muc_san_pham',
//                                        'field' => 'term_id',
//                                        'terms' => ''
//                                    )
//                                ),
       'posts_per_page' => -1,
       'order' => 'ASC'
);
$query = new WP_Query($args_post);
$post_tax = $query->posts;

//lấy sản phẩm nổi bật
	$tax_noibat = array([
              'taxonomy' => 'product_visibility',
              'field'    => 'name',
              'terms'    => 'featured',
              'operator' => 'IN',
       ]);

$argss = array( 'post_type' => 'product','posts_per_page' => 10,'ignore_sticky_posts' => 1, 'tax_query' => $tax_noibat);
$query_noibat = new WP_Query($argss);
$post_noibat = $query_noibat->posts;
print_r($post_noibat);
?>
<?php //$args = array( 'post_type' => 'product','posts_per_page' => 10,'ignore_sticky_posts' => 1, 'tax_query' => $tax_query); ?>
<?php //$getposts = new WP_query( $args);?>
<?php //global $wp_query; $wp_query->in_the_loop = true; ?>
<?php //while ($getposts->have_posts()) : $getposts->the_post(); ?>
<!--       --><?php //global $product; ?>
<!--    <div class="item-product">-->
<!--        <a href="--><?php //the_permalink(); ?><!--">-->
<!--               --><?php //echo get_the_post_thumbnail(get_the_ID(), 'thumnail', array( 'class' =>'thumnail') ); ?>
<!--        </a>-->
<!--        <h4><a href="--><?php //the_permalink(); ?><!--">--><?php //the_title(); ?><!--</a></h4>-->
<!--        <div class="price-product">--><?php //echo $product->get_price_html(); ?><!--</div>-->
<!--        <a href="--><?php //bloginfo('url'); ?><!--?add-to-cart=--><?php //the_ID(); ?><!--">Thêm vào giỏ</a>-->
<!--    </div>-->
<?php //endwhile; wp_reset_postdata(); ?>

    <aside id="top-column">
        <div class="wrapper it_EDOBRIKUHPXK container">
            <div class="row it_IHCLDKFQXSZJ mt-3">
                <div class="it_GPXDVGWSTTDD    col-lg-12   ">
                    <div class="module d-flex justify-content-center">
                        <div id="ps-image-slider" class="swiper-container swiper-container-horizontal"
                             data-autoplay="50000" data-loop="false" data-pause="true">
                            <ul class="swiper-wrapper" role="listbox">
                                   <?php foreach ($banner_home as $value) { ?>
                                       <li class="swiper-slide swiper-slide-active" role="option">
                                           <a href="http://index.php/?id_category=1&amp;controller=category">
                                               <figure>
                                                   <img class="img-fluid w-100"
                                                        src="<?= $value['sub_banner']; ?>"
                                                        alt="sample-1">
                                                   <figcaption>
                                                       <h2 class="ps-image-slider-title"><?= $value['tieu_de']; ?></h2>
                                                       <div class="ps-image-slider-desc">
                                                           <div class="text-center">
                                                               <h2><?= $value['tieu_de']; ?></h2>
                                                               <p><?= $value['noi_dung'] ?></p>
                                                           </div>
                                                       </div>
                                                   </figcaption>
                                               </figure>
                                           </a>
                                       </li>
                                   <?php } ?>
                            </ul>
                            <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span
                                        class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
                                        class="swiper-pagination-bullet"></span><span
                                        class="swiper-pagination-bullet"></span></div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev swiper-button-disabled"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </aside>


    <aside id="notifications">
        <div class="container">


        </div>
    </aside>


    <section id="wrapper">
        <div class="wrapper it_ITJUBEVQHJDA container">
            <div class="row it_JQJJHKFRSTTE mt-3 title-none">
                <div class="it_EBCHDGFCMDEC col-12  col-md-4 col-lg-4   ">
                    <div class="jxml-banner text-center desc-bottom title-none">
                        <a class="jxml-banner-link"
                           href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_category=12&amp;controller=category"
                           title="category-banner-1">
                            <h3 class="jxml-banner-title">category-banner-1</h3>
                            <img class="jxml-banner-img img-fluid" src="./Medic_files/FtbFNqIyTnrFDbb3.jpg"
                                 alt="category-banner-1" title="category-banner-1">
                            <div class="jxml-banner-description">
                                <h3>Dental supplies</h3>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="it_VSUSUIWRQRRK col-12  col-md-4    ">
                    <div class="jxml-banner text-center desc-bottom">
                        <a class="jxml-banner-link"
                           href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_category=14&amp;controller=category"
                           title="category-banner-2">
                            <h3 class="jxml-banner-title">category-banner-2</h3>
                            <img class="jxml-banner-img img-fluid" src="./Medic_files/bRyOEjD7A1LQN4d2.jpg"
                                 alt="category-banner-2" title="category-banner-2">
                            <div class="jxml-banner-description">
                                <h3>Rapid point systems</h3>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="it_NYYZYDXPYFBD col-12  col-md-4 col-lg-4   ">
                    <div class="jxml-banner text-center desc-bottom">
                        <a class="jxml-banner-link"
                           href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_category=16&amp;controller=category"
                           title="category-banner-3">
                            <h3 class="jxml-banner-title">category-banner-3</h3>
                            <img class="jxml-banner-img img-fluid" src="./Medic_files/ptCVDdDUCwRvMXG9.jpg"
                                 alt="category-banner-3" title="category-banner-3">
                            <div class="jxml-banner-description">
                                <h3>X-RAYS</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row it_CVUHKNWLNWBN custom-tabs mt-3">
                <div class="it_NEFMPOAKLBCJ col-12      custom-tab-links title-none text-uppercase">
                    <div class="jxml-html custom-link active">
                        <h3 class="jxml-html-title">SẢN PHẨM MỚI</h3>
                        <div class="jxml-html-description">
                            <p>SẢN PHẨM MỚI</p>
                        </div>
                    </div>
                    <div class="jxml-html custom-link ">
                        <h3 class="jxml-html-title">Specials</h3>
                        <div class="jxml-html-description">
                            <p>Specials</p>
                        </div>
                    </div>
                    <div class="jxml-html custom-link ">
                        <h3 class="jxml-html-title">Bestsellers</h3>
                        <div class="jxml-html-description">
                            <p>Bestsellers</p>
                        </div>
                    </div>
                </div>
                <div class="it_EVNYCVDNIXKF col-12      custom-tab-contents grid">
                    <div class="module active">
                        <section class="new-products grid">
                            <h2 class="h2 products-section-title">New products</h2>
                            <div class="products">
                                   <?php
                                   if (count($post_tax) > 0) {
                                          foreach ($post_tax as $item) {
                                                 $product_img = get_field('product_img', $item->ID);
                                                 $product_price = get_field('product_price', $item->ID);
                                                 ?>
                                              <article class="product-miniature js-product-miniature"
                                                       data-id-product="27"
                                                       data-id-product-attribute="685" itemscope=""
                                                       itemtype="http://schema.org/Product">
                                                  <div class="product-miniature-container">
                                                      <div class="product-miniature-thumbnail">
                                                          <div class="product-thumbnail">

                                                              <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=27&amp;id_product_attribute=685&amp;rewrite=stander-ez-adjust-bed-rail&amp;controller=product&amp;id_lang=1#/7-color-beige/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                                 class="product-thumbnail-link">
                                                                  <div class="thumbnails-rollover horizontal_slide">
                                                                      <img class="img-fluid"
                                                                           src="<?= $product_img[0]['url']; ?>"
                                                                           alt="Stander EZ Adjust Bed Rail"
                                                                           data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/1/6/1/161-large_default.jpg">
                                                                      <img class="img-fluid"
                                                                           src="<?= $product_img[1]['url']; ?>"
                                                                           alt="Stander EZ Adjust Bed Rail"
                                                                           data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/1/6/2/162-large_default.jpg">
                                                                  </div>

                                                              </a>


                                                              <ul class="product-flags">
                                                                  <li class="product-flag new">New</li>
                                                              </ul>


                                                              <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                                 href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                                 data-link-action="quickview"
                                                                 data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/1/6/1/161-large_default.jpg"
                                                                 data-loading-text="Loading product info...">
                                                                  Quick view
                                                              </a>

                                                          </div>
                                                      </div>

                                                      <div class="product-miniature-information">

                                                          <p class="product-title h2"
                                                             itemprop="name"><?= $item->post_title ?><a
                                                                      href="<?= get_permalink($item->ID); ?>">
                                                              </a></p>


                                                          <div class="product-description-short"> Yep! You are in the
                                                              right place and
                                                              don’t waste your precious time on hesitations. Our goal
                                                              is...
                                                          </div>


                                                          <ul class="variant-links">
                                                              <li class="variant-links-item">
                                                                  <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=27&amp;id_product_attribute=685&amp;rewrite=stander-ez-adjust-bed-rail&amp;controller=product&amp;id_lang=1#/7-color-beige/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                                     class="color" title="Beige"
                                                                     style="background-color: #f5f5dc"><span
                                                                              class="sr-only">Beige</span></a>
                                                              </li>
                                                              <li class="variant-links-item">
                                                                  <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=27&amp;id_product_attribute=690&amp;rewrite=stander-ez-adjust-bed-rail&amp;controller=product&amp;id_lang=1#/17-color-brown/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                                     class="color" title="Brown"
                                                                     style="background-color: #964B00"><span
                                                                              class="sr-only">Brown</span></a>
                                                              </li>
                                                              <span class="js-count count">0</span>
                                                          </ul>


                                                          <div class="product-price">


                                                              <span class="sr-only">Price</span>
                                                              <span itemprop="price" class="price">$90.00</span>


                                                          </div>


                                                          <div class="product-buttons">
                                                              <a class="add-to-cart"
                                                                 href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=27&amp;id_product_attribute=685&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                                 rel="nofollow" data-id-product="27"
                                                                 data-id-product-attribute="685"
                                                                 data-link-action="add-to-cart">
                                                                  <i class="material-icons-shopping_cart"
                                                                     aria-hidden="true"></i>
                                                                  <span>Add to cart</span>
                                                              </a>
                                                          </div>

                                                          <div class="functional-buttons">
                                                              <a class="js-compare-button compare-button"
                                                                 href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                                 data-id-product="27" data-action="add-product"
                                                                 title="Add to Compare">
                                                                  <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                                  <span>Add to compare</span>
                                                              </a>


                                                              <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                                 class="wishlist_button_nopop"
                                                                 onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;27&#39;, &#39;Stander EZ Adjust Bed Rail&#39;, &#39;685&#39;, 1); return false;"
                                                                 rel="nofollow" title="Add to my wishlist">
                                                                  <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                  <span>Add to wishlist</span>
                                                              </a>


                                                              <a class="quick-view d-xl-none"
                                                                 href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                                 data-link-action="quickview"
                                                                 data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/1/6/1/161-large_default.jpg"
                                                                 data-loading-text="Loading product info...">
                                                                  <i class="fa fa-eye" aria-hidden="true"></i>
                                                                  <span>Quick view</span>
                                                              </a>

                                                          </div>
                                                      </div>
                                                  </div>
                                              </article>
                                          <?php }
                                   } ?>
                            </div>
                        </section>

                    </div>
                    <div class="module ">
                        <section class="special-products grid">
                            <h2 class="h2 products-section-title">On sale</h2>
                            <div class="products">

                                <article class="product-miniature js-product-miniature" data-id-product="10"
                                         data-id-product-attribute="165" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/39-home_default.webp"
                                                             alt="Clinical Care Geri Chair Recliner"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/37-home_default.webp"
                                                             alt="Clinical Care Geri Chair Recliner"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/7/37-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs">Clinical
                                                    Care Geri Chair...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Blue"
                                                       style="background-color: #5D9CEC"><span
                                                                class="sr-only">Blue</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=170&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/15-color-green/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Green"
                                                       style="background-color: #A0D468"><span
                                                                class="sr-only">Green</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=175&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/24-color-pink/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Pink"
                                                       style="background-color: #FCCACD"><span
                                                                class="sr-only">Pink</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$580.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$464.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=10&amp;id_product_attribute=165&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="10" data-id-product-attribute="165"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="10" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;10&#39;, &#39;Clinical Care Geri Chair Recliner&#39;, &#39;165&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="9"
                                         data-id-product-attribute="0" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/30-home_default.jpg"
                                                             alt="Drive Medical 790 Steerable Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/31-home_default.jpg"
                                                             alt="Drive Medical 790 Steerable Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/1/31-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                    <li class="product-flag pack">Pack</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1">Drive
                                                    Medical 790 Steerable...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$150.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$120.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a itemprop="url" class="view-product"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1"
                                                   title="View product">
                                                    <i class="fa fa-info" aria-hidden="true"></i>
                                                    <span>View product</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="9" data-action="add-product" title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;9&#39;, &#39;Drive Medical 790 Steerable Knee Walker&#39;, &#39;0&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="8"
                                         data-id-product-attribute="132" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/24-home_default.jpg"
                                                             alt="Nibp Spo2 Vital Signs Blood Pressure Monitor"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/25-home_default.webp"
                                                             alt="Nibp Spo2 Vital Signs Blood Pressure Monitor"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/5/25-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Nibp
                                                    Spo2 Vital Signs Blood...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=137&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/8-color-white/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="White"
                                                       style="background-color: #ffffff"><span
                                                                class="sr-only">White</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$70.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$56.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=8&amp;id_product_attribute=132&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="8" data-id-product-attribute="132"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="8" data-action="add-product" title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;8&#39;, &#39;Nibp Spo2 Vital Signs Blood Pressure Monitor&#39;, &#39;132&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="17"
                                         data-id-product-attribute="372" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=17&amp;id_product_attribute=372&amp;rewrite=walker-with-5-inch-wheels&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/85-home_default.jpg"
                                                             alt="Walker with 5-Inch Wheels"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/8/5/85-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/86-home_default.webp"
                                                             alt="Walker with 5-Inch Wheels"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/8/6/86-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag discount">Reduced price</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/8/5/85-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=17&amp;id_product_attribute=372&amp;rewrite=walker-with-5-inch-wheels&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Walker
                                                    with 5-Inch Wheels</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=17&amp;id_product_attribute=372&amp;rewrite=walker-with-5-inch-wheels&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=17&amp;id_product_attribute=377&amp;rewrite=walker-with-5-inch-wheels&amp;controller=product&amp;id_lang=1#/7-color-beige/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Beige"
                                                       style="background-color: #f5f5dc"><span
                                                                class="sr-only">Beige</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$50.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$40.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=17&amp;id_product_attribute=372&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="17" data-id-product-attribute="372"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="17" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;17&#39;, &#39;Walker with 5-Inch Wheels&#39;, &#39;372&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/8/5/85-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="11"
                                         data-id-product-attribute="197" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/49-home_default.webp"
                                                             alt="Folding Exercise Peddler with Electronic Display"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/50-home_default.jpg"
                                                             alt="Folding Exercise Peddler with Electronic Display"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/0/50-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Folding
                                                    Exercise Peddler...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=202&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/11-color-black/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Black"
                                                       style="background-color: #434A54"><span
                                                                class="sr-only">Black</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$30.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$24.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=11&amp;id_product_attribute=197&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="11" data-id-product-attribute="197"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="11" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;11&#39;, &#39;Folding Exercise Peddler with Electronic Display&#39;, &#39;197&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>

                            </div>
                        </section>
                    </div>
                    <div class="module ">
                        <section class="featured-products grid">
                            <h2 class="h2 products-section-title">Popular Products</h2>
                            <div class="products">

                                <article class="product-miniature js-product-miniature" data-id-product="8"
                                         data-id-product-attribute="132" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/24-home_default.jpg"
                                                             alt="Nibp Spo2 Vital Signs Blood Pressure Monitor"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/25-home_default.webp"
                                                             alt="Nibp Spo2 Vital Signs Blood Pressure Monitor"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/5/25-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Nibp
                                                    Spo2 Vital Signs Blood...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=132&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=8&amp;id_product_attribute=137&amp;rewrite=nibp-spo2-vital-signs-blood-pressure-monitor&amp;controller=product&amp;id_lang=1#/8-color-white/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="White"
                                                       style="background-color: #ffffff"><span
                                                                class="sr-only">White</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$70.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$56.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=8&amp;id_product_attribute=132&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="8" data-id-product-attribute="132"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="8" data-action="add-product" title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;8&#39;, &#39;Nibp Spo2 Vital Signs Blood Pressure Monitor&#39;, &#39;132&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/2/4/24-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="9"
                                         data-id-product-attribute="0" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/30-home_default.jpg"
                                                             alt="Drive Medical 790 Steerable Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/31-home_default.jpg"
                                                             alt="Drive Medical 790 Steerable Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/1/31-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                    <li class="product-flag pack">Pack</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1">Drive
                                                    Medical 790 Steerable...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$150.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$120.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a itemprop="url" class="view-product"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=9&amp;id_product_attribute=0&amp;rewrite=drive-medical-790-steerable-knee-walker&amp;controller=product&amp;id_lang=1"
                                                   title="View product">
                                                    <i class="fa fa-info" aria-hidden="true"></i>
                                                    <span>View product</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="9" data-action="add-product" title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;9&#39;, &#39;Drive Medical 790 Steerable Knee Walker&#39;, &#39;0&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/0/30-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="10"
                                         data-id-product-attribute="165" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/39-home_default.webp"
                                                             alt="Clinical Care Geri Chair Recliner"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/37-home_default.webp"
                                                             alt="Clinical Care Geri Chair Recliner"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/7/37-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs">Clinical
                                                    Care Geri Chair...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=165&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/14-color-blue/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Blue"
                                                       style="background-color: #5D9CEC"><span
                                                                class="sr-only">Blue</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=170&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/15-color-green/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Green"
                                                       style="background-color: #A0D468"><span
                                                                class="sr-only">Green</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=10&amp;id_product_attribute=175&amp;rewrite=clinical-care-geri-chair-recliner&amp;controller=product&amp;id_lang=1#/24-color-pink/25-base_material-shrome/31-weight_capacity-550_lbs"
                                                       class="color" title="Pink"
                                                       style="background-color: #FCCACD"><span
                                                                class="sr-only">Pink</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$580.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$464.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=10&amp;id_product_attribute=165&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="10" data-id-product-attribute="165"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="10" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;10&#39;, &#39;Clinical Care Geri Chair Recliner&#39;, &#39;165&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/3/9/39-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="11"
                                         data-id-product-attribute="197" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/49-home_default.webp"
                                                             alt="Folding Exercise Peddler with Electronic Display"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/50-home_default.jpg"
                                                             alt="Folding Exercise Peddler with Electronic Display"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/0/50-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Folding
                                                    Exercise Peddler...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=197&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=11&amp;id_product_attribute=202&amp;rewrite=folding-exercise-peddler-with-electronic-display&amp;controller=product&amp;id_lang=1#/11-color-black/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Black"
                                                       style="background-color: #434A54"><span
                                                                class="sr-only">Black</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price with-discount">


                                                <span class="sr-only">Regular price</span>
                                                <span class="regular-price">$30.00</span>

                                                <span class="discount-percentage discount-product">-20%</span>


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$24.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=11&amp;id_product_attribute=197&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="11" data-id-product-attribute="197"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="11" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;11&#39;, &#39;Folding Exercise Peddler with Electronic Display&#39;, &#39;197&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/4/9/49-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="12"
                                         data-id-product-attribute="227" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=12&amp;id_product_attribute=227&amp;rewrite=drive-medical-economy-transport-chair&amp;controller=product&amp;id_lang=1#/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/55-home_default.webp"
                                                             alt="Drive Medical Economy Transport Chair"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/5/55-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/56-home_default.jpg"
                                                             alt="Drive Medical Economy Transport Chair"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/6/56-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/5/55-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=12&amp;id_product_attribute=227&amp;rewrite=drive-medical-economy-transport-chair&amp;controller=product&amp;id_lang=1#/25-base_material-shrome/30-weight_capacity-250_lbs">Drive
                                                    Medical Economy...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <div class="product-price">


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$77.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=12&amp;id_product_attribute=227&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="12" data-id-product-attribute="227"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="12" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;12&#39;, &#39;Drive Medical Economy Transport Chair&#39;, &#39;227&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/5/5/55-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="13"
                                         data-id-product-attribute="244" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=13&amp;id_product_attribute=244&amp;rewrite=folding-universal-sliding-transfer-bench&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/61-home_default.jpg"
                                                             alt="Folding Universal Sliding Transfer Bench"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/1/61-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/62-home_default.webp"
                                                             alt="Folding Universal Sliding Transfer Bench"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/2/62-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/1/61-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=13&amp;id_product_attribute=244&amp;rewrite=folding-universal-sliding-transfer-bench&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Folding
                                                    Universal Sliding...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=13&amp;id_product_attribute=244&amp;rewrite=folding-universal-sliding-transfer-bench&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=13&amp;id_product_attribute=249&amp;rewrite=folding-universal-sliding-transfer-bench&amp;controller=product&amp;id_lang=1#/8-color-white/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="White"
                                                       style="background-color: #ffffff"><span
                                                                class="sr-only">White</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price">


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$110.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=13&amp;id_product_attribute=244&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="13" data-id-product-attribute="244"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="13" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;13&#39;, &#39;Folding Universal Sliding Transfer Bench&#39;, &#39;244&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/1/61-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="14"
                                         data-id-product-attribute="276" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=14&amp;id_product_attribute=276&amp;rewrite=four-wheel-rollator-with-fold-up-removable-back-support&amp;controller=product&amp;id_lang=1#/10-color-red/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/67-home_default.webp"
                                                             alt="Four Wheel Rollator with Fold Up Removable Back Support"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/7/67-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/68-home_default.webp"
                                                             alt="Four Wheel Rollator with Fold Up Removable Back Support"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/8/68-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/7/67-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=14&amp;id_product_attribute=276&amp;rewrite=four-wheel-rollator-with-fold-up-removable-back-support&amp;controller=product&amp;id_lang=1#/10-color-red/25-base_material-shrome/30-weight_capacity-250_lbs">Four
                                                    Wheel Rollator with...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=14&amp;id_product_attribute=276&amp;rewrite=four-wheel-rollator-with-fold-up-removable-back-support&amp;controller=product&amp;id_lang=1#/10-color-red/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Red" style="background-color: #E84C3D"><span
                                                                class="sr-only">Red</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=14&amp;id_product_attribute=281&amp;rewrite=four-wheel-rollator-with-fold-up-removable-back-support&amp;controller=product&amp;id_lang=1#/11-color-black/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Black"
                                                       style="background-color: #434A54"><span
                                                                class="sr-only">Black</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price">


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$56.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=14&amp;id_product_attribute=276&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="14" data-id-product-attribute="276"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="14" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;14&#39;, &#39;Four Wheel Rollator with Fold Up Removable Back Support&#39;, &#39;276&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/6/7/67-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>


                                <article class="product-miniature js-product-miniature" data-id-product="15"
                                         data-id-product-attribute="308" itemscope=""
                                         itemtype="http://schema.org/Product">
                                    <div class="product-miniature-container">
                                        <div class="product-miniature-thumbnail">
                                            <div class="product-thumbnail">

                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=15&amp;id_product_attribute=308&amp;rewrite=drive-medical-universal-knee-walker&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                   class="product-thumbnail-link">
                                                    <div class="thumbnails-rollover horizontal_slide">
                                                        <img class="img-fluid" src="./Medic_files/73-home_default.webp"
                                                             alt="Drive Medical Universal Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/7/3/73-large_default.jpg">
                                                        <img class="img-fluid" src="./Medic_files/74-home_default.webp"
                                                             alt="Drive Medical Universal Knee Walker"
                                                             data-full-size-image-url="https://ld-prestashop.template-help.com/prestashop_22327/img/p/7/4/74-large_default.jpg">
                                                    </div>

                                                </a>


                                                <ul class="product-flags">
                                                    <li class="product-flag on-sale">On sale!</li>
                                                    <li class="product-flag new">New</li>
                                                </ul>


                                                <a class="quick-view btn btn-sm btn-dark d-none d-xl-block"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/7/3/73-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    Quick view
                                                </a>

                                            </div>
                                        </div>

                                        <div class="product-miniature-information">

                                            <p class="product-title h2" itemprop="name"><a
                                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=15&amp;id_product_attribute=308&amp;rewrite=drive-medical-universal-knee-walker&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs">Drive
                                                    Medical Universal...</a></p>


                                            <div class="product-description-short"> Yep! You are in the right place and
                                                don’t waste your precious time on hesitations. Our goal is...
                                            </div>


                                            <ul class="variant-links">
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=15&amp;id_product_attribute=308&amp;rewrite=drive-medical-universal-knee-walker&amp;controller=product&amp;id_lang=1#/5-color-grey/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Grey"
                                                       style="background-color: #AAB2BD"><span
                                                                class="sr-only">Grey</span></a>
                                                </li>
                                                <li class="variant-links-item">
                                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_product=15&amp;id_product_attribute=313&amp;rewrite=drive-medical-universal-knee-walker&amp;controller=product&amp;id_lang=1#/11-color-black/25-base_material-shrome/30-weight_capacity-250_lbs"
                                                       class="color" title="Black"
                                                       style="background-color: #434A54"><span
                                                                class="sr-only">Black</span></a>
                                                </li>
                                                <span class="js-count count">0</span>
                                            </ul>


                                            <div class="product-price">


                                                <span class="sr-only">Price</span>
                                                <span itemprop="price" class="price">$120.00</span>


                                            </div>


                                            <div class="product-buttons">
                                                <a class="add-to-cart"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?controller=cart&amp;add=1&amp;id_product=15&amp;id_product_attribute=308&amp;token=3b8f4baf9481f88f849f6dca5d09813f"
                                                   rel="nofollow" data-id-product="15" data-id-product-attribute="308"
                                                   data-link-action="add-to-cart">
                                                    <i class="material-icons-shopping_cart" aria-hidden="true"></i>
                                                    <span>Add to cart</span>
                                                </a>
                                            </div>

                                            <div class="functional-buttons">
                                                <a class="js-compare-button compare-button"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-id-product="15" data-action="add-product"
                                                   title="Add to Compare">
                                                    <i class="fa fa-balance-scale" aria-hidden="true"></i>
                                                    <span>Add to compare</span>
                                                </a>


                                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   class="wishlist_button_nopop"
                                                   onclick="AddProductToWishlist(event, &#39;action_add&#39;, &#39;15&#39;, &#39;Drive Medical Universal Knee Walker&#39;, &#39;308&#39;, 1); return false;"
                                                   rel="nofollow" title="Add to my wishlist">
                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                    <span>Add to wishlist</span>
                                                </a>


                                                <a class="quick-view d-xl-none"
                                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php#"
                                                   data-link-action="quickview"
                                                   data-img-cover="https://ld-prestashop.template-help.com/prestashop_22327/img/p/7/3/73-large_default.jpg"
                                                   data-loading-text="Loading product info...">
                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                    <span>Quick view</span>
                                                </a>

                                            </div>
                                        </div>
                                    </div>
                                </article>

                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper it_ZPHRFLOTGAIB container-fluid title-none">
            <div class="rd-parallax rd-parallax-1"
                 style="width: 1519px; margin-left: -760px; left: 50%; position: relative; overflow: hidden; z-index: 0; height: 480px;">
                <div class="rd-parallax-inner"
                     style="position: fixed; top: 0px; margin-top: 0px; padding: 0px; width: 1519px; transform: translate3d(0px, 710.6px, 0px);">
                    <div class="rd-parallax-layer" data-offset="0" data-speed="0.8" data-type="media" data-fade="false"
                         data-url="/prestashop_22327/img/cms/bg-banner.jpg" data-direction="normal"
                         style="position: fixed; background-image: url(&quot;/prestashop_22327/img/cms/bg-banner.jpg&quot;); height: 648px; transform: translate3d(0px, -568.48px, 0px);"></div>
                    <div class="rd-parallax-layer-holder" style="position: relative; height: 480px;">
                        <div class="rd-parallax-layer" data-offset="0" data-speed="0" data-type="html" data-fade="false"
                             data-direction="normal"
                             style="position: fixed; width: 1519px; transform: translate3d(0px, 0px, 0px);">
                            <div class="container">
                                <div class="row it_VQZCXOYGQEBW paralax">
                                    <div class="it_SFPVHARIFCRP col-12      px-0 fixed">
                                        <div class="jxml-html text-center bottom-fluid-banner ">
                                            <h3 class="jxml-html-title">banner-fluid</h3>
                                            <div class="jxml-html-description">
                                                <h2>high-class equipment</h2>
                                                <p>save your and your family`s health</p>
                                                <p><a class="btn btn-lg btn-primary"
                                                      href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?id_category=15&amp;controller=category">Shop
                                                        now</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrapper it_ZSVNUONBVYGR container">
            <div class="row it_PQQWEBQSPNEI mt-5">
                <div class="it_DGDNXQZLQZSR col-12      ">
                    <div class="jxml-html blog_title_block text-center">
                        <h3 class="jxml-html-title">Blog title</h3>
                        <div class="jxml-html-description">
                            <h4 class="blog_title_block"><a
                                        href="https://ld-prestashop.template-help.com/prestashop_22327/index.phpfc=module&amp;module=jxblog&amp;controller=categories">BLOG
                                    POSTS</a></h4>
                        </div>
                    </div>
                </div>
                <div class="it_AISGHTXHCDFJ col-12  col-md-6    text-left">

                    <article class="bp-miniature bp-slide">
                        <div class="bp-miniature-container">
                            <div class="bp-thumbnail">
                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=1&amp;controller=post&amp;id_lang=1">
                                    <img class="img-fluid" src="./Medic_files/1.jpg"
                                         alt="McLaughlin Named Great River Health System EXCEL Service Hero">
                                </a>
                            </div>
                            <div class="bp-info text-center">

                                <p class="post-meta mb-3">
                                    Jan 8, 2019
                                    <em>Views (183)</em>
                                </p>

                                <p class="h2 bp-name d-none d-xl-block">
                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=1&amp;controller=post&amp;id_lang=1">
                                        McLaughlin Named Great River Health System EXCEL Service Hero
                                    </a>
                                </p>
                                <p class="h3 bp-name d-xl-none">
                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=1&amp;controller=post&amp;id_lang=1">
                                        McLaughlin Named Great River Health System EXCEL Service Hero
                                    </a>
                                </p>

                                <div class="bp-short-description mb-3 d-none d-xl-block">
                                    <p>When the family was ready to remove the patient’s oxygen, she returned to the
                                        hospital at the family’s request to support the them as their loved on passed
                                        away...</p>
                                </div>
                                <a class="btn"
                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=1&amp;controller=post&amp;id_lang=1">
                                    Read more
                                </a>
                            </div>
                        </div>
                    </article>

                </div>
                <div class="it_JIKURXRJYJPE col-12  col-md-6    mt-3 mt-md-0">

                    <article class="bp-miniature bp-slide">
                        <div class="bp-miniature-container">
                            <div class="bp-thumbnail">
                                <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=2&amp;controller=post&amp;id_lang=1">
                                    <img class="img-fluid" src="./Medic_files/2.jpg"
                                         alt="The role of Blog on eCommerce site">
                                </a>
                            </div>
                            <div class="bp-info text-center">

                                <p class="post-meta mb-3">
                                    Jan 8, 2019
                                    <em>Views (175)</em>
                                </p>

                                <p class="h2 bp-name d-none d-xl-block">
                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=2&amp;controller=post&amp;id_lang=1">
                                        The role of Blog on eCommerce site
                                    </a>
                                </p>
                                <p class="h3 bp-name d-xl-none">
                                    <a href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=2&amp;controller=post&amp;id_lang=1">
                                        The role of Blog on eCommerce site
                                    </a>
                                </p>

                                <div class="bp-short-description mb-3 d-none d-xl-block">
                                    <p>Blogging is a great way to inform your audience about your product. In a blog
                                        post, you can show how to use a product and why people should buy it. You can
                                        also tell your visitors about yourself and your company.</p>
                                </div>
                                <a class="btn"
                                   href="https://ld-prestashop.template-help.com/prestashop_22327/index.php?fc=module&amp;module=jxblog&amp;id_jxblog_post=2&amp;controller=post&amp;id_lang=1">
                                    Read more
                                </a>
                            </div>
                        </div>
                    </article>

                </div>
            </div>
        </div>
        <div class="wrapper it_PJNVNTNFESXC bottom-items mt-5 align-items-center">
            <div class="rd-parallax rd-parallax-2"
                 style="position: relative; overflow: hidden; z-index: 0; height: 250px;">
                <div class="rd-parallax-inner"
                     style="position: fixed; top: 0px; margin-top: 0px; padding: 0px; width: 1519px; transform: translate3d(0px, 2206.96px, 0px);">
                    <div class="rd-parallax-layer" data-offset="0" data-speed="0.8" data-type="media" data-fade="false"
                         data-url="/prestashop_22327/img/cms/bg-items.jpg" data-direction="normal"
                         style="position: fixed; background-image: url(&quot;/prestashop_22327/img/cms/bg-items.jpg&quot;); height: 602px; transform: translate3d(0px, -1765.57px, 0px);"></div>
                    <div class="rd-parallax-layer-holder" style="position: relative; height: 250px;">
                        <div class="rd-parallax-layer" data-offset="0" data-speed="0" data-type="html" data-fade="false"
                             data-direction="normal"
                             style="position: fixed; width: 1519px; transform: translate3d(0px, 0px, 0px);">
                            <div class="row it_YEYWYBJYASTP container paralax-bottom align-items-center">
                                <div class="it_WJIAVJVVYIJU col-12  col-md-4    title-none">
                                    <div class="jxml-html bottom-banner bb-1 ">
                                        <h3 class="jxml-html-title">bottom-banner-1</h3>
                                        <div class="jxml-html-description">
                                            <h4>Support 24/7</h4>
                                            <p>Contact us 24 hours a day, 7 days a week</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="it_LHXIWEPUVOBV col-12  col-md-4    title-none">
                                    <div class="jxml-html bottom-banner bb-2 ">
                                        <h3 class="jxml-html-title">bottom-banner-2</h3>
                                        <div class="jxml-html-description">
                                            <h4>30 days return</h4>
                                            <p>Simply return it within 24 days</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="it_DQYQLTCTKYKT col-12  col-md-4    title-none">
                                    <div class="jxml-html bottom-banner bb-3 ">
                                        <h3 class="jxml-html-title">bottom-banner-3</h3>
                                        <div class="jxml-html-description">
                                            <h4>Free shipping</h4>
                                            <p>Free shipping on order above $99</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


<?php
get_footer();
?>