@extends('layouts.base')
@section('content')
    <h2>{{$catalog->name}}</h2>
    {!! $catalog->body !!}
@endsection
