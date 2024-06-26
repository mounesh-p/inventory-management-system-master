<?php

namespace App\Http\Controllers\Pos;

use App\Http\Controllers\Controller;
use App\Models\Payment;
use App\Models\Purchase;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashBoardController extends Controller
{
    public function index(){

        // Total data
        $total_sales = Payment::whereIn("paid_status", ['full_paid','partial_paid'])->sum('paid_amount');
        $total_dues = Payment::whereIn("paid_status", ['full_due','partial_paid'])->sum('due_amount');
        $total_purchase = Purchase::all();

        // Todays data
        $today_total_sales = Payment::whereIn("paid_status", ['full_paid','partial_paid'])->whereDate('created_at', Carbon::today())->sum('paid_amount');
        $today_total_dues = Payment::whereIn("paid_status", ['full_due','partial_paid'])->whereDate('created_at', Carbon::today())->sum('due_amount');
        $today_total_purchase = Purchase::whereDate('created_at', Carbon::today())->get();

        // Latest 10 transactions
        $latest_transactions = Payment::latest()->take(10)->get();
        // dd($latest_transactions);
        return view('admin.index', compact('total_sales','total_dues','total_purchase','today_total_sales','today_total_dues','today_total_purchase','latest_transactions'));
    }
}
