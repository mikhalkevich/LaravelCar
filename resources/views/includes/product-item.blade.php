<div class="car-item gray-bg text-center">
    <div class="car-image">
        <img class="img-fluid" src="{{asset('storage/'.$product->picture)}}" alt="">
        <div class="car-overlay-banner">
            <ul>
                <li><a href="#"><i class="fa fa-link"></i></a></li>
                <li><a href="#" class="addCart" id="good-{{$product->id}}-{{$product->price}}"><i class="fa fa-shopping-cart"></i></a></li>
            </ul>
        </div>
    </div>
    <div class="car-list">
        <ul class="list-inline">
            <li><i class="fa fa-registered"></i> 2016</li>
            <li><a href="{{asset('catalog/'.$product->catalog_id)}}"><i class="fa fa-cog"></i>{{$product->catalog->name}}</a></li>
            <li><i class="fa fa-shopping-cart"></i> 6,000 mi</li>
        </ul>
    </div>
    <div class="car-content">
        <div class="star">
            <i class="fa fa-star orange-color"></i>
            <i class="fa fa-star orange-color"></i>
            <i class="fa fa-star orange-color"></i>
            <i class="fa fa-star orange-color"></i>
            <i class="fa fa-star-o orange-color"></i>
        </div>
        <a href="{{asset('product/'.$product->id)}}">{{$product->name}}</a>
        <div class="separator"></div>
        <div class="price">
            <span class="old-price">${{$product->price*0.9}}</span>
            <span class="new-price">${{$product->price}} </span>
        </div>
    </div>
</div>
