<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Sattalite;
use Illuminate\Http\Request;
use Session;

class SattalitesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $sattalites = Sattalite::where('title', 'LIKE', "%$keyword%")
				->orWhere('description', 'LIKE', "%$keyword%")
				->orWhere('data_file', 'LIKE', "%$keyword%")
				
                ->paginate($perPage);
        } else {
            $sattalites = Sattalite::paginate($perPage);
        }

        return view('admin.sattalites.index', compact('sattalites'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.sattalites.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        $this->validate($request, [
			'title' => 'required',
			'data_file' => 'required'
		]);
        
        $requestData = $request->all();
       
        Sattalite::create($requestData);
        
        Session::flash('flash_message', 'Sattalite added!');

        return redirect('App/sattalites');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $sattalite = Sattalite::findOrFail($id);

        return view('admin.sattalites.show', compact('sattalite'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $sattalite = Sattalite::findOrFail($id);

        return view('admin.sattalites.edit', compact('sattalite'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update($id, Request $request)
    {
        $this->validate($request, [
			'title' => 'required',
			'data_file' => 'required'
		]);
        $requestData = $request->all();
        
        $sattalite = Sattalite::findOrFail($id);
        $sattalite->update($requestData);

        Session::flash('flash_message', 'Sattalite updated!');

        return redirect('App/sattalites');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        Sattalite::destroy($id);

        Session::flash('flash_message', 'Sattalite deleted!');

        return redirect('App/sattalites');
    }
}
