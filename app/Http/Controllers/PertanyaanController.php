<?php

namespace App\Http\Controllers;

use App\Models\Pertanyaan;
use Illuminate\Http\Request;
use Inertia\Inertia;

class PertanyaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(Pertanyaan::get()->where('user_id', auth()->user()->id));

        return Inertia::render('Pertanyaan/Index', [
            'quests' => Pertanyaan::with('user')->latest()->get(),
            'myQuest' =>Pertanyaan::get()->where('user_id', auth()->user()->id)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return Inertia::render('Pertanyaan/Create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'body' => 'required',
            'tingkat' => 'required',
        ]);

        $validatedData['user_id'] = auth()->user()->id;

        Pertanyaan::create($validatedData);

        return redirect('/pertanyaan')->with('success', 'Pertanyaan berhasil ditanyakan! Silahkan tunggu atau bertanya lagi.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pertanyaan  $pertanyaan
     * @return \Illuminate\Http\Response
     */
    public function show(Pertanyaan $pertanyaan)
    {
        return Inertia::render('Pertanyaan/Show', [
            'quest' => $pertanyaan
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pertanyaan  $pertanyaan
     * @return \Illuminate\Http\Response
     */
    public function edit(Pertanyaan $pertanyaan)
    {
        // Prevent another user access another Question
        if (auth()->user()->id !== $pertanyaan->user_id) {
            abort(403);
        }

        return Inertia::render('Pertanyaan/Edit', [
            'quest' => $pertanyaan,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Pertanyaan  $pertanyaan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pertanyaan $pertanyaan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pertanyaan  $pertanyaan
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pertanyaan $pertanyaan)
    {
        //
    }
}
