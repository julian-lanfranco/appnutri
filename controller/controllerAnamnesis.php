

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/paciente.php');
require_once('modelos/anamnesis.php');
require_once('fpdf181/generador.php');



class controllerAnamnesis {

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
  

    public function guardarAnamnesis()
   {
       //ACCESO A DATOS

    $anam = new Anamnesis('anamnesis');

    if (isset($this->request['idAnamnesis']))
    {
    $anam->load("id=".$this->request['idAnamnesis']);
    }


    $anam->paciente=$this->request['idPaciente'];
    $anam->obesidad=$this->request['obesidad'];
    $anam->diabetes=$this->request['diabetes'];
    $anam->hipertension=$this->request['hipertension'];
    $anam->cardiacas=$this->request['cardiacas'];
    $anam->otras=$this->request['otras'];
    $anam->diagnosticada=$this->request['diagnosticada'];
    $anam->medicamentos=$this->request['medicamentos'];


    $anam->toma=$this->request['toma'];
    $anam->acidez=$this->request['acidez'];
    $anam->reflujo=$this->request['reflujo'];
    $anam->abdominal=$this->request['abdominal'];
    $anam->constipacion=$this->request['constipacion'];
    $anam->diarrea=$this->request['diarrea'];
    $anam->fuma=$this->request['fuma'];
    $anam->dietas=$this->request['dietas'];

    $anam->dolor=$this->request['dolor'];
    $anam->pesomax=$this->request['pesomax'];
    $anam->pesomin=$this->request['pesomin'];
    $anam->picotea=$this->request['picotea'];
    $anam->preferencias=$this->request['preferencias'];
    $anam->alimentosnogustan=$this->request['alimentosnogustan'];
    $anam->alimentosprefiere=$this->request['alimentosprefiere'];
    $anam->alimentosnotolera=$this->request['alimentosnotolera'];

    $anam->cocina=$this->request['cocina'];
    $anam->compras=$this->request['compras'];
    $anam->horarios=$this->request['horarios'];
    $anam->desayuna=$this->request['desayuna'];
    $anam->almuerza=$this->request['almuerza'];
    $anam->cena=$this->request['cena'];
    $anam->merienda=$this->request['merienda'];
    $anam->suplementos=$this->request['suplementos'];
    $anam->actividad=$this->request['actividad'];
    $anam->frecuencia=$this->request['frecuencia'];

    $anam->fecha=date('Y-m-d');
    
    $anam->save();
  
   }
//
// elimnarClub   
   public function eliminarAnamnesis($idAnamnesis)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM anamnesis WHERE id='".$idAnamnesis."'");

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
    $smarty->display('tablaPacientesModAnamnesis.tpl');  



   } 
  

  
// traerFormActualizarClub
   public function mostrarNuevoAnamnesis($idPaciente)
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


    $smarty->display('nuevoAnamnesis.tpl');

   }


      public function mostrarConsultarAnamnesis($idAnamnesis)
   {

       //ACCESO A DATOS
     $anam = new Anamnesis('anamnesis');
     $anam->load("id=".$idAnamnesis);
     $idPaciente = $anam->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('anam',$anam);

   echo("paciente : ".$idPaciente);
   $smarty->display('consultaAnamnesis.tpl');

   }

    public function mostrarActualizarAnamnesis($idAnamnesis)
   {

       //ACCESO A DATOS
     $anam = new Anamnesis('anamnesis');
     $anam->load("id=".$idAnamnesis);
     $idPaciente = $anam->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('anam',$anam);

    $smarty->display('actualizarAnamnesis.tpl');

   }
//


   // traerFormConsultarClub
   public function mostrarListarAnamnesis($idPaciente)
   {

       //ACCESO A DATOS
    $anam = new Anamnesis('anamnesis');
    $anamarray=$anam->Find("paciente='".$idPaciente."' order by id"); 

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

    $smarty->assign('anamnesis',$anamarray);

    $smarty->display('tablaAnamnesis.tpl');

   }

//
   // traerFormConsultarClub
   public function imprimirAnamnesis($idAnamnesis)
   {

       //ACCESO A DATOS
    $anam = new Anamnesis('anamnesis');
    $anam->load("id=".$idAnamnesis);

    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$anam->paciente);


     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirAnamnesis($anam,$paciente->nombre,$paciente->apellido);
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
    case 'imgMostrarListarAnamnesis' : {

                                        $this->mostrarListarAnamnesis($this->request['idPaciente']);
                                        break;

                                        }

                          
    case 'mostrarConsultarAnamnesis': {
                            $this->mostrarConsultarAnamnesis($this->request['idAnamnesis']);
                            break;
                          }

    case 'mostrarActualizarAnamnesis': {
                            $this->mostrarActualizarAnamnesis($this->request['idAnamnesis']);
                            break;
                          }
                          

    case 'eliminarAnamnesis': {

                            $this->eliminarAnamnesis($this->request['idAnamnesis']);


                            $this->mostrarListarAnamnesis($this->request['idPaciente']);
                            

                            
                            break;
                          }

    case 'mostrarNuevoAnamnesis': {

                                $idPaciente=$this->request['idPaciente'];
                                $this->mostrarNuevoAnamnesis($idPaciente);
                                break;
                                }
    case 'btnCancelarCrearAnamnesis': {

                                $this->mostrarListarAnamnesis($this->request['idPaciente']);
                                break;
                                }
                            

  case 'guardarAnamnesis': {

                                $this->guardarAnamnesis();

                                $this->mostrarListarAnamnesis($this->request['idPaciente']);

                                break;
                                } 

    case 'imprimirConsultaAnamnesis': {     
                                $this->imprimirAnamnesis($this->request['idAnamnesis']);
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

