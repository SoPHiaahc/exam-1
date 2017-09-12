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
    <h2>>LEVEL 3 考考你的政治基础知识！</h2>
    <input name="s" type="button" value="开始答题" onclick="startclock()">
    <input name="s" type="button" value="暂停答题" onclick="pauseclock()">
    <input name="showtime" style="color: #ff0000; width:200px;" id="showtime" type="text" value="0时0分0秒">


    <table cellSpacing=0 cellPadding=0 align=center width="960px">
        <tr>
            <td colSpan=3 id="banner">政治基础知识小调查！</td>
        </tr>
    </table>

    <table width="960px" align="center" bgcolor="#FAFAFA">
        <form>

            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>1.通货紧缩是指经济运行中出现的物价总水平持续下跌的现象，若长期存在，可能会导致 （ ）?  </b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a1" id="a1" value="A.商品生产发生困难"   /> A.商品生产发生困难<BR>

                            <input type="radio" name="a1" id="b1" value="B.市场交易日趋繁荣"  /> B.市场交易日趋繁荣 <BR>

                            <input type="radio" name="a1" id="c1" value="C.人民消费水平提高"  /> C.人民消费水平提高 <BR>

                            <input type="radio" name="a1" id="d1" value="D.居民收入不断增加"  /> D. 居民收入不断增加 <BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>






            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>2、近年来，电梯事故频发，专家指出，电梯设备从生产、运行、维修保养到监督管理，任何一个链条的疏漏，都可能埋下事故隐患。这就需要（ ）?  </b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a2" id="a2" value="A.国家相关职能部门制定标准，加强维修保养 "   /> A.国家相关职能部门制定标准，加强维修保养 <BR>

                            <input type="radio" name="a2" id="b2" value="B.电梯生产企业增强责任意识，提高产品质量"  /> B.电梯生产企业增强责任意识，提高产品质量 <BR>

                            <input type="radio" name="a2" id="c2" value="C.电梯使用单位落实安全制度，加强检验检测 "  /> C.电梯使用单位落实安全制度，加强检验检测  <BR>

                            <input type="radio" name="a2" id="d2" value="D.居民百姓规范自身乘梯行为，完善问责制度"  />D. 居民百姓规范自身乘梯行为，完善问责制度 <BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>


            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>3.基于“宽带中国”战略的实施和4G网络的建设，我国的信息消费已成为居民消费中增速最快的领域，预计2015年信息消费规模将超3.2万亿元。这说明（ ）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a3" id="a3" value="A.生产决定消费的质量" /> A.生产决定消费的质量<BR>

                            <input type="radio" name="a3" id="b3" value="B.消费促进生产发展"  /> B.消费促进生产发展<BR>

                            <input type="radio" name="a3" id="c3" value="C.生产为消费创造动力"  /> C.生产为消费创造动力<BR>

                            <input type="radio" name="a3" id="d3" value="D.消费影响生活水平"  /> D.消费影响生活水平 <BR>

                        </td>
                    </tr>
                </table>
                </td>
            </tr>




            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>4.浙江依托财政支持，在全省范围内发放1亿元科技创新劵，支持中小微企业创业创新，共计约有50万家企业受惠。这表明（）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a4" id="a4" value="A.财政能够促进经济平稳运行" /> A.财政能够促进经济平稳运行<BR>

                            <input  type="radio" name="a4" id="b4" value="B.财政可以促进资源合理配置"  /> B.财政可以促进资源合理配置<BR>

                            <input type="radio" name="a4" id="c4" value="C.中小微企业成为我省经济的主导力量" /> C.中小微企业成为我省经济的主导力量<BR>

                            <input type="radio" name="a4" id="d4" value="D.创业创新离不开国家行政手段的调控 " /> D.创业创新离不开国家行政手段的调控 <BR>


                        </td>
                    </tr>
                </table>
                </td>
            </tr>

            <tr onMouseOver="this.bgColor='#F0F7FF'" onMouseOut="this.bgColor='#FAFAFA'">
                <td colspan="4"><table width="98%" cellpadding="0" cellspacing="5" align="center">
                    <tr>
                        <td><b>5. 《庄子·养生主》中曾说“吾生也有涯，而知也无涯。以有涯随无涯，殆已！”，这一观    点从哲学基本问题层面上分析（）？</b></td>
                    </tr>
                    <tr>
                        <td>

                            <input type="radio" name="a5" id="a5" value="A.承认了存在是世界的本原" /> A.承认了存在是世界的本原<BR>

                            <input  type="radio" name="a5" id="b5" value="B.承认了思维是世界的本原 "  /> B.承认了思维是世界的本原 <BR>

                            <input type="radio" name="a5" id="c5" value="C.肯定了思维与存在具有同一性" /> C.肯定了思维与存在具有同一性<BR>

                            <input type="radio" name="a5" id="d5" value="D.否定了思维与存在具有同一性 " /> D.否定了思维与存在具有同一性 <BR>

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
        <input type="hidden"    name="text" value="text3" >
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