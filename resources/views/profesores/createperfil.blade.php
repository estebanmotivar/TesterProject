<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crea perfil Sesión Profesor</title>
    <link rel="stylesheet" href="{{ asset('css/perfilprofe.css') }}">
</head>

<body style="text-align: center">
    <form action="{{ route('profesores.storeperfil') }}" method="POST" enctype="multipart/form-data">
<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Crea Tu Cuenta</h2>

              <form action="{{ route('aprendices.store') }}" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="form-outline mb-4">
                <label class="form-label" for="nombre">Ingresa Tu Nombre</label>
                <input for="nombre" type="text"  class="form-control form-control-lg" name="nombre" id="nombre" required/>
                </div>

                <div>
                <label for="Imagen">Foto de Perfil:</label>
                <input type="file" id="Imagen" name="Imagen" accept="image/*" name="Imagen" required>
                <br>
                </div>

                <div class="form-outline mb-4" for="apellido">Ingresa Tu Apellido</label>
                    <input for="apellido" type="text" class="form-control form-control-lg" name="apellido" id="apellido" required/>
                  </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="documento">Ingresa Documento</label>
                    <input for="documento" type="text" id="form3Example1cg" class="form-control form-control-lg" name="documento" id="documento" required/>
                 </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="email">Ingresa Tu Correo</label>
                <input for="email" type="email" class="form-control form-control-lg" name="email" id="email" required/>  
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="contrasena">Contraseña</label> 
                  <input for="contrasena" type="password" class="form-control form-control-lg" name="contrasena" id="contrasena" required/>
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="telefono">Telefono</label>
                  <input for="telefono" type="text" class="form-control form-control-lg" name="telefono" id="telefono" required/>
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="aniosexperiencia">Años De Experiencia</label>
                    <input for="aniosexperiencia" type="number" class="form-control form-control-lg" name="aniosexperiencia" id="aniosexperiencia" required/>
                  </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="descripcion">Especialidad</label>
                    <input for="especialidad" type="text" class="form-control form-control-lg" name="especialidad" id="especialidad" required/>
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="descripcion">Descripcion</label>
                    <input for="descripcion" type="text" class="form-control form-control-lg" name="descripcion" id="descripcion" required/>
                  </div>

                  <button type="submit">Guardar Perfil</button>

              </form>    
              
              <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    Aceptas terminos de servicios <a href="#!" class="text-body"><u>Terminos de servicios</u></a>
                  </label>
                </div>

              <p class="text-center text-muted mt-5 mb-0">Ya tienes una cuenta? <a href="#!"
                class="fw-bold text-body"><u>Ingresa Aqui</u></a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>