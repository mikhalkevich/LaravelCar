@extends('layouts.base')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Home</div>
                    <div class="card-body">
                        @if($products)
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th width="200px">Изображение</th>
                                <th>Наименования</th>
                            </tr>
                            @foreach($products as $product)
                                <tr>
                                    <td>
                                        <img class="img-fluid" src="{{asset('storage/'.$product->picture)}}" alt="">
                                    </td>
                                    <td>{{$product->name}}</td>
                                </tr>
                            @endforeach
                        </table>

                            @foreach ($errors->all() as $error)
                                {{ $error }}<br/>
                            @endforeach

                        <form method="post" action="/home">
                            @csrf
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Your name</label>
                                <div class="col-md-6">
                                    <input id="name" type="text"
                                           class="form-control @error('name') is-invalid @enderror" name="name"
                                           value="{{auth::user()->name}}" autocomplete="name" autofocus>
                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Your email</label>
                                <div class="col-md-6">
                                    <input id="name" type="text"
                                           class="form-control @error('email') is-invalid @enderror" name="email"
                                           value="{{auth::user()->email}}" autocomplete="name" autofocus>
                                    @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Your phone</label>
                                <div class="col-md-6">
                                    <input id="name" type="text"
                                           class="form-control @error('phone') is-invalid @enderror" name="phone"
                                           value="" autocomplete="name" autofocus>
                                    @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <div class="col-md-6 offset-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        Save
                                    </button>
                                </div>
                            </div>
                        </form>
                        @else
                            Вы еще не выбрали ни одного товара
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
