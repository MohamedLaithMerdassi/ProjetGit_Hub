<?php
$con=mysqli_connect("localhost","root","","bd_jardin")
$nom=$POST_["nom"]
$mail=$POST_["mail"]
$genre=$POST_["radio"]
$date=$POST_["datn"]
$mdp=$POST_["mdp"]
$req="SELECT * FROM membre WHERE email='$mail'";
$res=mysqli_query($con,$req)
if(mysqli_num_rows($res)!=0){
    echo "Adresse email déjà utilisée!"
}
else{
    $req1="INSERT INTO membre VALUES ("","$nom","$genre","$date","$mail","$mdp")";
    $res1=mysqli_query($con,$req1)
    $req2="SELECT idMem FROM membre WHERE email="$mail"";
    $res2=mysqli_query($con,$req2)
    echo "Inscription réussie"
}
mysqli_close()



?>