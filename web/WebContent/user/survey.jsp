<%--
  Created by IntelliJ IDEA.
  User: liuyicong
  Date: 2017/6/10
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>level 2</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link href="examPaper.css" rel="stylesheet" type="text/css">


</head>


<body>


<div class="content">
    <h2>LEVEL 2 考考你的计算机常识！</h2>
    <input name="s" type="button" value="开始答题" onclick="startclock()">
    <input name="s" type="button" value="暂停答题" onclick="pauseclock()">
    <input name="showtime" style="color: #ff0000; width:200px;" id="showtime" type="text" value="0时0分0秒">


    <table cellSpacing=0 cellPadding=0 align=center width="960px">
        <tr>
            <td colSpan=3 id="banner">历史知识小调查！</td>
        </tr>
    </table>

    <table width="960px" align="center" bgcolor="#FAFAFA">
        <form>

            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>1.第二代电子计算机使用的电子器件是（ ）?  </b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a1" id="a1" value="A.电子管"   /> A.电子管<BR>

                            <input type="radio" name="a1" id="b1" value="B.晶体管"  /> B.晶体管 <BR>

                            <input type="radio" name="a1" id="c1" value="C.集成电路"  /> C.集成电路 <BR>

                            <input type="radio" name="a1" id="d1" value="D.超大规模集成电路"  /> D. 超大规模集成电路 <BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>






            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>2、目前，制造计算机所用的电子器件是（ ）?  </b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a2" id="a2" value="A.电子管"   /> A.电子管<BR>

                            <input type="radio" name="a2" id="b2" value="B.晶体管"  /> B.晶体管 <BR>

                            <input type="radio" name="a2" id="c2" value="C.集成电路"  /> C.集成电路 <BR>

                            <input type="radio" name="a2" id="d2" value="D.超大规模集成电路"  />D. 超大规模集成电路 <BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>


            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>3.计算机病毒是（ ）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a3" id="a3" value="A.带细菌的磁盘" /> A.带细菌的磁盘<BR>

                            <input type="radio" name="a3" id="b3" value="B.已损坏的磁盘"  /> B.已损坏的磁盘<BR>

                            <input type="radio" name="a3" id="c3" value="C.具有破坏性的特制程序"  /> C.具有破坏性的特制程序<BR>

                            <input type="radio" name="a3" id="d3" value="D.被破坏的程序"  /> D.被破坏的程序 <BR>

                        </td>
                    </tr>
                </table>
                </td>
            </tr>



            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>4.将十进制数97转换成无符号二进制整数等于（）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a4" id="a4" value="A.1011111" /> A.1011111<BR>

                            <input  type="radio" name="a4" id="b4" value="B.1100001"  /> B.1100001<BR>

                            <input type="radio" name="a4" id="c4" value="C.1101111" /> C.1101111<BR>

                            <input type="radio" name="a4" id="d4" value="D.1100011" /> D.1100011<BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>


            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>5. 与十六进制数AB等值的十进制数是（）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a5" id="a5" value="A.171" /> A.171<BR>

                            <input  type="radio" name="a5" id="b5" value="B.173"  /> B.173<BR>

                            <input type="radio" name="a5" id="c5" value="C.175" /> C.175<BR>

                            <input type="radio" name="a5" id="d5" value="D.177" /> D.177<BR>

                        </td>
                    </tr>
                </table>
                </td>
            </tr>


        </form>
    </table>

    <form  id="Check" action="<c:url value='/CheckServlet' />" method="post">
        <input name="s" type="submit"  id="abutton" value="提交问卷" >
        <input type="text" id="grade"   name="grade" >
        <input type="hidden"    name="text" value="text2" >
        <p id="results"></p>
    </form>
</div>


</body>

</html>

<script type="text/javascript">



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
            document.getElementById("grade").value=t;
            oresults.innerHTML="最终成绩为"+t+"分";
            href="CheckServlet?goalNum"+document.all('t').value
            // oresults.innerHTML="您的答案为"+k[i];
        }
        obutton.onclick=sum;
    }


</script>