

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/paciente.php');
require_once('modelos/medicionesSimples.php');
require_once('modelos/estudioLaboratorio.php');
require_once('fpdf181/generador.php');




class controllerEstudioLaboratorio {

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
  

    public function guardarEstudioLaboratorio()
   {
       //ACCESO A DATOS

    $estudio = new EstudioLaboratorio('estudiolaboratorio');

    if (isset($this->request['idEstudioLaboratorio']))
    {
    $estudio->load("id=".$this->request['idEstudioLaboratorio']);
    }

    $estudio->fecha=date('Y-m-d');

    $estudio->globulosrojos=$this->request['globulosrojos'];
    $estudio->globulosblancos=$this->request['globulosblancos'];

    $estudio->plaquetas=$this->request['plaquetas'];
    $estudio->hemoglobina=$this->request['hemoglobina'];

    $estudio->hematocrito=$this->request['hematocrito'];
    $estudio->corpuscularmedio=$this->request['corpuscularmedio'];

    $estudio->hbcorpuscularmedio=$this->request['hbcorpuscularmedio'];
    $estudio->hbcm=$this->request['hbcm'];

    $estudio->neutrofilosenca=$this->request['neutrofilosenca'];
    $estudio->neutrofilosseg=$this->request['neutrofilosseg'];

    $estudio->eocinifilos=$this->request['eocinifilos'];
    $estudio->basofilos=$this->request['basofilos'];


    $estudio->linfocitos=$this->request['linfocitos'];
    $estudio->monocitos=$this->request['monocitos'];

    $estudio->glucemia=$this->request['glucemia'];
    $estudio->uremia=$this->request['uremia'];

    $estudio->uricemia=$this->request['uricemia'];
    $estudio->acidourico=$this->request['acidourico'];

    $estudio->creatininemia=$this->request['creatininemia'];
    $estudio->proteinastotales=$this->request['proteinastotales'];

    $estudio->albuminas=$this->request['albuminas'];
    $estudio->colesteroltotal=$this->request['colesteroltotal'];

    $estudio->ldl=$this->request['ldl'];
    $estudio->hdl=$this->request['hdl'];

    $estudio->colesterolhdl=$this->request['colesterolhdl'];
    $estudio->trigliceridos=$this->request['trigliceridos'];

    $estudio->presionarterial=$this->request['presionarterial'];

    $estudio->presionarterialmaxima=$this->request['presionarterialmaxima'];

    $estudio->hergometria=$this->request['hergometria'];

    $estudio->frecuenciacardiaca=$this->request['frecuenciacardiaca'];

    $estudio->frecuenciacardiacamaxima=$this->request['frecuenciacardiacamaxima'];
    $estudio->creatininemia=$this->request['creatininemia'];

    $estudio->proteinastotales=$this->request['proteinastotales'];
    $estudio->vo2basal=$this->request['vo2basal'];

    $estudio->vo2maximo=$this->request['vo2maximo'];
    $estudio->protocolo=$this->request['protocolo'];

    $estudio->frecuenciacardiomax=$this->request['frecuenciacardiomax'];
    $estudio->minutos=$this->request['minutos'];

    $estudio->testdetenido=$this->request['testdetenido'];
    $estudio->conclusion=$this->request['conclusion'];

    $estudio->paciente=$this->request['idPaciente'];
    
    $estudio->save();
  
   }
//
// elimnarClub   
   public function eliminarEstudioLaboratorio($idEstudioLaboratorio)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM estudiolaboratorio WHERE id='".$idEstudioLaboratorio."'");

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
    $smarty->display('tablaPacientesModEstudioLaboratorio.tpl');  

   } 
  

  
// traerFormActualizarClub
   public function mostrarNuevoEstudioLaboratorio($idPaciente)
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


    $smarty->display('nuevoEstudioLaboratorio.tpl');

   }


      public function mostrarConsultarEstudioLaboratorio($idEstudioLaboratorio)
   {

       //ACCESO A DATOS
     $estudio = new EstudioLaboratorio('estudiolaboratorio');
     $estudio->load("id=".$idEstudioLaboratorio);

     $idPaciente = $estudio->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('estudio',$estudio);


    $smarty->display('consultaEstudioLaboratorio.tpl');

   }

    public function mostrarActualizarEstudioLaboratorio($idEstudioLaboratorio)
   {

       //ACCESO A DATOS
     $estudio = new EstudioLaboratorio('estudiolaboratorio');
     $estudio->load("id=".$idEstudioLaboratorio);

     $idPaciente = $estudio->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';



    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('estudio',$estudio);


    $smarty->display('actualizarEstudioLaboratorio.tpl');

   }
//


   // traerFormConsultarClub
   public function mostrarListarEstudioLaboratorio($idPaciente)
   {

       //ACCESO A DATOS
    $estudio = new EstudioLaboratorio('estudiolaboratorio');
    $estudioarray=$estudio->Find("paciente='".$idPaciente."' order by id"); 

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

    $smarty->assign('estudios',$estudioarray);

    $smarty->display('tablaEstudioLaboratorio.tpl');

   }

//
   // traerFormConsultarClub
   public function imprimirEstudioLaboratorio($idEstudioLaboratorio)
   {

       //ACCESO A DATOS
    $estudio = new EstudioLaboratorio('estudiolaboratorio');
    $estudio->load("id=".$idEstudioLaboratorio);

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$estudio->paciente);


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirEstudioLaboratorio($estudio,$paciente->nombre,$paciente->apellido);
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
                          
    case 'listarEstudioLaboratorio': {
                            $this->mostrarListarEstudioLaboratorio($this->request['idPaciente']);
                            break;
                          }

    case 'mostrarActualizarEstudioLaboratorio': {
                            $this->mostrarActualizarEstudioLaboratorio($this->request['idEstudioLaboratorio']);
                            break;
                          }
                          

    case 'eliminarEstudioLaboratorio': {

                            $this->eliminarEstudioLaboratorio($this->request['idEstudioLaboratorio']);

                            $this->mostrarListarEstudioLaboratorio($this->request['idPaciente']);
                            

                            
                            break;
                          }
    case 'mostrarConsultarEstudioLaboratorio': {
                            $this->mostrarConsultarEstudioLaboratorio($this->request['idEstudioLaboratorio']);
                            break;
                          }

    case 'mostrarNuevoEstudioLaboratorio': {

                                $idPaciente=$this->request['idPaciente'];

                                $this->mostrarNuevoEstudioLaboratorio($idPaciente);

                                break;

                                }
                            

  case 'guardarEstudioLaboratorio': {


                                $this->guardarEstudioLaboratorio();
                                
                                

                                $this->mostrarListarEstudioLaboratorio($this->request['idPaciente']);
                                
                                

                                break;
                                } 

    case 'imprimirConsultaEstudioLaboratorio': {     
                                $this->imprimirEstudioLaboratorio($this->request['idEstudioLaboratorio']);
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

