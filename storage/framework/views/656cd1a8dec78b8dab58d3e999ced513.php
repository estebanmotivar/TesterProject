<!DOCTYPE html>
<html>
<head>
    <title>Editar Aprendiz</title>
    <link rel="stylesheet" href="<?php echo e(asset('css/edit.css')); ?>">
</head>
<body>
    <h1>Editar Aprendiz</h1>
    <form action="<?php echo e(route('aprendices.update', ['aprendiz' => $aprendiz->idaprendiz])); ?>" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <?php echo method_field('PUT'); ?>
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required value="<?php echo e($aprendiz->nombre); ?>">
        <br>


        <label for="Imagen">Foto de Perfil:</label>
        <input type="file" id="Imagen" name="Imagen" accept="image/*">
        <?php if($aprendiz->Imagen): ?>
        <img src="/storage/fotos_aprendiz/<?php echo e($aprendiz->Imagen); ?>" alt="Foto de perfil">
        <?php endif; ?>
        <br>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required value="<?php echo e($aprendiz->apellido); ?>">
        <br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required value="<?php echo e($aprendiz->email); ?>">
        <br>

        <label for="contrasena">Contraseña:</label>
        <input type="password" id="contrasena" name="contrasena" required value="<?php echo e($aprendiz->contrasena); ?>">
        <br>

        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" name="telefono" required value="<?php echo e($aprendiz->telefono); ?>">
        <br>

        <label for="descripcion">Descripción:</label>
        <textarea id="descripcion" name="descripcion" rows="4" required><?php echo e($aprendiz->descripcion); ?></textarea>
        <br>

        <button type="submit">Guardar Perfil</button>
    </form>
</body>
</html>
<?php /**PATH C:\laragon\www\empleamusic\resources\views/aprendiz/edit.blade.php ENDPATH**/ ?>