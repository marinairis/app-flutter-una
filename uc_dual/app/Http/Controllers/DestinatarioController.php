<?php

namespace App\Http\Controllers;

use App\Models\Destinatario;
use Illuminate\Http\Request;

class DestinatarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $dest =  Destinatario::create($request->all());
        dd($dest);
        return 'chegamos até aqui';
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Destinatario  $destinatario
     * @return \Illuminate\Http\Response
     */
    public function show(Destinatario $destinatario)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Destinatario  $destinatario
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Destinatario  $destinatario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Destinatario $destinatario)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Destinatario  $destinatario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Destinatario $destinatario)
    {
        //
    }
}
