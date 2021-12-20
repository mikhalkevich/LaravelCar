@extends('layouts.base')
@section('content')
<section class="product-listing page-section-ptb">
    <div class="container">
            <h2>{{$product->name}}</h2>
        <img class="img-fluid" src="{{asset('storage/'.$product->picture)}}" alt="">
            <br style="clear:both" />
            <div class="row">{!! $product->body !!}</div>
    </div>
</section>
@endsection
