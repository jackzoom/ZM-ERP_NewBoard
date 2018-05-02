<%@ Page Language="VB" AutoEventWireup="false" CodeFile="appBoard.aspx.vb" Inherits="appBoard" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ERP主面板</title>
<%--    内容引用--%>
    <link href="comm/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <%--<link href="comm/css/pace-theme-barber-shop.css" rel="stylesheet" type="text/css" />--%>
    <link href="comm/css/animate.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src='comm/js/jquery.min.js'></script> 
    <%--<script type="text/javascript" src='comm/js/pace.min.js'></script>--%>
    <script type="text/javascript" src='comm/js/bootstrap.min.js'></script> 
    <style type="text/css">
        html,body
        {
            height:100%;
            }
        /*侧边导航*/
        #main-navbar
        {
            height:100%;
            border-right:.5px solid #ccc;           
            float:left;
            position:relative;
            }
            .navbar-head
            {
                position:relative;
                background:#f39f7f;
                height:4.5rem;
                width:100%;
                color:#fff;
                line-height:4.5rem;
                white-space: nowrap;
                 overflow: hidden;
                 text-overflow: ellipsis;   
                }
                .nav-title
                {
                    font-size:1.5rem;
                    font-weight:bold;                    
                    padding:5px;                                              
                    }
                    .nav-menu
                    {
                        position:absolute;
                        right:-5%;
                        top:10%;
                        font-size:2rem;
                        }
                        /*输入搜索框*/                        
                        .navbar-search
                        {
                            margin:5px;
                            padding:5px;
                            height:30px;
                            border-radius:8px;
                            border:.5px solid #ccc;
                            font-size:1rem;
                            display:block;
                            }
                             .navbar-search input
                             {
                                 border:0;
                                 outline:0;
                                 
                                 background:transparent;
                                 float:left;
                                 }
                                 .navbar-search span
                                 {
                                     cursor:pointer;
                                     position:relative;
                                     top:4px;
                                     }
                                     .navbar-btn
                                     {
                                         position:absolute;
                                         right:-15px;
                                         top:50%;
                                      }
        /*内容区域*/
        #main-content
        {
            height:100%; 
            width:100%;
            padding-left:150px;                       
            }
            .content-head 
            {
                padding:5px;       
                height:4.5rem;                    
                border-bottom:.5px solid #ccc;
                }
            .content-head ul
            {
                float:right;                
                margin-right:15px;
                }
            .content-head ul li
            {
                float:left;
                list-style-type:none;
                margin:5px;
                }
    </style>  

    <script type="text/javascript">
        $(function () {
            $('.navbar-btn').on('click', function () {
                var _navW = $('#main-navbar').css('width');
                console.log(_navW, $('#main-navbar').css('left'));
                if ($('#main-navbar').css('left') !='-'+ _navW) {
                    $('#main-navbar').animate({ 'left': '-' + _navW }, 800);
                    $('#main-content').animate({'padding-left': '0'},800);
                } else {
                    $('#main-navbar').animate({ 'left': '0' }, 800);
                    $('#main-content').animate({ 'padding-left': '150px' }, 800);
                }
            })
        })
    </script>
</head>
<body>   
<%--面板容器--%>
            <!--侧边导航-->
         <div id='main-navbar'>
                    <!--导航头--->
             <div class='navbar-head'>
                 <span class='nav-title'>上海装盟信息科技</span>
                 <%--<span class='btn glyphicon glyphicon-th-list nav-menu'></span>--%>
             </div>
                   <!--导航搜索--->
             <div class='navbar-search clearfix'>	   
                        <input class='col-xs-10' type="type" name="name"  placeholder='Please Enter '/>        
                        <span class="col-xs-2 glyphicon glyphicon-search" style='padding:0;'></span>    
             </div>
                   <!--导航菜单列表--->
             <div class='navbar-list'>
                         <div id="nav">
                              <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Projects</a></li>
                                <li><a href="#">Contact</a></li>
                              </ul>
                        </div>
             </div>
             <span class='glyphicon glyphicon-menu-right navbar-btn'></span>
         </div>
         <!--内容区域-->
        <div id='main-content'>
            <div class='content-head clearfix'>
                <ul>
                    <li>我的</li>
                    <li>刷新</li>
                    <li>控制台</li>                    
                </ul>
            </div>
            <div class='content-group'>
       
            </div>
       </div> 
</body>
  <script type="text/javascript">
  
    </script>
</html>
