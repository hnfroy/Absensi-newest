<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Dashboard4Controller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard4.index');
    }

}
