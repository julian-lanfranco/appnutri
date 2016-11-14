<?php

require_once('vistas/smarty/libs/Smarty.class.php');
require_once('modelos/conexion.php');
require_once('modelos/club.php');
require_once('modelos/divisiones.php');
require_once('modelos/paciente.php');
require_once('modelos/deporte.php');
require_once('fpdf181/generador.php');



class controllerPacientes {

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
   public function mostrarNuevoDivision($clubesArray)
      {
    //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    $smarty->assign('clubes',$clubesArray);
    $smarty->display('nuevoDivision.tpl');
   }
//
  public function traerPacientesJson(){

    $pacientes=$this->traerPacientes();
    echo json_encode($pacientes);
  }

// crearClub
  public function crearPaciente()
   {
       //ACCESO A DATOS

    $paci = new Paciente('pacientes');



    $paci->nombre=$this->request['nombre'];
    $paci->apellido=$this->request['apellido'];
    $paci->dni=$this->request['dni'];
    $paci->obra=$this->request['obra'];
    $paci->telefono=$this->request['telefono'];
    $paci->nacimiento=$this->request['nacimiento'];
    $paci->correo=$this->request['correo'];
    $paci->medico=$this->request['medico'];
    $paci->ocupacion=$this->request['ocupacion'];
    $paci->motivo=$this->request['motivo'];
    $paci->direccion=$this->request['direccion'];
    $paci->sexo=$this->request['sexo'];


 
   if (isset($_REQUEST['seleccionDivisionesModPacientes']) && 
    !($_REQUEST['seleccionDivisionesModPacientes']=='ninguno')) 
                                                                {

                                                                  $paci->division=$this->request['seleccionDivisionesModPacientes'];
                                                                }
                                else {$paci->division=NULL;}
                                
  if (isset($_REQUEST['seleccionDivisionesSeleccionModPacientes']) && 
    !($_REQUEST['seleccionDivisionesSeleccionModPacientes']=='ninguno')) 
                                                    {
                                  $paci->divisionseleccion=$_REQUEST['seleccionDivisionesSeleccionModPacientes'];
                                                    }
                                else {$paci->divisionseleccion=NULL;}
             

    if ($paci->save()) {echo "
                              <script language='javascript' type='text/javascript'> 
                              alert('Paciente creado con exito.'); 
                              </script>  
                              ";
                        }
    else {echo "
                              <script language='javascript' type='text/javascript'> 
                              alert('No se pudo dar de alta el paciente.".var_dump($paci)." Verifique DNI.'); 
                              </script>  
                              ";
 
          }
   }
//
// elimnarClub   
   public function eliminarPaciente($idPaciente)
   {
    
    //ACCESO A DATOS
       //$db = getConexion();
      $db = getConexion();
      if ($db->Execute("DELETE FROM pacientes WHERE id='".$idPaciente."'")) {echo("exito");}
        else echo("fracaso");
   }
//

// listarClubes


      public function traerClubes()
   {
        $club = new Club('clubes');
        $clubArray = $club->Find("1 order by id"); 
        return $clubArray;
   }

         public function traerSelecciones()
   {
        $seleccion = new Club('clubes');
        $seleccionArray = $seleccion->Find("tipo='seleccion' order by id"); 
        return $seleccionArray;
   }

         
    public function traerDeportesXClub($idClub)
   {
        $divisiones = new Division('divisiones');

        $deportesArray=array();

        $divisionesArray = $divisiones->Find("club='".$idClub."' order by id"); 

        foreach ($divisionesArray as $div) {

          if (in_array($div->deporte, $deportesArray)) 
              {
    
              }
          else {
            $deportesArray[]=$div->deporte;
              
                }
            }



        return $deportesArray;
   }
public function migrarJugadores($jugadores,$divDestino,$divOrigen){
    
    $paciente = new Paciente('pacientes');

    $divisionOrigen = new Division('divisiones');
    $divisionDestino = new Division('divisiones');

    $clubOrigen = new Club('clubes');
    $clubDestino = new Club('clubes');

    $divisionOrigen->Load("id=".$divOrigen);
    $divisionDestino->Load("id=".$divDestino);

    $clubOrigen->Load("id=".$divisionOrigen->club);
    $clubDestino->Load("id=".$divisionDestino->club);

    


    foreach ($jugadores as $jugador) 
      {
   
        if ($jugador>0) {
                          
                          $paciente->Load("id=".$jugador);

                          if ($divOrigen=="ninguno") 
                            {
                              if ($divDestino=="ninguno") {}
                              else {
                                    if ($clubDestino->tipo=="normal") $paciente->division=$divDestino;
                                    if ($clubDestino->tipo=="seleccion") $paciente->divisionseleccion=$divDestino;
                                    }  
                            }
                            else {
                                    if ($divDestino=="ninguno") 
                                    {
                                    if ($clubOrigen->tipo=="normal") $paciente->division=NULL;
                                    if ($clubOrigen->tipo=="seleccion") $paciente->divisionseleccion=NULL;  
                                    }
                                    else {
                                          if ($clubDestino->tipo=="normal") $paciente->division=$divDestino;
                                          if ($clubDestino->tipo=="seleccion") $paciente->divisionseleccion=$divDestino;
                                          
                                          }
                                  }
                          
                          $paciente->save();
                        }
      }




}
  public function traerSexoXDeporteXClub($idClub,$deporte)
   {
        $divisiones = new Division('divisiones');

        $sexoArray=array();

        $sexoDivisionesArray = $divisiones->Find("(deporte='".$deporte."') and (club='".$idClub."')  order by id"); 

        foreach ($sexoDivisionesArray as $div) {

          if (in_array($div->sexo, $sexoArray)) 
              {
    
              }
          else {
            $sexoArray[]=$div->sexo;
              
                }
            }

        return $sexoArray;
   }

     public function traerSexoXDeporteXSeleccion($idSeleccion,$deporte)
   {
        $divisiones = new Division('divisiones');

        $sexoArray=array();

        $sexoDivisionesArray = $divisiones->Find("(deporte='".$deporte."') and (club='".$idSeleccion."')  order by id"); 

        foreach ($sexoDivisionesArray as $div) {

          if (in_array($div->sexo, $sexoArray)) 
              {
    
              }
          else {
            $sexoArray[]=$div->sexo;
              
                }
            }

        return $sexoArray;
   }

  public function traerDivisionesXSexoXDeporteXClub($idClub,$deporte,$sexo)
   {
        $division = new Division('divisiones');


        $divisiones = $division->Find("(deporte='".$deporte."') and (club='".$idClub."') and (sexo='".$sexo."') order by id"); 

        return $divisiones;
   }

  public function traerPacientesPorCriterios($pacienteNombre,$pacienteDni,$pacienteSexo,$club,$division,$deporte,$sexoDivision)
   {
        
        if ($pacienteSexo=="todos") {
                                      $pacienteSexo="";
                                    }

        $paciente = new Paciente('pacientes');

      $pacientesFiltrados = $paciente->Find("(
                        (nombre LIKE '%".$pacienteNombre."%') and 
                        (dni LIKE '%".$pacienteDni."%') and 
                        (sexo LIKE '%".$pacienteSexo."%')
                        ) order by id");


//filtro club

      $divisiones = new Division('divisiones');

       if (($club=="todos") and ($division=="todos") 
                           and ($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("1  order by id");
                          }
       if (($club=="todos") and ($division=="todos") 
                           and ($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("sexo='".$sexoDivision."'  order by id");
                          }

       if (($club=="todos") and ($division=="todos") 
                           and !($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."'  order by id");
                          }
       if (($club=="todos") and ($division=="todos") 
                           and !($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and
                                                                sexo='".$sexoDivision."'  order by id");
                          }

       if (($club=="todos") and !($division=="todos") 
                           and ($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("nombre='".$division."' order by id");
                          }
       if (($club=="todos") and !($division=="todos") 
                           and ($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("sexo='".$sexoDivision."' and 
                                                                nombre='".$division."' order by id");
                          }
      if (($club=="todos") and !($division=="todos") 
                           and !($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and 
                                                                nombre='".$division."' order by id");
                          }
      if (($club=="todos") and !($division=="todos") 
                           and !($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and 
                                                                nombre='".$division."' and 
                                                                sexo='".$sexoDivision."' order by id");
                          } 
//comienzo no club
       if (!($club=="todos") and ($division=="todos") 
                           and ($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("club='".$club."'  order by id");
                          }
       if (!($club=="todos") and ($division=="todos") 
                           and ($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("sexo='".$sexoDivision."'  and
                                                                club='".$club."' order by id");
                          }

       if (!($club=="todos") and ($division=="todos") 
                           and !($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."'  and
                                                                 club='".$club."' order by id");
                          }
       if (!($club=="todos") and ($division=="todos") 
                           and !($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and
                                                                sexo='".$sexoDivision."'  and 
                                                                club='".$club."' order by id");
                          }

       if (!($club=="todos") and !($division=="todos") 
                           and ($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("nombre='".$division."' and 
                                                                club='".$club."' order by id");
                          }
       if (!($club=="todos") and !($division=="todos") 
                           and ($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("sexo='".$sexoDivision."' and 
                                                                nombre='".$division."' and 
                                                                club='".$club."' order by id");
                          }
      if (!($club=="todos") and !($division=="todos") 
                           and !($deporte=="todos") 
                           and ($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and 
                                                                nombre='".$division."' and 
                                                                club='".$club."' order by id");
                          }
      if (!($club=="todos") and !($division=="todos") 
                           and !($deporte=="todos") 
                           and !($sexoDivision=="todos"))
                          {
                          $divisionesArray = $divisiones->Find("deporte='".$deporte."' and 
                                                                nombre='".$division."' and 
                                                                sexo='".$sexoDivision."' and 
                                                                club='".$club."' order by id");
                          }                        


          # code...
        $c=0;
              foreach ($pacientesFiltrados as $pas) 
              {
                $eliminar=true;
                foreach ($divisionesArray as $div) 
                  {
                    if ((($pas->division==$div->id)) or
                    (($pas->divisionseleccion==$div->id))) 
                        {$eliminar=false;}
                  }
                  if ($eliminar) {unset($pacientesFiltrados[$c]);}
                  $c++;

                # code...
              }
     
if ($club=="ninguno") {
                        $pacientesFiltrados = $paciente->Find("(
                        (nombre LIKE '%".$pacienteNombre."%') and 
                        (dni LIKE '%".$pacienteDni."%') and 
                        (sexo LIKE '%".$pacienteSexo."%') and
                        (division is NULL) and
                        (divisionseleccion is NULL)) order by id");
                      }
else {

      }
    

        return $pacientesFiltrados;


   }



     public function traerDivisionesXSexoXDeporteXSeleccion($idDivision,$deporte,$sexo)
   {
        $division = new Division('divisiones');


        $divisiones = $division->Find("(deporte='".$deporte."') and (club='".$idDivision."') and (sexo='".$sexo."') order by id"); 

        return $divisiones;
   }

   
   public function traerPacientes()
   {
        $paciente = new Paciente('pacientes');
        $pacientesArray = $paciente->Find("1 order by id"); 
        return $pacientesArray;
   }

      public function traerPacientesSinDivison()
   {
        $paciente = new Paciente('pacientes');
        $pacientesArray = $paciente->Find("division is NULL order by id"); 
        return $pacientesArray;
   }

  public function traerPacientesXDivision($division)
   {
        $paciente = new Paciente('pacientes');
        $pacientesArray = $paciente->Find("(division='".$division."') or (divisionseleccion='".$division."') order by id"); 
        return $pacientesArray;
   }

     public function traerPacientesXClub($club)
   {
        $divisiones = new Division('divisiones');
  
        $divisionesArray = $divisiones->Find("club='".$club."' order by id"); 

        $paciente = new Paciente('pacientes');

        $pacientesFiltrados = array();

        foreach ($divisionesArray as $div) {
          # code...
           $pacientesArray = $paciente->Find("(division='".$div->id."') or (divisionseleccion='".$div->id."') order by id");
           $pacientesFiltrados=array_merge($pacientesFiltrados,$pacientesArray);
        }
    
       return $pacientesFiltrados;


   }

        public function traerPacientesXClubXDeporteXSexo($club,$deporte,$sexo)
   {
        $divisiones = new Division('divisiones');
  
        $divisionesArray = $divisiones->Find("(club='".$club."') and (deporte='".$deporte."') and (sexo='".$sexo."') order by id"); 

        $paciente = new Paciente('pacientes');

        $pacientesFiltrados = array();

        foreach ($divisionesArray as $div) {
          # code...
           $pacientesArray = $paciente->Find("(division='".$div->id."') or (divisionseleccion='".$div->id."') order by id");
           $pacientesFiltrados=array_merge($pacientesFiltrados,$pacientesArray);
        }
    
       return $pacientesFiltrados;



   }

           public function traerPacientesXClubXDeporte($club,$deporte)
   {
        $divisiones = new Division('divisiones');
  
        $divisionesArray = $divisiones->Find("(club='".$club."') and (deporte='".$deporte."') order by id"); 

        $paciente = new Paciente('pacientes');

        $pacientesFiltrados = array();

        foreach ($divisionesArray as $div) {
          # code...
           $pacientesArray = $paciente->Find("(division='".$div->id."') or (divisionseleccion='".$div->id."') order by id");
           $pacientesFiltrados=array_merge($pacientesFiltrados,$pacientesArray);
        }
    
       return $pacientesFiltrados;



   }



  public function traerDivisiones()
   {
        $division = new Division('divisiones');
        $divisionesArray = $division->Find("1 order by id"); 
        return $divisionesArray;
   }


   public function mostrarTablaPacientes()
   {

        

        $club = new Club('clubes');
        $clubesArray = $club->Find("1 order by id"); 

        $division = new Division('divisiones');
        $divisionesArray = $division->Find("1 order by id"); 

        $deporte = new Deporte('deportes');
        $deportesArray = $deporte->Find("1 order by id"); 

        foreach ($divisionesArray as $div) {

          $nombresDivisiones[]=$div->nombre;
          //echo $div->nombre;
          # code...
        }

        $resultado = array_unique($nombresDivisiones);
      


    //PRESENTACION



    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';


    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisiones',$resultado);
    $smarty->assign('deportes',$deportesArray);


    $smarty->display('tablaPacientes.tpl');



   }


      public function mostrarTablaResultadoPacientes($pacientes)
   {

        
      


    //PRESENTACION



    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';


    $smarty->assign('pacientes',$pacientes);



    $smarty->display('tablaPacientesResultado.tpl');



   }  



  public function cargarFormInical($clubes,$selecciones)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('divisionSeleccionado',$idDivision);
    
    $smarty->assign('clubes',$clubes);
    $smarty->assign('divisiones',$divisionesArray);

    $smarty->assign('clubSeleccionado',$idClub);
    $smarty->assign('divisionSeleccionado',$idDivision);
    
    $smarty->assign('selecciones',$selecciones);
    $smarty->assign('selDivisiones',$selDivisionesArray);
    

    $smarty->display('nuevoPaciente.tpl');

   }  

  public function cargarSelectorDeportes($deportes)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('deportes',$deportes);


    $smarty->display('selectorDeportes.tpl');

   }  

     public function cargarSelectorDeportesMigracion($deportes)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('deportes',$deportes);


    $smarty->display('selectorDeportesMigracion.tpl');

   }


     public function cargarListadoJugadores($jugadores)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('jugadores',$jugadores);


    $smarty->display('tablaJugadoresMigracion.tpl');

   }
   

     public function cargarSelectorDeportesSelecciones($deportes)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('deportes',$deportes);


    $smarty->display('selectorDeportesSelecciones.tpl');

   }  

  public function cargarSelectorSexo($sexos)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('sexos',$sexos);


    $smarty->display('selectorSexos.tpl');

   }  

     public function cargarSelectorSexoMigracion($sexos)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('sexos',$sexos);

    $smarty->display('selectorSexosMigracion.tpl');

   }  
     public function cargarSelectorSexoMigracionDestino($sexos)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('sexos',$sexos);

    $smarty->display('selectorSexosMigracionDestino.tpl');

   }  
    public function cargarSelectorSexoSelecciones($sexos)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('sexos',$sexos);


    $smarty->display('selectorDeSexoSelecciones.tpl');

   }  

   
     public function cargarSelectorDivisiones($divisiones)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('divisiones',$divisiones);


    $smarty->display('selectorDivisiones.tpl');

   }  


    public function cargarSelectorDivisionesMigracion($divisiones)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('divisiones',$divisiones);


    $smarty->display('selectorDivisionesMigracion.tpl');

   }

  public function cargarSelectorDivisionesMigracionDestino($divisiones)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('divisiones',$divisiones);


    $smarty->display('selectorDivisionesMigracionDestino.tpl');

   }  

        public function cargarSelectorDivisionesSelecciones($divisiones)
   {

    //ACCESO A DATOS

    $divisionesArray="";
    $idClub="";
    $idDivision="";
    $seleccionArray="";
    $selDivisionesArray="";


    //PRESENTACION
    $smarty = new Smarty;
    
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('divisiones',$divisiones);


    $smarty->display('selectorDeDivisionesSelecciones.tpl');

   }  




  public function buscarDivisionesPorClub2($idClub,$idDivision,$clubesArray)
   {

    //ACCESO A DATOS

    $division = new Division('divisiones');
    


    if ($idClub=="ninguno")
              {

              //$divisionesArray = $division->Find("tipo='normal' order by id");
              $idDivision=0;
              $divisionesArray="";
              
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
    $smarty->assign('divisionSeleccionado',$idDivision);
    
    $smarty->assign('clubes',$clubesArray);
    $smarty->assign('divisiones',$divisionesArray);
    

    $smarty->display('selectorClubesYDivisiones.tpl');

   }  

     public function buscarDivisionesPorClub3($idClub,$idDivision,$clubesArray)
   {

    //ACCESO A DATOS

    $division = new Division('divisiones');
    


    if ($idClub=="ninguno")
              {

              //$divisionesArray = $division->Find("tipo='normal' order by id");
              $idDivision=0;
              $divisionesArray="";
              
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

    $smarty->assign('selSeleccionado',$idClub);
    $smarty->assign('idSelDivisionSel',$idDivision);
    
    $smarty->assign('selecciones',$clubesArray);
    $smarty->assign('selDivisiones',$divisionesArray);
    

    $smarty->display('selectorSeleccionesYDivisiones.tpl');

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
   public function mostrarActualizarPaciente($idPaciente)
   {

       //ACCESO A DATOS
    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

    $division = new Division('divisiones');
    $division->load("id=".$paciente->division);

    $divisionSel = new Division('divisiones');
    $divisionSel->load("id=".$paciente->divisionseleccion);
    
    //Buscar seleccionados Clubes
    $clubSeleccionado=$division->club;
    $divisionSeleccionada=$division->id;
    $deporteSeleccionado=$division->deporte;
    $sexoSeleccionado=$division->sexo;

    //Buscar seleccionados selecciones
    $clubSeleccionadoSel=$divisionSel->club;
    $divisionSeleccionadaSel=$divisionSel->id;
    $deporteSeleccionadoSel=$divisionSel->deporte;
    $sexoSeleccionadoSel=$divisionSel->sexo;



    //Buscar lista de Clubes
    $listaClubes = $this->traerClubes();

    //Buscar lista de deportes
    $listaDeportes = $this->traerDeportesXClub($clubSeleccionado);

    //Buscar lista de sexos
    $listaSexos = $this->traerSexoXDeporteXClub($clubSeleccionado,$deporteSeleccionado);

    //Buscar lista de Divisiones
    $listaDivisiones = $this->traerDivisionesXSexoXDeporteXClub($clubSeleccionado,$deporteSeleccionado,$sexoSeleccionado);



    //Buscar lista de selecciones
    $listaSelecciones = $this->traerSelecciones();

    //Buscar lista de deportes
    $listaDeportesSel = $this->traerDeportesXClub($clubSeleccionadoSel);

    //Buscar lista de sexos
    $listaSexosSel = $this->traerSexoXDeporteXClub($clubSeleccionadoSel,$deporteSeleccionadoSel);

    //Buscar lista de Divisiones
    $listaDivisionesSel = $this->traerDivisionesXSexoXDeporteXClub($clubSeleccionadoSel,$deporteSeleccionadoSel,$sexoSeleccionadoSel);




     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';

    $smarty->assign('idPaciente',$paciente->id);
    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('apellido',$paciente->apellido);
    $smarty->assign('dni',$paciente->dni);
    $smarty->assign('direccion',$paciente->direccion);
    $smarty->assign('obra',$paciente->obra);
    $smarty->assign('telefono',$paciente->telefono);
    $smarty->assign('nacimiento',$paciente->nacimiento);
    $smarty->assign('correo',$paciente->correo);
    $smarty->assign('medico',$paciente->medico);
    $smarty->assign('motivo',$paciente->motivo);
    $smarty->assign('ocupacion',$paciente->ocupacion);
    $smarty->assign('sexoPaciente',$paciente->sexo);


//evio de seleccionados clubes

    $smarty->assign('clubSeleccionado',$clubSeleccionado);
    $smarty->assign('divisionSeleccionada',$divisionSeleccionada);
    $smarty->assign('deporteSeleccionado',$deporteSeleccionado);
    $smarty->assign('sexoSeleccionado',$sexoSeleccionado);

//envio de listas clubes

    $smarty->assign('listaClubes',$listaClubes);
    $smarty->assign('listaDeportes',$listaDeportes);
    $smarty->assign('listaSexos',$listaSexos);
    $smarty->assign('listaDivisiones',$listaDivisiones);


//evio de seleccionados selecciones

    $smarty->assign('clubSeleccionadoSel',$clubSeleccionadoSel);
    $smarty->assign('divisionSeleccionadaSel',$divisionSeleccionadaSel);
    $smarty->assign('deporteSeleccionadoSel',$deporteSeleccionadoSel);
    $smarty->assign('sexoSeleccionadoSel',$sexoSeleccionadoSel);

//envio de listas selecciones

    $smarty->assign('listaSelecciones',$listaSelecciones);
    $smarty->assign('listaDeportesSel',$listaDeportesSel);
    $smarty->assign('listaSexosSel',$listaSexosSel);
    $smarty->assign('listaDivisionesSel',$listaDivisionesSel);

    
    $smarty->display('actualizarPaciente.tpl');

   }
//

      public function mostrarMigrarJugadores()
   {

    
    //Buscar seleccionados Clubes
    $clubSeleccionado=NULL;
    $divisionSeleccionada=NULL;
    $deporteSeleccionado=NULL;
    $sexoSeleccionado=NULL;

    //Buscar seleccionados selecciones
    $clubSeleccionadoSel=NULL;
    $divisionSeleccionadaSel=NULL;
    $deporteSeleccionadoSel=NULL;
    $sexoSeleccionadoSel=NULL;


    //Buscar lista de Clubes
    $listaClubes = $this->traerClubes();

    //Buscar lista de deportes
    $listaDeportes = $this->traerDeportesXClub($clubSeleccionado);

    //Buscar lista de sexos
    $listaSexos = $this->traerSexoXDeporteXClub($clubSeleccionado,$deporteSeleccionado);

    //Buscar lista de Divisiones
    $listaDivisiones = $this->traerDivisionesXSexoXDeporteXClub($clubSeleccionado,$deporteSeleccionado,$sexoSeleccionado);



    //Buscar lista de selecciones
    $listaSelecciones = $this->traerSelecciones();

    //Buscar lista de deportes
    $listaDeportesSel = $this->traerDeportesXClub($clubSeleccionadoSel);

    //Buscar lista de sexos
    $listaSexosSel = $this->traerSexoXDeporteXClub($clubSeleccionadoSel,$deporteSeleccionadoSel);

    //Buscar lista de Divisiones
    $listaDivisionesSel = $this->traerDivisionesXSexoXDeporteXClub($clubSeleccionadoSel,$deporteSeleccionadoSel,$sexoSeleccionadoSel);

  //buscar jugadores sin division

   $jugadoresSinDivision=$this->traerPacientesSinDivison();


     //PRESENTACION
    $smarty = new Smarty;

    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';


//evio de seleccionados clubes

    $smarty->assign('clubSeleccionado',$clubSeleccionado);
    $smarty->assign('divisionSeleccionada',$divisionSeleccionada);
    $smarty->assign('deporteSeleccionado',$deporteSeleccionado);
    $smarty->assign('sexoSeleccionado',$sexoSeleccionado);

//envio de listas clubes

    $smarty->assign('listaClubes',$listaClubes);
    $smarty->assign('listaDeportes',$listaDeportes);
    $smarty->assign('listaSexos',$listaSexos);
    $smarty->assign('listaDivisiones',$listaDivisiones);


//evio de seleccionados selecciones

    $smarty->assign('clubSeleccionadoSel',$clubSeleccionadoSel);
    $smarty->assign('divisionSeleccionadaSel',$divisionSeleccionadaSel);
    $smarty->assign('deporteSeleccionadoSel',$deporteSeleccionadoSel);
    $smarty->assign('sexoSeleccionadoSel',$sexoSeleccionadoSel);


//envio de listas selecciones

    $smarty->assign('listaSelecciones',$listaSelecciones);
    $smarty->assign('listaDeportesSel',$listaDeportesSel);
    $smarty->assign('listaSexosSel',$listaSexosSel);
    $smarty->assign('listaDivisionesSel',$listaDivisionesSel);
    $smarty->assign('jugadoresSinDivision',$jugadoresSinDivision);
    
    $smarty->display('actualizarJugadoresXDivision.tpl');

   }




   // traerFormConsultarClub
   public function mostrarConsultarPaciente($idPaciente)
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
    
    $smarty->assign('idPaciente',$paciente->id);
    $smarty->assign('nombre',$paciente->nombre);
    $smarty->assign('idClub',$division->club);
    $smarty->assign('idDivision',$paciente->division);
    $smarty->assign('apellido',$paciente->apellido);

    $smarty->assign('dni',$paciente->dni);
    $smarty->assign('direccion',$paciente->direccion);
    $smarty->assign('obra',$paciente->obra);

    $smarty->assign('telefono',$paciente->telefono);
    $smarty->assign('nacimiento', date('d-m-Y', strtotime($paciente->nacimiento)));
    $smarty->assign('correo',$paciente->correo);
    $smarty->assign('medico',$paciente->medico);
    $smarty->assign('motivo',$paciente->motivo);
    $smarty->assign('ocupacion',$paciente->ocupacion);



    $smarty->display('consultarPaciente.tpl');
   }

// actualizarClub 
   public function actualizarPaciente($paciente)
   {   
       //ACCESO A DATOS

  $paci = new Paciente('pacientes');

  $paci->load("id=".$paciente->id);  

    $paci->nombre=$paciente->nombre;
    $paci->apellido=$paciente->apellido;
    $paci->dni=$paciente->dni;
    $paci->obra=$paciente->obra;
    $paci->telefono=$paciente->telefono;
    $paci->nacimiento=$paciente->nacimiento;
    $paci->correo=$paciente->correo;
    $paci->medico=$paciente->medico;
    $paci->ocupacion=$paciente->ocupacion;
    $paci->motivo=$paciente->motivo;
    $paci->sexo=$paciente->sexo;
    $paci->direccion=$paciente->direccion;
    $paci->division=$paciente->division;
    $paci->divisionseleccion=$paciente->divisionseleccion;


  //echo("personaContacto: ".$club->personaContacto." correoElectronico: ".$club->correoElectronico);
  $paci->replace();
  

   }
//
   // traerFormConsultarClub
   public function imprimirPaciente($idPaciente)
   {

       //ACCESO A DATOS
    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);
     //PRESENTACION
    
    $repo = new Reportes();

    $repo->imprimirPaciente($paciente);
   }

   

      public function mostrarPacienteSeleccionado($idPaciente)
   {
       //ACCESO A DATOS
    $paciente = new Paciente('pacientes');
    $paciente->load("id=".$idPaciente);

    $division = new Division('divisiones');
    $division->load("id=".$paciente->division);

    $club = new Club('clubes');
    $club->load("id=".$division->club);    
    
     //PRESENTACION
    $smarty = new Smarty;
    $smarty->template_dir = 'vistas/smarty/templates/';
    $smarty->compile_dir = 'vistas/smarty/templates_c/';
    $smarty->config_dir = 'vistas/smarty/configs/';
    $smarty->cache_dir = 'vistas/smarty/cache/';
    

    $nombrePaciente=$paciente->apellido." ".$paciente->nombre;


    $smarty->assign('idPaciente',$paciente->id);
    $smarty->assign('nombrePaciente',$nombrePaciente);
    $smarty->assign('nombreDivision',$division->nombre);
    $smarty->assign('nombreClub',$club->nombre);


    $smarty->display('pacienteSeleccionado.tpl');
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

                                    $this->mostrarTablaPacientes();

                                    break;
                          }
    case 'traerPacientes': {
                            $this->traerPacientesJson();
                            break;
                          }

                          
    case 'mostrarActualizarPaciente': {
                            $this->mostrarActualizarPaciente($this->request['idPaciente']);
                            break;
                          }

  

  case 'mostrarMigrarJugadores': {
                            $this->mostrarMigrarJugadores();
                            break;
                          }


    case 'eliminarPaciente': {
                            $this->eliminarPaciente($this->request['idPaciente']);
                            $this->mostrarTablaPacientes($this->request['idClub'],$this->request['idDivision'],NULL);

                            break;
                          }
    case 'seleccionPaciente': {

                            $this->mostrarPacienteSeleccionado($this->request['idPaciente']);
                            break;
                          }

                          

    case 'btnMostrarNuevoPaciente': {
                                      $clubes=$this->traerClubes();
                                      $selecciones=$this->traerSelecciones();

                                      $this->cargarFormInical($clubes,$selecciones);

                                break;
                                }

    case 'buscarDeportesXClub': {
                                      $deportes=$this->traerDeportesXClub($_REQUEST['idClub']);

                                      $this->cargarSelectorDeportes($deportes);


                                break;
                                }   
    case 'buscarDeportesXClubMigracion': {
                                      

                                      $deportes=$this->traerDeportesXClub($_REQUEST['idClub']);

                                      echo json_encode($deportes);
                                      //$this->cargarSelectorDeportesMigracion($deportes);


                                break;
                                } 

    case 'migrarJugadores': {
                                      
                              $jugadores=$this->request['jugadorMigracion'];
                              $divisionDestino=$this->request['seleccionDivisionesDestino'];
                              $divisionOrigen=$this->request['seleccionDivisionesOrigen'];

                              //echo($divisionDestino." ".$divisionOrigen);
                              $this->migrarJugadores($jugadores,$divisionDestino,$divisionOrigen);


                                break;
                                }  
  

  
    
    
    
    case 'buscarSexoXDeportesXClub': 
                                  {
                                  
                                  $sexos=$this->traerSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte']);

                                  $this->cargarSelectorSexo($sexos);


                                break;
                                }
                                
    case 'buscarSexoXDeportesXClubMigracion': 
                                  {
                                  
                                  $sexos=$this->traerSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte']);

                                  echo json_encode($sexos);
                                  //$this->cargarSelectorSexoMigracion($sexos);


                                break;
                                }
    case 'buscarSexoXDeportesXClubMigracionDestino': 
                                  {
                                  
                                  $sexos=$this->traerSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte']);

                                  $this->cargarSelectorSexoMigracionDestino($sexos);


                                break;
                                }
    
    case 'buscarSexoXDeportesXSeleccion': 
                                  {
                                  
                                  $sexos=$this->traerSexoXDeporteXSeleccion($_REQUEST['idSeleccion'],$_REQUEST['deporte']);

                                  $this->cargarSelectorSexoSelecciones($sexos);


                                break;
                                }

    
    case 'buscarDivisionesXSexoXDeportesXClub': 
                                  {
                                  
                                  $divisiones=$this->traerDivisionesXSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte'],$_REQUEST['sexo']);

                                  $this->cargarSelectorDivisiones($divisiones);


                                break;
                                }


    case 'buscarDivisionesXSexoXDeportesXClubMigracion': 
                                  {
                                  
                                  $divisiones=$this->traerDivisionesXSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte'],$_REQUEST['sexo']);

                                  echo json_encode($divisiones);
                                 // $this->cargarSelectorDivisionesMigracion($divisiones);


                                break;
                                }


    case 'buscarDivisionesXSexoXDeportesXClubMigracionDestino': 
                                  {
                                  
                                  $divisiones=$this->traerDivisionesXSexoXDeporteXClub($_REQUEST['idClub'],$_REQUEST['deporte'],$_REQUEST['sexo']);

                                  $this->cargarSelectorDivisionesMigracionDestino($divisiones);


                                break;
                                }

    case 'buscarPacientesPorCriterios': 
                                  {
                                  
                                  $pacientes=$this->traerPacientesPorCriterios($_REQUEST['pacienteNombre'],$_REQUEST['pacienteDni'],$_REQUEST['pacienteSexo'],
                                    $_REQUEST['club'],$_REQUEST['division'],$_REQUEST['deporte'],$_REQUEST['sexoDivision']);

                                  $this->mostrarTablaResultadoPacientes($pacientes);

                                break;
                                }

    case 'buscarJugadoresXDivision': 
                                  {
                                  
                                  $juga=$this->traerPacientesXDivision($_REQUEST['division']);

                                  echo json_encode($juga);

                                  //$this->cargarListadoJugadores($jugadores);


                                break;
                                }

    case 'buscarJugadoresXClubXDeporteXSexo': 
                                  {
                                  
                                  $juga=$this->traerPacientesXClubXDeporteXSexo($_REQUEST['club'],$_REQUEST['deporte'],$_REQUEST['sexo']);

                                  echo json_encode($juga);

                                  //$this->cargarListadoJugadores($jugadores);


                                break;
                                }
    case 'buscarJugadoresXClubXDeporte': 
                                  {
                                  
                                  $juga=$this->traerPacientesXClubXDeporte($_REQUEST['club'],$_REQUEST['deporte']);

                                  echo json_encode($juga);

                                  //$this->cargarListadoJugadores($jugadores);


                                break;
                                }
    case 'buscarJugadoresXClub': 
                                  {
                                  
                                  $juga=$this->traerPacientesXClub($_REQUEST['club']);

                                  echo json_encode($juga);

                                  //$this->cargarListadoJugadores($jugadores);


                                break;
                                }
    

    case 'buscarDivisionesXSexoXDeportesXSeleccion': 
                                  {
                                  
                                  $divisiones=$this->traerDivisionesXSexoXDeporteXSeleccion($_REQUEST['idSeleccion'],$_REQUEST['deporte'],$_REQUEST['sexo']);

                                  $this->cargarSelectorDivisionesSelecciones($divisiones);


                                break;
                                }


    case 'buscarDeportesXSeleccion': {
                                      $deportes=$this->traerDeportesXClub($_REQUEST['idSeleccion']);

                                      $this->cargarSelectorDeportesSelecciones($deportes);


                                break;
                                }  





    case 'buscarClubesYDivisiones': {

                                if (isset($_REQUEST['idClub'])) {$idClub=$_REQUEST['idClub'];}
                                else {$idClub="ninguno";}
                                
                                if (isset($_REQUEST['idDivision'])) {$idDivision=$_REQUEST['idDivision'];}
                                else {$idDivision="ninguno";}                              
                                
                                $listaClubes = $this->traerClubes();

                                $this->buscarDivisionesPorClub2($idClub,$idDivision,$listaClubes);

                                //$this->mostrarNuevoDivision($listaClubes);
                                break;

    }

    

        case 'buscarSeleccionesYDivisiones': {

                                if (isset($_REQUEST['idSeleccion'])) {$idSeleccion=$_REQUEST['idSeleccion'];}
                                else {$idSeleccion="ninguno";}
                                
                                if (isset($_REQUEST['idSelDivision'])) {$idSelDivision=$_REQUEST['idSelDivision'];}
                                else {$idSelDivision="ninguno";}                              
                                
                                $listaClubes = $this->traerSelecciones();

                                $this->buscarDivisionesPorClub3($idSeleccion,$idSelDivision,$listaClubes);

                                //$this->mostrarNuevoDivision($listaClubes);
                                break;

    }

                          
    case 'btnActualizarPaciente': {

                         

                                $paci = new Paciente('pacientes');
                                $paci->id=$this->request['idPaciente'];
                                $paci->nombre=$this->request['nombre'];
                                $paci->apellido=$this->request['apellido'];
                                $paci->dni=$this->request['dni'];
                                $paci->obra=$this->request['obra'];
                                $paci->telefono=$this->request['telefono'];
                                $paci->nacimiento=$this->request['nacimiento'];
                                $paci->correo=$this->request['correo'];
                                $paci->medico=$this->request['medico'];
                                $paci->ocupacion=$this->request['ocupacion'];
                                $paci->motivo=$this->request['motivo'];
                                $paci->direccion=$this->request['direccion'];
                                $paci->sexo=$this->request['sexo'];


                                if (isset($_REQUEST['seleccionDivisionesModPacientes']) && !($_REQUEST['seleccionDivisionesModPacientes']=='ninguno')) 
                                                                {

                                                                  $paci->division=$this->request['seleccionDivisionesModPacientes'];
                                                                }
                                else {$paci->division=NULL;}
                                
                                if (isset($_REQUEST['seleccionDivisionesSeleccionModPacientes']) && !($_REQUEST['seleccionDivisionesSeleccionModPacientes']=='ninguno')) 
                                                    {
                                  $paci->divisionseleccion=$_REQUEST['seleccionDivisionesSeleccionModPacientes'];
                                                    }
                                else {$paci->divisionseleccion=NULL;}


                                $this->actualizarPaciente($paci);


                                //$this->mostrarTablaPacientes(NULL,NULL,NULL);

                                break;
                                }  

    case 'btnCrearPaciente': {

                                $this->crearPaciente();
                                //$this->mostrarTablaPacientes($this->request['seleccionClubesModPacientes'],$this->request['seleccionDivisionesModPacientes'],NULL);
                                break;
                                } 
    case 'consultarPaciente': {     
                                //echo("idPaciente : ".$this->request['idPaciente']);
                                $this->mostrarConsultarPaciente($this->request['idPaciente']);
                                break;
                                }
    case 'imprimirConsultaPaciente': {     
                                $this->imprimirPaciente($this->request['idPaciente']);
                                break;
                                }

    case 'buscarDivisionesPorClub': {  
 
                                //$listaClubes = $this->traerClubes();
                                //$this->buscarDivisionesPorClub($this->request['idClub'],$listaClubes);
                                break;
                                }

    case 'buscarPacientesPorCadena': {     
 

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
