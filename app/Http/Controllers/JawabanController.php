<?php

namespace App\Http\Controllers;

use App\Models\Jawaban;
use Illuminate\Http\Request;

class JawabanController extends Controller
{
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'jawaban' => 'required|max:255',
            'pertanyaan_id' => 'required',
        ]);

        $validatedData['user_id'] = auth()->user()->id;

        Jawaban::create($validatedData);

        return redirect('/pertanyaan/' . $request->pertanyaan_id)->with('success', 'Berhasil Menjawab');
    }
}
