<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\support\Facades\Redirect;
session_start();

class UserController extends Controller
{
    //
    public function index()
    {
        //$this->AdminAuthCheck();
    	return view('admin.add_user');
    }

    public function save_user(Request $request)
    {
    	$data=array();
    	$data['customer_id']=$request->customer_id;
    	$data['customer_name']=$request->customer_name;
        $data['customer_email']=$request->customer_email;
        $data['password']=md5($request->password);
        $data['mobile_number']=$request->mobile_number;
    	// $data['publication_status']=$request->publication_status;
    	DB::table('tbl_customer')->insert($data);
    	Session::put('message','user Added Successfully !!');
    	return Redirect::to('/add-user');
    }

    public function manage_user()
    {
     
      $all_customer_info=DB::table('tbl_customer')->get();
    	$manage_customer=view('admin.manage_user')
    	->with('all_customer_info',$all_customer_info);
    	return view('admin_layout')
    	->with('admin.manage_user',$manage_customer);

    }


    public function delete_user($customer_id)
    {
    	DB::table('tbl_customer')
    	->where('customer_id',$customer_id)
    	->delete();
    	Session::get('message','Customer Deleted Successfully');
    	return Redirect::to('/manage-user');
    }
}
