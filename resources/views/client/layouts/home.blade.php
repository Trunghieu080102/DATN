@extends('client.shared.master')
@section('content')
<body>
    <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            @foreach($slides as $key => $slide)
            <li class="text-left" style="height: auto;">
                <img src="{{asset('images/'.$slide->image)}}" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong style="color:#FFFF33">Trinnie Store</strong></h1>
                            <p class="m-b-40">{{$slide->description}}</p>
                            <p><a class="btn hvr-hover" href="{{$slide->url}}">Mua Ngay</a></p>
                        </div>
                    </div>
                </div>
            </li>
            @endforeach
        </ul>
        <div class="slides-navigation" style="display: none;">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="special-menu text-center">
                        <div class="button-group filter-button-group">
                            <button class="active" data-filter="*">Tất cả Loại Sản Phẩm</button>
                            <button data-filter=".top-hot">Sản phẩm Bán chạy</button>
                            <button data-filter=".top-new">Sản Phẩm mới</button>
                            <button data-filter=".top-sale">Sản phẩm khuyến mãi</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row special-list">
                <!--Top hot product-->
                @foreach($topHots as $key => $topHot)
                <div class="col-lg-3 col-md-6 special-grid top-hot">
                    <div class="products-single fix">
                        <div class="card">
                            <div class="box-img-hover">
                                <img src="{{asset('/images/'.$topHot->url_image)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="{{url('/product-detail?id='.$topHot->id)}}" data-toggle="tooltip" data-placement="right" title="{{trans('message.View')}}"><i class="fas fa-eye"></i></a></li>
                                    </ul>
                                    <a class="cart" href="{{ url('/add-to-cart?product_id='.$topHot->id.'&quantity=1') }}" }}>{{trans('message.Add to Cart')}}</a>
                                </div>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>
                                <a href="{{url('/product-detail?id='.$topHot->id)}}">{{ Illuminate\Support\Str::limit($topHot->name, 25) }}</a>
                            </h4>
                            @if($topHot->promotion_price != null)
                            <div>
                                <h5 style="float: left;padding-right: 10px;">{{$topHot->promotion_price}} ₫</h5>
                                <h5 class="text-secondary"> <strike>{{$topHot->price}}₫</strike></h5>
                            </div>
                            @else
                            <h5>${{$topHot->price}}</h5>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach

                <!--Top new product-->
                @foreach($topNews as $key => $topNew)
                <div class="col-lg-3 col-md-6 special-grid top-new">
                    <div class="products-single fix">
                        <div class="card">
                            <div class="box-img-hover">
                                <img src="{{asset('/images/'.$topNew->url_image)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="{{url('/product-detail?id='.$topNew->id)}}" data-toggle="tooltip" data-placement="right" title="{{trans('message.View')}}"><i class="fas fa-eye"></i></a></li>
                                    </ul>
                                    <a class="cart" href="{{ url('/add-to-cart?product_id='.$topNew->id.'&quantity=1') }}" }}>{{trans('message.Add to Cart')}}</a>
                                </div>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>
                                <a href="{{url('/product-detail?id='.$topNew->id)}}">{{ Illuminate\Support\Str::limit($topNew->name, 25) }}</a>
                            </h4>
                            @if($topNew->promotion_price != null)
                            <div>
                                <h5 style="float: left;padding-right: 10px;">{{$topNew->promotion_price}}₫ </h5>
                                <h5 class="text-secondary"> <strike>{{$topHot->price}}₫</strike></h5>
                            </div>
                            @else
                            <h5>{{$topNew->price}}₫</h5>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach

                <!--Top Sales product-->
                @foreach($topSales as $key => $topSale)
                <div class="col-lg-3 col-md-6 special-grid top-sale">
                    <div class="products-single fix">
                        <div class="card">
                            <div class="box-img-hover">
                                <img src="{{asset('/images/'.$topSale->url_image)}}" class="img-fluid" alt="Image">
                                <div class="mask-icon">
                                    <ul>
                                        <li><a href="{{url('/product-detail?id='.$topSale->id)}}" data-toggle="tooltip" data-placement="right" title="{{trans('message.View')}}"><i class="fas fa-eye"></i></a></li>
                                    </ul>
                                    <a class="cart" href="{{ url('/add-to-cart?product_id='.$topSale->id.'&quantity=1') }}" }}>{{trans('message.Add to Cart')}}</a>
                                </div>
                            </div>
                        </div>
                        <div class="why-text">
                            <h4>
                                <a href="{{url('/product-detail?id='.$topSale->id)}}">{{ Illuminate\Support\Str::limit($topSale->name, 25) }}</a>
                            </h4>
                            @if($topSale->promotion_price != null)
                            <div>
                                <h5 style="float: left;padding-right: 10px;">{{$topSale->promotion_price}} ₫</h5>
                                <h5 class="text-secondary"> <strike>{{$topSale->price}}₫</strike></h5>
                            </div>
                            @else
                            <h5>₫{{$topSale->price}}</h5>
                            @endif
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- End Products  -->
    <!-- Start Instagram Feed  -->
    @include('client.shared.slider_advertisement')
    <!-- End Instagram Feed  -->
</body>
@endsection
