

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/deporte.php');
require_once('fpdf181/generador.php');




class controllerDivisiones {

    private $db; 
    private $request;
    private $accion;

 // constructor
    function __construct($request) {
       $this->request = $request;
      if (isset($request['accion'])) {
                                      $this->accion = $request['accion'];
                                    }
      else {
            $this->accion ="";
          }

   }   
 //


// traerFormInicio
   public function mostrarHome()
   {
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('home.tpl');
   }
//

// traerFormNuevoClub   
   public function mostrarNuevoDivision($clubesArray,$deportesArray)
      {
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('deportes',$deportesArray);
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('nuevoDivision.tpl');
   }
//
  
// crearClub
  public function crearDivision($divisionAct)
   {
       //ACCESO A DATOS

  $division = new Division('divisiones');

  $division->correo = $divisionAct->correo;
  $division->nombre = $divisionAct->nombre;
  $division->contacto = $divisionAct->contacto;
  $division->preparador = $divisionAct->preparador;
  $division->entrenador = $divisionAct->entrenador;
  $division->telefono = $divisionAct->telefono;
  $division->club = $divisionAct->club;
  $division->deporte = $divisionAct->deporte;
  $division->sexo = $divisionAct->sexo;

    $division->save();
    

   }
//
// elimnarClub   
   public function eliminarDivision($idDivision)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      if ($db->Execute("DELETE FROM divisiones WHERE id='".$idDivision."'")) {echo("exito");}
        else echo("fracaso");

   }
//

// listarClubes
   public function traerClubes()
   {
        $club = new Club('clubes');
        $clubesArray = $club->Find("1 order by id"); 
        return $clubesArray;
   }

      public function traerDeportes()
   {
        $deporte = new Deporte('deportes');
        $deportesArray = $deporte->Find("1 order by id"); 
        return $deportesArray;
   }

  public function traerDivisiones()
   {
        $division = new Division('divisiones');
        $divisionesArray = $division->Find("1 order by id"); 
        return $divisionesArray;
   }


   public function mostrarTablaDivisiones($clubesArray)
   {
    //ACCESO A DATOS
    
    $idClub=" ";
    $division = new Division('divisiones');
    $divisionesArray = $division->Find("1 order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisiones',$divisionesArray);
    $smarty->display('tablaDivisiones.tpl');
   } 


    public function buscarDivisionesPorClub($idClub,$clubesArray)
   {
    //ACCESO A DATOS
    $division = new Division('divisiones');


    if ($idClub=="defecto")
              {

              $divisionesArray = $division->Find("1 order by id");  
              
              }
    else  {

                $divisionesArray = $division->Find("club ='".$idClub."' order by id"); 
                
          }

    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisiones',$divisionesArray);
    $smarty->display('tablaDivisiones.tpl');

   }  


    public function buscarDivisionesPorCadena($idClub,$cadena)
   {
    //ACCESO A DATOS
    $listaClubes = $this->traerClubes();
    $division = new Division('divisiones');
    if ($idClub=="defecto")
              {

              $divisionesArray = $division->Find("nombre LIKE '%".$cadena."%' order by id");  
              
              }
    else  {

                $divisionesArray = $division->Find("club ='".$idClub."' and nombre LIKE '%".$cadena."%' order by id"); 
                
          }
   
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('cadena',$cadena);
    $smarty->assign('clubes',$listaClubes);
    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('divisiones',$divisionesArray);
    $smarty->display('tablaDivisiones.tpl');
   }    


   
// traerFormActualizarClub
   public function mostrarActualizarDivision($idDivision)
   {

       //ACCESO A DATOS
    $division = new Division('divisiones');
    $division->load("id=".$idDivision);
     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('nombre',$division->nombre);
    $smarty->assign('idClub',$division->club);
    $smarty->assign('idDivision',$division->id);
    $smarty->assign('deporte',$division->deporte);

    $smarty->assign('contacto',$division->contacto);
    $smarty->assign('telefono',$division->telefono);
    $smarty->assign('correo',$division->correo);

    $smarty->assign('entrenador',$division->entrenador);
    $smarty->assign('preparador',$division->preparador);
    $smarty->assign('sexoDivision',$division->sexo);


    $smarty->display('actualizarDivision.tpl');
   }
//


   // traerFormConsultarClub
   public function mostrarConsultarDivision($idDivision)
   {

       //ACCESO A DATOS
    $division = new division('divisiones');
    $division->load("id=".$idDivision);
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    
    $smarty->assign('nombre',$division->nombre);
    $smarty->assign('idClub',$division->club);
    $smarty->assign('idDivision',$division->id);

    $smarty->assign('contacto',$division->contacto);
    $smarty->assign('telefono',$division->telefono);
    $smarty->assign('correo',$division->correo);

    $smarty->assign('entrenador',$division->entrenador);
    $smarty->assign('preparador',$division->preparador);


    $smarty->display('consultarDivision.tpl');
   }

// actualizarClub 
   public function actualizarDivision($divisionAct)
   {   
       //ACCESO A DATOS
  $division = new Division('divisiones');
  $division->load("id=".$divisionAct->id);  
  $division->correo = $divisionAct->correo;
  $division->nombre = $divisionAct->nombre;
  $division->contacto = $divisionAct->contacto;
  $division->preparador = $divisionAct->preparador;
  $division->entrenador = $divisionAct->entrenador;
  $division->telefono = $divisionAct->telefono;
  $division->club = $divisionAct->club;
  $division->deporte = $divisionAct->deporte;
  $division->sexo = $divisionAct->sexo;

  //echo("personaContacto: ".$club->personaContacto." correoElectronico: ".$club->correoElectronico);
  $division->replace();
  

   }
//
   // traerFormConsultarClub
   public function imprimirDivision($idDivision)
   {

       //ACCESO A DATOS
    $division = new Division('divisiones');
    $division->load("id=".$idDivision);
     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirDivision($division);
   }


// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    case 'mostrarTablaDivisiones' : {
                                    
                                    $listaClubes = $this->traerClubes();
                                    $this->mostrarTablaDivisiones($listaClubes);
                                    break;
                          }
                          
    case 'mostrarActualizarDivision': {
                            $this->mostrarActualizarDivision($this->request['idDivision']);
                            break;
                          }

    case 'eliminarDivision': {
                            $this->eliminarDivision($this->request['idDivision']);
                            
                            $idClub=$this->request['idClub'];
                            $listaClubes = $this->traerClubes();
                            $this->buscarDivisionesPorClub($idClub,$listaClubes);
                            
                            break;
                          }

    case 'mostrarNuevoDivision': {

                                $listaClubes = $this->traerClubes();
                                $listaDeportes = $this->traerDeportes();
                                $this->mostrarNuevoDivision($listaClubes,$listaDeportes);
                                break;
                                }
                          
    case 'btnActualizarDivision': {

                                $divisionAct = new Division('divisiones');

                                $divisionAct->id=$this->request['idDivision'];
                                $divisionAct->club=$this->request['idClub'];
                                $divisionAct->nombre=$this->request['nombre'];
                                $divisionAct->correo=$this->request['correo'];
                                $divisionAct->telefono=$this->request['telefono'];
                                $divisionAct->contacto=$this->request['contacto'];
                                $divisionAct->preparador=$this->request['preparador'];
                                $divisionAct->entrenador=$this->request['entrenador'];
                                $divisionAct->deporte=$this->request['deporte'];
                                $divisionAct->sexo=$this->request['sexo'];

                                $this->actualizarDivision($divisionAct);
                                
                                $listaClubes = $this->traerClubes();
                                
                                $this->mostrarTablaDivisiones($listaClubes);

                                break;
                                }  

    case 'btnCrearDivision': {

                                $divisionAct = new Division('divisiones');

                                $divisionAct->nombre=$this->request['nombre'];
                                $divisionAct->club=$this->request['clubes'];
                                $divisionAct->deporte=$this->request['deporte'];
                                $divisionAct->contacto=$this->request['contacto'];
                                $divisionAct->telefono=$this->request['telefono'];
                                $divisionAct->correo=$this->request['correo'];
                                $divisionAct->entrenador=$this->request['entrenador'];
                                $divisionAct->preparador=$this->request['preparador'];
                                $divisionAct->sexo=$this->request['sexo'];
                                


                                $this->crearDivision($divisionAct);

                                $listaClubes = $this->traerClubes();
                                
                                $this->mostrarTablaDivisiones($listaClubes);

                                break;

                                } 
    case 'consultarDivision': {     
                                $this->mostrarConsultarDivision($this->request['idDivision']);
                                break;
                                }
    case 'imprimirConsultaDivision': {     
                                $this->imprimirDivision($this->request['idDivision']);
                                break;
                                }

    case 'buscarDivisionesPorClub': {     
                                $listaClubes = $this->traerClubes();
                                $this->buscarDivisionesPorClub($this->request['idClub'],$listaClubes);
                                break;
                                }

    case 'buscarDivisionesPorCadena': {     
                                $this->buscarDivisionesPorCadena($this->request['idClub'],
                                                                  $this->request['cadenaDivision']);
                                break;
                                }


    default :{
              $this->mostrarHome();
              break;
              }
  } 
}
else {
            $this->mostrarHome();
              break;
              }
   
}
}

?>

