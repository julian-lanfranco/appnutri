

<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/ingesta.php');
require_once('modelos/plan.php');
require_once('modelos/menu_semanal.php');
require_once('modelos/ingesta_planes.php');
require_once('fpdf181/generador.php');



class controllerPlanes {

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


   public function mostrarHome()
   {
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('usuario',$_SESSION['user']);
    $smarty->display('home.tpl');
   }


     public function crearPlan()
   {
       //ACCESO A DATOS

    $plan = new Plan('planes');

    if (isset($this->request['idPlan']))
    {
    $plan->load("id=".$this->request['idPlan']);
    $db = getConexion();
    $db->Execute("DELETE FROM ingesta_planes WHERE plan='".$plan->id."'");
    $db->Execute("DELETE FROM menu_semanal WHERE plan='".$plan->id."'");    
    }


    $plan->fecha=date('Y-m-d');
    $plan->paciente=$this->request['idPaciente'];

    $plan->save();

    $menu_semanal = new MenuSemanal('menu_semanal');

    $menu_semanal->lunes_desayuno=$this->request['lunes_desayuno'];
    $menu_semanal->lunes_almuerzo=$this->request['lunes_almuerzo'];
    $menu_semanal->lunes_cena=$this->request['lunes_cena'];
    $menu_semanal->lunes_colacion=$this->request['lunes_colacion'];
    $menu_semanal->lunes_med_maniana=$this->request['lunes_med_maniana'];
    $menu_semanal->lunes_merienda=$this->request['lunes_merienda'];

    $menu_semanal->martes_desayuno=$this->request['martes_desayuno'];
    $menu_semanal->martes_almuerzo=$this->request['martes_almuerzo'];
    $menu_semanal->martes_cena=$this->request['martes_cena'];
    $menu_semanal->martes_colacion=$this->request['martes_colacion'];
    $menu_semanal->martes_med_maniana=$this->request['martes_med_maniana'];
    $menu_semanal->martes_merienda=$this->request['martes_merienda'];

    $menu_semanal->miercoles_desayuno=$this->request['miercoles_desayuno'];
    $menu_semanal->miercoles_almuerzo=$this->request['miercoles_almuerzo'];
    $menu_semanal->miercoles_cena=$this->request['miercoles_cena'];
    $menu_semanal->miercoles_colacion=$this->request['miercoles_colacion'];
    $menu_semanal->miercoles_med_maniana=$this->request['miercoles_med_maniana'];
    $menu_semanal->miercoles_merienda=$this->request['miercoles_merienda'];

    $menu_semanal->jueves_desayuno=$this->request['jueves_desayuno'];
    $menu_semanal->jueves_almuerzo=$this->request['jueves_almuerzo'];
    $menu_semanal->jueves_cena=$this->request['jueves_cena'];
    $menu_semanal->jueves_colacion=$this->request['jueves_colacion'];
    $menu_semanal->jueves_med_maniana=$this->request['jueves_med_maniana'];
    $menu_semanal->jueves_merienda=$this->request['jueves_merienda'];

    $menu_semanal->viernes_desayuno=$this->request['viernes_desayuno'];
    $menu_semanal->viernes_almuerzo=$this->request['viernes_almuerzo'];
    $menu_semanal->viernes_cena=$this->request['viernes_cena'];
    $menu_semanal->viernes_colacion=$this->request['viernes_colacion'];
    $menu_semanal->viernes_med_maniana=$this->request['viernes_med_maniana'];
    $menu_semanal->viernes_merienda=$this->request['viernes_merienda'];

    $menu_semanal->sabado_desayuno=$this->request['sabado_desayuno'];
    $menu_semanal->sabado_almuerzo=$this->request['sabado_almuerzo'];
    $menu_semanal->sabado_cena=$this->request['sabado_cena'];
    $menu_semanal->sabado_colacion=$this->request['sabado_colacion'];
    $menu_semanal->sabado_med_maniana=$this->request['sabado_med_maniana'];
    $menu_semanal->sabado_merienda=$this->request['sabado_merienda'];

    $menu_semanal->domingo_desayuno=$this->request['domingo_desayuno'];
    $menu_semanal->domingo_almuerzo=$this->request['domingo_almuerzo'];
    $menu_semanal->domingo_cena=$this->request['domingo_cena'];
    $menu_semanal->domingo_colacion=$this->request['domingo_colacion'];
    $menu_semanal->domingo_med_maniana=$this->request['domingo_med_maniana'];
    $menu_semanal->domingo_merienda=$this->request['domingo_merienda'];

    $menu_semanal->plan = $plan->id;
    $menu_semanal->save();

   
    $tipoDeIngesta=$this->request['tipoDeIngesta'];
    $alimento=$this->request['alimento'];
    $cantidad=$this->request['cantidad'];
    $hora=$this->request['hora'];
    $c=0;

    foreach ($tipoDeIngesta as $tipo) 
      {
      
      $ingesta_plan = new IngestaPlanes('ingesta_planes');

      $ingesta_plan->tipodeingesta = $tipo;
      $ingesta_plan->alimento = $alimento[$c];
      $ingesta_plan->cantidad = $cantidad[$c];

      $ingesta_plan->hora = $hora[$c];

      $ingesta_plan->plan=$plan->id;

      if ($ingesta_plan->save()){}
      else {$ingesta_planes->ErrorMsg();}      

      $c++;
      }

    

   }
//
       public function eliminarPlan($idPlan)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM planes WHERE id='".$idPlan."'");

   }

    public function mostrarTablaPlanes($idPaciente)
   {
       //ACCESO A DATOS
    $plan = new Plan('planes');

    $planarray=$plan->Find("paciente='".$idPaciente."' order by id"); 

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

    $smarty->assign('planes',$planarray);
    $smarty->display('tablaPlanes.tpl');
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


 return "<img src='http://localhost/appnutri/graficas/pagina-que-genera-la-grafica.php?hdc=".$acuHdc."&proteinas=".$acuProteinas."&lipidos=".$acuLipidos."&ktotales=".$total." 'align='right'  style='cursor:pointer' height='300px' width='100%'/>";

}

// traerFormNuevoClub   
   public function mostrarNuevoPlan($idPaciente)
      {


    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);


    //PRESENTACION
    $smarty = new Smarty;


     $smarty->assign('idPaciente',$paciente->id);
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('nuevoPlan.tpl');
   }


      public function mostrarActualizarPlan($idPaciente,$idPlan)
      {


    $plan = new Plan('planes');
    $plan->load("id=".$this->request['idPlan']);

    $ingesta = new IngestaPlanes('ingesta_planes');
    $ingestaArray = $ingesta->Find("plan ='".$plan->id."' order by id");

    $menu_semanal = new MenuSemanal('menu_semanal');

    $menu_semanal->load("plan=".$plan->id);


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
//fin de calculo para grafica de ingesta



    //PRESENTACION
    $smarty = new Smarty;


 

    $smarty->assign('ingestas',$ingestaArray);

    $smarty->assign('menu_semanal',$menu_semanal);
    $smarty->assign('idPlan',$idPlan);
    $smarty->assign('idPaciente',$idPaciente);

    $smarty->assign('acuHdc',$acuHdc);
    $smarty->assign('acuProteinas',$acuProteinas);
    $smarty->assign('acuLipidos',$acuLipidos);
    $smarty->assign('total',$total);

    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->display('actualizarPlan.tpl');
   }
//
  
// crearClub
  public function crearClub()
   {
       //ACCESO A DATOS

    $club = new Club('clubes');

    
    $club->nombre=$this->request['nombre'];
    $club->tipo=$this->request['tipo'];
    $club->telefono=$this->request['telefono'];
    $club->direccion=$this->request['direccion'];
    $club->contacto=$this->request['personaContacto'];
    $club->mail=$this->request['correoElectronico'];
    $club->save();

   }
//
// elimnarClub   
   public function eliminarClub($idClub)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      $db->Execute("DELETE FROM clubes WHERE id='".$idClub."'");

   }
//

// listarClubes
   public function mostrarTablaClubes()
   {
    //ACCESO A DATOS
    $club = new Club('clubes');
    $clubesArray = $club->Find("1 order by id");    
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('tablaClubes.tpl');
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
   public function mostrarActualizarClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('nombre',$club->nombre);
    $smarty->assign('idClub',$club->id);
    $smarty->assign('tipo',$club->tipo);
    $smarty->assign('telefono',$club->telefono);
    $smarty->assign('direccion',$club->direccion);
    $smarty->assign('personaContacto',$club->contacto);
    $smarty->assign('correoElectronico',$club->mail);

    $smarty->display('actualizarClub.tpl');
   }
//


   // traerFormConsultarClub
   public function mostrarConsultarClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('nombreClub',$club->nombre);
    $smarty->assign('idClub',$club->id);
    $smarty->display('consultarClub.tpl');
   }

// actualizarClub 
   public function actualizarClub($clubAct)
   {   
       //ACCESO A DATOS
  $club = new Club('clubes');

  $club->id = $clubAct->id;
  $club->nombre = $clubAct->nombre;
  $club->tipo = $clubAct->tipo;
  $club->direccion = $clubAct->direccion;
  $club->contacto = $clubAct->contacto;
  $club->mail = $clubAct->mail;
  $club->telefono = $clubAct->telefono;

  //echo("personaContacto: ".$club->personaContacto." correoElectronico: ".$club->correoElectronico);
  $club->replace();

   }
//
   // traerFormConsultarClub
   public function imprimirClub($idClub)
   {

       //ACCESO A DATOS
    $club = new Club('clubes');
    $club->load("id=".$idClub);
     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirClub($club);
   }

   public function imprimirPlan($idPaciente,$idPlan)
   {

       //ACCESO A DATOS

    
    $repo = new Reportes();

    $repo->imprimirPlan($idPaciente,$idPlan);
   }

// router
 public function router(){
if (isset($_REQUEST['modulo']))
{
    {
}
 switch ($this->accion) 
  {
    case 'mostrarTablaClubes' : {
                          $this->mostrarTablaClubes();
                          break;
                          }
    case 'mostrarTablaPlanes' : {
                                   
                                      
                                    if (isset($_REQUEST['idPaciente'])) {$idPaciente=$_REQUEST['idPaciente'];}
                                      else {$idPaciente=NULL;}
    
        
                          $this->mostrarTablaPlanes($idPaciente);
                          break;
                          }
                          
    case 'mostrarActualizarClub': {
                            $this->mostrarActualizarClub($this->request['idClub']);
                            break;
                          }

    case 'eliminarPlan': {
                            $this->eliminarPlan($this->request['idPlan']);
                            $this->mostrarTablaPlanes($this->request['idPaciente']);
                            break;
                          }

    case 'mostrarNuevoPlan': {

                                $this->mostrarNuevoPlan($this->request['idPaciente']);
                                break;
                                }

  case 'mostrarActualizarPlan': {

                                $this->mostrarActualizarPlan($this->request['idPaciente'],$this->request['idPlan']);
                                break;
                                }


  case 'traerGraficaRecordatorio' : {
                                   
                                             echo($this->traerGraficaRecordatorio());

                                              break;
                                              }  

     
    case 'crearPlan': {

                          $this->crearPlan();
                          if (isset($_REQUEST['idPaciente'])) {$idPaciente=$_REQUEST['idPaciente'];}
                                      else {$idPaciente=NULL;}

                          $this->mostrarTablaPlanes($idPaciente);
                                break;
                                }                           
   
case 'imprimirPlan': {

                          $this->imprimirPlan($_REQUEST['idPaciente'],$_REQUEST['idPlan']);
                                break;
                                }        

    case 'btnActualizarClub': {
                                $clubAct = new Club('clubes');
                                $clubAct->id=$this->request['idClub'];
                                $clubAct->nombre=$this->request['nombre'];
                                $clubAct->tipo=$this->request['tipo'];
                                $clubAct->telefono=$this->request['telefono'];
                                $clubAct->direccion=$this->request['direccion'];
                                $clubAct->contacto=$this->request['personaContacto'];
                                $clubAct->mail=$this->request['correoElectronico'];
                                $this->actualizarClub($clubAct);
                                $this->mostrarTablaClubes();
                                break;
                                }  

    case 'btnCrearClub': {

                                $this->crearClub();
                                $this->mostrarTablaClubes();
                                break;
                                } 
    case 'consultarClub': {     
                                $this->mostrarConsultarClub($this->request['idClub']);
                                break;
                                }
    case 'imprimirConsultaClub': {     
                                $this->imprimirClub($this->request['idClub']);
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

