@extends('admin.admin_master')
@section('admin')
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0"> Customer Payment Report </h4>
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="javascript: void(0);"> </a></li>
                                <li class="breadcrumb-item active">Customer Payment Report</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-12">

                                    <x-shopname :invoiceno="$payment['invoice']['invoice_no']" />
                                    <hr>

                                    <x-shopaddress :invoiceDate="$payment['invoice']['date']" />

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div>
                                        <div class="p-2">
                                            <h3 class="font-size-16"><strong>Customer Invoice</strong></h3>
                                        </div>
                                        <div class="">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <td><strong>Customer Name </strong></td>
                                                            <td class="text-center"><strong>Customer Mobile</strong></td>
                                                            <td class="text-center"><strong>Address</strong>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                                        <tr>
                                                            <td> {{ $payment['customer']['name'] }}</td>
                                                            <td class="text-center">{{ $payment['customer']['mobile_no'] }}
                                                            </td>
                                                            <td class="text-center">{{ $payment['customer']['email'] }}</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->
                            <div class="row">
                                <div class="col-12">
                                    <div>
                                        <div class="p-2">

                                        </div>
                                        <div class="">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <td class="text-center"><strong>Sl </strong></td>
                                                            <td class="text-center"><strong>Category</strong></td>
                                                            <td class="text-center"><strong>Product Name</strong>
                                                            </td>
                                                            {{-- <td class="text-center"><strong>Current Stock</strong>
                                                            </td> --}}
                                                            <td class="text-center"><strong>Quantity</strong>
                                                            </td>
                                                            <td class="text-center"><strong>Unit Price </strong>
                                                            </td>
                                                            <td class="text-center"><strong>Total Price</strong>
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                                        @php
                                                            $total_sum = '0';
                                                            $invoice_details = App\Models\InvoiceDetail::where(
                                                                'invoice_id',
                                                                $payment->invoice_id,
                                                            )->get();
                                                        @endphp
                                                        @foreach ($invoice_details as $key => $details)
                                                            <tr>
                                                                <td class="text-center">{{ $key + 1 }}</td>
                                                                <td class="text-center">{{ $details['category']['name'] }}
                                                                </td>
                                                                <td class="text-center">{{ $details['product']['name'] }}
                                                                </td>
                                                                {{-- <td class="text-center">
                                                                    {{ $details['product']['quantity'] }}</td> --}}
                                                                <td class="text-center">{{ $details->selling_qty }}</td>
                                                                <td class="text-center">
                                                                    ₹{{ number_format($details->unit_price) }}</td>
                                                                <td class="text-center">
                                                                    ₹{{ number_format($details->selling_price) }}</td>
                                                            </tr>
                                                            @php
                                                                $total_sum += $details->selling_price;
                                                            @endphp
                                                        @endforeach
                                                        <tr>
                                                            {{-- <td class="thick-line"></td> --}}
                                                            <td class="thick-line"></td>
                                                            <td class="thick-line"></td>
                                                            <td class="thick-line"></td>
                                                            <td class="thick-line"></td>
                                                            <td class="thick-line text-center">
                                                                <strong>Subtotal</strong>
                                                            </td>
                                                            <td class="thick-line text-center">
                                                                ₹{{ number_format($total_sum) }}</td>
                                                        </tr>
                                                        @if (isset($payment->discount_amount))
                                                            <tr>
                                                                {{-- <td class="no-line"></td> --}}
                                                                <td class="no-line"></td>
                                                                <td class="no-line"></td>
                                                                <td class="no-line"></td>
                                                                <td class="no-line"></td>
                                                                <td class="no-line text-center">
                                                                    <strong>Discount Amount</strong>
                                                                </td>
                                                                <td class="no-line text-center">
                                                                    ₹{{ number_format($payment->discount_amount) }}
                                                                </td>
                                                            </tr>
                                                        @endif

                                                        <tr>
                                                            {{-- <td class="no-line"></td> --}}
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line text-center">
                                                                <strong>Paid Amount</strong>
                                                            </td>
                                                            <td class="no-line text-center">
                                                                {{ number_format($payment->paid_amount) ? '₹' . number_format($payment->paid_amount) : '-----' }}
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            {{-- <td class="no-line"></td> --}}
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line text-center">
                                                                <strong>Due Amount</strong>
                                                            </td>
                                                            <td class="no-line text-center">
                                                                {{ number_format($payment->due_amount) ? '₹' . number_format($payment->due_amount) : '-----' }}
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            {{-- <td class="no-line"></td> --}}
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line"></td>
                                                            <td class="no-line text-center">
                                                                <strong>Grand Amount</strong>
                                                            </td>
                                                            <td class="no-line text-center">
                                                                <h4 class="m-0">
                                                                    ₹{{ number_format($payment->total_amount) }}</h4>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="7"
                                                                style="text-align: center;font-weight: bold;">Paid Summary
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4"
                                                                style="text-align: center;font-weight: bold;">Date </td>
                                                            <td colspan="3"
                                                                style="text-align: center;font-weight: bold;">Amount</td>
                                                        </tr>
                                                        @php
                                                            $payment_details = App\Models\PaymentDetail::where(
                                                                'invoice_id',
                                                                $payment->invoice_id,
                                                            )->get();
                                                        @endphp

                                                        @foreach ($payment_details as $item)
                                                            <tr>
                                                                <td colspan="4"
                                                                    style="text-align: center;font-weight: bold;">
                                                                    {{ date('d-m-Y', strtotime($item->date)) }}</td>
                                                                <td colspan="3"
                                                                    style="text-align: center;font-weight: bold;">
                                                                    {{ number_format($item->current_paid_amount) ? number_format($item->current_paid_amount) : '-----' }}
                                                                </td>
                                                            </tr>
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="d-print-none">
                                                <div class="float-end">
                                                    <a href="javascript:window.print()"
                                                        class="btn btn-success waves-effect waves-light"><i
                                                            class="fa fa-print"></i></a>
                                                    {{-- <a href="#" class="btn btn-primary waves-effect waves-light ms-2">Download</a> --}}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end row -->
                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->

        </div> <!-- container-fluid -->
    </div>
@endsection
