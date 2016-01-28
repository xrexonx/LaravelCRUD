<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Auth;

class Image extends Model {

    protected $table = 'images';

    protected $fillable = ['filename', 'propertyId', 'userId'];

}
