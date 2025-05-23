@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <div class="page-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Add Product Page </h4><br><br>
                            <form method="post" action="{{ route('product.store') }}" id="myForm">
                                @csrf
                                <div class="row mb-3">
                                    <label for="example-text-input" class="col-sm-2 col-form-label">Product Name </label>
                                    <div class="form-group col-sm-10">
                                        <input name="name" id="name" class="form-control" type="text">
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Supplier Name </label>
                                    <div class="col-sm-10">
                                        <select name="supplier_id" id="supplier_id" class="form-select select2"
                                            aria-label="Default select example">
                                            <option selected value="" disabled>Open this select menu</option>
                                            @foreach ($supplier as $supp)
                                                <option value="{{ $supp->id }}">{{ $supp->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!-- end row -->

                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Unit Name </label>
                                    <div class="col-sm-10">
                                        <select name="unit_id" id="unit_id" class="form-select select2"
                                            aria-label="Default select example">
                                            <option selected value="" disabled>Open this select menu</option>
                                            @foreach ($unit as $uni)
                                                <option value="{{ $uni->id }}">{{ $uni->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row mb-3">
                                    <label class="col-sm-2 col-form-label">Category Name </label>
                                    <div class="col-sm-10">
                                        <select name="category_id" id="category_id" class="form-select select2"
                                            aria-label="Default select example">
                                            <option selected value="" disabled>Open this select menu</option>
                                            @foreach ($category as $cat)
                                                <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <!-- end row -->
                                <input type="submit" class="btn btn-info waves-effect waves-light " value="Add Product">
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
        </div>
    </div>

    <script type="text/javascript">
        myForm.addEventListener("submit", (e) => {
            e.preventDefault();
            var name = $('#name').val();
            var supplier_id = $('#supplier_id').val();
            var unit_id = $('#unit_id').val();
            var category_name = $('#category_id').val();

            if (name == '' || name == null) {
                $.notify("Name is Required", {
                    globalPosition: 'top right',
                    className: 'error'
                });
                return false;
            }
            if (supplier_id == '' || supplier_id == null) {
                $.notify("Supplier is Required", {
                    globalPosition: 'top right',
                    className: 'error'
                });
                return false;
            }
            if (unit_id == '' || unit_id == null) {
                $.notify("Unit is Required", {
                    globalPosition: 'top right',
                    className: 'error'
                });
                return false;
            }
            if (category_name == '' || category_name == null) {
                $.notify("Category is Required", {
                    globalPosition: 'top right',
                    className: 'error'
                });
                return false;
            }
            document.forms['myForm'].submit();

        });
    </script>

    {{-- <script  type="text/javascript">
        // $(document).ready(function() {

        //     $('#myForm').validate({
        //         rules: {
        //             name: {
        //                 required: true,
        //             },
        //             supplier_id: {
        //                 required: true,
        //             },
        //             unit_id: {
        //                 required: true,
        //             },
        //             category_id: {
        //                 required: true,
        //             },
        //         },
        //         messages: {
        //             name: {
        //                 required: 'Please Enter Your Product Name',
        //             },
        //             supplier_id: {
        //                 required: 'Please Select One Supplier',
        //             },
        //             unit_id: {
        //                 required: 'Please Select One Unit',
        //             },
        //             category_id: {
        //                 required: 'Please Select One Category',
        //             },
        //         },

        //         errorElement: 'span',
        //         errorPlacement: function(error, element) {
        //             error.addClass('invalid-feedback');
        //             element.closest('.form-group').append(error);
        //         },
        //         highlight: function(element, errorClass, validClass) {
        //             $(element).addClass('is-invalid');
        //         },
        //         unhighlight: function(element, errorClass, validClass) {
        //             $(element).removeClass('is-invalid');
        //         },
        //     });

        //     var name = $('#name').val();
        //     var supplier_id = $('#supplier_id').val();
        //     var unit_id = $('#unit_id').val();
        //     var category_name = $('#category_id').find('option:selected').text();

        //     if (name == '' || name == null) {
        //         $.notify("Supplier is Required", {
        //             globalPosition: 'top right',
        //             className: 'error'
        //         });
        //         return false;
        //     }
        //     if (supplier_id == '' || supplier_id == null) {
        //         $.notify("Supplier is Required", {
        //             globalPosition: 'top right',
        //             className: 'error'
        //         });
        //         return false;
        //     }
        //     if (unit_id == '' || unit_id == null) {
        //         $.notify("Supplier is Required", {
        //             globalPosition: 'top right',
        //             className: 'error'
        //         });
        //         return false;
        //     }
        //     if (category_name == '' || category_name == null) {
        //         $.notify("Supplier is Required", {
        //             globalPosition: 'top right',
        //             className: 'error'
        //         });
        //         return false;
        //     }
        // });
        // </script> --}}
@endsection
