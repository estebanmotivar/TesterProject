<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Aprendiz extends Model
{
    use HasFactory;
    protected $fillable = ['idaprendiz','nombre','apellido','imagen','email','contrasena','telefono','descripcion'];
    protected $primaryKey = 'idaprendiz';
}
