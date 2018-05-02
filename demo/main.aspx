<%@ Page Language="VB" AutoEventWireup="false" CodeFile="main.aspx.vb" Inherits="demo_yunUI_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head lang="zh-CN">
    <meta charset="utf-8">
    <!-- 初始网页宽度为设置屏幕宽度，缩放级别为1.0，禁止用户缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <!-- 设置360等双内核的浏览器渲染模式 -->
    <meta name="renderer" content="webkit">
    <!-- 设置IE支持的最高模式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <!-- 禁止移动浏览器转码 -->
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <!-- 网站标志 -->
    <!-- <link rel="icon" type="image/png" href="favicon.png"> -->
    <title>znfit 管理面板</title>
    <!-- 网站描述 -->
    <meta name="description" content="上海装盟信息科技">
    <!-- 网站SEO关键词 -->
    <meta name="keywords" content="上海装盟信息科技">
    <!-- 引入Bootstrap CSS框架 awesome字体-->
    <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <!-- CSS动画框架 -->
    <link href="css/animate.css" rel="stylesheet">
    <!-- Yun+ UI css主文件 -->
    <link href="css/yuntheme.css" rel="stylesheet">
     <link href="css/jquery.mloading.css" rel="stylesheet">
     <!-- 引入主要jQuery 等js框架 -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.metisMenu.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>  
    <script src="js/jquery.mloading.js"></script>  
    <!-- Custom and plugin javascript -->
    <script src="js/main.js"></script>
    <script src="js/pace.min.js"></script> 
     <script src="js/wow.min.js"></script>
    <script type="text/javascript">
    //初始化wow载入动画
        var wow = new WOW({
            boxClass: 'wow',
            animateClass: 'animated',
            offset: 0,
            mobile: true,
            live: true
        });
        wow.init();
        $(document).ready(function () {
            // iframe 载入事件           
            $('.Click_Append').on('click', function () {
                var subhref = "";
                subhref = this.dataset.url;
                $("#iframe-home").attr("src", subhref);
                /*
                setTimeout(function () {
                setIframeHeight("iframe-clientinfo");
                }, 400)
                */
            })
            //首页
            $('.main-btn-home').on('click', function () {
                //$("#iframe-clientinfo").attr("src", "");
                $('.nav-second-level').removeClass('in'); //收拢二级菜单
                $('#side-menu>li[class=active]').removeClass('active'); //收拢一级菜单

                $('body').mLoading("show"); //显示loading组件
                setTimeout(function () {
                    $('body').mLoading("hide"); //显示loading组件
                },500)
            })
        })            
    </script>
</head>
<body class="pace-done">
    <div class="pace  pace-inactive">
        <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
            <div class="pace-progress-inner">
            </div>
        </div>
        <div class="pace-activity">
        </div>
    </div>
    <div id="wrapper">
        <!-- 侧边导航菜单 开始 -->
        <nav class="navbar-default navbar-static-side wow slideInDown" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img class="img-circle" src="http://www.qqzhi.com/uploadpic/2014-05-14/051120936.jpg" width='50' alt="image"></span>
                            <a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false">
                                <span class="clear">
                                    <span class="block m-t-xs">
                                        <strong class="font-bold">Zm</strong>
                                    </span>
                                </span>
                                <span class="text-muted text-xs block">超级管理员 <b class="caret"></b></span>
                            </a>
                            <ul class="dropdown-menu animated fadeIn m-t-xs">
                                <li><a href="#/editData">修改资料</a></li>
                                <li><a href="#/Contact">联系我们</a></li>                                                           
                                <li><a href="#/Exit">退出</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">Znfit</div>
                    </li>    
                     <li>                        
                        <a  href="#" class='Click_Append main-btn-home' data-url='page/home.aspx'>
                                <i class="fa fa-home"></i>
                                <span class="nav-tabel">首页</span>                                
                            </a>
                    </li> 
                     <li>
                            <a  href="#">
                                <i class="fa fa-server"></i>
                                <span class="nav-tabel">进销管理</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="#/userSearch" class='Click_Append' data-url='page/userSearch.aspx'>进货详情</a></li>                            
                                <li><a href="#/addData" class='Click_Append' data-url='page/userAdd.aspx'>销售详情</a></li>        
                                <li><a href="#/addData" class='Click_Append' data-url='page/userAdd.aspx'>订单管理</a></li>                       
                            </ul>
                    </li>     
                    <li>
                            <a  href="#">
                                <i class="fa fa-cube"></i>
                                <span class="nav-tabel">库存管理</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="#/Login" class='Click_Append' data-url='page/userSearch.aspx'>采购入库</a></li>   
                                <li><a href="#/Other" class='Click_Append' data-url='page/userAdd.aspx'>销售出库</a></li>                         
                                <li><a href="#/Other" class='Click_Append' data-url='page/userAdd.aspx'>库存整理</a></li>                                  
                                <li><a href="#/Other" class='Click_Append' data-url='page/userAdd.aspx'>库存盘点</a></li>                                  
                            </ul>
                    </li>
                    <li>
                            <a  href="#">
                                <i class="fa fa-cogs"></i>
                                <span class="nav-tabel">其他</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level collapse">
                                <li><a href="#/userSearch" class='Click_Append' data-url='page/userSearch.aspx'>客户管理</a></li>                            
                                <li><a href="#/addData" class='Click_Append' data-url='page/userAdd.aspx'>灵活促销</a></li>      
                                        
                            </ul>
                    </li>                
                </ul>
            </div>
        </nav>        
        <!-- 侧边导航菜单 结束 -->
        <!-- 右侧内容 开始 -->
        <div class="gray-bg" id="page-wrapper" style="min-height: 769px;">
            <!-- 右侧顶部导航div 开始 -->
            <div class="row border-bottom wow slideInDown">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary" href="#"><i class="fa fa-bars"></i>
                        </a>
                        <!--
                            <form class="navbar-form-custom" action="#" >
                                <div class="form-group">
                                    <input class="form-control" id="top-search" name="top-search" type="text" placeholder="请输入您要查找的内容……">
                                </div>
                            </form>
                        -->
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li><span class="m-r-sm text-muted welcome-message">上海装盟信息科技有限公司</span></li>                    
                        <li>
                            <a href="#">
                                <i class="fa fa-sign-out"></i> 退出
                            </a>
                        </li>              
                    </ul>
                </nav>                             
            </div>           
            <!-- 右侧顶部导航div 结束 -->
            <!-- 右侧Ifream开始 -->
            <div class='content ' style='width:100%;height:89%;'>    
                <div style='overflow:auto;width:100%;height:100%'>
                        <iframe id='iframe-home' src="page/home.aspx" <%--onload='setIframeHeight(this.id)'--%>  scrolling="no" frameborder="0" style=' width:100%; height:100%'></iframe>
                </div>                
                  
            </div>
            <!-- 右侧Ifream结束-->
            <div class="footer text-center">
                <div>
                    <strong>Copyright</strong> znfit.com © 2018 <a href="http://www.znfit.com" target="_blank">
                        沪ICP备0000000-1号</a>
                </div>
            </div>
        </div>
        <!-- 右侧内容 结束 -->
    </div>
   
    <script type="text/javascript">
        //iframe点击事件
               
        var ifmClick = {
            resolution: 200,
            iframes: [],
            interval: null,
            Iframe: function () {
                this.element = arguments[0];
                this.cb = arguments[1];
                this.hasTracked = false;
            },
            track: function (element, cb) {
                this.iframes.push(new this.Iframe(element, cb));
                if (!this.interval) {
                    var _this = this;
                    this.interval = setInterval(function () { _this.checkClick(); }, this.resolution);
                }
            },
            checkClick: function () {
                if (document.activeElement) {
                    var activeElement = document.activeElement;
                    for (var i in this.iframes) {
                        if (activeElement === this.iframes[i].element) { // user is in this Iframe  
                            if (this.iframes[i].hasTracked == false) {
                                this.iframes[i].cb.apply(window, []);
                                this.iframes[i].hasTracked = true;
                            }
                        } else {
                            this.iframes[i].hasTracked = false;
                        }
                    }
                }
            }
        };
              

        //iframe自适应高度设置
        function getDocHeight(doc) {
            doc = doc || document;
            var body = doc.body, html = doc.documentElement;
            var height = Math.max(body.scrollHeight, body.offsetHeight,
                        html.clientHeight, html.scrollHeight, html.offsetHeight);
            return height;
        }
        function setIframeHeight(id) {
            var ifrm = document.getElementById(id);
            var doc = ifrm.contentDocument ? ifrm.contentDocument :
                        ifrm.contentWindow.document;
            ifrm.style.visibility = 'auto';
            ifrm.style.height = "20px"; // reset to minimal height ...
            ifrm.style.height = getDocHeight(doc) + 4 + "px";
            ifrm.style.visibility = 'visible';
        }
      </script> 

    <script type="text/javascript">
        //兼容处理iframe自适应父级高度
        var browserVersion = window.navigator.userAgent.toUpperCase();
        var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
        var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
        var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
        var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
        var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
        var isIE9More = (! -[1, ] == false);

        function reinitIframe(iframeId, minHeight) {
            try {
                var iframe = document.getElementById(iframeId);
                var bHeight = 0;
                if (isChrome == false && isSafari == false)
                    bHeight = iframe.contentWindow.document.body.scrollHeight;

                var dHeight = 0;
                if (isFireFox == true)
                    dHeight = iframe.contentWindow.document.documentElement.offsetHeight + 2;
                else if (isIE == false && isOpera == false)
                    dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                else if (isIE == true && isIE9More) {//ie9+
                    var heightDeviation = bHeight - eval("window.IE9MoreRealHeight" + iframeId);
                    if (heightDeviation == 0) {
                        bHeight += 3;
                    } else if (heightDeviation != 3) {
                        eval("window.IE9MoreRealHeight" + iframeId + "=" + bHeight);
                        bHeight += 3;
                    }
                }
                else//ie[6-8]、OPERA
                    bHeight += 3;

                var height = Math.max(bHeight, dHeight);
                if (height < minHeight) height = minHeight;
                iframe.style.height = height + "px";
            } catch (ex) { }
        }
        function startInit(iframeId, minHeight) {           
            window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 100);
        }

        startInit('iframe-home', 560);
    </script>
</body>
</html>
