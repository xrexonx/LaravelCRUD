@extends('master')

@section('content')

@include('common.headerNav')
    <br>
    <div class="container">
     <h4>Add Property</h4>
        <form class="addProperty col s12" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
            <div class="row">
                <div class="input-field col s12">
                    <input id="name" type="text" class="validate" name="name">
                    <label for="name">Property Name</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <input id="desc" type="text" class="validate" name="location">
                    <label for="desc">Property Location</label>
                </div>
            </div>

            <div class="file-field input-field">
                  <div class="btn">
                    <span>File</span>
                    <input type="file" multiple name="files[]" accept="image/*">
                  </div>
                  <div class="file-path-wrapper">
                    <input class="file-path validate" type="text" placeholder="Upload one or more files">
                  </div>
            </div>

             <div class="row right">
                <div class="input-field col s12">
                    <input type="reset" class="btn waves-effect waves-light teal lighten-2" value="Cancel">
                    <input type="submit" class="btn waves-effect waves-light teal lighten-2" value="Create">
                </div>
            </div>

        </form>
    </div>
    
@endsection