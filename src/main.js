function getValues(){
    var username = document.getElementById("username").value;
    var comment = document.getElementById("comment").value;
    var ratingValue = "";
    var ratings = document.getElementsByName("rating");
    for(var counter = 0; counter < ratings.length; counter++){
        if(ratings[counter].checked == true){
            ratingValue = ratings[counter].value;
        }else{
            continue;
        }
    }
    return [username,comment,ratingValue];
}
window.onload = function(){
    var url1 = "http://localhost/back.php?type=get";
    var xhr1 = new XMLHttpRequest();
    xhr1.open("GET",url1);
    xhr1.onload = function(){
        if(xhr1.status == 200){
            var json1 = JSON.parse(xhr1.responseText);
              for(var i = 0; i<json1.length; i++){
               var li1 = document.createElement("li");
               var p11 = document.createElement("p");
               var p21 = document.createElement("p");
               var p31 = document.createElement("p");
               p11.innerText ="Kullanıcı Adı: "+json1[i].username;
               p21.innerText = "Yorumu: "+json1[i].comment;
               p31.innerText = "Puan (1-5): "+json1[i].rating;
               li1.appendChild(p11);
               li1.appendChild(p21);
               li1.appendChild(p31);
               document.getElementsByClassName("comments")[0].appendChild(li1);
        }
        }else{
            console.log("Hata");
        }
    }
    xhr1.send();
}
document.getElementById("submit").onclick = function(){
    var data = getValues();
    var params = "username="+data[0]+"&comment="+data[1]+"&rating="+data[2];
    var url = "http://localhost/back.php";
    var xhr = new XMLHttpRequest();
    xhr.open("POST",url);
    xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xhr.onload = function(){
        if(xhr.status == 200){
            var json = JSON.parse(xhr.responseText);
            if(json.request == "success"){
               var li = document.createElement("li");
               var p1 = document.createElement("p");
               var p2 = document.createElement("p");
               var p3 = document.createElement("p");
               p1.innerText ="Kullanıcı Adı: "+data[0];
               p2.innerText = "Yorumu: "+data[1];
               p3.innerText = "Puan (1-5): "+data[2];
               li.appendChild(p1);
               li.appendChild(p2);
               li.appendChild(p3);
               document.getElementsByClassName("comments")[0].appendChild(li);
            }
        }else{
            console.log("Hata");
        }
    }
    xhr.send(params);
};