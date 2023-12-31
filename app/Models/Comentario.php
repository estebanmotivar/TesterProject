<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comentario extends Model
{
    use HasFactory;
    protected $fillable = ['idcomentario','idprofesor','idaprendiz','descripcion','fechahora','tipo'];
    protected $primaryKey = 'idcomentario' ;
}
