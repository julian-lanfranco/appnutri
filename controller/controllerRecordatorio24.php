

<?php

require_once ('vistas/smarty/libs/Smarty.class.php');
require_once ('modelos/recordatorio24.php');
require_once ('modelos/club.php');
require_once ('modelos/divisiones.php');
require_once ('modelos/conexion.php');
require_once ('modelos/paciente.php');
require_once ('modelos/ingesta.php');
require_once ('fpdf181/generador.php');



class controllerRecordatorio24 {

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

// traerFormNuevoRecordatorio24   
   public function mostrarNuevoRecordatorio24($idPaciente)
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
 
    $smarty->display('nuevoRecordatorio24.tpl');
   }
//
  
// crearRecordatorio24hs
  public function crearRecordatorio24(){
       //ACCESO A DATOS

    $rec = new Recordatorio24('recordatorios');

    if (isset($this->request['idRecordatorio']))
    {
    $rec->load("id=".$this->request['idRecordatorio']);
    $db = getConexion();
    $db->Execute("DELETE FROM ingesta WHERE recordatorio='".$rec->id."'");

    }
    
    $rec->fecha=date('Y-m-d');
    $rec->horadespertado=$this->request['horadespertado'];
    $rec->horadormido=$this->request['horadormido'];
    $rec->paciente=$this->request['paciente'];

    if ($rec->save()) {}
      else {echo $rec->ErrorMsg();}

    $c=0;
    $hdc=0;
    $lipidos=0;
    $prote=0;

    $tipoDeIngesta=$this->request['tipoDeIngesta'];
    $alimento=$this->request['alimento'];
    $cantidad=$this->request['cantidad'];
    $hora=$this->request['hora'];

    foreach ($tipoDeIngesta as $tipo) 
      {
   
      $ingesta = new Ingesta('ingesta');

      $ingesta->tipodeingesta = $tipo;
      $ingesta->alimento = $alimento[$c];
      $ingesta->cantidad = $cantidad[$c];
      $ingesta->hora = $hora[$c];


      $ingesta->recordatorio=$rec->id;

  
      $ok=$ingesta->save(); 
     

      $c++;
      }

    /*
    $rec->horadesayuno=$this->request['horadesayuno'];
    $rec->desayuno=$this->request['desayuno'];
    $rec->horamediamanana=$this->request['horamediamanana'];
    $rec->mediamanana=$this->request['mediamanana'];
    $rec->horaalmuerzo=$this->request['horaalmuerzo'];
    $rec->almuerzo=$this->request['almuerzo'];
    $rec->horamerienda=$this->request['horamerienda'];
    $rec->merienda=$this->request['merienda'];
    $rec->horacolacion=$this->request['horacolacion'];
    $rec->colacion=$this->request['colacion'];
    $rec->horacena=$this->request['horacena'];
    $rec->cena=$this->request['cena'];
    */


   }
//
// eliminarRecordatorio24hs   
   public function eliminarRecordatorio24($idRecordatorio24)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM recordatorios WHERE id='".$idRecordatorio24."'");

   }
//


//listado de todos los clubes
   public function traerClubes()
   {
        $club = new Club('clubes');
        $clubArray = $club->Find("1 order by id"); 
        return $clubArray;
   }

   //listado de todos pacientes
   public function traerPacientes()
   {
        $paciente = new Paciente('pacientes');
        $pacientesArray = $paciente->Find("1 order by id"); 
        return $pacientesArray;
   }
//listado de todas las divisiones
  public function traerDivisiones()
   {
        $division = new Division('divisiones');
        $divisionesArray = $division->Find("1 order by id"); 
        return $divisionesArray;
   }   
   
   
// listarRecordatorios
   public function mostrarTablaRecordatorio24($idPaciente)
   {
       //ACCESO A DATOS
    $rec = new Recordatorio24('recordatorios');
    $recarray=$rec->Find("paciente='".$idPaciente."' order by id"); 

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

    $smarty->assign('recordatorios',$recarray);
    $smarty->display('tablaRecordatorio24.tpl');
   } 

   //agregar la busqueda por persona
 public function buscarDivisionesPorClub($idClub,$clubesArray, $idDivision)
   {

    //ACCESO A DATOS

    $division = new Division('divisiones');
    $paciente = new Paciente('pacientes');
    if ($idClub=="ninguno")
              { $divisionesArray = $division->Find("club ='ndjfnsdnfkjsdnfkjsdn' order by id");
              }
    else  {  $divisionesArray = $division->Find("club ='".$idClub."' order by id"); 
          }

    if ($idDivision=="ninguno"){
        $pacientesArray = $paciente->Find("division ='sdasffasfasfasdfas' order by id");
         }
    else {
        $pacientesArray = $paciente->Find("division = '".$idDivision."' order by id");
    }
    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisionSeleccionada', $idDivision);
    $smarty->assign('divisiones',$divisionesArray);
    $smarty->assign('pacientes', $pacientesArray);

    $smarty->display('nuevoRecordatorio24.tpl');

   }  
    public function buscarClubesPorCadena($cadena)
   {
    //ACCESO A DATOS
    $club = new Club('clubes');

    $clubesArray = $club->Find("nombre LIKE '%".$cadena."%' order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('cadena',$cadena);
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('tablaClubes.tpl');
   }   
   
// traerFormActualizarClub
   public function mostrarActualizarRecordatorio24($idRecordatorio24)
   {

       //ACCESO A DATOS
     $rec = new Recordatorio24('recordatorios');
     $rec->load("id=".$idRecordatorio24);
     $idPaciente = $rec->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('rec',$rec);
    $smarty->display('actualizarRecordatorio24.tpl');
   }
//


   // traerFormConsultarClub
   public function mostrarConsultarRecordatorio24($idRecordatorio)
   {

       //ACCESO A DATOS
    $rec = new Recordatorio24('recordatorios');
    $rec->load("id=".$this->request['idRecordatorio']);
    $horaDespertado=$rec->horadespertado;
    $horaDormido=$rec->horadormido;

    $ingesta = new Ingesta('ingesta');
    $ingestaArray = $ingesta->Find("recordatorio ='".$idRecordatorio."' order by id");

    $idPaciente=$rec->paciente;


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);



    ///////calculo de totales para la grafica
    $ing = new Ingesta('ingesta');
    $c=0;
    $hdc=0;
    $lipidos=0;
    $prote=0;

    $acuHdc=0;
    $acuLipidos=0;
    $acuProteinas=0;

     

    foreach ($ingestaArray as $tipo) {
   

      $ing->alimento = $tipo->alimento;
      $ing->cantidad = $tipo->cantidad;


              if ($ing->alimento=="lacteosEnteros") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.03;                        
                                          }
              if ($ing->alimento=="lacteosDescremados") {
                                            $acuHdc=$acuHdc+$ing->cantidad*.05  ;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.005;                        
                                          }  
              if ($ing->alimento=="quesos") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.25; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*.25;                        
                                          }
              if ($ing->alimento=="huevos") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.12; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.12;                        
                                          }
              if ($ing->alimento=="carneGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.20;                        
                                          }  
              if ($ing->alimento=="carneMagra") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.10;                        
                                          }
              if ($ing->alimento=="vegetalesA") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.05; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="vegetalesB") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="vegetalesC") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.20;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.02; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutas") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.15;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.0075; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutasSecas") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.40;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.18; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.57;                        
                                          }  
              if ($ing->alimento=="granosCereales") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.775;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.075; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="legumbres") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.50;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="panSinGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.60;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="pangalle") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.65;
                                           $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.8;                        
                                          }
              if ($ing->alimento=="carboGrasa") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.75;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.11;                        
                                          }
              if ($ing->alimento=="azucar") {
                                            $acuHdc=$acuHdc+$ing->cantidad*1;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="dulcesMielMermelada") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.70;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.03; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.02;                        
                                          }
              if ($ing->alimento=="gaseosasJugo") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="aceite") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*1;                        
                                          }  
              if ($ing->alimento=="cremaMantecaMayo") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.01;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.60;                        
                                          }
      $c++;

    }

    $acuHdc=$acuHdc*4;
    $acuProteinas=$acuProteinas*4;
    $acuLipidos=$acuLipidos*7;
    $total=$acuLipidos+$acuProteinas+$acuHdc;
    ///////fin de calculo de totales

     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';



    $smarty->assign('idRecordatorio',$rec->id);
    $smarty->assign('idPaciente',$rec->paciente);

    $smarty->assign('acuHdc',$acuHdc);
    $smarty->assign('acuProteinas',$acuProteinas);
    $smarty->assign('acuLipidos',$acuLipidos);
    $smarty->assign('total',$total);

    $smarty->assign('horaDespertado',$horaDespertado);
    $smarty->assign('horaDormido',$horaDormido);

    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('rec',$rec);
    $smarty->assign('ingestas',$ingestaArray);

    $smarty->display('actualizarRecordatorio24.tpl');
   }

// actualizarRecordatorio 
   public function actualizarRecordatorio24()
   {   
    //ACCESO A DATOS

    $rec = new Recordatorio24('recordatorios');

    if (isset($this->request['idRecordatorio']))
    {
    $rec->load("id=".$this->request['idRecordatorio']);
    }
    $rec->id=$this->request['idRecordatorio'];
    $rec->fecha=date('Y-m-d');
    $rec->horadespertado=$this->request['horadespertado'];
    $rec->horadesayuno=$this->request['horadesayuno'];
    $rec->desayuno=$this->request['desayuno'];
    $rec->horamediamanana=$this->request['horamediamanana'];
    $rec->mediamanana=$this->request['mediamanana'];
    $rec->horaalmuerzo=$this->request['horaalmuerzo'];
    $rec->almuerzo=$this->request['almuerzo'];
    $rec->horamerienda=$this->request['horamerienda'];
    $rec->merienda=$this->request['merienda'];
    $rec->horacolacion=$this->request['horacolacion'];
    $rec->colacion=$this->request['colacion'];
    $rec->horacena=$this->request['horacena'];
    $rec->cena=$this->request['cena'];
    $rec->horadormido=$this->request['horadormido'];

    $rec->save();

   }
//
   // traerFormConsultarRecordatorio24
   public function imprimirRecordatorio24($idRecordatorio)
   {

       //ACCESO A DATOS
    $rec = new Recordatorio24('recordatorios');
    $rec->load("id=".$idRecordatorio);
     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirRecordatorio24($rec);
   }

   //imprimir grafica de recordatorio 
   public function imprimirGrafica($hdc, $proteinas, $lipidos, $kotales){
       
    $repo = new Reportes();

    $repo->imprimirGraficaPieRecordatorio($hdc, $proteinas, $lipidos, $kotales);
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
    $smarty->display('tablaPacientesModRecordatorios24.tpl');  



   } 

public function traerGraficaRecordatorio(){

    $ing = new Ingesta('ingesta');

    $c=0;
    $hdc=0;
    $lipidos=0;
    $prote=0;

    $acuHdc=0;
    $acuLipidos=0;
    $acuProteinas=0;

    $tipoDeIngesta=$this->request['tipoDeIngesta'];
    $alimento=$this->request['alimento'];
    $cantidad=$this->request['cantidad'];
    $hora=$this->request['hora'];

     

    foreach ($tipoDeIngesta as $tipo) {
   

      $ing->tipodeingesta = $tipo;
      $ing->alimento = $alimento[$c];
      $ing->cantidad = $cantidad[$c];


              if ($ing->alimento=="lacteosEnteros") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.03;                        
                                          }
              if ($ing->alimento=="lacteosDescremados") {
                                            $acuHdc=$acuHdc+$ing->cantidad*.05  ;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.005;                        
                                          }  
              if ($ing->alimento=="quesos") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.25; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*.25;                        
                                          }
              if ($ing->alimento=="huevos") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.12; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.12;                        
                                          }
              if ($ing->alimento=="carneGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.20;                        
                                          }  
              if ($ing->alimento=="carneMagra") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.10;                        
                                          }
              if ($ing->alimento=="vegetalesA") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.05; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="vegetalesB") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="vegetalesC") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.20;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.02; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutas") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.15;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.0075; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutasSecas") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.40;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.18; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.57;                        
                                          }  
              if ($ing->alimento=="granosCereales") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.775;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.075; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="legumbres") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.50;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="panSinGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.60;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="pangalle") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.65;
                                           $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.8;                        
                                          }
              if ($ing->alimento=="carboGrasa") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.75;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.11;                        
                                          }
              if ($ing->alimento=="azucar") {
                                            $acuHdc=$acuHdc+$ing->cantidad*1;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="dulcesMielMermelada") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.70;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.03; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.02;                        
                                          }
              if ($ing->alimento=="gaseosasJugo") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="aceite") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*1;                        
                                          }  
              if ($ing->alimento=="cremaMantecaMayo") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.01;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.60;                        
                                          }
      $c++;

    }


    $acuHdc=$acuHdc*4;
    $acuProteinas=$acuProteinas*4;
    $acuLipidos=$acuLipidos*7;
    $total=$acuLipidos+$acuProteinas+$acuHdc;


 return "<img src='http://localhost/appnutri/graficas/pagina-que-genera-la-grafica.php?hdc=".$acuHdc."&proteinas=".$acuProteinas."&lipidos=".$acuLipidos."&ktotales=".$total."' align='right'  style='cursor:pointer' height='300px' width='100%'>";

}



    public function mostrarEstadisticaRecordatorio24($idRecordatorio)
   {

       //ACCESO A DATOS
    $ingesta = new Ingesta('ingesta');
    $ingestaArray = $ingesta->Find("recordatorio ='".$idRecordatorio."' order by id");

    $acuHdc=0;
    $acuLipidos=0;
    $acuProteinas=0;

    foreach ($ingestaArray as $ing) 
    {
              if ($ing->alimento=="lacteosEnteros") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.03;                        
                                          }
              if ($ing->alimento=="lacteosDescremados") {
                                            $acuHdc=$acuHdc+$ing->cantidad*.05  ;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*.03; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.005;                        
                                          }  
              if ($ing->alimento=="quesos") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.25; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*.25;                        
                                          }
              if ($ing->alimento=="huevos") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*.12; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*.12;                        
                                          }
              if ($ing->alimento=="carneGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.20;                        
                                          }  
              if ($ing->alimento=="carneMagra") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.10;                        
                                          }
              if ($ing->alimento=="vegetalesA") {
                                            $acuHdc= $acuHdc+$ing->cantidad*.05;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.05; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="vegetalesB") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="vegetalesC") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.20;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.02; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutas") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.15;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.0075; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="frutasSecas") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.40;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.18; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.57;                        
                                          }  
              if ($ing->alimento=="granosCereales") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.775;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.075; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="legumbres") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.50;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.20; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="panSinGrasa") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.60;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="pangalle") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.65;
                                           $acuLipidos=$acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.8;                        
                                          }
              if ($ing->alimento=="carboGrasa") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.75;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.10; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0.11;                        
                                          }
              if ($ing->alimento=="azucar") {
                                            $acuHdc=$acuHdc+$ing->cantidad*1;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }  
              if ($ing->alimento=="dulcesMielMermelada") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.70;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.03; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.02;                        
                                          }
              if ($ing->alimento=="gaseosasJugo") {
                                            $acuHdc= $acuHdc+$ing->cantidad*0.10;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*0;                        
                                          }
              if ($ing->alimento=="aceite") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0;
                                            $acuLipidos=$acuLipidos+$ing->cantidad*0; 
                                            $acuProteinas= $acuProteinas+$ing->cantidad*1;                        
                                          }  
              if ($ing->alimento=="cremaMantecaMayo") {
                                            $acuHdc=$acuHdc+$ing->cantidad*0.01;
                                            $acuLipidos= $acuLipidos+$ing->cantidad*0.01; 
                                            $acuProteinas=$acuProteinas+$ing->cantidad*0.60;                        
                                          }
    }

  

    //echo("hdc :".$acuProteinas." prot ".$acuProteinas);
     //PRESENTACION
    
    $acuHdc=$acuHdc*4;
    $acuProteinas=$acuProteinas*4;
    $acuLipidos=$acuLipidos*7;
    $total=$acuLipidos+$acuProteinas+$acuHdc;
    
    
    //Agregamos la funcion para que imprima la grafica
    $this->imprimirGrafica($acuHdc, $acuProteinas, $acuLipidos, $total);

//    $smarty = new Smarty;
//
//    $smarty->template_dir = 'vistas/smarty/templates/';
//    $smarty->compile_dir = 'vistas/smarty/templates_c/';
//    $smarty->config_dir = 'vistas/smarty/configs/';
//    $smarty->cache_dir = 'vistas/smarty/cache/';
//
//    $smarty->assign('hdc',$acuHdc);
//    $smarty->assign('ktotales',$total);
//    $smarty->assign('proteinas',$acuProteinas);
//    $smarty->assign('lipidos',$acuLipidos);
//
//
//    $smarty->display('mostrarEstadisticaRecordatorio24.tpl');
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

  
      case 'traerGraficaRecordatorio' : {
                                   
                                             echo($this->traerGraficaRecordatorio());

                                              break;
                                              }  
      
    case 'mostrarEstadisticaRecordatorio24' : {
                                   
                                              $this->mostrarEstadisticaRecordatorio24($this->request['idRecordatorio']);
                                              break;
                                              } 
     
    case 'mostrarTablaRecordatorio24' : {
                                   
                                      
                                    if (isset($_REQUEST['idPaciente'])) {$idPaciente=$_REQUEST['idPaciente'];}
                                      else {$idPaciente=NULL;}
    
        
                          $this->mostrarTablaRecordatorio24($idPaciente);
                          break;
                          }
                          
    case 'mostrarActualizarRecordatorio24': {
                            $this->mostrarActualizarRecordatorio24($this->request['idRecordatorio24']);
                            break;
                          }

    case 'eliminarRecordatorio24': {
                            $this->eliminarRecordatorio24($this->request['idRecordatorio24']);
                            $this->mostrarTablaRecordatorio24($this->request['idPaciente']);
                            break;
                          }

    case 'mostrarNuevoRecordatorio24': {
                                $idPaciente=$this->request['idPaciente'];
                                $this->mostrarNuevoRecordatorio24($idPaciente);
                                                        
                                break;
                                }
                          
    case 'btnActualizarRecordatorio24': {
                                $this->actualizarRecordatorio24();
                                $this->mostrarTablaRecordatorio24($this->request['paciente']);
                                break;
                                }  

    case 'btnCreaRecordatorio24': {
                              //var_dump($this->request);
                              $this->crearRecordatorio24();
                              $this->mostrarTablaRecordatorio24($this->request['paciente']);
                                break;
                                } 
    case 'consultarRecordatorio24': {     
                                $this->mostrarConsultarRecordatorio24($this->request['idRecordatorio']);
                                break;
                                }
    case 'imprimirConsultaRecordatorio24': {     
                                $this->imprimirRecordatorio24($this->request['idRecordatorio']);
                                break;
                                }
       
    case 'buscarClubesPorCadena': {     
                                $this->buscarClubesPorCadena($this->request['cadenaClub']);
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

