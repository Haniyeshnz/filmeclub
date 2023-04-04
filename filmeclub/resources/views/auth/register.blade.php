@extends('auth-layout')
@section('calass-body','sing-up-page')
@section('content')

      <!--======= log_in_page =======-->
      <div id="log-in" class="site-form log-in-form">
      
      	<div id="log-in-head">
        	<h1>ثبت نام</h1>
            <div id="logo"><a href="{{route('index')}}"><img src="img/logo.png" alt=""></a></div>
        </div>
        
        <div class="form-output">
            <x-validation-errors></x-validation-errors>
        	<form action="{{route('register.store')}}" method="POST">
                @csrf
				<div class="form-group label-floating">
					<label class="control-label">نام ونام خانوادگی</label>
					<input class="form-control"  name="name" placeholder="نام و نام خانوادگی  خود را وارد کنید" type="text">
				</div>
				<div class="form-group label-floating">
					<label class="control-label">ایمیل</label>
					<input class="form-control"  name="email" placeholder="ایمیل خود را وارد کنید" type="email">
				</div>
				<div class="form-group label-floating">
					<label class="control-label">رمز عبور</label>
					<input class="form-control"  name="password" placeholder="یک رمز عبور8 رقمی وارد کنید" type="password">
				</div>
                
				<div class="form-group label-floating">
					<label class="control-label">تأیید رمز عبور</label>
					<input class="form-control" name="password_confirmation" placeholder="" type="password">
				</div>

				<!-- <div class="form-group label-floating is-select">
					<label class="control-label">جنسیت</label>
					<select class="selectpicker form-control">
						<option value="MA">مرد</option>
						<option value="FE">زن</option>
					</select>
				</div> -->
                
				<!-- <div class="remember">
					<div class="checkbox">
						<label>
							<input name="optionsCheckboxes" type="checkbox">
							<a href="#">شرایط و ضوابط</a> سایت را قبول میکنم
						</label>
					</div>
				</div> -->
				<div class="remember">
					<div class="checkbox">
						<label>
							<input name="remember" type="checkbox">
							 مرا بخاطر بسپار
						</label>
					</div>
				</div>
                
			  <button type="submit" class="btn btn-lg btn-primary full-width">ثبت نام</button>
			  <!-- <a href="" class="btn btn-lg btn-primary full-width">ثبت نام</a> -->

			  <div class="or"></div>

				<!-- <a href="#" class="btn btn-lg bg-facebook full-width btn-icon-left"><i class="fa fa-facebook" aria-hidden="true"></i>ورود با فیس بوک</a>

				<a href="#" class="btn btn-lg bg-twitter full-width btn-icon-left"><i class="fa fa-twitter" aria-hidden="true"></i>ورود با توییتر</a> -->


				<p>شما یک حساب کاربری دارید؟ <a href="{{route('login.store')}}"> ورود!</a> </p>
            </form>
        </div>
      </div>
      @endsection