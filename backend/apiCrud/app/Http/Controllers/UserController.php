<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required', 
            'email' => 'required|email', 
            'password' => 'required', 
            'c_password' => 'required|same:password', 
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
        $input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $user = User::create($input); 
        $success['token'] =  $user->createToken('MyApp')->accessToken; 
        $success['name'] =  $user->name;
        return response()->json(['success'=>$success], 200); 
    }
    public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 
            $user = Auth::user(); 
            $success['token'] =  $user->createToken('MyApp')->accessToken; 
            $success['name'] =  $user->name;
            return response()->json(['success' => $success], 200); 
        } 
        else{ 
            return response()->json(['error'=>'Usuario no encontrado'], 401); 
        } 
    }
    public function users(){
        return response()->json(User::all(),200);
    }
    public function postUser(Request $request){
        $input = $request->all();
        if($input['id'] != 0){
            $user = User::where('id',$input['id'])->update(["name" => $input["name"],"email" => $input['email']]);
        }else{
            $input['password'] = bcrypt($input['password']); 
            $user = User::create($input); 
        }
        return response()->json($user, 200);
    }
    public function deleteUser(Request $request){
        $input = $request->all();
        $user = User::where('id',$input['id'])->delete();
        return response()->json($user, 200);
    }
}
