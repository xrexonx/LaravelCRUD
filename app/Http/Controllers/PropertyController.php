<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Validator;
use App\Models\Property;
use App\Models\Image;

class PropertyController extends Controller
{

    private $request = '';

    public function __construct (Request $request) {
        $this->request = $request;
    }

    protected function show()
    {
        return response()->json(Property::getProperty());
    }

    protected function create ()
    {
        return view('property.add')->with('name', Auth::user()->name);
    }

    protected function createProperty()
    {

        $userId = Auth::user()->id;

        $property = new Property;
        $property->name = $this->request->name;
        $property->location = $this->request->location;
        $property->userId = $userId;
        $property->status = 'open';
        $bSuccess = $property->save();

        if ($bSuccess) {

            if ($this->request->hasFile('files')) {

                foreach($this->request->file('files') as $file) {
        
                    $fileName = uniqid() .'-'. $file->getClientOriginalName();

                    $image = new Image;
                    $image->filename = $fileName;
                    $image->propertyId = $property->id;
                    $image->userId = $userId;
                    $image->save();

                    $file->move( base_path().'/public/uploads/', $fileName);
                }
        
            }

            return redirect('dashboard');
        }

    }

    public function edit($id)
    {

        // show the edit form and pass the nerd
         return view('property.edit')
                ->with('name', Auth::user()->name)
                ->with('property', Property::find($id));
    }

    public function update($id)
    {

        $property = Property::find($id);
        $property->name = $this->request->name;
        $property->location = $this->request->location;
        $bSuccess = $property->save();

        if ($bSuccess) {

            if ($this->request->hasFile('files')) {

                $userId = Auth::user()->id;

                foreach($this->request->file('files') as $file) {
        
                    $fileName = uniqid() .'-'. $file->getClientOriginalName();

                    $image = new Image;
                    $image->filename = $fileName;
                    $image->propertyId = $property->id;
                    $image->userId = $userId;
                    $image->save();

                    $file->move( base_path().'/public/uploads/', $fileName);
                }
        
            }

            return redirect('dashboard');
        }

    }

    public function view($id)
    {

        $property = Property::find($id);
        $images   = Image::where('propertyId', $property->id)->get();

        return view('property.view')
                ->with('name', Auth::user()->name)
                ->with('propertyName', $property->name)
                ->with('propertyLocation', $property->location)
                ->with('images', $images);
    }

    public function delete ($id)
    {
        return Property::destroy($id);
        // $delSuccess =  Property::destroy($id);

        // if ($delSuccess) {
        //     $images[] = Image::where('propertyId', $id)->get();

        //     //unlink the image.
        //     foreach ($images as $key => $filename) {
        //         $imagePath = base_path() .'/public/uploads/' . $filename[0]->filename;
        //         if (file_exists($imagePath)) {
        //             unlink($imagePath);
        //         }
        //     }
        // }
    }

}
