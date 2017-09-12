<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>修改账户信息</title>
	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="skins/default/style.css" />
	<link rel="stylesheet" type="text/css" href="skins/default/other.css" />

	

	<link rel="stylesheet" href="inc/js/jquery-validation-engine/css/validationEngine.jquery.css" />

	

	
	
	<script type="text/javascript">
		$(document).ready(function() { 
//
			});


		var tmProfile = {
			doUpdate : function(){
				var formcheck = $("#form_user_load").validationEngine('validate');
				if(formcheck){
					var wcm = window.confirm('修改用户信息需要重新审核，请确认');
					if(!wcm){
						return;
					}
					
					$("#form_user_load").attr("action"," ");
					$("#form_user_load").submit();

				}else{
					return false;
				}
			}
		};
	</script>

	<style type="">li{list-style:none}
	</style>

  </head>
  
<body>

	<div class="tm_main">
    	
		<div class="tm_container">
			<ul class="tm_breadcrumb">
				<li><a href=" Welcome2.jsp">首页</a> <span class="divider">&gt;</span></li>
				<li class="active">修改账户信息</li>
			</ul>
		</div>
        
        <div class="tm_container">
        	<div class="tm_navtitle">
				<h1>修改账户信息</h1>

            </div>
        </div>
        
        <br/>
        <div class="tm_container">
			<form method="post" id="form_user_load">
        	<table width="100%" cellpadding="5" border="0" class="tm_table_form">
            	<tbody>
                    <tr>
                        <th width="120">用户名 : </th>
                        <td>zhangsan</td>
                    </tr>
					<tr>
                        <th>用户密码 : </th>
                        <td>
							<input type="password" id="u_userpass" name="u_userpass" class="tm_txt" size="50" maxlength="30" />
							<span class="tm_tip">不修改请留空</span> 

							<div id="tm_level" class="pw-strength">
								<div class="pw-bar"></div>
								<div class="pw-bar-on"></div>
								<div class="pw-txt">
									<span>弱</span>
									<span>中</span>
									<span>强</span>
								</div>
							</div>

						</td>
                    </tr>
                
                   
					<tr>
                        <th>真实姓名 : </th>
                        <td>
							<input type="text" name="u_realname" class="validate[required] tm_txt" size="50" maxlength="30" value="东京" />
							<span class="tm_required">*</span> 
							<span class="tm_tip">填写用户的真实姓名</span>
						</td>
                    </tr>
					<tr>
                        <th>积分 : </th>
                        <td>0</td>
                    </tr>
					
					<tr>
                        <th>联系电话 : </th>
                        <td><input type="text" name="u_phone" class="tm_txt" size="50" maxlength="30" value="110 " /></td>
                    </tr>
					<tr>
                        <th>电子信箱 : </th>
                        <td><input type="text" name="u_email" class="tm_txt" size="50" maxlength="30" value="zhangsan@tom.com" /></td>
                    </tr>
					<tr>
                        <th>联系地址 : </th>
                        <td><input type="text" name="u_address" class="tm_txt" size="50" maxlength="30" value="" /></td>
                    </tr>
					<tr>
                        <th>用户状态 : </th>
                        <td>
							
								正常
								
								
							
						</td>
                    </tr>
					<tr>
                        <th>备注 : </th>
                        <td><input type="text" name="u_remark" class="tm_txt" size="50" value="" maxlength="30" /></td>
                    </tr>
                </tbody>
                
                <tfoot>
                	<tr>
                    	<th></th>
                        <td>
                        	<button class="tm_btn tm_btn_primary" type="button" onclick="">提交</button>
                        </td>
                    </tr>
                </tfoot>
            </table>

			</form>
        </div>
        
        
    </div>

</body>
</html>
