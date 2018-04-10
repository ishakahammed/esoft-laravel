@extends('admin_layout')
@section('admin_content')
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>
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
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Customer ID</th>
								  <th>Customer Name</th>
								  <th>Customer Email</th>
								  <th>Customer Mobile number</th>
								  <!-- <th>Status</th> -->
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  @foreach( $all_customer_info as $v_customer)
						  <tbody>
							<tr>
								<td>{{ $v_customer->customer_id }}</td>
								<td class="center">{{ $v_customer->customer_name }}</td>
								<td class="center">{{ $v_customer->customer_email }}</td>
								<td class="center">{{ $v_customer->mobile_number }}</td>
								
						

								<td class="center">
						

									<a class="btn btn-info" href="{{URL::to('/view-user/'.$v_customer->customer_id)}}">
										<i class="halflings-icon white view"></i>  
									</a>
									<a class="btn btn-danger" href="{{URL::to('/delete-user/'.$v_customer->customer_id)}}" id="delete">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>

						  </tbody>
						  @endforeach
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

@endsection