

/**
 * Created by liuyicong on 2017/5/24.
 */
/**
 * Created by bony on 2017/4/22.
 */
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
    var ob3=document.getElementById('a3');
    var ob4=document.getElementById('a4');
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

        // //用正则表达式验证邮箱格式
        // check(document.getElementById("mail").value);
        // function check( email_address )
        // {
        //     var regex = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
        //     if ( regex.test( email_address ) )
        //     {
        //
        //         var user_name = email_address.replace( regex, "$1" );
        //         var domain_name = email_address.replace( regex, "$2" );
        //         var alert_string = "您输入的电子邮件地址合法\n\n";
        //         alert_string += "用户名：" + user_name + "\n";
        //         alert_string += "域名：" + domain_name;
        //         window.alert( alert_string );
        //         return true;
        //     }
        //     else
        //     {
        //         window.alert( "您输入的电子邮件地址不合法" );
        //         return false;
        //     }
        // }
        //保存用户的个人信息：名字和邮箱
        // var name=document.getElementById("name");
        // var mail=document.getElementById("mail");
        // if(name.value){localStorage.setItem("data",name.value);}
        // if(mail.value){localStorage.setItem("data2",mail.value);}

        var msg=localStorage.getItem("data");
        var msg2=localStorage.getItem("data2");
        var k=new Array();
        //存储用户的答案
        var obj=document.getElementsByTagName("input");
        for(var i=0;i<obj.length;i++){
            if(obj[i].checked){
                localStorage.setItem(i,obj[i].value);
                k[i]=localStorage.getItem(i);
                alert(obj[i].value);
            }
        }




        alert("最终成绩为"+t+"分");
        oresults.innerHTML="最终成绩为"+t+"分";
        // oresults.innerHTML="您的答案为"+k[i];

    }
    obutton.onclick=sum;
}

