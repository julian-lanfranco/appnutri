

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/paciente.php');
require_once('modelos/medicionesSimples.php');
require_once('fpdf181/generador.php');



class controllerMedicionesSimples {

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
  

    public function guardarMedicionesSimples()
   {
       //ACCESO A DATOS

    $medi = new MedicionesSimples('medicionessimples');

    if (isset($this->request['idMedicionSimple']))
    {
    $medi->load("id=".$this->request['idMedicionSimple']);
    }



    $medi->fecha=date('Y-m-d');
    $medi->peso=$this->request['peso'];
    $medi->talla=$this->request['talla'];
    $medi->tallasentado=$this->request['tallasentado'];
    $medi->circucintura=$this->request['circucintura'];
    $medi->circubrazo=$this->request['circubrazo'];

    $medi->plieguetricipital=$this->request['plieguetricipital'];
    $medi->plieguesubescapular=$this->request['plieguesubescapular'];
    $medi->plieguesupraespinal=$this->request['plieguesupraespinal'];

    $medi->pliegueabdominal=$this->request['pliegueabdominal'];
    $medi->plieguemuslomedio=$this->request['plieguemuslomedio'];
    $medi->plieguepantorrilla=$this->request['plieguepantorrilla'];
    $medi->sumatoria6=$this->request['sumatoria6'];

    $medi->paciente=$this->request['idPaciente'];
    
    $medi->save();
  
   }
//
// elimnarClub   
   public function eliminarMedicionSimple($idMedicionSimple)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM medicionessimples WHERE id='".$idMedicionSimple."'");

   }
//

   public function traerPacientes()
   {
        $paciente = new Paciente('pacientes');
        $pacientesArray = $paciente->Find("1 order by id"); 
        return $pacientesArray;
   }


   public function mostrarTablaPacientes($idClub,$idDivision)
   {
    //ACCESO A DATOS
    $club=new Club('clubes');

    $clubesArray= $club->Find("1 order by id"); 

    if ($idClub==NULL) 
        {
         $divisionesArray=NULL;
         $pacientesArray=NULL;                               
        }
     else {
            $division = new Division('divisiones');
            $divisionesArray = $division->Find("club ='".$idClub."' order by id");

            if ($idDivision==NULL)  
                    {
                      $pacientesArray=NULL;  
                    }
            else    {
                    $paciente = new Paciente('pacientes');
                    $pacientesArray = $paciente->Find("division ='".$idDivision."' order by id");  
                    }
          }  
    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('divisionSeleccionado',$idDivision);

    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisiones',$divisionesArray);
    $smarty->assign('pacientes',$pacientesArray);  
    $smarty->display('tablaPacientesModMedicionesSimples.tpl');  

   } 
  

  
// traerFormActualizarClub
   public function mostrarNuevoMedicionesSimples($idPaciente)
   {

       //ACCESO A DATOS
    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

    $division = new Division('divisiones');
    $division->load("id=".$paciente->division);



     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('division',$paciente->division);
    $smarty->assign('club',$division->club);
    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('idPaciente',$paciente->id);


    $smarty->display('nuevoMedicionesSimples.tpl');

   }


      public function mostrarConsultarMedicionSimple($idMedicionSimple)
   {

       //ACCESO A DATOS
     $medi = new MedicionesSimples('medicionessimples');
     $medi->load("id=".$idMedicionSimple);

     $idPaciente = $medi->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('medicion',$medi);


    $smarty->display('consultaMedicionSimple.tpl');

   }

    public function mostrarActualizarMedicionSimple($idMedicionSimple)
   {

       //ACCESO A DATOS
     $medicion = new MedicionesSimples('medicionessimples');
     $medicion->load("id=".$idMedicionSimple);
     $idPaciente = $medicion->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('medicion',$medicion);


    $smarty->display('actualizarMedicionSimple.tpl');

   }
//


   // traerFormConsultarClub
   public function mostrarListarMedicionesSimples($idPaciente)
   {

       //ACCESO A DATOS
    $medi = new MedicionesSimples('medicionessimples');
    $mediarray=$medi->Find("paciente='".$idPaciente."' order by id"); 

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);


     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    
    $smarty->assign('nombre',$paciente->nombre);

    $smarty->assign('paciente',$idPaciente);

    $smarty->assign('mediciones',$mediarray);

    $smarty->display('tablaMedicionesSimples.tpl');

   }

//
   // traerFormConsultarClub
   public function imprimirMedicionSimple($idMedicionSimple)
   {

       //ACCESO A DATOS
    $medicion = new MedicionesSimples('medicionessimples');
    $medicion->load("id=".$idMedicionSimple);

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$medicion->paciente);


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirMedicionSimple($medicion,$paciente->nombre,$paciente->apellido);
   }

   public function imprimirEstadisticaMedicionSimple($idPaciente)
   {


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirEstadisticaMedicionSimple($idPaciente);
   }

   public function generarEstadisticaMedicionSimple($idPaciente )
   {

    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('paciente',$idPaciente);

    $smarty->display('estadisticasMedicionesSimples.tpl');

   }



// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    case 'mostrarTablaPacientes' : {
                                    
                                    if (isset($_REQUEST['idClub'])) {$idClub=$_REQUEST['idClub'];}
                                      else {$idClub=NULL;}

                                    if (isset($_REQUEST['idDivision'])) {$idDivision=$_REQUEST['idDivision'];}
                                      else {$idDivision=NULL;}
                                  
                                    $this->mostrarTablaPacientes($idClub,$idDivision);

                                    break;
                          }
                          
    case 'listarMedicionesSimples': {
                            $this->mostrarListarMedicionesSimples($this->request['idPaciente']);
                            break;
                          }

    case 'mostrarActualizarMedicionSimple': {
                            $this->mostrarActualizarMedicionSimple($this->request['idMedicionSimple']);
                            break;
                          }
                          

    case 'eliminarMedicionSimple': {

                            $this->eliminarMedicionSimple($this->request['idMedicionSimple']);

                            $this->mostrarListarMedicionesSimples($this->request['idPaciente']);
                            

                            
                            break;
                          }
    case 'mostrarConsultarMedicionSimple': {
                            $this->mostrarConsultarMedicionSimple($this->request['idMedicionSimple']);
                            break;
                          }

    case 'mostrarNuevoMedicionesSimples': {

                                $idPaciente=$this->request['idPaciente'];
                                $this->mostrarNuevoMedicionesSimples($idPaciente);
                                break;
                                }
    case 'btnCancelarCrearAnamnesis': {

                                //  $this->mostrarTablaPacientes($idClub,$idDivision);
                                break;
                                }
                            

  case 'guardarMedicionesSimples': {

                                $this->guardarMedicionesSimples();

                                $this->mostrarListarMedicionesSimples($this->request['idPaciente']);

                                break;
                                } 

    case 'imprimirConsultaMedicionSimple': {     

                                $this->imprimirMedicionSimple($this->request['idMedicionSimple']);

                                break;
                                }

    case 'generarEstadisticaMedicionSimple': {     

                                $this->generarEstadisticaMedicionSimple($this->request['idPaciente']);
                                
                                break;
                                }

    case 'imprimirEstadisticaMedicionSimple': {     


                                $this->imprimirEstadisticaMedicionSimple($this->request['idPaciente']);
                                
                                break;
                                }


    default :{
                if (isset($_REQUEST['idClub'])) {$idClub=$_REQUEST['idClub'];}
                else {$idClub=NULL;}
                if (isset($_REQUEST['idDivision'])) {$idDivision=$_REQUEST['idDivision'];}
                else {$idDivision=NULL;}
                                  
                $this->mostrarTablaPacientes($idClub,$idDivision);
              }
  } 
}
else {
                      if (isset($_REQUEST['idClub'])) {$idClub=$_REQUEST['idClub'];}
                else {$idClub=NULL;}
                if (isset($_REQUEST['idDivision'])) {$idDivision=$_REQUEST['idDivision'];}
                else {$idDivision=NULL;}
                                  
                $this->mostrarTablaPacientes($idClub,$idDivision);
              }
   
}
}

?>

