@extends('layout')
@section('content')
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h1>Thanks for order..</h1>

						<h2>We will contact as soon as possible</h2>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or"> <a href="{{URL::to('/')}}">HOME</a></h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<a class="btn btn-default update" href="{{URL::to('/')}}">Continue Shopping</a><br>
						<a class="btn btn-default update" href="{{URL::to('/')}}">Return to Home</a><br>
						<a class="btn btn-default update" href="{{URL::to('/')}}">Give FeedBack</a>
						
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	


@endsection