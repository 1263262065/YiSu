<!DOCTYPE html>
<!-- saved from url=(0036)http://www.258kuai.cn/links/1BB905F7 -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="信誉第一的自动发卡平台，24小时为商户提供优质稳定不间断的自动交易服务">
    <meta name="keywords" content="发卡网,发卡平台,自动发卡,自动发卡平台,258发卡自动发卡平台">
    <title> 个人free</title>
    <link rel="shortcut icon" href="http://faka.117118.top/ba378df7db190382/222147a4cdc90c73.ico">
    <link href="${pageContext.request.contextPath }/statics/config/pay_basicc.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath }/statics/config/push.js"></script><script src="${pageContext.request.contextPath }/statics/config/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/statics/config/pay3.js"></script>
    <link href="${pageContext.request.contextPath }/statics/config/nyro.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath }/statics/config/nyro.js"></script>
    <script src="${pageContext.request.contextPath }/statics/config/woodyapp.js"></script><script type="text/javascript" src="./${pageContext.request.contextPath }/statics/config/f.txt"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/config/iziToast.min.css">
    <script src="${pageContext.request.contextPath }/statics/config/layer.js"></script><link rel="stylesheet" href="${pageContext.request.contextPath }/statics/config/layer.css" id="layuicss-skinlayercss" style="">
    <script src="${pageContext.request.contextPath }/statics/config/iziToast.min.js"></script>
	<!--    IE兼容提示-->
	<script src="${pageContext.request.contextPath }/statics/config/iealert.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/config/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/index.css" />
	<script type="text/javascript">
	$(document).ready(function() {
		$("body").iealert();
	});
    </script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
<script>
        var user_popup_message = '';
        var is_display = '0';
        var userid = "14271";
        var cateid =0;
        var static_url = 'http://www.258kuai.cn';
        var dis_pwd_content = '<div style="padding:10px;color:#cc3333;line-height:24px"><p style="float:left;font-size:14px;font-weight:bold;color:blue;">访问密码：</p><div style="float:right; font-size:14px; padding-left:20px;"><a href="#" style="color:#0064ff;text-decoration:none;display:inline-block;background:url(/static/app/images/x.png) left no-repeat;padding-left:15px;" class="nyroModalClose" onclick="closeNyro()">关闭</a></div><p style="clear:both;font-size:12px;font-weight:bold;color:red;"><input type="password" name="pwdforbuy" class="input" maxlength="20"> <input type="submit"  onclick="verify_pwdforbuy()" id="verify_pwdforbuy" style="font-size:12px;padding:3px 3px" value="验证密码"> <span id="verify_pwdforbuy_msg" style="display:none"><img src="/static/app/images/load.gif"> 正在验证...</span><ul><li>1.本商品购买设置了安全密码</li><li>2.只有成功验证密码后才能继续购买</li></ul></p></div>';
        var goodid = "0";
        var is_contact_limit ='';
        var is_contact_limit_default ='';
        var limit_quantity_tip = '无法修改购买数量，是因为本商品限制了购买数量。';
		var notice="";

        /*  */

        function closeNyro(){
            $('[name="goodid"]').val('');
            $('[name="goodid"]').change();
        }

        /*  */
    </script><style type="text/css">
        .lab1 input {
            display: none !important;
        }
    </style><script type="text/javascript">
        $(function () {
            iziToast.settings({
                maxWidth: '500px',
                titleSize: '18px',
                titleLineHeight: '22px',
                timeout: 3000,
                resetOnHover: false,
                position: 'bottomLeft',
                transitionIn: 'fadeInLeft',
                transitionOut: 'fadeOutRight',
                zindex: 999999999999,
                close: false
            });
        });

        function showToast(type, title, message) {
            if (type == 'success') {
                iziToast.success({ //绿色
                    title: title,
                    message: message,
                });
            }
            if (type == 'error') {
                iziToast.error({ //红色
                    title: title,
                    message: message,
                });
            }
            if (type == 'info') {
                iziToast.info({
                    title: title,
                    message: message,
                });
            }
            if (type == 'warning') {
                iziToast.warning({
                    title: title,
                    message: message,
                });
            }
        }

        function selectcateid2() {
            var cateid = $('#cateid').val();
            $('#loading').show();
            $('#goodid').hide();
            var option = '<option value="">请选择商品</option>';
            if (cateid > 0) {
                $.post('/ajax/getgoodlist', {
                            cateid: cateid
                        },
                        function (data) {
                            if (data == 'ok') {
                                layer.msg('此分类下没有商品！');
                            } else {
                                showToast('info', '', '请选择商品！');
                                $('#loading').hide();
                                $('#goodid').show();
                                $('#goodid').html(option + data);
                            }
                        });
            } else {
                $('#loading').hide();
                $('#goodid').show();
                $('#goodid').html(option);
            }
            getrate();
            $('.pinfo1').show();
            $('.pinfo2').hide();
            $('.pinfo3').hide();
        }


        function selectgoodid2() {
            var goodid = $('#goodid').val();
            if ($('[name=couponcode]').val() != '') {
                checkCoupon();
            }
            $('#price').html('<img src="' + static_url + '/static/app/images/load.gif" />'); //给单价正在加载
            $.post('/ajax/getgoodinfo', {
                    goodid: goodid
                },
                function (data) {
                    if (data) {
                        $('#price').html(data.price);
                        $('#remark').html(data.remark);
                        if (data.is_coupon == 0) {
                            $('#goodCoupon').hide();
                        }
                        if (data.is_coupon == 1) {
                            $('#goodCoupon').show();
                            showToast('info', '', '如有优惠卷 可以使用哦');
                        } else {
                            //取消掉优惠券码
                            $('[name=couponcode]').val('');
                            $('#goodCoupon').hide();
                        }
                        if (data.is_pwdforsearch == 0) {
                            $('#pwdforsearch2').hide();
                            $('#pwdforsearch1').hide();
                        }
                        if (data.is_pwdforsearch == 1) {
                            $('#pwdforsearch2').hide();
                            $('#pwdforsearch1').show();
                            showToast('info', '', '取卡密码 必填哦！');
                        }
                        if (data.is_pwdforsearch == 2) {
                            $('#pwdforsearch1').hide();
                            $('#pwdforsearch2').show();
                            showToast('info', '', '如有需要 取卡密码 可以填哦');
                        }
                        if (data.limit_quantity > 0) {
                            $('[name=quantity]').val(data.limit_quantity);
                            $('[name=quantity]').attr({
                                'title': limit_quantity_tip
                            });
                            $('#limit_quantity_tip').show();
                        } else {
                            $('[name=quantity]').val(1);
                            $('[name=quantity]').removeAttr('disabled readonly title');
                            $('#limit_quantity_tip').hide();
                        }
                        $('[name=danjia]').val(data.price);
                        $('#goodInvent').html(data.goodinvent);
                        $('[name=is_discount]').val(data.is_discount);
                        //----显示批发优惠开始----//
                        if (data.is_discount == 1) {
                            var fav = " 商品原价：" + data.price + "元<br/>批发价格：<br />";
                            $.post('/ajax/getdiscountdetails', {
                                goodid: goodid
                            }, function (data) { //获取数据
                                console.log(data);
                                fav += data;
                                console.log(fav);
                                $("#discountdetail").html(fav); //赋值数据前台显示用于配合使用layer弹出插件
                            });
                            $("#isdiscount_span").show(); //显示（查看批发价格）
                        } else {
                            $("#isdiscount_span").hide(); //隐藏显示（查看批发价格）
                            $("#discountdetail").hide();
                            $("#discountdetail").html("");
                        }
                        //----显示批发优惠结束----//
                        getrate();
                        goodDiscount();
                        $('.pinfo1').hide();
                        $('.pinfo2').show();
                        $('.pinfo3').hide();
                        if (data.is_pwdforbuy == 1) {
                            getPwdforbuy();
                        }
                    }
                },
                'json');
        }


        function changequantity2() {
            goodDiscount();
            goodschk();
            var quantity = $("input[name='quantity']").val();
            var kucun = $("input[name='kucun']").val();
            if (quantity < 1) {
                showToast('error', '', '您忘了输入购买数量！');
                $('[name=quantity]').focus();

            } else if ((quantity - kucun) > 0) {
                showToast('error', '', '您输入的购买数量超过库存数量，请重新输入！');
                $('[name=quantity]').focus();
            } else if ((quantity >= 1 && quantity - kucun) <= 0) {
                showToast('success', '', '您输入的购买数量 填写正确^_^');
            }
        }

        function checkcontact2() {
            var contact = $("input[name='contact']").val();
            var limit = parseInt('0');
            if ($("input[name='is_rev_sms']").is(":checked")) {
                var reg = /^(\d){11}$/;
                if (contact.length < 1) {
                    showToast('error', '', '手机号码 必填哦！');
                    $('[name=contact]').focus();
                }
                if ((contact.length >= 1 && contact.length < 11) || (contact.length >= 1 && !reg.test(contact))) {
                    showToast('error', '', '您输入的手机号码 不是11位数字！');
                    $('[name=contact]').focus();
                } else if (contact.length == 11 && reg.test(contact)) {
                    showToast('success', '', '您输入的手机号码 填写正确^_^');
                }
            } else {
                if (!contact || contact == null || contact == "" || contact == 0) {
                    showToast('error', '', '联系方式 必填哦！');
                    $('[name=contact]').focus();
                } else if (contact.length >= 6) {
                    var ret = checkStrength(contact, limit)
                    if (!ret) {
                        if(limit === 1) {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入字母+数字');
                        } else {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入大小写字母+数字');
                        }

                        $('[name=contact]').focus();
                    } else {
                        showToast('success', '', '您输入的联系方式 填写正确^_^');
                    }
                } else {
                    showToast('error', '', '您输入的联系方式 少于6位！');
                    $('[name=contact]').focus();
                }
            }
        }

        function checkStrength(val, type)
        {
            var ls = 0;
            type = parseInt(type)
            if (val.match(/([a-z])+/)) {ls++;}
            if (val.match(/([0-9])+/)) {ls++;}
            if (val.match(/([A-Z])+/)) {ls++;}
            if(type === 0){
                return true;
            } else if(type === 1) {
                return ls >= 2;
            } else {
                return ls >= 3;
            }
        }
        function checkis_rev_sms2() {
            $('#email').parent().removeClass('checked');
            var contact = $("input[name='contact']").val();
            var limit = parseInt('0');
            if ($("input[name='is_rev_sms']").is(":checked")) {
                var reg = /^(\d){11}$/;
                if (contact.length == 11 && reg.test(contact)) {
                    showToast('success', '', '您输入的手机号码 填写正确^_^');
                } else {
                    showToast('info', '', '请重新输入11位数字 填写手机号码哦');
                    $('[name=contact]').focus();
                }
            } else {
                if (contact.length >= 6) {
                    var ret = checkStrength(contact, limit)
                    if (!ret) {
                        if(limit === 1) {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入字母+数字');
                        } else {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入大小写字母+数字');
                        }

                        $('[name=contact]').focus();
                    } else {
                        showToast('success', '', '您输入的联系方式 填写正确^_^');
                    }
                } else if (!contact || contact == null || contact == "" || contact == 0) {
                    showToast('error', '', '联系方式 必填哦！');
                    $('[name=contact]').focus();
                } else {
                    showToast('error', '', '您输入的联系方式 少于6位！');
                    $('[name=contact]').focus();
                }
            }

        }

        function checkis_email2() {
            $('#is_rev_sms').parent().removeClass('checked');
            $('.email_show').toggle();
            var email = $("input[name='email']").val();
            var reg = /^([0-9a-zA-Z_-])+@([0-9a-zA-Z_-])+((\.[0-9a-zA-Z_-]{2,3}){1,2})$/;
            if ($("input[name='isemail']").is(":checked")) {
                if (reg.test(email)) {
                    showToast('success', '', '您输入的邮箱地址 填写正确^_^');
                } else if (email.length > 0 && !reg.test(email)) {
                    showToast('error', '', '您输入的邮箱地址 填写有误！');
                    $('[name=email]').focus();
                } else {
                    showToast('info', '', '邮箱地址 必填哦！');
                    $('[name=email]').focus();
                }
                $('[name=sms_price]').val(0);
                $('.choose_sms').removeClass('on');
                $('.choose_email').addClass('on');
                $('.email-show').show();
                $("#is_rev_sms").prop("checked", false);
            } else {
                $('.choose_email').removeClass('on');
                $('.email-show').hide();
            }
            goodDiscount();
            goodschk();
            updateContactLimit();
        }

        function checkemail2() {
            var email = $("input[name='email']").val();
            var reg = /^([0-9a-zA-Z_-])+@([0-9a-zA-Z_-])+((\.[0-9a-zA-Z_-]{2,3}){1,2})$/;
            if (!email || email == null || email == "" || email == 0) {
                showToast('error', '', '邮箱地址 必填哦！');
                $('[name=email]').focus();
            } else if (reg.test(email)) {
                showToast('success', '', '您输入的邮箱 填写正确^_^');
            } else {
                showToast('error', '', '您输入的邮箱地址 填写有误！');
                $('[name=email]').focus();
            }
        }

        function checkpwdsearch2() {
            var pwdforsearch1 = $("input[name='pwdforsearch1']").val();
            if (!pwdforsearch1 || pwdforsearch1 == null || pwdforsearch1 == "" || pwdforsearch1 == 0) {
                showToast('warning', '', '取卡密码 必填哦！');
                $('[name=pwdforsearch1]').focus();
            } else if (pwdforsearch1.length < 6 || pwdforsearch1.length > 20) {
                showToast('error', '', '您输入的取卡密码 不是6-20位！');
                $('[name=pwdforsearch1]').focus();
            }
        }

        function checkpwdsearch1() {
            var pwdforsearch2 = $("input[name='pwdforsearch2']").val();
            if (!pwdforsearch2 || pwdforsearch2 == null || pwdforsearch2 == "" || pwdforsearch2 == 0) {
                showToast('info', '', '如有需要 取卡密码 可以填哦');
            } else if ((pwdforsearch2.length >= 1 && pwdforsearch2.length < 6) || (pwdforsearch1.length > 20)) {
                showToast('error', '', '您输入的取卡密码 不是6-20位！');
                $('[name=pwdforsearch1]').focus();
            } else if (pwdforsearch2.length >= 6 && pwdforsearch2.length <= 20) {
                showToast('success', '', '您输入的取卡密码 填写正确^_^');
            }
        }

        function checkcoupon2() {
            var couponcode = $("input[name='couponcode']").val();
            if (!couponcode || couponcode == null || couponcode == "" || couponcode == 0) {
                showToast('info', '', '如有优惠卷 可以使用哦');
            } else if (couponcode.length >= 1 && couponcode.length != 16) {
                showToast('error', '', '您输入的优惠券 不是16位！');
                $('[name=couponcode]').focus();
            } else if (couponcode.length == 18) {
                showToast('success', '', '您输入的优惠券 填写正确^_^');
            }
        }

        function checkform2() {
            var quantity = $("input[name='quantity']").val();
            var kucun = $("input[name='kucun']").val();
            if (quantity < 1) {
                showToast('error', '', '您忘了输入购买数量！');
                return false;
            } else if ((quantity - kucun) > 0) {
                showToast('error', '', '输入的购买数量超过库存数量，请重新输入！');
                return false;
            }
            var contact = $("input[name='contact']").val();
            var limit = parseInt('0');
            if ($("input[name='is_rev_sms']").is(":checked")) {
                var reg = /^(\d){11}$/;
                if (contact.length < 11 || !reg.test(contact)) {
                    showToast('error', '', '您输入的手机号码 不是11位数字！');
                    return false;
                }
            } else {
                if (!contact || contact == null || contact == "" || contact == 0) {
                    showToast('error', '', '您忘了填写联系方式！');
                    return false;
                } else if (contact.length < 6) {
                    showToast('error', '', '您输入的联系方式 少于6位！');
                    return false;
                } else {
                    var limit = parseInt('0');
                    var ret = checkStrength(contact, limit)
                    if (!ret) {
                        if(limit === 1) {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入字母+数字');
                        } else {
                            showToast('error', '', '当前输入的联系方式安全系数极低，请输入大小写字母+数字');
                        }
                        return false;
                    }
                }
            }
            if ($('#email').is(":checked")) {
                var email = $("input[name='email']").val();
                var reg = /^([0-9a-zA-Z_-])+@([0-9a-zA-Z_-])+((\.[0-9a-zA-Z_-]{2,3}){1,2})$/;
                if (!email || email == null || email == "" || email == 0) {
                    showToast('error', '', '\'邮箱地址 必填哦！');
                    return false;
                } else if (email.length >= 1 && !reg.test(email)) {
                    showToast('error', '', '您输入的邮箱地址 填写有误！');
                    return false;
                }
            }
            if ($('#pwdforsearch1').is(":visible")) {
                var pwdforsearch1 = $("input[name='pwdforsearch1']").val();
                if (!pwdforsearch1 || pwdforsearch1 == null || pwdforsearch1 == "" || pwdforsearch1 == 0) {
                    showToast('error', '', '请填写取卡密码！');
                    return false;
                } else if (pwdforsearch1.length < 6 || pwdforsearch1.length > 20) {
                    showToast('error', '', '请填写6-20位取卡密码！');
                    return false;
                }
            }
            if ($('#pwdforsearch2').is(":visible")) {
                var pwdforsearch2 = $("input[name='pwdforsearch2']").val();
                if ((pwdforsearch2.length >= 1 && pwdforsearch2.length < 6) || (pwdforsearch2.length > 20)) {
                    showToast('error', '', '您输入的取卡密码 不是6-20位！');
                    return false;
                }
            }
            var couponcode = $("input[name='couponcode']").val();
            if (couponcode.length >= 1 && couponcode.length != 16) {
                showToast('error', '', '您输入的优惠券 不是16位！');
                return false;
            } else {
                showToast('success', '', '您输入全部正确^_^ 正在提交订单...');
                return true;
            }
        }
    </script><script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script></head>

    
    
	


<body>
<input type="hidden" name="is_contact_limit" value="default">
<input type="hidden" name="limit_quantity" value="1">
<!--顶部-->
<header>
            
	    <div class="container">
        <ul>
            <li><a href="../..">首页</a></li>
            <li><a href="http://www.258kuai.cn/orderquery">订单查询</a></li>

        </ul>
        <a href="http://wpa.qq.com/msgrd?v=1&amp;uin=2115474828&amp;site=a8tg.com&amp;menu=yes" target="_blank" class="qq_btn"><img src="${pageContext.request.contextPath }/statics/config/qq.png" alt="">联系卖家</a>
    </div>
</header>
<form name="p" method="post" action="http://www.258kuai.cn/pay/order" onsubmit="return checkform2();" target="_blank" class="nyroModal">
<!--卖家公告-->
<div class="banner_bg">
  <div class="banner">
    <div class="banner_right"></div>
    <div class="mjgg">
      <h3>公告</h3>
      <p>个人商业发卡网搭建QQ1263262065</p>
    </div>
    <div class="ewm_bg">
      <div class="ewm">
      </div>
        <br>
        扫描二维码手机支付 </div>
    <div class="clear"></div>
  </div>
  
</div>

<div class="container">
<!--<div class="title">1. 选择商品 <span>/ CHOOSE GOODS</span><img src="/static/muban/He/img/title1.png"></div>-->
<div class="main_box">
  <div class="choose_good_form">
    <div class="my_box" style="height:auto; line-height:24px; font-size:14px; padding:10px;border: 1px solid rgba(230,152,0,0.4)">
      <div class="my_right" style="width: calc(100% - 8px);color:#55cfff;"><font size="4"><strong>商品说明</strong>：<span id="remark">5E科技</span></font></div>
    </div>
             
<style>
select{
	width: 100%;
    height: 40px;
}
</style>
<div class="my_box">
	<div class="my_left">商品分类：</div>
	<div class="my_right">
		<select name="cateid" id="cateid" onchange="selectcateid()">
			<option value="">请选择分类</option>
              <option value="14719">▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬C-F专用小号专区▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬</option>
            </select>
            </div>

</div>

<div class="my_box">
	<div class="my_left">商品名称：</div>
	<div class="my_right">
		<select name="goodid" id="goodid" onchange="selectgoodid()" style="display: inline-block;"><option value="">请选择商品</option>
        </select>
	</div>
</div>


                <input type="hidden" name="userid" value="14271">
                <input type="hidden" name="token" value="67140509e2b05a6f9167e8c69a584725">
                <input type="hidden" name="cardNoLength" value="0">
                <input type="hidden" name="cardPwdLength" value="0">
                <input type="hidden" name="is_discount" id="is_discount" value="0">
                <input type="hidden" name="coupon_ctype" value="0">
                <input type="hidden" name="coupon_value" value="0">
                <input type="hidden" name="sms_price" value="0">
                <input type="hidden" name="paymoney" value="9.13">
                <input type="hidden" name="danjia" value="8.70">
                <input type="hidden" name="is_pwdforsearch">
                <input type="hidden" name="is_coupon" value="">
    <div class="my_box">
      <div class="my_left">商品单价：</div>
      <div class="my_right"><span class="big_text" id="price">0.00</span> 元
	  <a id="isdiscount_span" style="display:none;color: #aa5400;">(查看批发价格)</a>
        <div id="discountdetail" class="tishi2" style="display:none;"></div>
      </div>
                    <script>
                        /*
                     * 显示批发优惠价格
                     */
                        $("#isdiscount_span").hover(
                            function () {
                                //1.获取数据
                                var discountdetail2='';
                                var goodid = $('#goodid').val();
                                $.post('/ajax/getdiscountdetails', {goodid: goodid}, function (data) {
                                    console.log(data);
                                    //2.组装数据
                                    $('#discountdetail').html(data);
                                });
                                //3.显示数据
                                var discountdetail2 = $('#discountdetail').html();
                                if(discountdetail2!='') {
                                    //显示样式
                                    var index = layer.tips(discountdetail2, $('#isdiscount_span'), {
                                        tips: [2, '#4B4B4B'],
                                        time: 0
                                    });
                                    //显示数据
                                    $(this).attr("data-index", index);
                                }
                            },
                            //4.关闭显示
                            function () {
                                layer.close($(this).attr("data-index"));
                            });
                    </script>
                </div>
                <input type="hidden" name="paymoney" value="9.13">
                <input type="hidden" name="danjia" value="8.70">
        <div class="my_box">
      <div class="my_left">购买数量：</div>
      <div class="my_right">
        <input name="quantity" onkeyup="changequantity2()" type="text" value="1" title="本商品最少购买数量为1件！">
        <span class="green" id="goodInvent" style="position: absolute;right: 0;top:0;"><span style="color:green">库存少量</span><input type="hidden" name="kucun" value="3"></span> </div>
    </div>
	
    <div class="my_box">
      <div class="my_left">联系方式：</div>
      <div class="my_right">
        <input class="phone_num" onmouseout="checkcontact2()" name="contact" type="text" placeholder="推荐填写手机号或QQ号 订单查询的重要凭证!">
      </div>
    </div>
	
    <!--<div class="my_box">-->
      <!--<div class="my_left">特色服务：</div>-->
      <!--<div class="my_right">-->
        <!--<label class="lab1">-->
<!--<input type="checkbox" name="is_rev_sms" value="1" id="is_rev_sms" onclick="checkis_rev_sms2()" data-cost="0.2">短信提醒[收费0.2元]</label>-->
        <!--<label class="lab1">-->
        <!--<input type="checkbox" name="isemail" value="1" id="email" onclick="checkis_email2()" style="display: none;">-->
        <!--邮箱提醒[免费]</label>-->
      <!--</div>-->
    <!--</div>-->
    <div class="my_box email_show" style="display:none"> 
      <div class="my_left">邮箱地址：</div>
      <div class="my_right">
        <input type="text" onmouseout="checkemail2()" name="email" placeholder="填写你常用的邮箱地址">
      </div>
    </div>
    <div class="my_box" id="pwdforsearch1" style="display:none">
      <div class="my_left">取卡密码：</div>
      <div class="my_right">
        <input type="text" onmouseout="checkpwdsearch2()" name="pwdforsearch1" placeholder="[必填]请输入取卡密码（6-20位）">
      </div>
    </div>
    <div class="my_box" id="pwdforsearch2" style="display:none">
      <div class="my_left">取卡密码：</div>
      <div class="my_right">
        <input type="hidden" name="is_pwdforsearch" value="" id="is_pwdforsearch">
        <input type="text" name="pwdforsearch2" onmouseout="checkpwdsearch1(),checkPwd()" placeholder="[选填]请输入取卡密码（6-20位）">
      </div>
    </div>
    <div class="my_box" style="display:none" id="goodCoupon">
      <div class="my_left">优惠券：</div>
      <div class="my_right">
        <input type="text" name="couponcode" placeholder="请填写你的优惠券" onblur="checkCoupon()" onmouseout="checkcoupon2()" style="width: 200px">
        <span id="checkcoupon" style="display:none; color: red"><img src="${pageContext.request.contextPath }/statics/config/load.gif"> 正在查询...</span> </div>
    </div>
    <div class="my_box" style="display:none" id="couponcode">
      <div class="my_left">优惠卷详情：</div>
      <div class="my_right"> <span id="checkcoupon" style="display:none">正在查询...</span> </div>
    </div>

    <div class="my_box" style="display:none" id="couponcode">
	<input type="hidden" name="is_coupon" value="">
      <div class="my_left">折价率：</div>
      <div class="my_right"> <span class="rate">100</span><span>%</span> </div>
    </div>
    <div class="my_box" style="height:auto; font-size:18px; margin-bottom:0 ; padding:0 10px;color:#e69800;background: #fff;border: none"> 应付总额：<font class="f-e69800"><b class="tprice">9.13</b>元<i id="tfee">(含手续费: 0.43元)</i></font></div>
  </div>
  <div class="user_info"> <img src="${pageContext.request.contextPath }/statics/config/58adedef35f0d18f.png" width="300"><br>
    <h3>卖家信息</h3>
    <p>店铺名称： Test<br>
      商户网站：<a href="http://www.258kuai.cn/links/1BB905F7" target="_blank" style="color:white;">点击浏览</a><br>
      商品类型： 数字卡密<br>
      发货类型： 自动发货<br>
      卖家Q Q：<a href="http://wpa.qq.com/msgrd?v=1&amp;uin=1263262065&amp;site=a8tg.com&amp;menu=yes" target="_blank" style="color:white;">1263262065</a></p>
  </div>
  <div class="clear"></div>
</div>
  <!-- <div class="title">2. 付款方式 <span>/ PAYMENT</span><img src="/static/muban/He/img/title2.png"></div> -->
  <div class="main_box">
            <div class="pay_box">
                <div class="pay_menu">
                    <!--                扫码支付-->
                    <div class="pay pay_cj_1 checked1"><img src="${pageContext.request.contextPath }/statics/config/pay1.png" width="18" height="18" style="vertical-align:middle"> 扫码支付</div>
                    <!--                网银支付-->
                    <!--<div class="pay pay_cj_2"><img src="/static/muban/He/img/pay2.png" width="23" height="18" style="vertical-align:middle"> 网银支付</div>-->
                </div>

                <!--                扫码支付-->
                <div class="pay_list1">
                    <input type="hidden" name="feePayer" value="2">
                    <input type="hidden" name="fee_rate" value="0.05">
                    <input type="hidden" name="min_fee" value="0.01">                      
<!-- 0 -->
                    <!---->
                    <!---->
 <label class="lab3" for="pay_item_197" data-pid="197">
                                
                                    <input id="pay_item_197" name="pid" style="display:none;border:0;" value="197" type="radio" checked=""> <img width="150" src="${pageContext.request.contextPath }/statics/config/alipay.png">
                                
                            </label>
                    <!-- 0 -->
                    <!---->
                    <!---->
                        
					                                    </div>
                <!--                网银支付-->

                                <div id="submit">
                  <button name="check_pay" class="check_pay" type="submit">确认支付</button>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    <div class="acontainer">
        <div class="planet"></div>
    </div>
  
  
<script>
    //邮箱显示
    /* $('.choose-item-t').click(function(){
        console.log(1);
        $(this).addClass('on').siblings().removeClass('on');

        var n = $(this).index();
        if (n==0){
            $('.email-show').hide();
            $('.contact-show').focus();
        }else{
            $('.email-show').show();
        }

    }) */
    /* $('.choose-item-t').click(function () {
        if($(this).children("input").attr('checked')){
            $(this).addClass("on");
        }
        else{
            $(this).removeClass("on");
        }
    }); */
    //支付方式 切换
    /* $('.paytype-tab li').click(function(){
        var n = $(this).index();
        $(this).addClass('on').siblings().removeClass('on');
        $('.paytype-body').hide();
        $('.paytype-body').eq(n).show();
        $('.paytype-item').removeClass('on');
    }) */
    //支付选择
    $('.paytype-item').click(function () {
        $('.paytype-item').removeClass('on');
        $('.paytype-item').prop("checked",false);
        $(this).addClass('on');
        $('#pay_item_'+$(this).data('pid')).prop("checked",true);
    })

    $(function(){
        $('.paytype-item:eq(0)')[0].click();
    })
</script>
<script src="${pageContext.request.contextPath }/statics/config/qrcode.min.js"></script>
<script>
    function checkCoupon2() {
        var couponcode = $.trim($('[name=couponcode]').val());
        if (cateid == 0) {
            cateid = $('#cateid').val();
        }
        $('#checkcoupon').show();
        $.post('/ajax/checkcoupon', {
            couponcode: couponcode,
            userid: userid,
            cateid: cateid,
            t: new Date().getTime()
        }, function (data) {
            if (data) {
                data = eval(data);
                if (data.result == 0) {
                    $('#checkcoupon').html(data.msg);
                    $('[name=is_coupon]').val("0");
                } else if (data.result == 1) {
                    $('[name=coupon_ctype]').val(data.ctype);
                    $('[name=coupon_value]').val(data.coupon);
                    $('[name=is_coupon]').val("1");
                    $('#checkcoupon').html('<span class="blue">此优惠券可用</span>');
                    goodschk();
                } else {
                    $('#checkcoupon').html('验证失败！');
                }
            }
        }, "json");
    }

    function is_pwdforsearch2() {
        var pwdforsearch2 = $("input[name='pwdforsearch2']").val();
        if (pwdforsearch2 != '') {
            $("input[name='is_pwdforsearch2']").val("1");
        } else {
            $("input[name='is_pwdforsearch2']").val("");
        }
    }

    function is_pwdforsearch() {
        var pwdforsearch1 = $("input[name='pwdforsearch1']").val();
        if (pwdforsearch1 != '') {
            $("input[name='is_pwdforsearch2']").val("1");
        } else {
            $("input[name='is_pwdforsearch2']").val("");
        }
    }
    $('input[name="is_rev_sms"]').click(function () {
        if ($(this).is(':checked')) {
            $('[name=sms_price]').val(
                "0.2"
            );
            $('.choose_sms').addClass('on');
            $('.choose_email').removeClass('on');
            $(".email-show").hide();
            $("#email").prop("checked", false);

            console.log('email1');
        } else {
            console.log('email2');
            $('[name=sms_price]').val(0);
            $('.choose_sms').removeClass('on');
        }
        goodDiscount();
        goodschk();
        updateContactLimit();
    });
	var qrcode = new QRCode(document.getElementById("qrcode"), {
        text: "http://www.520na.cn/links/1BB905F7",
         width: 120,
        height: 120,
            colorDark: "#000000",
            colorLight: "#ffffff",
        correctLevel : QRCode.CorrectLevel.H
    });
</script></div>
<div class="foot">
Copyright © 2019-2022 258发卡网版权所有</div>
<!-- 商户统计代码 -->



</form><div style="position: static; display: none; width: 0px; height: 0px; border: none; padding: 0px; margin: 0px;"><div id="trans-tooltip"><div id="tip-left-top" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-left-top.png&quot;);"></div><div id="tip-top" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-top.png&quot;) repeat-x;"></div><div id="tip-right-top" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-right-top.png&quot;);"></div><div id="tip-right" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-right.png&quot;) repeat-y;"></div><div id="tip-right-bottom" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-right-bottom.png&quot;);"></div><div id="tip-bottom" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-bottom.png&quot;) repeat-x;"></div><div id="tip-left-bottom" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-left-bottom.png&quot;);"></div><div id="tip-left" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-left.png&quot;);"></div><div id="trans-content"></div></div><div id="tip-arrow-bottom" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-arrow-bottom.png&quot;);"></div><div id="tip-arrow-top" style="background: url(&quot;chrome-extension://dodigcollhkcpflanilhcefbhbagajfm/imgs/map/tip-arrow-top.png&quot;);"></div></div><div class="iciba-extension-wrap" style="display: none;"><div class="iciba-extension J_Iciba">            <div class="iciba-extension-header">                <span class="iciba-extension-logo"></span>                <span>快捷翻译 - 快到离谱！</span>                <div class="iciba-extension-tools">                    <a href="mailto:ni184775761@gmail.com" target="_blank" title="联系作者" class="fa fa-envelope-o"></a>                    <a href="https://github.com/neekey/iciba/issues/new" target="_blank" title="意见反馈" class="fa fa-question-circle"></a>                </div>            </div>            <div class="iciba-extension-search-wrap">                <input type="text" class="iciba-extension-keyword J_IcibaKeyword" placeholder="输入英文/中文，单词/长句">                <span class="iciba-extension-search J_IcibaSearch">                    <i class="fa fa-search"></i>                </span>            </div>            <div class="iciba-extension-result J_IcibaResult" style="display: none;">            </div>            <div class="iciba-extension-settings J_IcibaSettings">                <div class="item J_Item" data-name="setting_huaci"><i class="fa fa-square-o"></i> 划词翻译</div>                <div class="item J_Item" data-name="setting_auto_pronounce"><i class="fa fa-square-o"></i> 自动发声</div>                <div class="item J_Item" data-name="setting_auto_add_to_my_note"><i class="fa fa-square-o"></i> 自动添加生词本</div>            </div>        </div></div><div class="layui-layer-move"></div><div class="iziToast-wrapper iziToast-wrapper-bottomLeft" style="z-index: 2147483647;"></div></body></html>