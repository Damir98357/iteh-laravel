<?php

namespace App\Http\Controllers;

use App\Http\Resources\CustomerResource;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $customers = Customer::all();
        return $customers;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:customers',
            'birth' => 'required|integer|between:1930,2005',
            'gender' => 'required|in:male,female',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $customer = Customer::create([
            'name' => $request->name,
            'email' => $request->email,
            'birth' => $request->birth,
            'gender' => $request->gender,
            'user_id' => Auth::user()->id,
        ]);

        return response()->json([
            'message' => 'Customer was created',
            'customer' => new CustomerResource($customer)
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($customer_id)
    {
        $customer = Customer::find($customer_id);
        if (is_null($customer)) {
            return response()->json('Customer not found', 404);
        }
        return response()->json([
            'customer' => new CustomerResource($customer)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Customer $customer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customer)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'birth' => 'required|integer|between:1930,2005',
            'gender' => 'required|in:male,female',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->birth = $request->birth;
        $customer->gender = $request->gender;

        $customer->save();

        return response()->json([
            'message' => 'Customer was updated',
            'customer' => new CustomerResource($customer)
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customer)
    {
        $customer->delete();

        return response()->json('Customer was deleted');
    }
}
