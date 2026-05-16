function inscription(){
    return nom()&& adresse()&& date_nais() && genre() && mdp() && remdp();

}
function nom(){
    ch=document.getElementById('nom').value
    ch=ch.toUpperCase()
    if(!(alpha(ch) || ch.indexOf(" ")==-1 || ch[0]==" " || ch[ch.length-1]=="" )){
        alert (" verifier la saisie")
        return false;

    }
    else{
        return true

    }    
}
function adresse(){
    email=document.getElementById('mail').value
    if(!(email=="" || email.length>=50 || email.substring(email.length-4,email.length)==".tn")){
        alert ("verifier l'email")
        return false;

    }
    else{
        return true;
    }
}
function date_nais(){
    date=document.getElementById('datn').value
    d=new Date(date)
    if(!(d.getFullYear()>=1950 && d.getFullYear()<=2006)){
        alert("verifier la date de naissance")
        return false;   
    }
    else{
        return true;
    }
}
function genre(){
    genre=document.getElementsByName('radio').value
    if(!(genre[0].checked || genre[1].checked)){
        alert("veuillez choisir le genre")
        return false;
    }
    else{
        return true;
    }
}
function mdp(){
    mdp=document.getElementById('mdp').value
    if(!(mdp.length=6 && mdp.IndexOf(" ",0)==-1)){
        alert("verifier mdp")
        return false;
    }
    else{
        return true;
    }
}
function remdp(){
    remdp=document.getElementById('rmdp').value
    mdp=document.getElementById('mdp').value
    return remdp==mdp;
}

function affectation(){
    id=document.getElementById('idMem').value
    par=document.getElementById('numPar').value
    if(!(Number(id)>=1 && Number(par)>=1 && mdp()==true && jardin()==true)){
        alert ("verifier la saisie")
        return false;
    }
    else{
        return true;
    }
}
function jardin(){
    jar=document.getElementById('idJar').selectedIndex
    if( jat==-1){
        alert ("verifier jar")
        return false;
    }
    else{
        return true;
    }
}