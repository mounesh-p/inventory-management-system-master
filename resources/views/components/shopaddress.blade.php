@php
    $user = Auth::user();
@endphp


<div class="row">
    <div class="mt-4 col-6">
        <address>
            {{-- <strong>Shop Name:</strong><br> --}}
            {{ $user?->shopname ?? 'Default Shop' }}<br>
            {{ $user?->address ?? 'Default Address' }}<br>
            {{ $user?->email ?? 'Default Email' }}

        </address>
    </div>
    <div class="col-6 mt-4 text-end">
        <address>
            @if (!empty($invoiceDate))
                <strong>Invoice Date</strong><br>
                {{ date('d-m-Y', strtotime($invoiceDate)) }}<br><br>
            @endif
        </address>

    </div>

</div>
