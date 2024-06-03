@extends('client.shared.master')
@section('content')

<!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Liên hệ với chúng tôi</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                        <li class="breadcrumb-item active"> Liên hệ </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Contact Us  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-12">
                    <div class="contact-info-left">
                        <h2>Thông tin liên hệ</h2>
                        <p>Nếu bạn có thắc mắc và cần tư vấn hãy liên hệ ngay với chúng tôi để được tư vấn và nhận những ưu đãi và chương trình hấp dẫn khác. </p>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>Địa chỉ: 141 Chiến Thắng,Tân Triều,Hà Nội.</p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>Số điện thoại: <a href="">+(84) 0363279075</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>Email: <a href="#">actvn.edu.vn@gmail.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-8 col-sm-12">
                    <div class="contact-form-right">
                        <h2>Liên hệ với chúng tôi </h2>
                        <p>+ Để liên hệ, vui lòng điền thông tin vào biểu mẫu bên dưới.</p>
                        @if(Session::has('flash_message'))
                            <strong>{{ Session::get('flash_message') }}</strong>
                        @endif  
                        <form id="contactForm" method="post" action="{{ route('sendcontact')}}">
                             @csrf
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Vui lòng nhập tên của bạn" required data-error="Please enter your name">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" placeholder="Vui lòng nhập Email của bạn" id="email" class="form-control" name="email" required data-error="Please enter your email">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Vui lòng nhập tên của sản phẩm bạn muốn mua" required data-error="Please enter your Subject">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" id="message" name="mess" placeholder="Vui lòng nhập nội dung của bạn" rows="4" data-error="Write your message" required></textarea>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                    <div class="submit-button text-center">
                                        <button class="btn hvr-hover" id="submit" type="submit">Gửi</button>
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Cart -->

@endsection