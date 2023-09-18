<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Clase;
use App\Models\Profesor;
use DB;
use App\Models\Categoria;
use App\Models\Agenda;
use App\Models\Comentario;
use App\Models\SolicitudAgenda;
use Illuminate\Support\Facades\Storage;


class ProfesorController extends Controller
{
    /**
     * Mostrar las clases creadas por el profesor
     */
    public function index()
    {
        $codigo = 13; // El ID del profesor
        $clase = DB::table('clases')
            ->join('profesores', 'profesores.idprofesor', '=', 'clases.idprofesor')
            ->join('categorias', 'categorias.idcategoria', '=', 'clases.idcategoria')
            ->select('clases.idprofesor', 'clases.idclase', 'clases.nombre as nombre', 'clases.idcategoria', 'categorias.nombre as nomins', 'clases.descripcion as descripcion', 'clases.fecha as fecha', 'clases.horainicio as horainicio', 'clases.horafin as horafin','clases.cupos', 'clases.costo as costo')
            ->where('clases.idprofesor', '=', $codigo)
            ->where('clases.fecha', '>',now())
            ->orderby('clases.nombre', 'ASC')
            ->get();
    
        return view('profesores.index', ['clase' => $clase, 'codigo' => $codigo]);
    }
    

    //mostrar el perfil del profesor
    public function perfill($codigoprofe)
    {

        //
        $profesor = DB::table('profesores')
                                ->select('idprofesor','nombre','apellido','Imagen','email','telefono','descripcion','documento','aniosexperiencia','especialidad')
                                ->where('idprofesor','=',$codigoprofe)
                                ->get();
        return view ('profesores/perfil',['profesor'=>$profesor]);
    }

    //Crear el perfil del profesor
    public function perfilcreate()
    {
        return view('profesores/createperfil');
    }

    /**
     *Guardar el perfil del profesor
     */
    public function perfilstore(Request $request)
    {
        $profesor = new Profesor(); // Crear una instancia de Profesor
    
        $profesor->nombre = $request->input('nombre');
        $profesor->apellido = $request->input('apellido');
        $profesor->email = $request->input('email');
        $profesor->contrasena = $request->input('contrasena');
        $profesor->telefono = $request->input('telefono');
        $profesor->descripcion = $request->input('descripcion');
        $profesor->documento = $request->input('documento');
        $profesor->aniosexperiencia = $request->input('aniosexperiencia');
        $profesor->especialidad = $request->input('especialidad');
    
        // Procesar la imagen y almacenarla en el servidor
        if ($request->hasFile('Imagen')) {
            $fileName = $request->file('Imagen')->store('public/perfil_profesores');
            $profesor->Imagen = basename($fileName); // Asignar el nombre de la imagen
        }
    
        $profesor->save(); // Guardar el objeto en la base de datos
    
        return redirect()->route('profesores.index');
    }
    
    

    //editar el perfil del profesor mediante la vista
    public function perfiledit(string $id)
    {
        //
        $profesor=Profesor::findOrFail($id);             
        return view('profesores/editperfil',['profesor'=>$profesor]);
    }

    
    /**
     * actualiza los datos del edit perfil del profesor
     */
    public function perfilupdate(Request $request, string $id)
    {
        $codigoprofe = $id;
        $profesor = Profesor::findOrFail($id);
    
        $profesor->nombre = $request->input('nombre');
        $profesor->apellido = $request->input('apellido');
        $profesor->email = $request->input('email');
        $profesor->telefono = $request->input('telefono');
        $profesor->descripcion = $request->input('descripcion');
        $profesor->documento = $request->input('documento');
        $profesor->aniosexperiencia = $request->input('aniosexperiencia');
        $profesor->especialidad = $request->input('especialidad');
    
        if ($request->hasFile('Imagen')) {
            $file = $request->file('Imagen');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $file->storeAs('public/perfil_profesores', $fileName);
    
            // Eliminar la imagen anterior solo si existe y no es la predeterminada
            if ($profesor->Imagen && $profesor->Imagen !== 'imagen_predeterminada.jpg') {
                Storage::delete('public/perfil_profesores/' . $profesor->Imagen);
            }
    
            $profesor->Imagen = $fileName;
        }
    
        $profesor->save();
    
        return redirect()->route('profesores.perfill', ['codigoprofe' => $codigoprofe]);
    }
    
    

    

    /**
     *retorna a la vista para crear una clase
     */
    public function create($idprofesor)
    {
        $codigo = $idprofesor;
        $categoria = Categoria::orderBy('nombre', 'ASC')->get();
        return view('profesores.clasecreate', ['categoria' => $categoria, 'codigo' => $codigo]);
    }
    


    /**
     * alamacena la clase en la base de datos
     */
    public function store(Request $request)
    {
        //
        Clase::create([
            'idprofesor'=>$request['idprofesor'],
            'idcategoria'=>$request['instrument'],
            'nombre'=>$request['nombre'],
            'descripcion'=>$request['descripcion'],
            'cupos'=>$request['cupos'],
            'costo'=>$request['costo'],
            'fecha'=>$request['fecha'],
            'horainicio'=>$request['horainicio'],
            'horafin'=>$request['horafin'],
        ]);
        return redirect()->route('profesores.index');
    }

    

       /**
     * editar la clase
     */
    public function editclass(string $id)
    {
        //
        $clase = Clase::findOrFail($id);
        $categoria =Categoria::orderby('nombre','ASC')->get();
        return view('profesores/editarclase')->with('clase',$clase)->with('categoria',$categoria);
    }
    //actualizar los datos de la edicion de una clase

    public function updateclass(Request $request, string $id)
    {
        //
        $clase = Clase::findOrFail($id);
        $clase->update($request->all());
        return redirect()->route('profesores.index');
       
    }


    //mostrar agendas
    public function showagends(string $id)
    {
        //
        $agenda = DB::table('agendas')
                    ->join('aprendizes','aprendizes.idaprendiz','=','agendas.idaprendiz')
                    ->join('clases','clases.idclase','=','agendas.idclase')
                    ->select('agendas.idagenda','aprendizes.idaprendiz','aprendizes.nombre as nomapren','clases.idclase','clases.idprofesor','clases.nombre as nomclas','agendas.fechaagendada','agendas.fechahora','agendas.descripcion')
                    ->where('agendas.idclase','=',$id)
                    ->orderby('nomclas','ASC')
                    ->get();

    return view ('profesores/veragendas',['agenda'=>$agenda]);
       
    }

    //mostrar perfiles de aprendices
    public function showperfapren(string $id)
    {
        //
        $aprendizes = DB::table('aprendizes')
        ->select('idaprendiz','nombre','apellido','Imagen','email','telefono','documento','descripcion')
        ->where('idaprendiz',$id)
        ->get();

        return view ('profesores/perfilesagendados',['aprendizes'=>$aprendizes]);
    }

    //almacenar agenda confirmada
    public function agendconfirmstore(Request $request)
    {   
    Agenda::create([
        'idclase'=>$request['idclase'],
        'fechaagendada'=>$request['fechaagendada'],
        'fechahora'=>$request['fechahora'],
        'descripcion'=>$request['descripcion'],
    ]);
    
    $clase = Clase::find('idclase');
    if ($clase) {
        $clase->cupos = $clase->cupos - 1;
        $clase->save();
    }
    $codigo = Clase:: select('idprofesor')
                    ->where('idclase','=','idclase')
                    ->get();

    return redirect()->route('profesores.index',['codigo'=>$codigo]);
    }

    //comentarios
    //crear comentario
    public function comentcreate()
    {
        //
        return view ('profesores/comentario');
    }
    //almacenar comentario creado
    public function comentstore(Request $request)
    {
        //
        Comentario::create([
            'descripcion'=>$request['descripcion'],
            'fechahora'=>now(),
            'tipo'=>$request['tipo']
        ]);
        return redirect()->route('profesores.index');
    }

    


}