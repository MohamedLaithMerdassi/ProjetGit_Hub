<?php
$con=mysqli_connect("localhost","root","","bd_jardin")
$idMem=$POST_["idMem"]
$mdp=$POST_["mdp"]
$par=$POST_["numPar"]
$jar=$POST_["idJar"]
$req="SELECT * FROM membre WHERE idMem="$idMem" AND mdp="$mdp"";
$res=mysqli_query($con,$req)
if(mysqli_num_rows($res)=0){
    echo "Membre inexistant"
}

?>