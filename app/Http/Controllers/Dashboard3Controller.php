<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\presensi;

class Dashboard3Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $presensi = presensi::latest()->paginate(5);
    
        return view('dashboard3.index',compact('presensi'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

}
