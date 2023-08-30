<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crear Categoria</title>
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>
<body>
    <br>
    <br>
    <br>
    <br>
    <div style="text-align: center; position-absolute: 50%">
        <form action="{{route('cat.store')}}"method='POST'>
            @csrf
            <br>
            <div>
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" id="mombre">
                <label for="tipo">Tipo de categoria</label>
                <input type="text" name="tipo" id="tipo">
            </div>
            <br>
            <button>Enviar</button>
        </form>
    </div>
</body>
</html>