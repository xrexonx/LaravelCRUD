@extends('master')

@section('content')

@include('common.headerNav')
    <div class="container">
        <div class="row">
            <div class="col s12">
                <div class="card">
                    <div class="card-content">
                        <p>Property Name : {{ $propertyName }}</p>
                        <p>Property Location :   {{ $propertyLocation }}</p>
                    </div>
                    <div class="card-image">
                        @if (count($images) > 0)
                            @foreach ($images as $image)
                                @if ($image->filename)
                                    <div class="Image_Wrapper">
                                        <img src="{{ URL::to('/uploads/'.$image->filename) }}"  alt="{{ $image->id }}">
                                    </div>
                                @endif
                            @endforeach
                        @else
                            <div class="row center-align">
                              <div class="col s12 center-align">
                                <div class="card-panel teal">
                                  <span class="white-text">
                                        No Images Provided for this.
                                  </span>
                                </div>
                              </div>
                            </div>
                        @endif
                        <!-- <span class="card-title">{{ $propertyName }}</span> -->
                    </div>
                <div class="card-action">
                  <a href="#">This is a link</a>
                </div>

              </div>
            </div>
        </div>
    </div>
@endsection