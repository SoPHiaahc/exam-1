<%--
  Created by IntelliJ IDEA.
  User: bony
  Date: 2017/9/10
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <title>最优路径找寻系统 - 二级项目</title>
    <!-- Core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/btn.css" rel="stylesheet" type="text/css">
    <link href="css/font.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="map-wrapper" class="toast_div" style="background-image: url(img/map.jpg); height: 1197px ;width: 1736px;border:1px solid black;position: relative ;float:left; display:inline;">

    <div id="main_trip" style="margin:0 auto; width:400px; height:100px">
        <h1 id="main_tr_start"></h1>
        <h1 id="main_tr_end"></h1>
    </div>

    <!--设置logo 包括透明度和位置 -->
    <img src="img/logo.jpg" style="height: 110px; width: 110px; margin-top: 720px; margin-left: 85px; filter:alpha(opacity=30);-moz-opacity:0.3;opacity:0.3; -khtml-opacity: 0.3;">

    <button id="n1" value="西门" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 421px;top: 972px"> </button>

    <button id="n2" value="知行思源" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 475px;top: 922px"> </button>

    <button id="n3" value="汕大附小" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 712px;top: 987px"> </button>

    <button id="n4" value="网络中心" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 752px;top: 962px"> </button>

    <button id="n5" value="医学院" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 852px;top: 982px"> </button>

    <button id="n6" value="弘毅书院" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 805px;top: 940px"> </button>

    <button id="n7" value="研究中心" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 865px;top: 930px"> </button>

    <button id="n8" value="工会" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 787px;top: 842px"> </button>

    <button id="n9" value="教工宿舍" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 655px;top: 695px"> </button>

    <button id="n10" value="音乐厅" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 531px;top: 666px"> </button>

    <button id="n11" value="789校医院" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 568px;top: 638px"> </button>

    <button id="n12" value="游泳池" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 573px;top: 570px"> </button>

    <button id="n13" value="ACC" class="button button-glow  button-circle button-primary button-jumbo button-small " style="position: absolute;left: 540px;top: 297px"> </button>

    <!--上面这个，主要修改value＝"名称"，id＝"n序号"，和left：xxx px 和top， left是指相对左边距离，top相对上边，数字是慢慢试出来的，改一次刷新一次网页，我复制粘贴大于25的，25以下的你复制-->

    <button id="n14" value="艺术学院" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 603px;top: 348px"> </button>

    <button id="n15" value="水库" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 607px;top: 400px"> </button>

    <button id="n16" value="别墅区" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 685px;top: 387px"> </button>

    <button id="n17" value="旧体育馆" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 670px;top: 484px"> </button>

    <button id="n18" value="A-F宿舍" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 700px;top: 520px"> </button>

    <button id="n19" value="田径场" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 670px;top: 580px"> </button>

    <button id="n20" value="篮球场" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 720px;top: 610px"> </button>

    <button id="n21" value="二三饭" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 749px;top: 580px"> </button>

    <button id="n22" value="科技楼" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 854px;top: 592px"> </button>

    <button id="n23" value="理科楼" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 963px;top: 612px"> </button>

    <button id="n24" value="涂鸦墙" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1030px;top: 656px"> </button>

    <button id="n25" value="行政中心" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 803px;top: 654px"> </button>

    <button id="n26" value="大礼堂" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 879px;top: 754px"> </button>

    <button id="n27" value="广以楼" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 943px;top: 736px"> </button>

    <button id="n28" value="DG教学楼" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1029px;top: 750px"> </button>

    <button id="n29" value="气膜和风洞" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1135px;top: 765px"> </button>

    <button id="n30" value="G和交流宿舍" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1215px;top: 815px"> </button>

    <button id="n31" value="四饭" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1120px;top: 815px"> </button>

    <button id="n32" value="至诚书院" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1137px;top: 868px"> </button>

    <button id="n33" value="E教学楼" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1016px;top: 840px"> </button>

    <button id="n34" value="校训碑" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 940px;top: 830px"> </button>

    <button id="n35" value="图书馆" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1016px;top: 922px"> </button>

    <button id="n36" value="真理钟" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1058px;top: 973px"> </button>

    <button id="n37" value="东门" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1168px;top: 903px"> </button>

    <button id="n38" value="新体育馆" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1274px;top: 1061px"> </button>

    <button id="n39" value="校门" class="button button-glow button-circle button-primary button-jumbo button-small " style="position: absolute;left: 1145px;top: 1081px"> </button>

    <a class="button button-3d button-square button-primary button-jumbo button-small" style="left:1340px;top:-200px; display:inline; width: 100px;" href="./">重新规划</a>

    <%--<button class="button button-3d button-square button-primary button-jumbo button-small" style="left:1340px;top:-100px; display:inline; width: 100px;" id="click_it">找寻路径</button>--%>

</div>

<script src="js/jquery-2.2.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jq.js"></script>
<script src="js/render_button.js"></script>
<script>

    $(document).ready(function(){
        $("#click_it").click(function(){
            window.location.reload();

        });
    });



    //a_num从1开始，start_POINT －1 了从0开始
    all_c = 0;
    start_point = 0-1;//起点
    end_point = 0-1;//终点

    a_num = [];
    for(j=1;j<=39;j++){
        a_num[j]=0
    }


    var btn_obj = document.getElementsByTagName('button')
    for (var i = 0 ; i <=btn_obj.length; i++) {
        (function(){
            var k = i+1;
            var temp_id = "#n"+k;
            btn_obj[i].onclick = function() {
                if(a_num[k] == 0){
                    if(all_c<2){
                        $(temp_id).removeClass("button-primary")
                        $(temp_id).addClass("button-action")
                        $(temp_id).removeClass("button-small")
                        $(temp_id).addClass("button-large")
                        $(temp_id).html(places[k-1])
                        a_num[k] += 1;
                        all_c += 1;
                        temp_end_tr = k-1;
                        if(all_c == 1){
                            start_point = k-1;
                            $("#main_tr_start").html("起点为："+places[k-1])
                        }
                        if(all_c == 2){
                            end_point = k-1;
                            $("#main_tr_end").html("终点为："+places[k-1])

                            postPlaceInfo();
                            //方法
                        }
                    }else{
                        //非起始选定
                        $(temp_id).removeClass("button-primary")
                        $(temp_id).addClass("button-caution")
                        $(temp_id).removeClass("button-small")
                        $(temp_id).addClass("button-large")
                        $(temp_id).html(places[k-1])
                        a_num[k] += 1;
                        all_c += 1;

                    }

                }else{
                    if(temp_id ==("#n"+(parseInt(start_point)+1))||temp_id ==("#n"+(parseInt(end_point)+1))){
                        alert("无法取消始终点，请重新规划")
                    }else{
                        //非起始取消
                        $(temp_id).removeClass("button-caution")
                        $(temp_id).addClass("button-primary")
                        $(temp_id).removeClass("button-large")
                        $(temp_id).addClass("button-small")
                        $(temp_id).html(" ")
                        a_num[k] -=1;
                        all_c -=1;
                    }


                }
            }
        })();
    }


    function postPlaceInfo(){
        $.ajax({
            url: "/LocationServlet",
            data: {
                start: 39-start_point,
                route: [],
                end: 39-end_point
            },
            type: 'POST',
            dataType: 'json',
            success: function(data){
                console.log(data)
            },
            error: function(){

            }
        });
    }

    function showtoastFromDivbottom(msg){
        $('.toast_div').toast({
            content:"这里是"+msg,
            duration:3000,
            isCenter:false,
            animateIn:'bounceIn-hastrans',
            animateOut:'bounceOut-hastrans',
        });
    }

</script>
</body>
</html>
