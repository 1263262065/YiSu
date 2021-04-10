<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>卡网管理系统</title>
    <!-- 事先引入的字体图标库 观看此视频之前可以看一下上个视频简介 接上个视频发的哈 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/admin/font-awesome.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/admin/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/admin/Yibiaopan.css" />
</head>
<body>
<div class="navbar">
    <input type="checkbox" id="checkbox" />
    <label for="checkbox">
        <i class="fa fa-outdent"></i>
    </label>
    <ul>
        <li>
            <img src="${pageContext.request.contextPath }/statics/images/bilibili.png" alt="" />
            <span>欢迎您[${userSession.userName}]</span>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-home"></i>
                <span>后台首页</span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-sitemap"></i>
                <span>商品列表</span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-user"></i>
                <span>用户列表</span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-shopping-cart"></i>
                <span>订单列表</span>
            </a>
        </li>
        <li>
            <a href="/YisuFaka/logout">
                <i class="fa fa-windows"></i>
                <span>退出系统</span>
            </a>
        </li>
    </ul>
</div>
<div id="sumding" class="col-sm-6 col-lg-3">
    <div class="kt-portlet kt-iconbox kt-iconbox--brand kt-callout--brand kt-callout--diagonal-bg  kt-portlet--border-bottom-brand shadow">
        <div class="card-body">
            <div class="kt-iconbox__body">
                <div class="kt-iconbox__icon">

                    <svg t="1615718337500" class="kt-svg-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2343" width="200" height="200"><path d="M821.77 960.19H202.23c-39.49 0-71.62-32.13-71.62-71.62V135.43c0-39.49 32.13-71.62 71.62-71.62h619.53c39.49 0 71.62 32.13 71.62 71.62v753.14c0 39.49-32.12 71.62-71.61 71.62z m-603.62-87.53h587.7V151.34h-587.7v721.32z" p-id="2344" fill="#13227a"></path><path d="M683.68 357.36h-342.4c-12.09 0-21.89-9.8-21.89-21.89v-43.61c0-12.09 9.8-21.89 21.89-21.89h342.39c12.09 0 21.89 9.8 21.89 21.89v43.61c0 12.09-9.8 21.89-21.88 21.89zM682.72 555.69h-342.4c-12.09 0-21.89-9.8-21.89-21.89v-43.61c0-12.09 9.8-21.89 21.89-21.89h342.39c12.09 0 21.89 9.8 21.89 21.89v43.61c0 12.09-9.8 21.89-21.88 21.89zM525.48 754.03H340.32c-12.09 0-21.89-9.8-21.89-21.89v-43.61c0-12.09 9.8-21.89 21.89-21.89h185.15c12.09 0 21.89 9.8 21.89 21.89v43.61c0.01 12.09-9.79 21.89-21.88 21.89z" p-id="2345" fill="#13227a"></path></svg><path d="M703.904 282.672H301.248a36.944 36.944 0 1 1 0-73.888h402.656a36.944 36.944 0 0 1 0 73.888z" p-id="1185" fill="#13227a"></path><path d="M703.904 466.736H301.248a36.944 36.944 0 1 1 0-73.888h402.656a36.944 36.944 0 0 1 0 73.888z" p-id="1186" fill="#13227a"></path><path d="M376.096 992H99.952A35.84 35.84 0 0 1 64 955.584V68.416A35.84 35.84 0 0 1 99.952 32h824.096A35.84 35.84 0 0 1 960 68.416v536.816a14.4 14.4 0 0 1-0.72 5.824 35.776 35.776 0 0 1-10.064 32l-322.16 320.48a35.008 35.008 0 0 1-38.832 7.28 36.336 36.336 0 0 1-22.288-33.504V613.248a36.64 36.64 0 0 1 35.2-36.416l286.928-7.28V104.832H135.904v814.4h240.176a36.416 36.416 0 0 1 0 72.832z m262.4-343.792v201.76L847.04 643.104z" p-id="1187" fill="#13227a"></path></svg>
                </div>
                <div class="kt-iconbox__desc">
                    <h3 class="kt-iconbox__title">
                        <strong><span class="counter">${sumrecord} 单</span></strong>
                    </h3>
                    <div class="kt-iconbox__content">总订单
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            此处显示您出售订单的总数


        </div>
    </div>
</div>

<div id="dayding" class="col-sm-6 col-lg-3">
    <div id="backding" class="kt-portlet kt-iconbox kt-iconbox--brand kt-callout--brand kt-callout--diagonal-bg  kt-portlet--border-bottom-brand shadow">
        <div class="card-body">
            <div class="kt-iconbox__body">
                <div class="kt-iconbox__icon">
                    <svg t="1615721153076" class="kt-svg-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2622" width="200" height="200"><path d="M315.9 391.6h174.2v84H315.9zM315.9 228.1h396.9v84H315.9z" p-id="2623" fill="#13227a"></path><path d="M902.2 958.5H126.1v-895h776.1v324.2L499.4 801.1 321.9 623.6l59.4-59.4 117.4 117.3 319.5-328v-206H210.1v727h608.1V568.6h84z" p-id="2624" fill="#13227a"></path></svg>
                </div>
                <div class="kt-iconbox__desc">
                    <h3 class="kt-iconbox__title">
                        <strong><span class="counter"> ${dayrecord} 单</span></strong>
                    </h3>
                    <div class="kt-iconbox__content">今日订单
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            此处显示您今日的出售订单


        </div>
    </div>
</div>
<div  id="sumprice"class="col-sm-6 col-lg-3">
    <div id="qianbao" class="kt-portlet kt-iconbox kt-iconbox--brand kt-callout--brand kt-callout--diagonal-bg  kt-portlet--border-bottom-brand shadow">
        <div class="card-body">
            <div class="kt-iconbox__body">
                <div class="kt-iconbox__icon">
                    <svg t="1615721054261" class="kt-svg-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="944" width="200" height="200"><path d="M298.666667 170.666667a42.666667 42.666667 0 0 1 42.666666 42.666666l0.042667 45.098667c97.92 12.202667 161.28 69.888 162.346667 145.962667H397.354667C394.581333 371.2 363.477333 339.754667 301.226667 339.754667c-55.168 0-89.429333 23.125333-89.429334 59.221333 0 28.16 25.173333 46.208 73.258667 54.912l81.578667 16.213333C445.44 484.906667 512 519.936 512 610.56c0 85.376-64.085333 142.677333-170.666667 154.965333V810.666667a42.666667 42.666667 0 0 1-85.333333 0v-44.629334c-126.762667-12.757333-169.216-86.016-170.666667-149.674666h109.525334c3.157333 34.986667 38.997333 66.773333 107.136 66.773333 63.445333 0 97.322667-25.258667 97.322666-61.738667 0-32.853333-27.562667-48.384-81.92-59.221333l-80.768-16.213333c-75.648-14.805333-138.666667-53.802667-138.666666-138.325334C97.92 323.626667 164.608 271.786667 256 259.072V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z m597.333333 469.333333a42.666667 42.666667 0 0 1 0 85.333333h-256a42.666667 42.666667 0 0 1 0-85.333333z m0-170.666667a42.666667 42.666667 0 0 1 0 85.333334h-256a42.666667 42.666667 0 0 1 0-85.333334z m0-170.666666a42.666667 42.666667 0 0 1 0 85.333333h-256a42.666667 42.666667 0 0 1 0-85.333333z" fill="#13227a" p-id="945"></path></svg>
                    <path d="M298.666667 170.666667a42.666667 42.666667 0 0 1 42.666666 42.666666l0.042667 45.098667c97.92 12.202667 161.28 69.888 162.346667 145.962667H397.354667C394.581333 371.2 363.477333 339.754667 301.226667 339.754667c-55.168 0-89.429333 23.125333-89.429334 59.221333 0 28.16 25.173333 46.208 73.258667 54.912l81.578667 16.213333C445.44 484.906667 512 519.936 512 610.56c0 85.376-64.085333 142.677333-170.666667 154.965333V810.666667a42.666667 42.666667 0 0 1-85.333333 0v-44.629334c-126.762667-12.757333-169.216-86.016-170.666667-149.674666h109.525334c3.157333 34.986667 38.997333 66.773333 107.136 66.773333 63.445333 0 97.322667-25.258667 97.322666-61.738667 0-32.853333-27.562667-48.384-81.92-59.221333l-80.768-16.213333c-75.648-14.805333-138.666667-53.802667-138.666666-138.325334C97.92 323.626667 164.608 271.786667 256 259.072V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z m469.333333 0a42.666667 42.666667 0 0 1 42.666667 42.666666v85.333334h85.333333a42.666667 42.666667 0 0 1 0 85.333333h-85.333333v85.333333a42.666667 42.666667 0 0 1-85.333334 0V384h-85.333333a42.666667 42.666667 0 0 1 0-85.333333h85.333333V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z" fill="#13227a" p-id="5872"></path></svg>
                </div>
                <div class="kt-iconbox__desc">
                    <h3 class="kt-iconbox__title">
                        <strong><span class="counter">${sumprice} 元</span></strong>
                    </h3>
                    <div class="kt-iconbox__content">总金额
                    </div>
                </div>
            </div>
        </div>
        <div class="body">
            此处显示您出售订单的总金额


        </div>
    </div>

    <div id="dayqianbao" class="kt-portlet kt-iconbox kt-iconbox--brand kt-callout--brand kt-callout--diagonal-bg  kt-portlet--border-bottom-brand shadow">
        <div class="card-body">
            <div class="kt-iconbox__body">
                <div class="kt-iconbox__icon">

                    <svg t="1615722669071" class="kt-svg-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3240" width="200" height="200"><path d="M298.666667 170.666667a42.666667 42.666667 0 0 1 42.666666 42.666666l0.042667 45.098667c97.92 12.202667 161.28 69.888 162.346667 145.962667H397.354667C394.581333 371.2 363.477333 339.754667 301.226667 339.754667c-55.168 0-89.429333 23.125333-89.429334 59.221333 0 28.16 25.173333 46.208 73.258667 54.912l81.578667 16.213333C445.44 484.906667 512 519.936 512 610.56c0 85.376-64.085333 142.677333-170.666667 154.965333V810.666667a42.666667 42.666667 0 0 1-85.333333 0v-44.629334c-126.762667-12.757333-169.216-86.016-170.666667-149.674666h109.525334c3.157333 34.986667 38.997333 66.773333 107.136 66.773333 63.445333 0 97.322667-25.258667 97.322666-61.738667 0-32.853333-27.562667-48.384-81.92-59.221333l-80.768-16.213333c-75.648-14.805333-138.666667-53.802667-138.666666-138.325334C97.92 323.626667 164.608 271.786667 256 259.072V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z m469.333333 0a42.666667 42.666667 0 0 1 42.666667 42.666666v85.333334h85.333333a42.666667 42.666667 0 0 1 0 85.333333h-85.333333v85.333333a42.666667 42.666667 0 0 1-85.333334 0V384h-85.333333a42.666667 42.666667 0 0 1 0-85.333333h85.333333V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z" fill="#13227a" p-id="3241"></path></svg>
                    <path d="M298.666667 170.666667a42.666667 42.666667 0 0 1 42.666666 42.666666l0.042667 45.098667c97.92 12.202667 161.28 69.888 162.346667 145.962667H397.354667C394.581333 371.2 363.477333 339.754667 301.226667 339.754667c-55.168 0-89.429333 23.125333-89.429334 59.221333 0 28.16 25.173333 46.208 73.258667 54.912l81.578667 16.213333C445.44 484.906667 512 519.936 512 610.56c0 85.376-64.085333 142.677333-170.666667 154.965333V810.666667a42.666667 42.666667 0 0 1-85.333333 0v-44.629334c-126.762667-12.757333-169.216-86.016-170.666667-149.674666h109.525334c3.157333 34.986667 38.997333 66.773333 107.136 66.773333 63.445333 0 97.322667-25.258667 97.322666-61.738667 0-32.853333-27.562667-48.384-81.92-59.221333l-80.768-16.213333c-75.648-14.805333-138.666667-53.802667-138.666666-138.325334C97.92 323.626667 164.608 271.786667 256 259.072V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z m469.333333 0a42.666667 42.666667 0 0 1 42.666667 42.666666v85.333334h85.333333a42.666667 42.666667 0 0 1 0 85.333333h-85.333333v85.333333a42.666667 42.666667 0 0 1-85.333334 0V384h-85.333333a42.666667 42.666667 0 0 1 0-85.333333h85.333333V213.333333a42.666667 42.666667 0 0 1 42.666667-42.666666z" fill="#13227a" p-id="5872"></path></svg>
                </div>
                <div class="kt-iconbox__desc">
                    <h3 class="kt-iconbox__title">
                        <strong><span class="counter">${dayprice} 元</span></strong>
                    </h3>
                    <div class="kt-iconbox__content">今日金额
                    </div>
                </div>
            </div>
        </div><div class="body">
        此处显示您今日订单的总金额


    </div>

    </div>
    <div id="liuliang" class="kt-portlet kt-portlet--fluid  kt-portlet--border-bottom-brand shadow">
        <div class="kt-portlet__head kt-portlet__head--noborder">
            <div class="kt-portlet__head-label">
                <h3 class="kt-portlet__head-title kt-font-primary"><i class="fa fa-tint"></i><strong> 流量信息</strong></h3>
            </div>
            <div class="kt-portlet__head-toolbar">
                <div class="kt-portlet__head-group">
                    <span class="kt-badge kt-badge--dark kt-badge--inline kt-badge--pill kt-badge--rounded">今日信息</span>
                </div>
            </div>
        </div>
        <div class="kt-portlet__body">
            <div id="morris-donut-chart" class="ecomm-donute"><svg height="342" version="1.1" width="329" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.4875px; top: -0.8px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.3.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="none" stroke="#5867dd" d="M164.5,274A103,103,0,1,0,154.48349700306838,273.5118025776177" stroke-width="2" opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path><path fill="#5867dd" stroke="#ffffff" d="M164.5,277A106,106,0,1,0,154.1917541973325,276.49758323521814L149.47524550460255,324.7677038664265A154.5,154.5,0,1,1,164.5,325.5Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#dce6fd" d="M154.48349700306838,273.5118025776177A103,103,0,0,0,159.4696434715945,273.8770893503365" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#dce6fd" stroke="#ffffff" d="M154.1917541973325,276.49758323521814A106,106,0,0,0,159.32312823290306,276.8735094285017L157.19865727187744,320.3216005618963A149.5,149.5,0,0,1,149.96148351416235,319.79140277042563Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#83a4f4" d="M159.4696434715945,273.8770893503365A103,103,0,0,0,164.4676415962004,273.9999949171538" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#83a4f4" stroke="#ffffff" d="M159.32312823290306,276.8735094285017A106,106,0,0,0,164.46669911841983,276.9999947691097L164.45303319060156,320.4999926224708A149.5,149.5,0,0,1,157.19865727187744,320.3216005618963Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="164.5" y="161" text-anchor="middle" font-family="&quot;Arial&quot;" font-size="15px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: Arial; font-size: 15px; font-weight: 800;" font-weight="800" transform="matrix(2.3815,0,0,2.3815,-226.8363,-237.3595)" stroke-width="0.41990291262135926"><tspan dy="6" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">访问人数</tspan></text><text x="164.5" y="181" text-anchor="middle" font-family="&quot;Arial&quot;" font-size="14px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: Arial; font-size: 14px;" transform="matrix(2.1437,0,0,2.1437,-188.3418,-197.867)" stroke-width="0.46647451456310673"><tspan dy="4.8046875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><吐血开发中></吐血开发中></tspan></text></svg>
            </div>
            <div class="kt-widget15__items kt-margin-t-30">

            </div>
        </div>
    </div>

</div>
</div>
</body>
</html>
