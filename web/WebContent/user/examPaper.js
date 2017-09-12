


var se,m=0,h=0,s=0,ss=1;
function second(){
    if((ss%200)==0){s+=1;ss=1;}
    if(s>0&&(s%60)==0){m+=1;s=0;}
    if(m>0&&(m%60)==0){h+=1;m=0;}
    t=h+"时"+m+"分"+s+"秒";
    document.getElementById("showtime").value=t;
    ss+=1;
}

function startclock(){se=setInterval("second()",1);}
function pauseclock(){clearInterval(se);}
function stopclock(){clearInterval(se); ss=1;m=h=s=0;}

window.onload=function check(){
    //答案
    var oa1=document.getElementById('b1');
    var ob2=document.getElementById('b2');
    var ob3=document.getElementById('c3');
    var ob4=document.getElementById('b4');
    var oc5=document.getElementById('a5');

    var obutton=document.getElementById('abutton');
    var oresults=document.getElementById('results');
    function sum(){
        var t=0;
        if(oa1.checked)t+=20;
        if(ob2.checked)t+=20;
        if(ob3.checked)t+=20;
        if(ob4.checked)t+=20;
        if(oc5.checked)t+=20;


        clearInterval(se);

      
        var msg=localStorage.getItem("data");
        var msg2=localStorage.getItem("data2");
        var k=new Array();
        //存储用户的答案
        var obj=document.getElementsByTagName("input");
        for(var i=0;i<obj.length;i++){
            if(obj[i].checked){
                localStorage.setItem(i,obj[i].value);
                k[i]=localStorage.getItem(i);
                //alert(obj[i].value);
            }
        }



        alert("最终成绩为"+t+"分");
        oresults.innerHTML="最终成绩为"+t+"分";
        // oresults.innerHTML="您的答案为"+k[i];
    }
    obutton.onclick=sum;
}

