@extends('admin.admin_master')
@section('admin')
    <div class="page-content">
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">Dashboard</h4>

                        <div class="page-title-right">
                            <ol class="m-0 breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript: void(0);">BillWise</a></li>
                                <li class="breadcrumb-item active">Dashboard</li>
                            </ol>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end page title -->
            <div class="row">
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Total Sales</p>
                                    <h4 class="mb-2">{{ number_format($total_sales) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-up-line me-1"></i>9.23%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-success rounded-3">
                                        <i class="ri-arrow-right-up-line font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Total Purchase</p>
                                    <h4 class="mb-2">{{ number_format($total_purchase->sum('buying_price')) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-up-line me-1"></i>9.23%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-primary rounded-3">
                                        <i class="ri-shopping-cart-2-line font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Total Pending Due</p>
                                    <h4 class="mb-2">{{ number_format($total_dues) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-danger fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-down-line me-1"></i>1.09%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-success rounded-3">
                                        <i class="mdi mdi-point-of-sale font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
            </div><!-- end row -->
            <div class="row">
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Todays Sales</p>
                                    <h4 class="mb-2">{{ number_format($today_total_sales) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-up-line me-1"></i>9.23%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-primary rounded-3">
                                        <i class="ri-arrow-right-up-line font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Todays Purchase</p>
                                    <h4 class="mb-2">{{ number_format($today_total_purchase->sum('buying_price')) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-success fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-up-line me-1"></i>9.23%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-primary rounded-3">
                                        <i class="ri-shopping-cart-2-line font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
                <div class="col-xl-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="flex-grow-1">
                                    <p class="mb-2 text-truncate font-size-14">Total Pending Due</p>
                                    <h4 class="mb-2">{{ number_format($today_total_dues) }}</h4>
                                    {{-- <p class="mb-0 text-muted"><span class="text-danger fw-bold font-size-12 me-2"><i
                                                class="align-middle ri-arrow-right-down-line me-1"></i>1.09%</span>from
                                        previous period</p> --}}
                                </div>
                                <div class="avatar-sm">
                                    <span class="avatar-title bg-light text-success rounded-3">
                                        <i class="mdi mdi-point-of-sale font-size-24"></i>
                                    </span>
                                </div>
                            </div>
                        </div><!-- end cardbody -->
                    </div><!-- end card -->
                </div><!-- end col -->
            </div><!-- end row -->

            {{-- <div class="row">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="dropdown float-end">
                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical"></i>
                                    </a>

                                </div>

                                <h4 class="mb-4 card-title">Latest Transactions</h4>

                                <div class="table-responsive">
                                    <table class="table mb-0 align-middle table-centered table-hover table-nowrap">
                                        <thead class="table-light">
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Status</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th style="width: 120px;">Salary</th>
                                            </tr>
                                        </thead><!-- end thead -->
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Charles Casey</h6>
                                                </td>
                                                <td>Web Developer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active
                                                    </div>
                                                </td>
                                                <td>
                                                    23
                                                </td>
                                                <td>
                                                    04 Apr, 2021
                                                </td>
                                                <td>$42,450</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Alex Adams</h6>
                                                </td>
                                                <td>Python Developer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-warning me-2"></i>Deactive
                                                    </div>
                                                </td>
                                                <td>
                                                    28
                                                </td>
                                                <td>
                                                    01 Aug, 2021
                                                </td>
                                                <td>$25,060</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Prezy Kelsey</h6>
                                                </td>
                                                <td>Senior Javascript Developer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active
                                                    </div>
                                                </td>
                                                <td>
                                                    35
                                                </td>
                                                <td>
                                                    15 Jun, 2021
                                                </td>
                                                <td>$59,350</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Ruhi Fancher</h6>
                                                </td>
                                                <td>React Developer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active
                                                    </div>
                                                </td>
                                                <td>
                                                    25
                                                </td>
                                                <td>
                                                    01 March, 2021
                                                </td>
                                                <td>$23,700</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Juliet Pineda</h6>
                                                </td>
                                                <td>Senior Web Designer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active
                                                    </div>
                                                </td>
                                                <td>
                                                    38
                                                </td>
                                                <td>
                                                    01 Jan, 2021
                                                </td>
                                                <td>$69,185</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Den Simpson</h6>
                                                </td>
                                                <td>Web Designer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-warning me-2"></i>Deactive
                                                    </div>
                                                </td>
                                                <td>
                                                    21
                                                </td>
                                                <td>
                                                    01 Sep, 2021
                                                </td>
                                                <td>$37,845</td>
                                            </tr>
                                            <!-- end -->
                                            <tr>
                                                <td>
                                                    <h6 class="mb-0">Mahek Torres</h6>
                                                </td>
                                                <td>Senior Laravel Developer</td>
                                                <td>
                                                    <div class="font-size-13"><i
                                                            class="align-middle ri-checkbox-blank-circle-fill font-size-10 text-success me-2"></i>Active
                                                    </div>
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                                <td>
                                                    20 May, 2021
                                                </td>
                                                <td>$55,100</td>
                                            </tr>
                                            <!-- end -->
                                        </tbody><!-- end tbody -->
                                    </table> <!-- end table -->
                                </div>
                            </div><!-- end card -->
                        </div><!-- end card -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div> --}}
        </div>
        <div class="col-xl-10">
            <div class="card">
                <div class="card-body">

                    <h4 class="card-title mb-4">Latest Transactions</h4>

                    <div class="table-responsive">
                        <table id="datatable" class="table table-centered mb-0 align-middle table-hover table-nowrap">
                            <thead class="table table-striped table-bordered dt-responsive nowrap"
                                style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <tr>
                                    <th>Cstomer Name</th>
                                    <th>Invoive No</th>
                                    <th>Date</th>
                                    <th>Due Amount</th>
                                    <th>Paid Amount</th>
                                    <th style="width: 120px;">Total</th>
                                </tr>
                            </thead>
                            <!-- end thead -->
                            <tbody>
                                @foreach ($latest_transactions as $latest_transaction)
                                    <tr>
                                        <td>
                                            <h6 class="mb-0">{{ $latest_transaction['customer']['name'] }}</h6>
                                        </td>
                                        <td>#{{ $latest_transaction->invoice_id }}</td>
                                        <td>
                                            <div class="font-size-13">
                                                {{ date('d-m-Y', strtotime($latest_transaction->created_at)) }}</div>
                                        </td>
                                        <td>
                                            {{ $latest_transaction->due_amount ? $latest_transaction->due_amount : '----' }}
                                        </td>
                                        <td>
                                            {{ $latest_transaction->paid_amount }}
                                        </td>
                                        <td>{{ $latest_transaction->total_amount }}</td>
                                    </tr>
                                @endforeach

                                <!-- end -->
                            </tbody>
                            <!-- end tbody -->
                        </table>
                        <!-- end table -->
                    </div>
                </div>
                <!-- end card -->
            </div>
            <!-- end card -->
        </div>

    </div>
@endsection
