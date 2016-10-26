<?php

session_start();
 require_once('controller/controllerClubes.php');
 require_once('controller/controllerDivisiones.php');
 require_once('controller/controllerPacientes.php');
 require_once('controller/controllerAnamnesis.php');
 require_once('controller/controllerMedicionesSimples.php');
 require_once('controller/controllerEstudioLaboratorio.php');
 require_once('controller/controllerRecordatorio24.php');
 require_once('controller/controllerMedicionesAntropometricas.php');
 require_once('controller/controllerUsuario.php');
 

 
 
if (!empty($_SESSION['user'])){
    
  if (isset($_REQUEST['modulo'])) 
    {
        
    switch ($_REQUEST['modulo']) 
    {
        case 'clubes' : {

                        $mvc = new controllerClubes($_REQUEST);

                        $mvc->router();

                        break;
                        }

        case 'divisiones' : {

                                $mvc = new controllerDivisiones($_REQUEST);

                                $mvc->router();


                                break;
                              }

        case 'pacientes' : {

                                $mvc = new controllerPacientes($_REQUEST);

                                $mvc->router();

                                break;
                              }

        case 'anamnesis' : {

                                $mvc = new controllerAnamnesis($_REQUEST);

                                $mvc->router();

                                break;
                              }
        case 'medicionesSimples' : {

                                $mvc = new controllerMedicionesSimples($_REQUEST);

                                $mvc->router();

                                break;
                              }
        
        case 'medicionesAntropometricas' : {

                                $mvc = new controllerMedicionesAntropometricas($_REQUEST);

                                $mvc->router();

                                break;
                              }                              
        case 'estudioLaboratorio' : {


                                $mvc = new controllerEstudioLaboratorio($_REQUEST);

                                $mvc->router();


                                break;
                              }
        case 'recordatorio24' : {


                                $mvc = new controllerRecordatorio24($_REQUEST);

                                $mvc->router();



                                break;
                              }                
      case 'usuarios' : {


                                $mvc = new controllerUsuario($_REQUEST);

                                $mvc->router();



                                break;
                              }                              
        
    }
}

else {
    
    $_REQUEST['modulo']="clubes";
    $mvc = new controllerClubes($_REQUEST);
                  $mvc->router();
}


}
else{
    
  echo "<script language='javascript'>window.location='login.php'</script>"; 

}



?>
