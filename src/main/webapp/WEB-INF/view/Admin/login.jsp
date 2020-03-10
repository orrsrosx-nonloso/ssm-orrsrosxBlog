<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 8]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie8" lang="zh-CN">
<![endif]-->
<!--[if !(IE 8) ]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<!--<![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${options.optionSiteTitle} &lsaquo; 登录</title>

    <link rel="shortcut icon" href="/uploads/2019/7/users.png">
    <link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
    <link rel='stylesheet' id='dashicons-css'  href='/plugin/login/dashicons.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='buttons-css'  href='/plugin/login/buttons.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='forms-css'  href='/plugin/login/forms.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='l10n-css'  href='/plugin/login/l10n.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='login-css'  href='/plugin/login/login.min.css' type='text/css' media='all' />
    <style type="text/css">
        body{
            font-family: "Microsoft YaHei", Helvetica, Arial, Lucida Grande, Tahoma, sans-serif;
            background: url(/uploads/2019/cat1.jpg);
            width:100%;
            height:100%;
        }
        .login h1 a {
            background-size: 220px 50px;
            width: 220px;
            height: 50px;
            padding: 0;
            margin: 0 auto 1em;
        }
        .login form {
            background: #fff;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 2px;
            border: 1px solid #fff;
        }
        .login label {
            color: #000;
            font-weight: bold;
        }

        #backtoblog a, #nav a {
            color: #fff !important;
        }

    </style><meta name='robots' content='noindex,follow' />
    <meta name="viewport" content="width=device-width" />
    <style>
        body {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }
    </style>
</head>
<body  class="login login-action-login wp-core-ui  locale-zh-cn">
<div style="opacity: 0.85;" id="login">

    <%
        String username = "";
        String password = "";
        //获取当前站点的所有Cookie
        Cookie[] cookies = request.getCookies();
        for (int i = 0; i < cookies.length; i++) {//对cookies中的数据进行遍历，找到用户名、密码的数据
            if ("username".equals(cookies[i].getName())) {
                username = cookies[i].getValue();
            } else if ("password".equals(cookies[i].getName())) {
                password = cookies[i].getValue();
            }
        }
    %>
    <style>

    </style>

    <form align="center" style="width: 380px;margin-left:200px; " name="loginForm" id="loginForm"  method="post">

        <p style="text-align: center;">
            <label  for="user_login"><h1 style="text-align:center;font-family: 'Brush Script Std'; "> Orrsrosx</h1> <br />
                <input style="text-align:center;width: 270px;
  height: 42px;
  color: #fff;
  background: rgba(45, 45, 45, 0.15);
  border-radius: 6px;
  border: 1px solid rgba(255, 255, 255, 0.15);
  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 1.0) inset;
  text-indent: 10px; " type="text" name="username" id="user_login" class="input" value="<%=username%>" size="20" required/></label>
        </p>
        <p  style="text-align: center;">
            <label for="user_pass">
                <input style="text-align:center;width: 270px;
  height: 42px;
  color: #fff;
  background: rgba(45, 45, 45, 0.15);
  border-radius: 6px;
  border: 1px solid rgba(255, 255, 255, 0.15);
  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 1.0) inset;
  text-indent: 10px; " type="password" name="password" id="user_pass" class="input" value="<%=password%>" size="20" required/>
            </label>
        </p>
        <p style="text-align: center;" class="submit">
            <input style="margin-right: 57px;
background: #7a665e;
  width: 272px;
  height: 44px;
  border-radius: 6px;
  color: #fff;
  box-shadow: 0 15px 30px 0 rgba(255, 255, 255, 0.25) inset, 0 2px 7px 0 rgba(0, 0, 0, 0.2);
    border: 0;
  text-align: center;" type="button" name="wp-submit" id="submit-btn" class="button button-primary button-large" value="Sign in" />
        </p>
    </form>



    <script type="text/javascript">
        function wp_attempt_focus(){
            setTimeout( function(){ try{
                d = document.getElementById('user_login');
                d.focus();
                d.select();
            } catch(e){}
            }, 200);
        }

        wp_attempt_focus();
        if(typeof wpOnload=='function')wpOnload();
    </script>

    <p style="margin-left:200px;text-decoration: none;font-weight: bold; " id="backtoblog"><a href="/"><i class="fa fa-backward"></i>Back home</a></p>

</div>


<div class="clear"></div>

<script src="/js/jquery.min.js"></script>
<script type="text/javascript">


    <%--登录验证--%>
    $("#submit-btn").click(function () {
        var user = $("#user_login").val();
        var password = $("#user_pass").val();
        if(user=="") {
            alert("用户名不可为空!");
        } else if(password==""){
            alert("密码不可为空!");
        } else {
            $.ajax({
                async: false,//同步，待请求完毕后再执行后面的代码
                type: "POST",
                url: '/loginVerify',
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data: $("#loginForm").serialize(),
                dataType: "json",
                success: function (data) {
                    if(data.code==0) {
                        alert(data.msg);
                    } else {
                        window.location.href="/admin";

                    }
                },
                error: function () {
                    alert("数据获取失败")
                }
            })
        }
    })

</script>
</body>
</html>

