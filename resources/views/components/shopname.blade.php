@php
    $user = Auth::user();
@endphp


<div class="invoice-title">

    @if (!empty($invoiceno))
        <h4 class="float-end font-size-16">
            <strong>Invoice No # {{ $invoiceno }}</strong>
        </h4>
    @endif

    <h3>
        {{ $user?->shopname ?? 'Default Shop' }}
    </h3>
</div>
