<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderResource;
use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $orders = Order::all();
        return $orders;
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
            'location' => 'required|string|max:255',
            'customer_id' => 'required|integer'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $order = Order::create([
            'location' => $request->location,
            'customer_id' => $request->customer_id
        ]);

        return response()->json([
            'message' => 'Order was created',
            'order' => new OrderResource($order)
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($order_id)
    {
        $order = Order::find($order_id);
        if (is_null($order)) {
            return response()->json('Order not found', 404);
        }
        return response()->json([
            'order' => new OrderResource($order)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        $validator = Validator::make($request->all(), [
            'location' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $order->location = $request->location;

        $order->save();

        return response()->json([
            'message' => 'Order was updated',
            'order' => new OrderResource($order)
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
    {
        $order->delete();

        return response()->json('Order was deleted');
    }
}
