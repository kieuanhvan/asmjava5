<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All products</title>
<%@include file="/commons/user-css.jsp"%>
</head>
<body>
<!-- Preloader -->
    <div id="biof-loading">
        <div class="biof-loading-center">
            <div class="biof-loading-center-absolute">
                <div class="dot dot-one"></div>
                <div class="dot dot-two"></div>
                <div class="dot dot-three"></div>
            </div>
        </div>
    </div>
    
    	<%@include file="/views/user/header.jsp"%>
    	
    
<div class="hero-section hero-background">
        <h1 class="page-title">Organic Fruits</h1>
    </div>
    
    <!--Navigation section-->
    <div class="container">
        <nav class="biolife-nav">
            <ul>
                <li class="nav-item"><a href="home.php" class="permal-link">Home</a></li>
                <li class="nav-item"><span class="current-page">Product</span></li>
            </ul>
        </nav>
    </div>
    
    
    	
    	    <div class="page-contain category-page right-sidebar ">
        <div class="container">
            <div class="row">
                <!-- Main content -->
                <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">

                    <div class="block-item recently-products-cat md-margin-bottom-39">
                        <ul  class="products-list biolife-carousel nav-center-02 nav-none-on-mobile" data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":0,"slidesToShow":5, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin": 10}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":10 }}]}' >

						  <c:forEach var="data" items="${products}">
									 <li class="product-item">
						                                <div class="contain-product layout-02">
						                                    <div class="product-thumb">
						                                        <a href="#" class="link-to-product">
						                                            <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-08.jpg" alt="dd" width="270" height="270" class="product-thumnail">
						                                        </a>
						                                    </div>
						                                    <div class="info">
						                                        <b class="categories"></b>
						                                        <h4 class="product-title"><a href="#" class="pr-name">${data.name}</a></h4>
						                                        <div class="price">
						                                            <ins><span class="price-amount"><span class="currencySymbol">£</span>${data.price-data.price*0.9}</span></ins>
						                                            <del><span class="price-amount"><span class="currencySymbol">£</span>${data.price}</span></del>
						                                        </div>
						                                    </div>
						                                </div>
						                            </li>
								</c:forEach> 
                        </ul>
                    </div>

                    <div class="product-category list-style">

                        <div id="top-functions-area" class="top-functions-area">
                            <div class="flt-item to-left group-on-mobile">
                                <span class="flt-title">Refine</span>
                                <a href="#" class="icon-for-mobile">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </a>
                                <div class="wrap-selectors">
                                    <form action="#" name="frm-refine" method="get">
                                        <span class="title-for-mobile">Refine Products By</span>
                                        <div data-title="Price:" class="selector-item">
                                            <select name="price" class="selector">
                                                <option value="all">Price</option>
                                                <option value="class-1st">Less than 5$</option>
                                                <option value="class-2nd">$5-10$</option>
                                                <option value="class-3rd">$10-20$</option>
                                                <option value="class-4th">$20-45$</option>
                                                <option value="class-5th">$45-100$</option>
                                                <option value="class-6th">$100-150$</option>
                                                <option value="class-7th">More than 150$</option>
                                            </select>
                                        </div>
                                        <div data-title="Brand:" class="selector-item">
                                            <select name="brad" class="selector">
                                                <option value="all">Top brands</option>
                                                <option value="br2">Brand first</option>
                                                <option value="br3">Brand second</option>
                                                <option value="br4">Brand third</option>
                                                <option value="br5">Brand fourth</option>
                                                <option value="br6">Brand fiveth</option>
                                            </select>
                                        </div>
                                        <div data-title="Avalability:" class="selector-item">
                                            <select name="ability" class="selector">
                                                <option value="all">Availability</option>
                                                <option value="vl2">Availability 1</option>
                                                <option value="vl3">Availability 2</option>
                                                <option value="vl4">Availability 3</option>
                                                <option value="vl5">Availability 4</option>
                                                <option value="vl6">Availability 5</option>
                                            </select>
                                        </div>
                                        <p class="btn-for-mobile"><button type="submit" class="btn-submit">Go</button></p>
                                    </form>
                                </div>
                            </div>
                            <div class="flt-item to-right">
                                <span class="flt-title">Sort</span>
                                <div class="wrap-selectors">
                                    <div class="selector-item orderby-selector">
                                        <select name="orderby" class="orderby" aria-label="Shop order" onchange="sort_price(this)" >
                                            <option value="default" selected="selected">Default sorting</option>
                                            <option value="ascending">price: low to high</option>
                                            <option  value="decending">price: high to low</option>
                                        </select>
                                    </div>
                                    <div class="selector-item viewmode-selector">
                                        <a href="category-grid-right-sidebar.html" class="viewmode grid-mode"><i class="biolife-icon icon-grid"></i></a>
                                        <a href="category-list-right-sidebar.html" class="viewmode detail-mode active"><i class="biolife-icon icon-list"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <ul id="product" class="products-list">

 						<c:forEach var="data" items="${products}">
                                <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/${data.image}" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="detailProduct.php" class="pr-name">${data.name}</a></h4>
                                            <p class="excerpt">${data.description}.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>${data.price-data.price*0.9}</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>${data.price}</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="cart/add/${data.id}" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                
                                </c:forEach> 
                       
                                
                                
                                <%-- <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-13.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="#" class="pr-name">Organic 10 Assorted Flavors Jelly Beans, 5.5 Oz</a></h4>
                                            <p class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel maximus lacus. Duis ut mauris eget justo dictum tempus sed vel tellus.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-14.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="#" class="pr-name">Organic 10 Assorted Flavors Jelly Beans, 5.5 Oz</a></h4>
                                            <p class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel maximus lacus. Duis ut mauris eget justo dictum tempus sed vel tellus.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-17.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="#" class="pr-name">Organic 10 Assorted Flavors Jelly Beans, 5.5 Oz</a></h4>
                                            <p class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel maximus lacus. Duis ut mauris eget justo dictum tempus sed vel tellus.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-08.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="#" class="pr-name">Organic 10 Assorted Flavors Jelly Beans, 5.5 Oz</a></h4>
                                            <p class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel maximus lacus. Duis ut mauris eget justo dictum tempus sed vel tellus.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="product-item col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="contain-product pr-detail-layout">
                                        <div class="product-thumb">
                                            <a href="#" class="link-to-product">
                                                <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-10.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">Fresh Fruit</b>
                                            <h4 class="product-title"><a href="#" class="pr-name">Organic 10 Assorted Flavors Jelly Beans, 5.5 Oz</a></h4>
                                            <p class="excerpt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel maximus lacus. Duis ut mauris eget justo dictum tempus sed vel tellus.</p>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                            </div>
                                            <div class="buttons">
                                                <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                                                <a href="#" class="btn add-to-cart-btn">add to cart</a>
                                                <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                        <div class="advance-info">
                                            <ul class="list">
                                                <li>100% real fruit ingredients</li>
                                                <li>All Sugar comes naturally</li>
                                                <li>Non-GMO Project Verified</li>
                                            </ul>
                                            <div class="shipping-info">
                                                <p class="shipping-day">3-Day Shipping</p>
                                                <p class="for-today">Pree Pickup Today</p>
                                            </div>
                                        </div>
                                    </div>
                                </li> --%>

                            </ul>
                        </div>

                        <div class="biolife-panigations-block">
                            <ul class="panigation-contain">
                                <li><span class="current-page">1</span></li>
                                <li><a href="#" class="link-page">2</a></li>
                                <li><a href="#" class="link-page">3</a></li>
                                <li><span class="sep">....</span></li>
                                <li><a href="#" class="link-page">20</a></li>
                                <li><a href="#" class="link-page next"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>

                    </div>

                </div>
                <!-- Sidebar -->
                <aside id="sidebar" class="sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <div class="biolife-mobile-panels">
                        <span class="biolife-current-panel-title">Sidebar</span>
                        <a class="biolife-close-btn" href="#" data-object="open-mobile-filter">&times;</a>
                    </div>
                    <div class="sidebar-contain">
                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Departements</h4>
                            <div class="wgt-content">
                                <ul class="cat-list">
                                    <li class="cat-list-item"><a href="#" class="cat-link">Organic Food</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Fresh Fruit</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Dried Fruits</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Shipping & Pickup</h4>
                            <div class="wgt-content">
                                <ul class="cat-list">
                                    <li class="cat-list-item"><a href="#" class="cat-link">Show all</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">2- Day shipping</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Shop to Home</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Free Pickup</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget price-filter biolife-filter">
                            <h4 class="wgt-title">Price</h4>
                            <div class="wgt-content">
                                <div class="frm-contain">
                                    <form action="#" name="price-filter" id="price-filter" method="get">
                                        <p class="f-item">
                                            <label for="pr-from">$</label>
                                            <input class="input-number" type="number" id="pr-from" value="" name="price-from">
                                        </p>
                                        <p class="f-item">
                                            <label for="pr-to">to $</label>
                                            <input class="input-number" type="number" id="pr-to" value="" name="price-from">
                                        </p>
                                        <p class="f-item"><button class="btn-submit" type="submit">go</button></p>
                                    </form>
                                </div>
                                <ul class="check-list bold single">
                                    <li class="check-list-item"><a href="#" class="check-link">$0 - $5</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">$5 - $10</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">$15 - $20</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Brand</h4>
                            <div class="wgt-content">
                                <ul class="check-list multiple">
                                    <li class="check-list-item"><a href="#" class="check-link">Great Value Organic</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">Plum Organic</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">Shop to Home</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Color</h4>
                            <div class="wgt-content">
                                <ul class="color-list">
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol img-color"></span>Multi</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-01"></span>Red</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-02"></span>Orrange</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-03"></span>Other</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Popular Size</h4>
                            <div class="wgt-content">
                                <ul class="check-list bold multiple">
                                    <li class="check-list-item"><a href="#" class="check-link">8oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">15oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">6oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">30oz</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Number of Pieces</h4>
                            <div class="wgt-content">
                                <ul class="check-list bold">
                                    <li class="check-list-item"><a href="#" class="check-link">1 to 9</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">10 to 15</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Recently Viewed</h4>
                            <div class="wgt-content">
                                <ul class="products">
                                    <li class="pr-item">
                                        <div class="contain-product style-widget">
                                            <div class="product-thumb">
                                                <a href="#" class="link-to-product" tabindex="0">
                                                    <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-13.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                                </a>
                                            </div>
                                            <div class="info">
                                                <b class="categories">Fresh Fruit</b>
                                                <h4 class="product-title"><a href="#" class="pr-name" tabindex="0">National Fresh Fruit</a></h4>
                                                <div class="price">
                                                    <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                    <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="pr-item">
                                        <div class="contain-product style-widget">
                                            <div class="product-thumb">
                                                <a href="#" class="link-to-product" tabindex="0">
                                                    <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-14.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                                </a>
                                            </div>
                                            <div class="info">
                                                <b class="categories">Fresh Fruit</b>
                                                <h4 class="product-title"><a href="#" class="pr-name" tabindex="0">National Fresh Fruit</a></h4>
                                                <div class="price">
                                                    <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                    <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="pr-item">
                                        <div class="contain-product style-widget">
                                            <div class="product-thumb">
                                                <a href="#" class="link-to-product" tabindex="0">
                                                    <img src="${pageContext.request.contextPath}/templates/assets/images/products/p-10.jpg" alt="dd" width="270" height="270" class="product-thumnail">
                                                </a>
                                            </div>
                                            <div class="info">
                                                <b class="categories">Fresh Fruit</b>
                                                <h4 class="product-title"><a href="#" class="pr-name" tabindex="0">National Fresh Fruit</a></h4>
                                                <div class="price">
                                                    <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                    <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Product Tags</h4>
                            <div class="wgt-content">
                                <ul class="tag-cloud">
                                    <li class="tag-item"><a href="#" class="tag-link">Fresh Fruit</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Natural Food</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Hot</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Organics</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Dried Organic</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </aside>
            </div>
        </div>
    </div>
    	
    	<%@include file="/views/user/footer.jsp"%>

    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>
<%@include file="/commons/user-script.jsp"%>


<script type="text/javascript">
function sort_price(me){
	var url = "getproducts.php?";
	if(me.value == "ascending"){
		url += "ascending=true";
	}else if (me.value == "decending"){
		url += "decending=true";
	}else{
		url += "ascending=false&";
		url += "decending=false";
	}
// 	window.location.href=url;
	$.get(url, function(data, status){
		console.log(data);
		var ul = document.getElementById("product");
		ul.innerHTML = "";
	    for(var i = 0; i < data.length; i++){
	    	var li = document.createElement("li");
	    	li.className = 'product-item col-lg-12 col-md-12 col-sm-12 col-xs-12';
	    	
	    	var dataOfLi = `
	    		
                <div class="contain-product pr-detail-layout">
                    <div class="product-thumb">
                        <a href="#" class="link-to-product">
                            <img src="${pageContext.request.contextPath}/templates/assets/images/products/`+data[i].image+`"alt="dd" width="270" height="270" class="product-thumnail">
                        </a>
                    </div>
                    <div class="info">
                        <b class="categories">Fresh Fruit</b>
                        <h4 class="product-title"><a href="detailProduct.php" class="pr-name">`+data[i].name+`</a></h4>
                        <p class="excerpt">`+data[i].description+`.</p>
                        <div class="price">
                            <ins><span class="price-amount"><span class="currencySymbol">£</span>`+(data[i].price - data[i].price * 0.9 )+`</span></ins>
                            <del><span class="price-amount"><span class="currencySymbol">£</span>`+data[i].price+`</span></del>
                        </div>
                        <div class="buttons">
                            <a href="#" class="btn wishlist-btn"><i class="fa fa-heart" aria-hidden="true"></i></a>
                            <a href="#" class="btn add-to-cart-btn">add to cart</a>
                            <a href="#" class="btn compare-btn"><i class="fa fa-random" aria-hidden="true"></i></a>
                        </div>
                    </div>
                    <div class="advance-info">
                        <ul class="list">
                            <li>100% real fruit ingredients</li>
                            <li>All Sugar comes naturally</li>
                            <li>Non-GMO Project Verified</li>
                        </ul>
                        <div class="shipping-info">
                            <p class="shipping-day">3-Day Shipping</p>
                            <p class="for-today">Pree Pickup Today</p>
                        </div>
                    </div>
                </div>

	    	`;
	    	
	    li.innerHTML = 	dataOfLi;
	    ul.appendChild(li);
	    
        }
	    



    
	  });
	
}
</script>
</body>
</html>