<?php /* Smarty version 2.6.30, created on 2016-08-03 03:06:39
         compiled from divTablaClubes.tpl */ ?>
  <h2>Listado de Clubes</h2>
  <p>Seleccione un club para cualquier consulta:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Accion</th>
      </tr>
    </thead>
    <tbody>
      <?php $_from = $this->_tpl_vars['clubes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['club']):
?>
      <tr>
        <td ><?php echo $this->_tpl_vars['club']->id; ?>
</td>
        <td><?php echo $this->_tpl_vars['club']->nombre; ?>
</td>
        <td><img name="<?php echo $this->_tpl_vars['club']->id; ?>
" id="img-editarClub" src="img/editar.png">
            <img name="<?php echo $this->_tpl_vars['club']->id; ?>
" id="img-eliminarClub"  src="img/eliminar.png"/>
            <img name="<?php echo $this->_tpl_vars['club']->id; ?>
" id="img-consultarClub"  src="img/consultar.png"/>

        </td>
      </tr>
      <?php endforeach; endif; unset($_from); ?>
    </tbody>
  </table>


