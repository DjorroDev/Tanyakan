<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Inertia\Inertia;

class RegisterController extends Controller
{
    public function create()
    {
        return Inertia::render('Auth/Register');
    }

    public function store(Request $request)
    {
        {
            $validatedData = $request->validate([
                'name' => 'required|max:255',
                'email' => 'required|email:dns|unique:users|max:255',
                'password' => 'required|min:5'
            ]);
    
            // Register as job seeker
            $validatedData['password'] = bcrypt($validatedData['password']);
    
    
    
            User::create($validatedData);
    
            return redirect('/login')->with('success', 'Account has been created.');
        }
    }
}
