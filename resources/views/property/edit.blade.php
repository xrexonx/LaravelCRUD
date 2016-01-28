@extends('master')

@section('content')

@include('common.headerNav')
    <br>
    <div class="container">
     <h4>Update Property</h4>
        <form class="updateProperty col s12" method="POST" enctype="multipart/form-data">
         <input id="name" type="hidden" class="propertyId" name="id" value="{{ $property->id }}">
        {{ csrf_field() }}
            <div class="row">
                <div class="input-field col s12">
                    <input id="name" type="text" class="validate" name="name" value="{{ $property->name }}">
                    <label for="name">Property Name</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="desc" type="text" class="validate" name="location"  value="{{ $property->location }}">
                    <label for="desc">Property Location</label>
                </div>
            </div>

            <div class="file-field input-field">
                  <div class="btn">
                    <span>File</span>
                    <input type="file" multiple name="files[]" accept="image/*">
                  </div>
                  <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="Add more images">
                  </div>
            </div>

             <div class="row right">
                <div class="input-field col s12">
                    <input type="reset" class="btn waves-effect waves-light teal lighten-2" value="Cancel">
                    <input type="submit" class="btn waves-effect waves-light teal lighten-2" value="Update">
                </div>
            </div>

        </form>
    </div>
    
@endsection