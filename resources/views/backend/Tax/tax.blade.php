@extends('admin.admin_master')
@section('admin')
    <div class="page-content">
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                        <h4 class="mb-sm-0">All Taxes</h4>
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Add Tax</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form action="{{ route('tax.store') }}" method="POST">
                            @csrf
                        <div class="modal-body">
                            <div class="form-group">
                              <label for="tax">Tax</label>
                              <input type="text" name="tax" id="tax" class="form-control" placeholder="14 %" aria-describedby="" required>
                              {{-- <small id="" class="text-muted">Help text</small> --}}
                            </div>
                            <div class="form-check pt-4">
                              <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" name="status" id="" value="0" checked>
                                Status
                              </label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-light waves-effect" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary waves-effect waves-light">Save</button>
                        </div>
                    </form>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                                <h4 class="card-title">All Tax </h4>

                                    <button type="button" class="btn btn-dark btn-rounded waves-effect waves-light"
                                    data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="float:right;"><i
                                        class="fas fa-plus-circle"> Add Unit </i></button><br> <br><br>


                            <table id="datatable" class="table table-bordered dt-responsive nowrap"
                                style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th width="5%">Sl</th>
                                        <th>Tax</th>
                                        <th>Status</th>
                                        <th width="20%">Action</th>
                                </thead>
                                <tbody>

                                    @foreach ($taxes as $key => $item)
                                        <tr>
                                            <td> {{ $key + 1 }} </td>
                                            <td> {{ $item->tax }} </td>
                                            <td> {{ $item->status }} </td>
                                            <td>
                                                <a href="{{ route('tax.edit', $item->id) }}" class="btn btn-info sm"
                                                    title="Edit Data"> <i class="fas fa-edit"></i> </a>

                                                <a href="{{ route('tax.delete', $item->id) }}" class="btn btn-danger sm"
                                                    title="Delete Data" id="delete"> <i class="fas fa-trash-alt"></i>
                                                </a>

                                            </td>

                                        </tr>
                                    @endforeach

                                </tbody>
                            </table>

                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row -->

        </div> <!-- container-fluid -->
    </div>
@endsection
