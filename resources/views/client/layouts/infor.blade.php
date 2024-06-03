@extends('client.shared.master')
@section('content')
<div class="content_yield">
	@if (session('thanhcong'))
    <div class="alert alert-success">
        {{ session('thanhcong') }}
    </div>
	@endif
	{{ Form::open(['route'=>['reset.password',$user->id],'method'=>'put','class' => 'col-md-12 row']) }}
	<div class="col-md-6 m-auto">
		<h3 class="mb-5 font-weight-bold" style="text-align: center;">Thay đổi thông tin người dùng</h3>
		<div class="col-lg-10 col-md-12 col-sm-12 row">
			<div class="form-group" style="margin-left: 117px;">
				{{ Form::label('Tên người dùng: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('name', $user->name, [
					'class' => 'form-control',
					'placeholder'=>"Tên người dùng"
				])
				!!}
				<span class="text-danger">{{ $errors->first('name')}}</span>
			</div>
			<div class="form-group" style="margin-left: 60px;">
				{{ Form::label('Password: ','',['class' => 'font-weight-bold']) }}
				{!! Form::text('password', '', [
					'class' => 'form-control',
					'placeholder'=>"Password"
				])
				!!}
				<span class="text-danger">{{ $errors->first('password')}}</span>
			</div>
			
			<div class="form-group text-right" style="margin-left: 20px;margin-top: 10px;">
				{{ Form::submit('Lưu',['class' => 'font-weight-bold text-white btn bg-color-green mt-4']) }}
			</div>
		</div>
	</div>
	{{ Form::close() }}
</div>
@endsection