@extends('layouts.base')
@section('content')

<section class="product-listing page-section-ptb">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <div class="listing-sidebar">
                    <div class="widget">
                        <div class="widget-search">
                            <h5>Advanced Search</h5>
                            <ul class="list-style
           -none">
                                <li><i class="fa fa-star"> </i> Results Found <span class="float-right">(39)</span></li>
                                <li><i class="fa fa-shopping-cart"> </i> Compare Vehicles <span class="float-right">(10)</span></li>
                            </ul>
                        </div>
                        <div class="clearfix">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <a href="#">Year</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> All Years
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2009
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2010
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2011
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2012
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2013
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2014
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2015
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2016
                    </label>
                  </span></li>
                                    </ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Condition</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> All Conditions
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Brand New
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Slightly Used
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Used
                    </label>
                </span></li></ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Body</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> All Body Styles
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 2dr Car
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 4dr Car
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Convertible
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Sedan
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Sports Utility Vehicle
                    </label>
                </span></li></ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Model</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> All Models
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 3-Series
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Boxster
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Carrera
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Cayenne
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> F-type
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> GT-R
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> GTS
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> M6
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Macan
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Mazda6
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> RLX
                    </label>
                  </span></li>
                                    </ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Transmission</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> All Transmissions
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 5-Speed Manual
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 6-Speed Automatic
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 6-Speed Manual
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 6-Speed Semi-Auto
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 7-Speed PDK
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 8-Speed Automatic
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> 8-Speed Tiptronic
                    </label>
                  </span></li>
                                    </ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Exterior Color</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> Ruby Red Metallic
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Racing Yellow
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Guards Red
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Aqua Blue Metallic
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> White
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Dark Blue Metallic
                    </label>
                  </span></li>
                                    </ul>
                                </li>
                                <li class="list-group-item">
                                    <a href="#">Interior Color</a>
                                    <ul><li><span class="checkbox">
                  <label>
                    <input type="checkbox"> Platinum Grey
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Agate Grey
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Marsala Red
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Alcantara Black
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Black
                    </label>
                  </span></li>
                                        <li><span class="checkbox">
                    <label>
                      <input type="checkbox"> Luxor Beige
                    </label>
                  </span></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="widget-banner">
                        <img class="img-fluid center-block" src="images/banner.jpg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="sorting-options-main">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="price-slide">
                                <div class="price">
                                    <label for="amount">Price Range</label>
                                    <input type="text" id="amount" class="amount" value="$50 - $300" />
                                    <div id="slider-range"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="price-slide-2">
                                <div class="price">
                                    <label for="amount-2">Price Range</label>
                                    <input type="text" id="amount-2" class="amount" value="$50 - $300" />
                                    <div id="slider-range-2"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="price-search">
                                <span>Price search</span>
                                <div class="search">
                                    <i class="fa fa-search"></i>
                                    <input type="search" class="form-control placeholder" placeholder="Search....">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row sorting-options">
                        <div class="col-lg-5">
                            <div class="change-view-button">
                                <a class="active" href="#"> <i class="fa fa-th"></i> </a>
                                <a href="listing-02.html"> <i class="fa fa-list-ul"></i> </a>
                            </div>
                        </div>
                        <div class="col-lg-3 text-right">
                            <div class="selected-box">
                                <select>
                                    <option>Show  </option>
                                    <option>1</option>
                                    <option>2 </option>
                                    <option>3 </option>
                                    <option>4 </option>
                                    <option>5 </option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 text-right">
                            <div class="selected-box">
                                <select>
                                    <option>Sort by </option>
                                    <option>Price: Lowest first</option>
                                    <option>Price: Highest first </option>
                                    <option>Product Name: A to Z </option>
                                    <option>Product Name: Z to A </option>
                                    <option>In stock</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/01.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Acura Rsx</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/02.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Lexus GS 450h</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/03.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">GTA 5 Lowriders DLC</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/04.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Toyota avalon hybrid </a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/05.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Hyundai santa fe sport </a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/06.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Lexus is f</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/01.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">Acura Rsx</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/03.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#">GTA 5 Lowriders DLC</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="car-item gray-bg text-center">
                            <div class="car-image">
                                <img class="img-fluid" src="images/car/02.jpg" alt="">
                                <div class="car-overlay-banner">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-link"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="car-list">
                                <ul class="list-inline">
                                    <li><i class="fa fa-registered"></i> 2016</li>
                                    <li><i class="fa fa-cog"></i> Manual </li>
                                    <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
                                </ul>
                            </div>
                            <div class="car-content">
                                <div class="star">
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star orange-color"></i>
                                    <i class="fa fa-star-o orange-color"></i>
                                </div>
                                <a href="#"> Lexus GS 450h</a>
                                <div class="separator"></div>
                                <div class="price">
                                    <span class="old-price">$35,568</span>
                                    <span class="new-price">$32,698 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pagination-nav d-flex justify-content-center">
                    <ul class="pagination">
                        <li><a href="#">«</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
