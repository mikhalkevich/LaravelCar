@extends('layouts.base')
@section('content')

<section class="product-listing page-section-ptb">
    <div class="container">
            <h2>{{$maintext->name}}</h2>
            <br style="clear:both" />
            <div class="row">{!! $maintext->body !!}</div>
    </div>
</section>
@endsection
