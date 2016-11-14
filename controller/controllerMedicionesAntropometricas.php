

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/paciente.php');
require_once('modelos/medicionesAntropometricas.php');
require_once('fpdf181/generador.php');



class controllerMedicionesAntropometricas {

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

  
//Funcion que guardar las mediciones antropometricas.
    public function guardarMedicionesAntropometricas()
   {
       //ACCESO A DATOS

    $medi = new MedicionesAntropometricas('medicionesantropometricas');

    if (isset($this->request['idMedicionAntro']))
    {
    $medi->load("id=".$this->request['idMedicionAntro']);
    }



    $medi->fecha=date('Y-m-d');
    $medi->pesobruto=$this->request['pesobruto'];
    $medi->tallacorporal=$this->request['tallacorporal'];
    $medi->tallasentado=$this->request['tallasentado'];
    
    $medi->biacromial=$this->request['biacromial'];
    $medi->toraxtranverso=$this->request['toraxtranverso'];
    $medi->toraxantero=$this->request['toraxantero'];
    $medi->biiliocrestideo=$this->request['biiliocrestideo'];
    $medi->humeral=$this->request['humeral'];
    $medi->femoral=$this->request['femoral'];
    
    $medi->cabeza=$this->request['cabeza'];
    $medi->brazorelajado=$this->request['brazorelajado'];
    $medi->brazoflexionado=$this->request['brazoflexionado'];
    $medi->antebrazomaximo=$this->request['antebrazomaximo'];
    $medi->toraxmesoesternal=$this->request['toraxmesoesternal'];
    $medi->cintura=$this->request['cintura'];
    $medi->cadera=$this->request['cadera'];
    $medi->muslomax=$this->request['muslomax'];
    $medi->muslomed=$this->request['muslomed'];
    $medi->pantorrilla=$this->request['pantorrilla'];
    
    $medi->triceps=$this->request['triceps'];
    $medi->subescapular=$this->request['subescapular'];
    $medi->subpraespinal=$this->request['subpraespinal'];
    $medi->abdominal=$this->request['abdominal'];
    $medi->muslomed2=$this->request['muslomed2'];
    $medi->pantorrilla2=$this->request['pantorrilla2'];
    
    $medi->paciente=$this->request['idPaciente'];
    
    $medi->save();
  
   }

 
// traerFormNuevaMedicionAntropometrica
   public function mostrarNuevoMedicionesAntropometricas($idPaciente)
   {

    //ACCESO A DATOS
    $mediciones1 = new MedicionesAntropometricas('medicionesantropometricas');
    $mediciones2 = new MedicionesAntropometricas('medicionesantropometricas');
    //nos conectamso a la BD y buscamos las dos ultimos id de mediciones.
    $db = getConexion();
    $res = $db->Execute("select id from medicionesantropometricas where paciente = '".$idPaciente."' order by id desc limit 2");
    
    
    //Recuperamos los valores en un arreglo y los pasamos a variables
    
    $arr = $res->getarray();
    if(count($arr)>0){
        
       if (count($arr)==1){ 
          $med1 = array_shift($arr[0]);
          $mediciones1->Load("id=".$med1);
       }else{
           $med1 = array_shift($arr[0]);
           $med2 = array_shift($arr[1]);
            //cargamos los objetos 
            $mediciones1->Load("id=".$med1);
            $mediciones2->Load("id=".$med2);
           } 
    
    

    }

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

    $smarty->assign('medicion1',$mediciones1);
    $smarty->assign('medicion2',$mediciones2);
    $smarty->assign('division',$paciente->division);
    $smarty->assign('club',$division->club);
    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('idPaciente',$paciente->id);


    $smarty->display('nuevoMedicionAntropometrica.tpl');

   }

// tabla para listar tabla de mediciones antropometricas
   public function mostrarListarMedicionesAntropometricas($idPaciente)
   {

       //ACCESO A DATOS
    $medi = new MedicionesAntropometricas('medicionesantropometricas');
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

    $smarty->display('tablaMedicionesAntropometricas.tpl');

   }

    
// Elimina Medicion Antropometrica   
   public function eliminarMedicionAntro($idMedicionAntro)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM medicionesantropometricas WHERE id='".$idMedicionAntro."'");

   }

//Consulta mediciones Antropometricas   
      public function mostrarConsultarMedicionAntro($idMedicionAntro)
   {

       //ACCESO A DATOS
     $medi = new MedicionesAntropometricas('medicionesantropometricas');
     $medi->load("id=".$idMedicionAntro);

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


    $smarty->display('consultaMedicionAntro.tpl');

   }

//Actualiza mediciones Antropometricas   
    public function mostrarActualizarMedicionAntro($idMedicionAntro)
   {
       //ACCESO A DATOS
     $medi = new MedicionesAntropometricas('medicionesantropometricas');
     $medi->load("id=".$idMedicionAntro);

     $idPaciente = $medi->paciente;


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
    $smarty->assign('medicion',$medi);


    $smarty->display('actualizarMedicionAntro.tpl');

   }
   
//imprime mediciones antropometricas
   public function imprimirMedicionAntro($idMedicionAntro)
   {

    //ACCESO A DATOS
    $medicion = new MedicionesAntropometricas('medicionesantropometricas');
    $medicion->load("id=".$idMedicionAntro);

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$medicion->paciente);


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirMedicionAntro($medicion,$paciente->nombre,$paciente->apellido);
   }   

 //trae el formulario de graficas de mediciones antropometricas  
   public function mostrarGraficaMedicionAntro($idPaciente){
              //ACCESO A DATOS
    $medi = new MedicionesAntropometricas('medicionesantropometricas');
    $mediarray=$medi->Find("paciente='".$idPaciente."' order by id"); 

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);


     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    

    $smarty->assign('idPaciente',$idPaciente);

    $smarty->assign('mediciones',$mediarray);

    $smarty->display('graficaMedicionAntro.tpl');
       
   }
  
// tabla para listar tabla de mediciones antropometricas a graficar en Somatocarta
   public function generarListadoMedicionesAGraficarSomatocarta($idPaciente)
   {

       //ACCESO A DATOS
    $medi = new MedicionesAntropometricas('medicionesantropometricas');
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

    $smarty->display('ListaMedAntroAGraficar.tpl');

   }
   
   //Genera las graficas de la mediciones antropometricas
      public function generarEstadisticaMedicionAntro($idPaciente )
   {

    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $fechadesde = $this->request['seleccionFechaDesde'];
    $fechahasta = $this->request['seleccionFechaHasta'];
    $smarty->assign('fechadesde', $fechadesde);
    $smarty->assign('fechahasta', $fechahasta);
    $smarty->assign('paciente',$idPaciente);

    $smarty->display('estadisticasMedicionesAntro.tpl');

   }

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
   
   public function imprimirEstadisticaMedicionSimple($idPaciente)
   {


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirEstadisticaMedicionSimple($idPaciente);
   }

   
   //imprime grafica somatocarta solicita servicio
   public function imprimirGrafSoma($idMedicion)
   {

  
    
    $repo = new Reportes();

    $repo->imprimirGraficaSomatocarta($idMedicion);
   }



// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    case 'mostrarNuevoMedicionesAntropometricas': {
                               $idPaciente=$this->request['idPaciente'];
                                $this->mostrarNuevoMedicionesAntropometricas($idPaciente);
                                break;
                                } 
    
    case 'guardarMedicionesAntropometricas': {

                                $this->guardarMedicionesAntropometricas();
                                $this->mostrarListarMedicionesAntropometricas($this->request['idPaciente']);
                                break;
                                } 
     
    case 'listarMedicionesAntropometricas': {
                            $this->mostrarListarMedicionesAntropometricas($this->request['idPaciente']);
                            break;
                          } 
   
    case 'eliminarMedicionAntro': {
                            $this->eliminarMedicionAntro($this->request['idMedicionAntro']);
                            $this->mostrarListarMedicionesAntropometricas($this->request['idPaciente']);
                            break;
                          }  
     
   
    case 'mostrarActualizarMedicionAntro': {
                            $this->mostrarActualizarMedicionAntro($this->request['idMedicionAntro']);
                            break;
                          }
                          

    case 'mostrarConsultarMedicionAntro': {
                            $this->mostrarConsultarMedicionAntro($this->request['idMedicionAntro']);
                            break;
                          }                       
   case 'imprimirConsultaMedicionAntro': {     

                                $this->imprimirMedicionAntro($this->request['idMedicionAntro']);

                                break;
                                }        
    case 'graficarMedicionesAntropometricas': {
        
                                $this->mostrarGraficaMedicionAntro($this->request['idPaciente']);
                                break;
    }                             

       case 'graficarSomatocarta': {
           
                                $this->imprimirGrafSoma($this->request['idMedicion']);
                                break;
    }                             
     
    case 'generarGraficaMedicionAntro': {     

                                $this->generarEstadisticaMedicionAntro($this->request['idPaciente']);
                                
                                break;
                                }
    
    case 'listaMedicionesAGraficar': {     
                                $this->generarListadoMedicionesAGraficarSomatocarta($this->request['idPaciente']);
                                
                                break;
                                }
                          
                          
                          
                          
                          
                          
                          
     
    case 'mostrarTablaPacientes' : {
                                    
                                    if (isset($_REQUEST['idClub'])) {$idClub=$_REQUEST['idClub'];}
                                      else {$idClub=NULL;}

                                    if (isset($_REQUEST['idDivision'])) {$idDivision=$_REQUEST['idDivision'];}
                                      else {$idDivision=NULL;}
                                  
                                    $this->mostrarTablaPacientes($idClub,$idDivision);

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

