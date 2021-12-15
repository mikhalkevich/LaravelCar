@extends('layouts.base')
@section('content')
    <h2>{{$catalog->name}}</h2>
    {!! $catalog->body !!}
    @foreach($catalog->products as $product)
        @include('includes.product-item')
    @endforeach
@endsection
