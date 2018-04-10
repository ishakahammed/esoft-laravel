@extends('admin_layout')
@section('admin_content')
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a>
					<i class="icon-angle-right"></i> 
				</li>
				<li>
					<i class="icon-edit"></i>
					<a href="#">Add user</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Add User</h2>
					</div>
					<p class="alert-success"> 
						<?php 
						$message=Session::get('message');
						if($message)
						{
							echo $message;
							Session::put('message',null);
						}
						?>
					</p>
					<div class="box-content">
						<form class="form-horizontal" action="{{ url('/save-user') }}" method="post">
							{{ csrf_field() }}
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="date01">Customer Name</label>
							  <div class="controls">
								<input type="text" class="input-xlarge" name="customer_name" required="" >
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Customer Email</label>
							  <div class="controls">
								<input type="email" class="input-xlarge" name="customer_email" required="" >
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Customer Password</label>
							  <div class="controls">
								<input type="password" class="input-xlarge" name="password" required="" >
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="date01">Mobile NO.</label>
							  <div class="controls">
								<input type="number" class="input-xlarge" name="mobile_number" required="" >
							  </div>
							</div>
         

						<!-- 	<div class="control-group hidden-phone">
							  <label class="control-label" for="textarea2">Publication Status</label>
							  <div class="controls">
								<input type="checkbox" name="publication_status" value="1">
							  </div>
							</div> -->

							<div class="form-actions">
							  <button type="submit" class="btn btn-primary">Add User</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->
@endsection()