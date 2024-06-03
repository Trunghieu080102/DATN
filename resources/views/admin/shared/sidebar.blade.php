<ul class="sidebar" style = "font-family:Times new roman;">
	<!-- Dash board -->
	<div class="dash_board">
		<div class="dash_board_ava">
			<img src="{{ asset('images/trinh.jpg') }}" alt="#">
		</div>
		<a class="dash_board_link" href="{{ url('admin/dashboard') }}"> Trang chủ </a>
	</div>
	<!-- Manage list -->
	<li class="list_item">
		<a class="item_link" href="{{ route('brand.index') }}">Nhãn Hàng</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('category.index') }}">Thể Loại</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('product.index') }}">Sản Phẩm</a>
	</li>
    <li class="list_item">
        <a class="item_link" href="{{ route('order.index') }}">ĐƠn Hàng</a>
    </li>
    <li class="list_item">
        <a class="item_link" href="{{ route('customer.index') }}">Khách Hàng</a>
    </li>
	<li class="list_item">
		<a class="item_link" href="{{ route('user.index') }}">Người Dùng</a>
	</li>
	<li class="list_item">
		<a class="item_link" href="{{ route('role.index') }}">Phân Quyền</a>
	</li>
    <li class="list_item">
        <a class="item_link" href="{{ route('slide.index') }}">Hiệu Ứng</a>
    </li>
</ul>
