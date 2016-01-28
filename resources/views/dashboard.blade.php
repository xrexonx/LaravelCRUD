@extends('master')

@section('content')
    @include('common.headerNav')
    <!-- <div ui-view></div> -->
    <br>
    <div class="container">
   	<h3>Property List</h3>
        <table class="bordered striped propertyList">
        {{ csrf_field() }}
        <thead>
          <tr>
              <th data-field="id">Property Name</th>
              <th data-field="name">Location</th>
              <th data-field="price">Action</th>
          </tr>
        </thead>
        <tbody>
          @if (count($properties) > 1)
              @foreach ($properties as $property)
                <tr class="property-{{ $property->id }}">
                  <td>{{ $property->name }}</td>
                  <td>{{ $property->location }}</td>
                  <td>
                    <a href="property/view/{{ $property->id }}">View</a> | 
                    <a href="property/edit/{{ $property->id }}">Edit</a> | 
                    <a href="#" class="delete" data-property="{{ $property->id }}">Delete</a>
                  </td>
                </tr>
              @endforeach
          @else
              <tr>
                <td>No Property Found.</td>
              </tr>
          @endif
        </tbody>
      </table>

      </div>
@endsection