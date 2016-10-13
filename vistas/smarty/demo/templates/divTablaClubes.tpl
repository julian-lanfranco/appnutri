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
      {foreach from=$clubes item=club}
      <tr>
        <td >{$club->id}</td>
        <td>{$club->nombre}</td>
        <td><img name="{$club->id}" id="img-editarClub" src="img/editar.png">
            <img name="{$club->id}" id="img-eliminarClub"  src="img/eliminar.png"/>
            <img name="{$club->id}" id="img-consultarClub"  src="img/consultar.png"/>

        </td>
      </tr>
      {/foreach}
    </tbody>
  </table>



