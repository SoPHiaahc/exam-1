

/**
 * Created by liuyicong on 2017/5/24.
 */
/**
 * Created by bony on 2017/4/22.
 */

CharacterData.parse
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

window.onload=function(){
    //答案
    var oa1=document.getElementById('a1');
    var ob2=document.getElementById('c2');
    var ob3=document.getElementById('d3');
    var ob4=document.getElementById('a4');
    var oc5=document.getElementById('d5');

    var obutton=document.getElementById('abutton');
    var oresults=document.getElementById('results');

//用 JavaScript 写服务器端连接数据库的代码示例

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
        var username=user.getUserData();



        alert("最终成绩为"+t+"分");
        oresults.innerHTML="最终成绩为"+t+"分";
       // addUser(username,t);
        // oresults.innerHTML="您的答案为"+k[i];

    }

    obutton.onclick=sum;
}

