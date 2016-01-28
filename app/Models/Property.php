<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Auth;

class Property extends Model {

    protected $table = 'properties';

    protected $fillable = ['name', 'location', 'userId', 'status'];


    protected function getProperty ()
    {
        // return Property::where('userId', Auth::user()->id)->get();
        return Property::all();
    }
}
