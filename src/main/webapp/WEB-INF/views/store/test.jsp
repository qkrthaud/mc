<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=hjn22xjjiy&submodules=geocoder"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
@charset "utf-8";

@font-face {
  font-family:SpeedeeK;
  font-weight:400;
  font-style:normal;
  src: url(../font/Speedee_K_L.eot);
  src: url(../font/Speedee_K_L.eot#iefix) format('embedded-opentype'),
       url(../font/Speedee_K_L.woff) format('woff'),
       url(../font/Speedee_K_L.ttf) format('truetype'),
       url(../font/Speedee_K_L.svg#webfont) format('svg')}
@font-face {
  font-family:SpeedeeK;
  font-weight:500;
  font-style:normal;
  src: url(../font/Speede2019-11-13e_K_R.eot);
  src: url(../font/Speedee_K_R.eot#iefix) format('embedded-opentype'),
       url(../font/Speedee_K_R.woff) format('woff'),
       url(../font/Speedee_K_R.ttf) format('truetype'),
       url(../font/Speedee_K_R.svg#webfont) format('svg')}
@font-face {
  font-family:SpeedeeK;
  font-weight:600;
  font-style:normal;
  src: url(../font/Speedee_K_B.eot);
  src: url(../font/Speedee_K_B.eot#iefix) format('embedded-opentype'),
       url(../font/Speedee_K_B.woff) format('woff'),
       url(../font/Speedee_K_B.ttf) format('truetype'),
       url(../font/Speedee_K_B.svg#webfont) format('svg')}

*{-webkit-text-size-adjust:none;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
html{margin:0;height:100%}
body{height:100%;background:#fff;word-wrap:break-word;word-break:keep-all}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,select,textarea,p,blockquote,th,td,button{margin:0;padding:0}
body,input,select,textarea,button,pre{font-family:SpeedeeK, Malgun Gothic,'留묒� 怨좊뵓', Dotum,'�뗭�', Arial, sans-serif;color:#808080;font-size: 16px;font-weight: 500;line-height:1.9;}
section,nav,article,aside,hgroup,header,footer,iframe{display:block}
form,fieldset,img,input,button {border:0 none;background:none}
img {margin:0;padding:0;line-height:0;vertical-align:top;}
em{font-style:normal}
h1,h2,h3,h4,h5,h6,strong,b{font-weight:500}
ul,ol,li{list-style:none outside}
a{text-decoration:none;color:inherit}
legend{display:block;width:0;height:0;text-indent:-9000px;overflow:hidden}
caption{overflow:hidden;margin-left:-9999px;width:1px;height:1px;font-size:1px;line-height:0}
label{cursor:pointer}
.hide, .skip{position:absolute;width:1px;height:1px;margin:-1px;padding:0;overflow:hidden;clip:rect(0,0,0,0);border:0}
input[type='text'],input[type='password'],
input[type='tel'],input[type='number'],
input[type='search'],input[type='email'],
input[type='date']{-webkit-border-radius:0;border-radius:0;-webkit-appearance:none;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}
input[type=search]::-webkit-search-cancel-button{-webkit-appearance:none}
input[type=number]::-webkit-outer-spin-button, input[type=number]::-webkit-inner-spin-button{-webkit-appearance:none}
button, input[type='button'], input[type='submit'], input[type='reset']{cursor:pointer;border-radius:0;-webkit-border-radius:0;-webkit-appearance:none;border:0;vertical-align:middle;background:none}
table{width:100%;border-collapse:collapse;border-spacing:0;table-layout:fixed}
input{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;-webkit-border-radius:0;-webkit-appearance:none;vertical-align:middle}
/* skipmenu */
.skipMenu a{position:fixed;left:0;top:-60px;overflow:hidden;display:block;height:0;width:0;margin-bottom:-1px;text-align:center;white-space:nowrap;color:#fff;text-align:center;z-index:10001;background:#de0009;font-size:16px;font-weight:bold}
.skipMenu a:focus,
.skipMenu a:active{height:auto;width:100%;;color:#fff;line-height:60px}
.skipMenu a:focus,
.skipMenu a:active{top:0}
/* dimmed */
.dimmed{display:none;z-index:8999;position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.8)}

/* common */
.tleft{text-align:left!important}
.tright{text-align:right!important}
.tcenter{text-align:center!important}

.color01{color:#da0000!important}
.color02{color:#292929!important}

.fLight{font-weight:400}
.fBold{font-weight:600}

.mt10{margin-top:10px}
.mt20{margin-top:20px}
.mt30{margin-top:30px}

/* input */
:placeholder{color:#808080}
:-ms-input-placeholder{color:#808080}
::-ms-input-placeholder{color:#808080}
:-moz-placeholder{color:#808080}
::-webkit-input-placeholder{color:#808080}
textarea:placeholder{color:#808080}

input::-ms-clear{display:none}
input[type=password]::-ms-reveal{display:none}
input[type=password]::-ms-reveal{display:none}
input[type='text'], input[type='password'], input[type='tel'], input[type='number'], input[type='search'], input[type='email'], input[type='date']{color:#292929;height:70px;padding:0 28px;line-height:1;border:1px solid #d1d1d1;border-radius:70px;background:#fff}

textarea{width:100%;padding:25px 30px;overflow-y:auto;color:#292929;border-radius:8px;border:1px solid #d1d1d1;background:#f8f8f8;resize:none}

.formWrap{display:inline-block;position:relative}
.formWrap + .formWrap{margin-left:35px}
.formWrap input[type=text]{background:#f8f8f8}
.formWrap > *{vertical-align:middle}
.formWrap label + input[type=text], .formWrap label + input[type=password], .formWrap label + input[type=tel], .formWrap label + .selectWrap{margin-left:15px}
.formWrap input[type=checkbox], .formWrap input[type=radio]{/*display:none*/position:absolute;right:15px;top:15px}
.formWrap input[type=checkbox]:focus+label, .formWrap input[type=radio]:focus+label{width:100%;height:42px;border:1px dotted #000}
.formWrap input[type=checkbox] + label, .formWrap input[type=radio] + label{display:inline-block;padding-right:54px;line-height:34px;color:#292929}
.formWrap input[type=checkbox] + label:before, .formWrap input[type=radio] + label:before{display:inline-block;content:'';position:absolute;right:0;top:0;width:34px;height:34px;background:url(../images/common/bg_form.png) no-repeat}
.formWrap input[type=checkbox]:checked + label:before{background-position:-34px 0}
.formWrap.labelR input[type=checkbox] + label, .formWrap.labelR input[type=radio] + label{padding-right:0;padding-left:54px}/* label�� �ㅻⅨ履쎌뿉 �ㅻ뒗 寃쎌슦 */
.formWrap.labelR input[type=checkbox] + label:before, .formWrap.labelR input[type=radio] + label:before{right:auto;left:0}
.formWrap input[type=radio] + label{line-height:40px}
.formWrap input[type=radio] + label:before{width:40px;height:40px;background-position:0 -44px}
.formWrap input[type=radio]:checked + label:before{background-position:-40px -44px}
.formWrap input + .btnMC{margin-left:10px}

/* select */
.selectWrap{z-index:10 !important}
.selectWrap select{display:none}
.selectWrap{display:inline-block;height:70px;position:relative}
.selectWrap .ui-selectmenu-button{display:inline-block;position:relative;height:70px;padding:0 80px 0 40px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;line-height:68px;border:1px solid #d1d1d1;border-radius:70px;background:#f8f8f8;color:#808080;text-align:left;cursor:pointer}
.selectWrap .ui-selectmenu-button:after{display:inline-block;content:'';position:absolute;right:39px;top:28px;width:22px;height:12px;background:url(../images/common/bg_form.png) -88px 0 no-repeat}
.selectWrap .ui-selectmenu-button-open{background:#fff;border-bottom:none;border-radius:35px 35px 0 0}
.selectWrap .ui-selectmenu-button-open:after{transform:rotate(180deg)}
.selectWrap .ui-selectmenu-menu{display:none;position:absolute;border-top:1px solid #d1d1d1}
.selectWrap .ui-selectmenu-open{display:block;z-index:1}
.selectWrap .ui-selectmenu-menu .ui-menu{box-sizing:border-box}
.selectWrap .ui-menu-item{background:#fff;border:1px solid #d1d1d1;border-top:none}
.selectWrap .ui-menu-item-wrapper{display:block;padding:25px 38px 25px 38px;text-align:left;cursor:pointer}
.selectWrap .ui-state-active{background:#164b34;color:#fff}
.selectWrap .ui-menu-item:last-child, .selectWrap .ui-menu-item:last-child .ui-menu-item-wrapper{border-radius:0 0 35px 35px}


/* button */
.btnArea{margin-top:100px;text-align:center}
.btnArea .btnMC{margin:0 12px}
.btnArea .txtInfo{margin-top:45px}
.btnMC{display:inline-block;color:#292929;font-weight:600;background:#ffbc0d}
.btnMC.action{color:#fff;background:#da0000}
.btnL{min-width:200px;padding:0 50px;font-size:18px;line-height:90px;border-radius:90px}
.btnM{min-width:172px;padding:0 38px;font-size:15px;line-height:70px;border-radius:70px}
.btnS{min-width:100px;padding:0 25px;font-size:13px;line-height:34px;border-radius:34px}

.btnMore{margin-top:80px;text-align:center}
.btnMore .more{display:inline-block;width:90px;height:90px;overflow:hidden;vertical-align:top;text-indent:-9999px;background:url(../images/common/btn_more.png) 0 0 no-repeat}

.btnPaging{margin-top:60px;text-align:center}
.btnPaging a{display:inline-block;width:40px;height:40px;margin:0 3px;vertical-align:top;border:1px solid #d1d1d1;border-radius:5px;background:#fff}
.btnPaging .arrow{position:relative;overflow:hidden;text-indent:-9999px;text-align:left}
.btnPaging .arrow:before{content:'';position:absolute;top:50%;left:50%;width:14px;height:9px;margin:-4px 0 0 -7px;background:url(../images/common/bg_arrow_paging.png) 0 0 no-repeat}
.btnPaging .arrow.first:before{background-position:0 0}
.btnPaging .arrow.prev:before{background-position:0 -9px}
.btnPaging .arrow.next:before{background-position:0 -18px}
.btnPaging .arrow.last:before{background-position:0 -27px}
.btnPaging .num a{padding-top:2px;color:#292929;line-height:36px}
.btnPaging .num a[aria-selected="true"]{border-color:#ffbc0d;background-color:#ffbc0d}

.btnList{display:inline-block;min-width:200px;padding:0 50px;font-size:18px;line-height:70px;background:#e8e8e8;color:#292929;border-radius:70px}

/* tab */
.tabType01{margin:0 -40px 60px;text-align:center}
.tabType01 li{display:inline-block;margin:0 40px;vertical-align:top}
.tabType01 li a{display:block;height:40px;font-size:20px;line-height:39px}
.tabType01 li a[aria-selected="true"]{color:#db0007;font-weight:600;border-bottom:1px solid #db0007}
.tabCont, .subtabCont{display:none;position:relative}/* .tabMn �대� �� �붾툝 class */

/* table */
.tableType01{border-top:2px solid #292929;border-bottom:1px solid #292929}
.tableType01 th, .tableType01 td{text-align:center;vertical-align:top;border-top:1px solid #d1d1d1}
.tableType01 th{padding:25px 12px;color:#292929;font-weight:500}
.tableType01 th[scope="row"]{text-align:left;border-right:1px solid #292929}
.tableType01 td{padding:25px;text-align:center}
.tableType01 td.tleft{padding-left:40px}
.tableType01 thead th{border-bottom:1px solid #292929}

.tableType02{border-top:2px solid #292929;border-bottom:1px solid #292929}
.tableType02 th, .tableType02 td{text-align:center;border:solid #d1d1d1;border-width:1px 0 0 1px}
.tableType02 th:first-child, .tableType02 td:first-child{border-left:0}
.tableType02 th{padding:25px 12px;color:#292929;font-weight:500}
.tableType02 th[scope="row"]{text-align:left;border-right:1px solid #292929}
.tableType02 td{padding:25px 20px;text-align:center}
.tableType02 td.tleft{padding-left:30px}
.tableType02 thead th{border-bottom:1px solid #292929}

/* depth */
.titDep1{display:block;color:#292929;font-size: 55px;line-height:1;}
.titDep2{display:block;color:#292929;margin:0 0 30px;font-size: 30px;line-height:1;}
.titDep3{display:block;color:#292929;margin:100px 0 30px;font-size:30px;line-height:1}
.titDep3.lineT{padding-top:100px;border-top:1px solid #d1d1d1}
.titDep4{display:block;margin:50px 0 30px;color:#292929;font-size:20px;line-height:1}

.txtInfo b{color:#292929}
.txtLink{display:inline-block;position:relative}
.txtLink:after{content:'';position:absolute;bottom:0;left:0;width:100%;border-bottom:1px solid #da0000}

.txtInfo02{font-size:20px;color:#292929;line-height:1.7}
.txtInfo02+.txtInfo{margin-top:5px}

.listDep1{margin-top:40px}
.listDep1>li{margin-top:6px;padding-left:16px}
.listDep1>li:before{content:'';display:inline-block;width:6px;height:6px;margin:-2px 10px 0 -16px;vertical-align:middle;border-radius:100%;background:#ffbb0a}
.listDep1>li:first-child{margin-top:0}

.notiTxt{color:#da0000}
.notiTxt:before, .notiTxt li:before{display:inline-block;content:'*';margin-right:3px;vertical-align:top}
ul.notiTxt:before{display:none}

.tabType01 + .titDep2{padding-top:20px}

/* swiper */
.basicSwiper .swiper{overflow:hidden;width:100%}
.basicSwiper .swiper ul{width:1000000px}
.basicSwiper .swiper-notification{display:none}

.basicSwiper.swiperType02{position:relative;background:url(../images/whats/bg_swiper02.png) 0 0 no-repeat}
.basicSwiper.swiperType02 .ctrl{position:absolute;top:210px;left:-120px;width:70px;height:70px;overflow:hidden;text-indent:-9999px;background:url(../images/whats/bg_swiper02.png) 0 0 no-repeat}
.basicSwiper.swiperType02 .ctrl.next{left:auto;right:-120px;transform:rotate(180deg)}
.basicSwiper.swiperType02 .swiper{overflow:hidden}
.basicSwiper.swiperType02 .swiper ol, .basicSwiper.swiperType02 .swiper ul{width:10000px}
.basicSwiper.swiperType02 .swiper li{float:left}

/* layer */
.popLayer{display:none;position:fixed;top:0;left:50%;margin:100px auto;z-index:9999}
.popLayer.layerS{width:500px;margin-left:-250px}
.popLayer.layerL{width:540px;margin-left:-370px}
.popLayer .layCont{overflow:hidden;border-radius:10px;border:1px solid #ffbc0d;background:#fff}
.popLayer .layCont .scroll{overflow-y:auto;padding:40px 50px 0}
.popLayer .layCont .scroll:after{content:'';display:block;height:55px}
.popLayer .layClose{position:absolute;top:-44px;right:-44px;width:90px;height:90px;overflow:hidden;text-indent:-9999px;background:url(../images/common/btn_close.png) 0 0 no-repeat}

.popLayer.layerType02 .layCont .scroll{padding:60px 60px 5px}/* �곸뿭 諛붽묑履쎌쑝濡� 踰꾪듉�� �꾩튂�섎뒗 type */
.popLayer.layerType02 .btnArea{margin-top:0;padding-top:40px}

.popLayer.layerType03 .layCont{border:0}/* �앹뾽 �곷떒�� �щ갚 �녿뒗 type */
.popLayer.layerType03 .layCont .scroll{padding:0}
.popLayer.layerType03 .layCont .scroll:after{display:none}
.popLayer.layerType03 .layCont .scroll .contHead .img img{width:100%;border-radius:10px 10px 0 0}
.popLayer.layerType03 .layCont .scroll .contBtm{padding:45px 50px 60px;overflow-y:auto;max-height:calc(100% - 300px);max-height:-webkit-calc(100% - 300px);max-height:-moz-calc(100% - 300px);border:1px solid #ffbc0d;border-top:0;border-radius:0 0 10px 10px}

.popLayer .formWrap + .formWrap{margin-left:25px}
.popLayer .formWrap.labelR input[type=checkbox] + label, .popLayer .formWrap.labelR input[type=radio] + label{padding-left:55px}
.popLayer .formWrap .btnM{line-height:50px;border-radius:50px}
.popLayer input[type=text], .popLayer input[type='text'], .popLayer input[type='password'], .popLayer input[type='tel'], .popLayer input[type='number'], .popLayer input[type='search'], .popLayer input[type='email'], .popLayer input[type='date']{height:50px;line-height:48px;padding:0 25px}
.popLayer .selectWrap{height:50px}
.popLayer .selectWrap .ui-selectmenu-button{height:50px;padding:0 60px 0 25px;line-height:48px;border-radius:27px}
.popLayer .selectWrap .ui-selectmenu-button:after{top:20px;right:29px;width:16px;height:9px;background-position:-110px 0}
.popLayer .selectWrap .ui-selectmenu-button-open{border-radius:27px 27px 0 0}
.popLayer .selectWrap .ui-menu-item-wrapper{padding:9px 25px}

.popLayer .popTit{font-size:24px}

/* layout */
.wrapper {overflow:hidden;position:relative;min-width:1280px;min-height:100%;padding:140px 0 230px}
.wrapper footer {position:absolute;bottom:0;left:0;right:0}
.headArea, .footArea{width:1168px;margin:0 auto}
.inner{position:relative;width:1168px;margin:0 auto}
.inner.type02 {width:100%}

.header{position:absolute;top:0;left:0;right:0;min-width:1280px;height:141px;text-align:center;border-bottom:1px solid #ffbc0d;background:#fff}
.header .headArea{height:100%}
.header .hLogo{position:relative;top:28px;float:left;z-index:1}
.header .hLogo a{display:block}
.header .hMenu{height:100%;padding:52px 0}
.header .hMenu .menu{position:absolute;top:0;left:0;right:0;text-align:center;background:#fff}
/* 2021.05.31 �섏젙 */
.header .hMenu .menu .depth1{display:inline-block;padding-left:0;text-align:left;vertical-align:top;margin-left:-136px;}
/* 2021.05.31 �섏젙 �� */
.header .hMenu .menu .depth1 a{display:inline-block;vertical-align:top}
.header .hMenu .menu .depth1>li{float:left}
.header .hMenu .menu .depth1>li .dth1{position:relative;margin-right:85px;padding:0 10px;color:#292929;font-size:20px;line-height:140px;font-weight:600}
.header .hMenu .menu .depth1>li .dth1.current:before{content:'';position:absolute;bottom:55px;left:10px;right:10px;border-bottom:1px solid #000}
.header .hMenu .menu .depth1>li.on .dth1:after,
.header .hMenu .menu .depth1>li:hover .dth1:after{content:'';position:absolute;bottom:-3px;left:0;right:0;border-bottom:3px solid #f5bd43}
.header .hMenu .menu .depth2{display:none;padding:35px 10px 45px}
.header .hMenu .menu .depth2>li{margin-top:15px}
.header .hMenu .menu .depth2>li:first-child{margin-top:0}
.header .hMenu .menu .depth2>li .dth2{line-height:1.6;border-bottom:1px solid transparent}
.header .hMenu .menu .depth2>li .dth2:hover,
.header .hMenu .menu .depth2>li .dth2:focus{color:#000;border-bottom:1px solid #000}
.header .hMenu .util{position:relative;float:right;margin:0 0 0 50px}
/*2021.5.31 異붽�*/
.header .hMenu .util .renter{display:inline-block;width:80px;padding-top:2px;color:#fff;font-size:13px;font-weight:600;line-height:34px;text-align:center;border-radius:48px;background:#db0007;}
/*2021.5.31 異붽� ��*/
.header .hMenu .util .lang{display:inline-block;width:80px;padding-top:2px;color:#fff;font-size:13px;font-weight:600;line-height:34px;text-align:center;background:#264a36;border-radius:48px}
.header .hMenu .util .recruit{display:inline-block;width:80px;padding-top:2px;color:#fff;font-size:13px;font-weight:600;line-height:34px;text-align:center;background:#d87e00;border-radius:48px}
.header .hMenu .util .srch{margin-left:26px;width:36px;height:36px;text-indent:-9999px;background:url(../images/common/ico_search.png) 0 0 no-repeat}
.header.open{z-index:11}
.header.open .hMenu .menu .depth1:before{content:'';position:absolute;top:140px;left:0;right:0;height:1px;background:#e2e2e2}
.header.open .hMenu .menu .depth1:after{content:'';position:absolute;bottom:0;left:0;right:0;height:1px;background:#ffbc0d}
.header.open .hMenu .menu .depth1 .dth1.current:before{display:none}
.header.open .hMenu .menu .depth1 .depth2{display:block}
.header.fixed{position:fixed;height:81px;z-index:11}
.header.fixed .hLogo{top:18px}
.header.fixed .hLogo img{height:45px}
.header.fixed .hMenu{padding:22px 0}
.header.fixed .hMenu .menu .depth1>li .dth1{line-height:80px}
.header.fixed .hMenu .menu .depth1>li .dth1.current:before{bottom:25px}
.header.fixed.open .hMenu .menu .depth1:before{top:80px}

.header .dummy{height:100%;overflow:hidden}/* 媛��대뱶 */
.header.fixed .dummy img{margin-top:-140px}

.topSearch{display:inline-block}
.topSearch .srchField{display:none;position:fixed;top:50%;left:50%;width:1168px;margin:-130px 0 0 -584px;z-index:9999}
.topSearch .srchField .form{position:relative;margin:40px 0;padding-right:184px}
.topSearch .srchField .form input{width:100%;padding:0 38px}
.topSearch .srchField .form button{position:absolute;top:0;right:0;width:172px}
.topSearch .srchField .close{width:90px;height:90px;margin-top:100px;overflow:hidden;text-indent:-9999px;background:url(../images/common/btn_close.png) 0 0 no-repeat}
.topSearch.open .srchField, .topSearch.open .dimmed{display:block}
#container{width:100%;}

.content .contArea{padding: 30px 0 60px;}
.content .contArea.bgG{background:#fbfbfb}
.content .contArea>:first-child{margin-top:0!important}
.content .contArea>.inner{position:static!important}

/**2020.06.10**/
.aside{position:fixed;bottom:110px;left:49%;margin:0 0 0 635px;z-index:10}
.aside .goDelivery{display:block;width:121px;height:121px;overflow:hidden;text-indent:-9999px;background:url(../images/common/btn_delivery_04.png) 0 0 no-repeat; background-size:cover;}

/*2022.1.12 go_story */
.aside .go_story{display:block;width:121px;height:121px;overflow:hidden;text-indent:-9999px;background:url(../images/common/btn_story_04.png) no-repeat center 0;margin-bottom:20px;}

.aside.fixedB {position:absolute;bottom:378px}
.btnTop{position:fixed;bottom:45px;left:50%;width:51px;height:48px;margin:0 0 0 650px;background:url(../images/common/btn_top_04.png) 0 14px no-repeat;text-indent:-9999px;font-size:1px;z-index:10}
.btnTop.fixedB{position:absolute;bottom:310px}
/**2020.06.10**/

.footer{color:#fff;font-size:14px;line-height:1.6;text-align:center;background:#292929}
.footer .footArea{padding:45px 0 55px;text-align:left}
.footer .footArea:after{content:'';display:block;clear:both}
.footer .fUtil{float:left;width:190px}
.footer .fUtil li+li{margin-top:5px}
.footer .fUtil .privacy {color:yellow}
.footer .fSns{float:right}
.footer .fSns li{float:left;margin-left:20px}
.footer .fSns a{display:block;width:40px;height:40px;overflow:hidden;text-indent:-9999px;background:url(../images/common/ico_sns.png) 0 0 no-repeat}
.footer .fSns a.fb{background-position:0 0}
.footer .fSns a.ig{background-position:0 -40px}
.footer .fSns a.yt{background-position:0 -80px}
.footer .fSns a.ks{background-position:0 -120px}
.footer .fSns .web_accessibility {margin-top:-5px;}
.footer .fSns .web_accessibility a {width:100px; height:71px; text-indent:0; background:none;}
.footer .fSns .web_accessibility a img {width:100%;}
.footer .fInfo{float:left;font-weight:400;opacity:.6}
.footer .fInfo .info li+li{margin-top:5px}
.footer .fInfo .copy{margin-top:5px}

/* modal popup */
.popNoti{position:absolute;top:50px;left:50px;z-index:9999}
.popNoti .pCont{position:relative;max-width:690px}
.popNoti .pCont img{width:100%;min-width:480px}
.popNoti .pCtrl{position:relative;padding:23px 30px;background:#ffbc0d}
.popNoti .pCtrl .check{display:inline-block;position:relative;min-height:24px;vertical-align:top}
.popNoti .pCtrl .check input{position:absolute;top:0;left:0;width:24px;height:24px;opacity:1}
.popNoti .pCtrl .check label{padding-left:34px;color:#292929}
.popNoti .pCtrl .check input+label:before{content:'';display:inline-block;width:24px;height:24px;margin:0 10px 0 -34px;vertical-align:middle;background:#fff;border-radius:5px}
.popNoti .pCtrl .check input:checked+label:before{background:#292929 url(../images/common/bg_check.png) 50% 50% no-repeat}
.popNoti .pCtrl .check input:focus+label:before{outline:1px dotted #292929}
.popNoti .pCtrl .close{position:absolute;top:0;right:0;width:200px;height:100%;color:#fff;background:#292929}

/* main */
.mainEvent.basicSwiper{position:relative;max-width:1900px;margin:0 auto}
.mainEvent .swiper li{position:relative;float:left;height:540px;overflow:hidden;text-align:center}
.mainEvent .swiper li a{display:inline-block;margin:0 -100%;vertical-align:top}
/* 2021.1.4 �뱀젒洹쇱꽦 */
.mainEvent .swiper li span{display:inline-block;margin:0 -100%;vertical-align:top}
/* 2021.1.4 �뱀젒洹쇱꽦 �� */
.mainEvent .swiper li img{height:100%}
/* 2020.6.4 KV 鍮꾨뵒�� 異붽� */
.mainEvent .swiper li video{width:100%;}
.mainEvent .swiper li.video .video-box{width:1920px;overflow:hidden;margin:0 auto;}
.mainEvent .swiper li.video .sound{position:absolute;left:30px;top:30px;width:30px;height:30px;background-image:url(../images/main/icon_sound_on.png);background-repeat:no-repeat;background-size:100% auto;font-size:0;}
.mainEvent .swiper li.video .sound.off{background-image:url(../images/main/icon_sound_off.png);}
/* 2020.6.4 KV 鍮꾨뵒�� 異붽� �� */
.mainEvent .indicator{position:absolute;left:50%;bottom:27px;width:366px;margin-left:-183px;padding-left:66px}
.mainEvent .indicator .timer{display:block;position:relative;width:300px;height:6px;overflow:hidden;text-indent:-9999px;vertical-align:top;border-radius:6px;background:#fff}
.mainEvent .indicator .timer .bar{position:absolute;top:0;left:0;height:100%;border-radius:6px;background:#ffbc0d}
/* 2020.6.4 css �섏젙 */
.mainEvent .indicator .play{position:absolute;top:50%;left:0;width:36px;height:36px;margin-top:-18px;overflow:hidden;text-indent:-9999px;background:url(../images/main/bg_swiper_new.png) -92px 0 no-repeat}
.mainEvent .indicator .play.pause{background-position:-92px -36px}
/* 2020.6.4 css �섏젙 �� */
.mainEvent .ctrl{position:absolute;top:50%;width:90px;height:90px;margin-top:-45px;overflow:hidden;text-indent:-9999px;background:url(../images/main/bg_swiper_new.png) 0 0 no-repeat;z-index:1}
.mainEvent .ctrl.prev{left:0}
.mainEvent .ctrl.next{right:0;background-position:0 -90px}

.mainCont{background:#fbfbfb}
.mainCont .titMain{margin:0 0 60px;color:#292929;font-size:40px;font-weight:600;line-height:1}
.mainCont .whatsNew{margin:0 0 -35px -35px}
.mainCont .whatsNew:after{content:'';display:block;clear:both}
.mainCont .whatsNew li{float:left;width:366px;height:438px;margin:0 0 35px 35px}
.mainCont .whatsNew li a{display:block;overflow:hidden;height:100%;border-radius:10px;box-shadow:0 3px 4px rgba(0,0,0,.1)}
.mainCont .whatsNew li .con{padding:24px 30px}
.mainCont .whatsNew li .con .tit{display:-webkit-box;max-height:118px;overflow:hidden;text-overflow:ellipsis;-webkit-line-clamp:3;-webkit-box-orient:vertical;font-size:18px;color:#292929;font-weight:500;line-height:1.7}
.mainCont .whatsNew li.official a{padding:76px 50px;color:#fff;font-size:28px;border-color:#de0009;background:#de0009}
.mainCont .whatsNew li.official .tit{display:block;margin-bottom:35px;padding-bottom:32px;border-bottom:1px solid #eb898e}
.mainCont .whatsNew li.official .txt{display:block;font-weight:400;line-height:1.4}

/* sub common */
.navPath li{display:inline-block}
.navPath li+li:before{content:'';display:inline-block;width:6px;height:6px;margin:0 14px 0 10px;vertical-align:middle;border-radius:100%;background:#f5bd43}

.visualArea{display:flex;position:relative;min-height: 220px;padding: 10px 0;color:#292929;text-align:left;}
.visualArea .inner{display:flex;flex-direction:column;justify-content:center;height: 200px;margin:auto;padding-bottom: 15px;}
.visualArea .titDep1{color:inherit;font-size: 50px;}
.visualArea .subCopy{min-height: 34px;margin-top: 20px;font-size: 18px;}
.visualArea .navPath{position:absolute;bottom:0;left:0}
.subMain .visualArea{min-height: 200px;padding:0;}
.subMain .visualArea .inner{display:block;height: 200px;}
.subMain .visualArea .titDep1{position:absolute;bottom: -5px;font-size:110px;font-weight:600;line-height:1;}

.titleArea{position:relative;padding:100px 0 60px}
.titleArea .inner:after{content:'';position:absolute;left:0;right:0;bottom:-62px;border-bottom:2px solid #292929}
.titleArea .navPath{position:absolute;bottom:0;right:0}
.titleArea .navPath li:last-child{color:#292929}
.titleArea+.contArea{padding-top:0}


.srchBox:before{content:'';position:absolute;left:0;right:0;height:150px;background:#f8f8f8}
.srchBox .form{position:relative;padding:40px 0;padding-right:184px}
.srchBox .form input{width:100%;padding:0 38px}
.srchBox .form .selectWrap{vertical-align:middle}
.srchBox .form .selectWrap + input{display:inline-block;width:auto;margin-left:7px;vertical-align:middle}
.srchBox .form .selectWrap .ui-selectmenu-button{background:#fff}
.srchBox .form > button{position:absolute;top:50%;right:0;width:172px;margin-top:-35px}

.focusLine{position:relative}
.focusLine:before{content:'';position:absolute;width:100%;height:100%;border:1px dotted #000}


/* menu */
.visualArea.bgMenu01{background:url(/uploadFolder/images/menu/2020/bg_visual_menu01.jpg) 50% 50% no-repeat}
.visualArea.bgMenu02{background:url(/uploadFolder/images/menu/bg_visual_menu02.jpg) 50% 50% no-repeat}
.visualArea.bgMenu03{background:url(/uploadFolder/images/menu/bg_visual_menu03.jpg) 50% 50% no-repeat}
.visualArea.bgMenu04{background:url(/uploadFolder/images/menu/bg_visual_menu04.jpg) 50% 50% no-repeat}
.visualArea.bgMenu05{background:url(/uploadFolder/images/menu/2021/bg_visual_menu05.jpg) 50% 50% no-repeat}
.visualArea.bgMenu06{background:url(/uploadFolder/images/menu/2020/bg_visual_menu06.jpg) 50% 50% no-repeat}
.visualArea.bgMenu07{background:url(/uploadFolder/images/menu/2021/pc_1922x220_mclunch_banner.jpg) 50% 50% no-repeat}
.visualArea.bgMenu08{background:url(/uploadFolder/images/menu/2022/pc_1922x220_happy_snack_kr_01.jpg) 50% 50% no-repeat}

.visualArea[class*="bgMenu"] .inner{height: 200px;}

.mcMenu{position:relative}
.mcMenu .count{position:absolute;top:-45px;left:0;color:#292929;font-size:20px;line-height:40px}
.mcMenu .count:before{content:'';display:inline-block;width:6px;height:6px;margin:-2px 10px 0 0;vertical-align:middle;border-radius:100%;background:#f5bd43}
.menuList{margin:0 0 -35px -35px}
.menuList:after{content:'';display:block;clear:both}
.menuList li{float:left;width:366px;height:352px;margin:0 0 35px 35px}
.menuList li a{display:block;height:100%;padding:20px 30px;text-align:center;border-radius:10px;border:1px solid #f8f8f8;background:#f8f8f8}
.menuList li .thumb{overflow:hidden}
.menuList li .name{margin-top:16px}
.menuList li .name .ko{display:block;color:#292929;font-size:20px;font-weight:500;line-height:1.3}
.menuList li .name .en{display:block;margin-top:12px;font-size:15px;line-height:1.3}
.menuList li a:hover,
.menuList li a:focus{border-color:#ffbc0d;background-color:#fff}

.menuView .viewTop .name{position:relative;line-height:1.3;text-align:center;z-index:1}
.menuView .viewTop .name .ko{color:#292929;font-size: 35px;}
.menuView .viewTop .name .en{display:block;margin-top: 10px;font-size: 20px;}
.menuView .viewTop .info{position:relative;margin-bottom:100px;text-align:center}
.menuView .viewTop .info:before{content:'';position:absolute;top: 20px;left: 345px;width: 300px;height: 300px;border-radius: 100%;background:#f5f5f5;}
.menuView .viewTop .info .visual{position:relative}
.menuView .viewTop .info .visual img {width : 50%}
.menuView .viewTop .info .desc{margin-top: -10px;}
.menuView .viewTop .info .desc b{color:#292929}
.menuView .viewTop .info .otherSize{margin:80px 0 100px}
.menuView .viewTop .info .otherSize .tit{font-size:20px;color:#292929;text-align:center}
.menuView .viewTop .info .otherSize ul{margin-top:25px;text-align:center}
.menuView .viewTop .info .otherSize li{display:inline-block;width:120px;vertical-align:top}
.menuView .viewTop .info .otherSize li + li{margin-left:16px}
.menuView .viewTop .info .otherSize li a{display:block}
.menuView .viewTop .info .otherSize li span{display:block;font-size:13px}
.menuView .viewTop .info .otherSize .img{position:relative}
.menuView .viewTop .info .otherSize .img:after{display:block;content:'';position:absolute;top:0;left:0;border-radius:10px;border:1px solid #d1d1d1;width:120px;height:120px}
.menuView .viewTop .info .otherSize li a:hover .img:after,
.menuView .viewTop .info .otherSize li a:focus .img:after{border-color:#ffbc0d}
.menuView .viewTop .info .otherSize .img img{display:block;width:120px;height:120px;border-radius:10px}
.menuView .viewTop .info .otherSize .menuName{margin-top:20px;line-height:1.2}
.menuView .viewTop .info .otherSize .size{margin-top:3px;line-height:1}
.menuView .viewTop .info .other .arrow{position:absolute;top: 189px;min-width:110px;height:110px;padding:10px;border-radius:110px;background:#ffbc0d;}
.menuView .viewTop .info .other .arrow .arr{position:absolute;top:50%;width:17px;height:34px;margin-top:-17px;overflow:hidden;text-indent:-9999px;background:url(../images/menu/bg_arrow.png) 0 0 no-repeat}
.menuView .viewTop .info .other .arrow .img{display:none;position:relative;width:90px;height:90px;overflow:hidden;border-radius:100%}
.menuView .viewTop .info .other .arrow .tit{display:none;position:relative;overflow:hidden;width:158px;height:90px;color:#292929;vertical-align:middle;line-height:1.5}
.menuView .viewTop .info .other .arrow.prev{left:0}
.menuView .viewTop .info .other .arrow.prev .arr{left:44px;background-position:0 0}
.menuView .viewTop .info .other .arrow.prev .img{float:left;margin-right:20px}
.menuView .viewTop .info .other .arrow.prev .tit{text-align:left}
.menuView .viewTop .info .other .arrow.next{right:0}
.menuView .viewTop .info .other .arrow.next .arr{right:44px;background-position:0 -34px}
.menuView .viewTop .info .other .arrow.next .img{float:right;margin-left:20px}
.menuView .viewTop .info .other .arrow.next .tit{text-align:right}
.menuView .viewTop .info .other .arrow:hover .img,
.menuView .viewTop .info .other .arrow:focus .img{display:block}
.menuView .viewTop .info .other .arrow:hover .tit,
.menuView .viewTop .info .other .arrow:focus .tit{display:table-cell}
.menuView .viewTop .info .other .arrow.next:hover:after,
.menuView .viewTop .info .other .arrow.next:focus:after{content:'';position:absolute;bottom:-22px;right:45px;width:106px;height:22px;background:url(../images/menu/bg_flow.png) 0 0 no-repeat}
.menuView .viewCon{margin:0 54px}

.toggle{position:relative}
.toggle + .toggle{margin-top:30px}
.toggle .tit{padding-bottom:30px;font-size: 20px;line-height:1;color:#292929;border-bottom:1px solid #292929;}
.toggle > button{position:absolute;top:-30px;left:0;width:100%;height:90px;text-indent:-9999px;font-size:1px;line-height:1px}
.toggle > button:before{display:block;content:'';position:absolute;top:30px;right:0;width:27px;height:27px;background:url(../images/common/btn_toggle.png) 0 0 no-repeat}
.toggle > button[aria-selected="true"]:before{background-position:0 -27px}
.toggle .toggleCon{padding-bottom:70px}
.toggle > button[aria-selected="false"] + .toggleCon {display:none}
.toggle > button[aria-selected="true"] + .toggleCon {display:block}

.ingrtList{margin:30px 0 -20px -20px}
.ingrtList:after{content:'';display:block;clear:both}
.ingrtList li{float:left;width:250px;height:300px;margin:0 0 20px 20px}
.ingrtList li a{display:block;height:100%;padding:33px 30px;text-align:center;border:1px solid #f8f8f8;border-radius:10px;background:#f8f8f8}
.ingrtList li .thum{height:180px}
.ingrtList li .thum img{height:180px}
.ingrtList li .name{display:block;margin-top:24px}
.ingrtList li a:hover,
.ingrtList li a:focus{border-color:#ffbc0d;background-color:#fff}
.nutrDesc.tableType01{border-top:0}
.nutrDesc.tableType01 thead th{border-top:0;border-bottom:0}
p.nutrDesc{padding-top:35px;color:#292929}
.allerDesc{padding-top:35px}
.allerDesc b{color:#292929}
.origin_info{padding-top: 35px; color: #292929}

.ingrInfo{text-align:center}
.ingrInfo .ingrTop .tit{display:block;margin-top:10px;color:#292929;font-size:45px;line-height:1.3}
.ingrInfo .ingrCon{margin-top:50px;padding-top:55px;border-top:1px solid #d1d1d1}
.ingrInfo .ingrCon .tit2{margin:40px 0 18px;color:#292929;font-size:20px}
.ingrInfo .ingrCon .tit2:first-child{margin-top:0}
.ingrInfo .ingrCon .txt b{color:#292929}

/* store */
.visualArea.bgStore01{color:#fff;background:url(/uploadFolder/images/store/bg_visual_store01.jpg) 50% 0% no-repeat}
.visualArea[class*="bgStore"] .inner{height:170px;margin:60px auto 0}

.storeFind{position:static;margin-top:-20px; position:relative;}
.storeFind .storeFind_bg {width:100%; height:100%; background:#f8f8f8; position:absolute; top:0; left:0; display:block;}
.storeFind .srvcFilter .service{margin-left:-20px}
.storeFind .srvcFilter .service:after{content:'';display:block;clear:both}
.storeFind .srvcFilter .service>span{display:block;position:relative;float:left;width:149px;height:149px;margin-left:20px; margin-bottom:20px;}
.storeFind .srvcFilter .service>span input{position:absolute;top:0;left:0;width:100%;height:100%;opacity:0}
.storeFind .srvcFilter .service>span label{display:block;color:#000;position:relative;height:100%;padding:101px 0 35px;border:1px solid #d1d1d1;border-radius:10px;text-align:center;background:#fff;font-size:15px; z-index:1;}
.storeFind .srvcFilter .service>span.on label{background:#000}
.storeFind .srvcFilter .service>span input:checked+label{color:#fff;}
.storeFind .srvcFilter .service>span input:focus+label{outline:1px dotted #292929}
.storeFind .srvcFilter .service>span label .icon {position:absolute; top:0; left:0; z-index:-1;margin-top:40%;margin-left:50%;transform:translate(-50%, -50%);-webkit-transform:translate(-50%, -50%)}

.storeResult .map{overflow:hidden;height:600px;margin-top:50px;border-radius:10px;background:#f8f8f8}
.storeResult .map .marker{display:block;position:absolute;width:54px;height:70px}
.storeResult .mcStore{margin-top:80px}
.storeResult .mcStore+.noResult {margin-top:40px;padding:40px 0 0;border-top:2px solid #292929;}
.storeResult .mc_current {display:inline-block;margin-top:30px;width:260px;height:50px;background:#ffbc0d;border-radius:50px}
.storeResult .mc_current span {display:block;padding-left:25px;background:url(../images/store/bg_ico_map.png) no-repeat 35px 50%;color:#292929}

.mcStore td{vertical-align:middle;padding:20px 0px 20px 0;}
.mcStore .tdName{text-align:left}
.mcStore .tdName .name dt{height:40px;margin:0 0 15px}
.mcStore .tdName .name dt .ico{display:inline-block;width:30px;height:30px;margin:-2px 10px 0 0;color:#fff;font-size:14px;font-weight:500;line-height:30px;text-align:center;vertical-align:middle;border-radius:100%;background:#da0000}
.mcStore .tdName .name dt .tit{color:#292929;font-size:20px;font-weight:500}
.mcStore .tdName .name dt .btnMC{vertical-align:middle;margin:-2px 0 0 26px}
.mcStore .tdName .name dd{display:block}
.mcStore .tdService{padding:10px 0px 10px;vertical-align:middle}
.mcStore .tdService .service{text-align:left;column-count:2}
.mcStore .tdService .service>span{display:block;width:200px;}
.mcStore .tdService .service>span input{position:absolute;top:0;left:0;opacity:0}
.mcStore .tdService .service>span label{cursor:text}
.mcStore .tdService .service>span input:checked+label{color:#292929; position:relative;}
.mcStore .tdService .service>span input:checked+label:before{opacity:1}
.mcStore .tdService .service>span label .icon {top:50%; left:0; transform: translateY(-50%); -ms-transform: translateY(-50%);-webkit-transform: translateY(-50%);-moz-transform: translateY(-50%);}
.mcStore .tdService .service>span label .icon>img {width:50px; vertical-align:middle}
	
.stepFlow{position:relative;margin:50px -30px 0}
.stepFlow:after{content:'';display:block;clear:both}
.stepFlow li{position:relative;float:left;width:25%;padding:0 30px;text-align:center}
.stepFlow li:before{content:'';display:block;width:307px;height:247px;margin:0 auto 20px;background-repeat:no-repeat}
.stepFlow li .step{display:block;color:#292929;font-size:20px;font-weight:600}
.stepFlow li.s1:before{background-position:0 0}
.stepFlow li.s2:before{background-position:-307px 0}
.stepFlow li.s3:before{background-position:-614px 0}
.stepFlow li.s4:before{background-position:-921px 0}

.deliveryStep.stepFlow li:before{background-image:url(../images/store/bg_delivery_step.gif)}
.deliverySrch{margin-top:40px}
.deliverySrch:after{content:'';display:block;clear:both}
.deliverySrch .sBox{float:left;width: 564px;height:406px;padding:40px 30px 50px;border-radius:40px;background:#f8f8f8;}
.deliverySrch .sBox .frm+.frm{margin-top:12px}
.deliverySrch .sBox .frwWrap{position:relative}
.deliverySrch .sBox .frwWrap span{display:inline-block;width:100%}
.deliverySrch .sBox .frwWrap span input{padding-right:180px}
.deliverySrch .sBox .frwWrap button{position:absolute;right:0;top:0;min-width:160px}

.deliverySrch .sBox .frm .addr1{width:100%}
.deliverySrch .sBox .frm .addr2{width:220px}
.deliverySrch .sBox .frm .addr3{width:100px;margin-left:7px}
.deliverySrch .sBox .frm .unit{display:inline-block;margin-left:7px;color:#292929}
.deliverySrch .sBox .txt{margin-top:25px;text-align:center}
.deliverySrch .sBox .btn{margin-top:40px;text-align:center}
.deliverySrch .rBox{position:relative;float:right;width:554px;height:406px;padding:50px;color:#000;text-align:center;border-radius:40px;background:#fff;border:6px solid #bd0017;}
.deliverySrch .rBox.ok {color:#ffc836; background:#264f36; border: 6px solid transparent;}
.deliverySrch .rBox.fail {color:#ffc836; background:#bd0017; border: 6px solid transparent;}

.deliverySrch .rBox:before{content:'';position:absolute;top:50%;left:-33px;width:7px;height:11px;margin:-5px 0 0 0;background:url(../images/common/bg_arrow.png) 0 0 no-repeat}
.deliverySrch .rBox p{position:relative;text-align:left}
.deliverySrch .rBox p strong{padding-top:10px; position:relative;font-weight:600}
.deliverySrch .rBox p span{position:relative}
.deliverySrch .rBox p:before{content:'';display:block;width:259px;height:266px;}
.deliverySrch .rBox .default{text-align:center}
.deliverySrch .rBox .default:before{background:url(../images/store/bg_delivery_result_new.png) 0 0 no-repeat; background-size:cover;}
.deliverySrch .rBox .default strong{display:inline-block;border-bottom:1px solid #000}
.deliverySrch .rBox .result{padding-top:40px}
.deliverySrch .rBox .result:before{position:absolute;top:0;left:50%;margin-left:-127px}
.deliverySrch .rBox .result strong{font-size:40px;line-height:1.3}
.deliverySrch .rBox .result span{display:block;margin-top:20px}
.deliverySrch .rBox .result.ok:before{background:url(../images/store/bg_delivery_result2.png) 0 0 no-repeat}
.deliverySrch .rBox .result.fail:before{background:url(../images/store/bg_delivery_result3.png) 0 0 no-repeat}

.mcdelivery > *{display:inline-block;vertical-align:top;}
.mcdelivery .appDown .app_store{display:inline-block;margin-top:20px;}
.mcdelivery .appDown .app_store div{display:inline-block;margin-right:10px}
.mcdelivery .appDown strong{display:block;padding-top:10px}
.app_store > div{display:inline-block;}

.driveStep.stepFlow {margin:50px 0 0;}
.driveStep.stepFlow li:before{background-image:url(../images/store/bg_drive_step.gif)}
.driveVideo{overflow:hidden;height:657px;margin-top:50px;border-radius:10px;background:#f8f8f8}

/* whats new */
.visualArea.bgWhats01{color:#fff;background:url(/uploadFolder/images/whats/bg_visual_whats02.jpg) 50% 50% no-repeat}
.visualArea[class*="bgWhats"] .inner{height:170px;margin:60px auto 0}

.cardBanner{margin:0 0 -35px -35px}
.cardBanner:after{content:'';display:block;clear:both}
.cardBanner li{float:left;width:366px;height:438px;margin:0 0 35px 35px}
.cardBanner li a{display:block;overflow:hidden;height:100%;border-radius:10px;box-shadow:0 3px 4px rgba(0,0,0,.1)}
.cardBanner li .con{padding:24px 30px}
.cardBanner li .con .tit{display:-webkit-box;display:block;height:90px;overflow:hidden;text-overflow:ellipsis;-webkit-line-clamp:3;-webkit-box-orient:vertical;font-size:18px;color:#292929;font-weight:500;line-height:1.7}
.cardBanner li .end{position:relative}
.cardBanner li .end .tmb, .cardBanner li .end .tit{opacity:0.1}
.cardBanner li .end:before {content:'';display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.05);border-radius:10px}
.cardBanner li .end span {display:block;position:absolute;top:50%;left:0;width:100%;transform:translate(0,-50%);-webkit-transform:translate(0,-50%);color:#292929;font-size:18px;text-align:center}


.bbsSearch{float:right;margin-bottom:30px}
.bbsSearch .srch input{width:300px;height:50px}
.bbsSearch .srch button{width:50px;height:50px;margin-left:8px;overflow:hidden;text-indent:-9999px;background:url(../images/common/btn_search.png) 0 0 no-repeat}

.mcBoard .count{line-height:50px}
.mcBoard .bbsList{clear:both}
.bbsList{margin-top:30px;border:solid #292929;border-width:2px 0 1px}
.bbsList>li{border-top:1px solid #d1d1d1}
.bbsList>li:first-child{border-top:0}
.bbsList>li>a{display:table;width:100%;padding:25px 0}
.bbsList>li>a .bNum{display:table-cell;width:11%;text-align:center}
.bbsList>li>a .bSubject{display:table-cell;padding:0 45px}
.bbsList>li>a .bSubject .tit{display:inline-block;color:#292929}
.bbsList>li>a .bDate{display:table-cell;width:19%;text-align:center}
.bbsList>li.notice{background:#f8f8f8}
.bbsList>li.notice .ico{display:inline-block;width:25px;height:19px;overflow:hidden;text-indent:-9999px;vertical-align:middle;background:url(../images/common/ico_notice.png) 0 0 no-repeat}
.mcBoard .noResult{margin-top:30px;border-top:2px solid #292929}
.noResult.commingSoon{padding:60px 0 430px}
.noResult.commingSoon:before{background-image:url(../images/common/bg_commingsoon.png)}

.bbsDetail .bbsTit{display:table;width:100%;padding-bottom:30px;border-bottom:5px solid #292929}
.bbsDetail .bbsTit > *{display:table-cell;vertical-align:bottom}
.bbsDetail .bbsTit h2{width:80%;font-size: 20px;color:#292929;}
.bbsDetail .bbsTit .date{width:20%;padding-bottom:7px;text-align:right}
.bbsDetail .bbsTit .date em{font-size:24px;line-height:1}
.bbsDetail .bbsTit .date em + em:before{display:inline-block;content:'';width:1px;height:18px;margin:-2px 13px 0 15px;background:#d1d1d1;vertical-align:middle}
.bbsDetail .bbsCon{padding:50px 0 60px;border-bottom:1px solid #292929}
.bbsDetail .bbsCon .imgArea{text-align:center}
.bbsDetail .btnArea{display:flex;justify-content:space-between;margin-top:60px}
.bbsDetail .btnArea .prev, .bbsDetail .btnArea .next{width:70px;height:70px;text-indent:-9999px;font-size:1px;background:url(../images/common/btn_bbs_prev.png)}
.bbsDetail .btnArea .prev{}
.bbsDetail .btnArea .btnMC{}
.bbsDetail .btnArea .next{transform:rotate(180deg)}

.applyCont01{padding-bottom:100px;border-bottom:1px solid #d1d1d1}
.applyCont01 .review{margin-top:100px}
.applyCont01 .review:after{display:block;content:'';clear:both}
.applyCont01 .review li{float:left;text-align:center}
.applyCont01 .review li + li{margin-left:60px}
.applyCont01 .review li p{margin-top:25px}
.videoArea{margin-top:50px}
.applyCont02 {padding-bottom:70px}
.applyCont02 .swiperType02{margin-top:50px}
.applyCont02 .swiperType02 .prmTxt{margin-top:40px}
.applyCont02 .swiperType02 .prmTxt dt{font-size:40px;font-weight:600;line-height:1;color:#ffbc0d}
.applyCont02 .swiperType02 .prmTxt .sTit{margin:30px 0 20px;font-size:24px;line-height:1;color:#292929}

/* 吏��꾩뿉�� 李얠븘蹂닿린 layerpop */
.storeSch .schTop {color:#292929}
.storeSch .schTop .schArea{margin-top:30px}
.storeSch .schTop .schArea > div:after{display:block;content:'';clear:both}
.storeSch .schTop .schArea .formWrap .selectWrap{margin-left:0}
.storeSch .schTop .schArea .formWrap + .formWrap{margin-left:0}
.storeSch .schTop .schArea .formWrap label{color:#292929}
.storeSch .schTop .schArea .formWrap:first-child label{display:inline-block;width:45px}
.storeSch .schTop .schArea .field01 .formWrap{float:left;width:50%}
.storeSch .schTop .schArea .field01 div:last-child{text-align:right}
.storeSch .schTop .schArea .field02{margin-top:20px}
.storeSch .schTop .schArea .field02 .formWrap{display:flex}
.storeSch .schTop .schArea .field02 .formWrap input{flex:1}
.storeSch .schTop .schArea .field02 .formWrap label{flex:none;line-height:50px}
.storeSch .schTop .notiTxt{margin-top:20px;line-height:1}
.storeSch .schTop .btnM{min-width:138px;margin-left:10px}
.storeSch .schCon{margin-top:40px}
.storeSch .schCon .map{position:relative;overflow:hidden;height:180px;border-radius:10px;background:#f8f8f8}
.storeSch .schCon .map .marker{display:block;position:absolute;width:54px;height:70px;padding-top:8px;text-indent:-9999px;font-size:1px;background:url(../images/whats/ico_marker.png) 0 0 no-repeat}
.storeSch .schCon .result{margin-top:30px}
.storeSch .schCon .result ul{border-top:2px solid #000;border-bottom:1px solid #000}
.storeSch .schCon .result li{display:flex;width:100%;padding:30px 0}
.storeSch .schCon .result li + li{border-top:1px solid #d1d1d1}
.storeSch .schCon .result li > *{vertical-align:top}
.storeSch .schCon .result li .formWrap{flex:none}
.storeSch .schCon .result .addrArea{flex:1;padding:3px 0 0 20px}
.storeSch .schCon .result .addrArea > *{display:inline-block;word-break:break-all;word-wrap:break-word}
.storeSch .schCon .result .addrArea .phone:before{display:inline-block;content:'/';margin-right:2px}
.storeSch .schCon .result .addrArea .phone span:after{display:inline;content:', '}
.storeSch .schCon .result .addrArea .phone span:last-child:after{display:none}
.storeSch .schCon .result + .btnArea{margin-top:25px}
.storeSch .schCon .noResult{margin-top:20px;padding:35px 0 30px;font-size:20px;border-top:2px solid #000;border-bottom:1px solid #000}
.storeSch .schCon .noResult:before{width:195px;height:195px;background:url(../images/common/bg_noresult_s.png) 0 0 no-repeat}

/* �대깽�몃ℓ�� */
.eventStore .topInfo {position:relative;width:780px;height:156px;margin:0 auto;text-align:center;color:#292929;border-radius:156px;background:#ffd566}
.eventStore .topInfo:before {content:'';display:block;position:absolute;top:19px;left:-33px;width:149px;height:145px;background:url(../images/store/bg_storeList.png) 0 0 no-repeat}
.eventStore .topInfo h2 {padding-top:40px;font-size:30px;font-weight:600;line-height:1.6}
.eventStore .topInfo p {font-size:20px}
.eventStore .storeList {position:relative;overflow:hidden;width:1168px;border-top:2px solid #292929;margin-top:72px}
.eventStore .storeList:after {content:'';position:absolute;bottom:0;left:0;width:100%;height:1px;background:#d1d1d1;}
.eventStore .storeList li {float:left;width:25%;padding:50px 0 50px 40px;border-bottom:1px solid #d1d1d1;background:url(../images/store/bg_ico_storeList.png) 0 50% no-repeat;font-size:20px;color:#292929}
.eventStore .storeList li.noTi {height:139px;background:none}

/* �대깽�몃ℓ��2 */
.eventStore2 .topInfo {position:relative;width:780px;height:156px;margin:0 auto;text-align:center;color:#292929;border-radius:156px;background:#febaa5;}
.eventStore2 .topInfo:before {content:'';display:block;position:absolute;top:19px;left:-33px;width:149px;height:145px;background:url(../images/store/bg_storeList2.png) 0 0 no-repeat}
.eventStore2 .topInfo h2 {padding-top:40px;font-size:30px;font-weight:600;line-height:1.6}
.eventStore2 .topInfo p {font-size:20px}
.eventStore2 .storeList {position:relative;overflow:hidden;width:1168px;border-top:2px solid #292929;margin-top:72px}
.eventStore2 .storeList:after {content:'';position:absolute;bottom:0;left:0;width:100%;height:1px;background:#d1d1d1;}
.eventStore2 .storeList li {float:left;width:25%;padding:50px 0 50px 40px;border-bottom:1px solid #d1d1d1;background:url(../images/store/bg_ico_storeList.png) 0 50% no-repeat;font-size:20px;color:#292929}
.eventStore2 .storeList li.noTi {height:139px;background:none}

.notiBox{border-radius:10px 10px;padding:35px 40px;background:#f8f8f8}
.notiBox .titDep4:first-child{margin-top:0}
.notiBox .titDep4{color:#da0000}
.notiBox p+p{margin-top:30px}

.notiBox + .stepType01{margin-top:80px}
.stepType01{color:#808080}
.stepType01 ul{display:flex;position:relative;margin:0 auto}
.stepType01 ul:before{display:block;content:'';position:absolute;left:10px;top:74px;width:95%;height:1px;background:#ffba00}
.stepType01 ul:after{display:block;content:'';position:absolute;top:69px;height:11px;min-width:357px;background:url(../images/whats/bg_step_arrow.png) no-repeat}
.stepType01.step3 ul{width:850px}
.stepType01.step3 ul:after{left:247px;background-position:0 0}
.stepType01 li{position:relative;min-width:150px;padding-top:165px;font-size:20px;text-align:center}
.stepType01 li:first-child{margin-right:auto}
.stepType01 li:last-child{margin-left:auto}
.stepType01 li:before{display:block;content:'';position:absolute;top:0;left:50%;width:150px;height:150px;margin-left:-75px;background-color:#f5f5f5;background-repeat:no-repeat;border-radius:150px}
.stepType01 li:nth-child(2):before{background-position:-150px 0}
.stepType01 li:nth-child(3):before{background-position:-300px 0}
.stepType01 li.on{color:#292929}
.stepType01 li.on:before{background-color:#ffbc0d}
.stepType01.applyStep li:before{background-image:url(../images/whats/bg_step_apply.png)}

[class*="stepType"] + .formField{margin-top:110px}
.formField .titDep2{margin-bottom:80px}
.formField .titDep2 span{display:inline-block;padding-bottom:5px;border-bottom:1px solid #292929}
.formField .titDep2 ~ .titDep2{margin-top:100px}
.formField li .tit{font-size:24px;color:#292929;line-height:1}
.formField li .tit .fLight{display:inline-block;margin-left:5px}
.formField li .sTit{font-size:15px;color:#292929}
.formField li .formArea{padding-top:40px;margin-top:30px;border-top:1px solid #292929}
.formField li + li{margin-top:80px}
.formField li .formArea li + li{margin-top:0}
.formField li .linetopG{padding-top:30px;margin-top:30px;border-top:1px solid #d1d1d1}
.termsBox{padding:25px 27px;border-radius:8px;border:1px solid #d1d1d1;background:#f8f8f8}
.termsArea .agr{margin-top:20px}
.termsArea .agr:after{display:block;content:'';clear:both}
.termsArea .agr .formWrap + .formWrap{margin:0 40px 0 0}
.termsArea .agr .notice{float:left}
.termsArea .agr .formWrap{float:right}
.formField li .formArea.noTerms{position:relative;padding-top:0}
.formField li .formArea.noTerms .agr{position:absolute;right:0;bottom:25px}

.termsList01 li{margin-left:15px;list-style-type:decimal}
.listAlpha li{list-style-type:upper-alpha;margin-left:18px;list-style-type:upper-alpha}

.applyResult{margin-top:110px}
.applyResult .resultTxt{margin-bottom:80px;text-align:center;color:#da0000}
.applyResult .resultTxt em{padding-bottom:9px;font-size:50px;line-height:1;border-bottom:1px solid #da0000}
.applyResult .resultTxt p{margin-top:40px;font-size:20px;line-height:1}
.applyResult .guideList{border-top:2px solid #292929;border-bottom:2px solid #292929}
.applyResult .guideList li{padding:25px 0}
.applyResult .guideList li + li{border-top:1px solid #d1d1d1}



/* story */
.visualArea.bgStory{color:#fff;background:url(/uploadFolder/images/story/bg_visual_storymain.jpg) 50% 50% no-repeat}
.visualArea.bgStory01{color:#fff;background:url(/uploadFolder/images/story/bg_visual_story01.jpg) 50% 50% no-repeat}
.visualArea.bgStory02{color:#fff;background:url(/uploadFolder/images/story/bg_visual_story02.jpg) 50% 50% no-repeat}
.visualArea.bgStory03{color:#fff;background:url(/uploadFolder/images/story/bg_visual_story03.jpg) 50% 50% no-repeat}
.visualArea.bgStory04{color:#fff;background:url(/uploadFolder/images/story/bg_visual_story04.jpg) 50% 50% no-repeat}

.subMain .visualArea.bgStory .titDep1{color:#292929}
.submainCon {margin-top:100px}
.submainCon .subMenu:after{display:block;content:'';clear:both}
.submainCon .subMenu + .subMenu{margin-top:158px}
.submainCon .subMenu > *{float:left}
.submainCon .subMenu:nth-child(odd) .txtCon{padding-left:70px}
.submainCon .subMenu .txtCon{width:518px;padding-top:20px}
.submainCon .subMenu .txtCon .tit{padding-bottom:20px;font-weight:600;font-size:40px;line-height:55px;color:#292929}
.submainCon .subMenu .txtCon .subTit{display:block;margin-bottom:20px;font-size:20px;line-height:34px;color:#292929}
.submainCon .subMenu .txtCon .btnMC{margin-top:35px;text-align:center}

.brnadCont01{padding-bottom:100px;border-bottom:1px solid #d1d1d1}
.brnadCont01 .img{margin-bottom:45px}
.brnadCont01 .titDep2{line-height:1.3}
.brnadCont02 .socialList{margin:0;padding:0;border-top:0}

.historyTab{position:absolute;left:0;top:323px;z-index:10}
.historyTab li{margin-bottom:15px}
.historyTab li a{display:block;width:100px;height:50px;font-size:18px;font-weight:600;line-height:50px;background:#474747;color:#fff;text-align:center;border-radius:25px}
.historyTab li a[aria-selected="true"]{color:#292929;background:#ffbc0d}

.history{background:#1a1a1a;padding-bottom:120px;margin:150px 0 -122px}
.history h4{font-size:80px;color:#fff;font-weight:600;text-align:center;line-height:0.9;-webkit-line-height:0.8;margin-bottom:65px}
.history .historyList{position:relative}
.history .historyList:before{content:'';display:block;position:absolute;left:50%;top:0;margin-left:-4px;width:7px;height:7px;background:#767676;border-radius:4px}
.history .historyList:after{content:'';display:block;position:absolute;left:50%;bottom:-4px;margin-left:-4px;width:7px;height:7px;background:#767676;border-radius:4px}
.history .historyList li{position:relative}
.history .historyList li:first-child>strong{color:#ffbc0d}
.history .historyList li:first-child:before{content:'';display:block;width:1px;height:50px;background:#767676;margin:0 auto}
.history .historyList li>strong{display:block;width:185px;margin:0 auto;text-align:center;font-size:50px;font-weight:600;color:#fff}
.history .historyList li>strong:after{content:'';display:block;width:1px;height:50px;background:#767676;margin:0 auto}
.history .historyList li>strong.fGrey{color:#828282}
.history .historyList li:last-child>strong:after{height:80px}
.history .historyList li .yearCont{position:absolute;width:492px}
.history .historyList li .txt span{display:block}
.history .historyList li .thum{margin-top:20px}
.history .historyList li.year2019 .yearCont{left:676px;top:65px}
.history .historyList li.year2018 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.year2017 .yearCont{left:676px;top:30px}
.history .historyList li.year2016 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.year2015 .yearCont{left:676px;top:30px}
.history .historyList li.year2014 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.year2013 .yearCont{left:676px;top:20px}
.history .historyList li.year2012 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.year2011 .yearCont{left:676px;top:30px}
.history .historyList li.year2010 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.year2009 .yearCont{left:676px;top:80px}
.history .historyList li.year2008 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.year2007 .yearCont{left:676px;top:20px}
.history .historyList li.year2006 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.year2005 .yearCont{left:676px;top:20px}
.history .historyList li.year2003 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.year1997 .yearCont{left:676px;top:80px}
.history .historyList li.year1995 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.year1992 .yearCont{left:676px;top:30px}
.history .historyList li.year1988 .yearCont{left:0;top:-163px;text-align:right}
.history .historyList li.year1988 .yearCont .thum{margin-bottom:20px}
.history .historyList li.yearG2017 .yearCont{left:676px;top:65px}
.history .historyList li.yearG2015 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG2003 .yearCont{left:676px;top:30px}
.history .historyList li.yearG2002 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG1993 .yearCont{left:676px;top:80px}
.history .historyList li.yearG1990 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.yearG1984 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1983 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG1975 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1974 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG1973 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1968 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG1965 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1961 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.yearG1956 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1955 .yearCont{left:0;top:30px;text-align:right}
.history .historyList li.yearG1954 .yearCont{left:676px;top:-155px}
.history .historyList li.yearG1954 .yearCont .thum{margin-bottom:20px}
.history .historyList li.yearG1949 .yearCont{left:0;top:20px;text-align:right}
.history .historyList li.yearG1948 .yearCont{left:676px;top:30px}
.history .historyList li.yearG1940 .yearCont{left:0;top:30px;text-align:right}

.brandCont03{padding-top:100px}
.brandCont03 .col2 > *:first-child {padding-right:25px}
.brandCont03 .col2 > *:last-child {padding-left:25px}
.brandCont03 .col2 + .col2{margin-top:65px}
.brandCont03 .tit{padding-bottom:5px;font-size:24px;line-height:1.5;color:#292929}
.brandCont03 * + .tit{margin-top:40px}
.brandCont04{margin-top:100px;padding-top:90px;border-top:1px solid #d1d1d1}
.brandQscv .titDep2{margin-bottom:40px;font-size:50px;line-height:1.4;color:#ffbc0d}
.brandQscv .philosophy > *{float:left}
.brandQscv .philosophy:after{display:block;content:'';clear:both}
.brandQscv .philosophy blockquote{width:539px;border-right:1px solid #d1d1d1;background:url(../images/story/bg_brandqscv.png) 437px 100% no-repeat;font-size:30px;color:#292929;line-height:1.5}
.brandQscv .philosophy blockquote em{display:inline-block;padding:15px 0 5px;font-size:20px;border-bottom:1px solid #292929}
.brandQscv .philosophy p{padding-left:70px}
.brandQscv .qscvInfo{margin-top:80px;padding:32px 0;background:#f8f8f8;border-radius:60px;text-align:center}

.scaleforgood{padding-bottom:90px;border-bottom:1px solid #d1d1d1}
.scaleforgood .img{margin-top:50px}
.scaleforgood .titDep4{line-height:34px}
.globalMc{padding-top:95px;text-align:center}
.globalMc .tabType01{position:relative;padding:50px 0 20px}
.globalMc .tabType01 li{margin:0 30px}
.globalMc .assignList{text-align:center}
.globalMc .assignList li{display:inline-block;position:relative;width:337px;padding-top:270px;text-align:center;vertical-align:top}
.globalMc .assignList li:before{display:block;content:'';position:absolute;top:0;left:50%;width:247px;height:247px;margin-left:-124px;background:url(../images/story/bg_globalmc.png) 0 0 no-repeat}
.globalMc .assignList li + li{margin-left:-4px}
.globalMc .assignList.item01{margin:0 -30px}
.globalMc .assignList.item01 li{width:307px}
.globalMc .assignList.item01 li + li:before{background-position:-247px 0}
.globalMc .assignList.item01 li + li + li:before{background-position:-494px 0}
.globalMc .assignList.item01 li + li + li + li:before{background-position:-741px 0}
.globalMc .assignList.item02 li:before{background-position:0 -247px}
.globalMc .assignList.item02 li + li:before{background-position:-247px -247px}
.globalMc .assignList.item02 li + li + li:before{background-position:-494px -247px}
.globalMc .assignList.item03 li:before{background-position:0 -494px}
.globalMc .assignList.item03 li + li:before{background-position:-247px -494px}
.globalMc .assignList.item03 li + li + li:before{background-position:-494px -494px}
.globalMc .assignList.item04 li:before{background-position:0 -741px}
.globalMc .assignList.item04 li + li:before{background-position:-247px -741px}
.globalMc .assignList.item04 li + li + li:before{background-position:-494px -741px}
.globalMc .assignList.item05 li:before{background-position:0 -988px}
.globalMc .assignList.item05 li + li:before{background-position:-247px -988px}
.globalMc .assignList.item05 li + li + li:before{background-position:-494px -988px}
.globalMc .pointTxt{width:970px;margin:70px auto 0;background:#da0000;border-radius:30px;text-align:center;color:#fff;line-height:60px}
.globalMc .btnArea{padding-top:100px;border-top:1px solid #d1d1d1}

.social{margin:0 0 340px -50px} /* �섎떒 媛꾧꺽 �뺤씤 �꾩슂 */
.social:after{content:'';display:block;clear:both}
.social>div{float:left;width:559px;margin-left:50px}
.social>div a{display:block}
.social>div a .thum{display:block}
.social>div a strong{display:block;font-size:24px;color:#292929;margin-top: 25px;}

.socialTab .img{margin-bottom:45px}
.socialTab .titDep2{line-height:1.3}

.socialList{border-top:1px solid #d1d1d1;margin-top:100px;padding-top:100px}
.socialList ul{margin:-80px 0 0 -50px}
.socialList ul:after{content:'';display:block;clear:both}
.socialList ul li{float:left;width:559px;margin:80px 0 0 50px}
.socialList ul li:nth-child(2n + 1) {clear:left}
.socialList ul li .thum, .socialList li strong{display:block}
.socialList ul li strong{font-size:24px;color:#292929;margin:30px 0 3px}
.socialList ul li .img{display:block;margin:30px 0}

.socialTab .btnArea{border-top:1px solid #d1d1d1;padding-top:100px}
.socialTab .btnStn{display:inline-block;font-weight:600;font-size:24px;color:#da0000;padding-right:15px;margin-top:40px;border-bottom:1px solid #da0000;background:url(../images/story/ico_arr.gif) no-repeat right 50%}

.managerTbl{margin-top:45px}
.managerTbl .tableType01 td{text-align:left}
.col2:after{display:block;content:'';clear:both}
.col2 > *{float:left;width:50%}
 
/*2022.1.12 ��*/
.contArea[data-background="food01"]{background:url(../images/story/bg_food_01_01.jpg) no-repeat center top;}
.contArea[data-background="food02"]{background:url(../images/story/bg_food_02_01.jpg) no-repeat center top;}
.contArea[data-background="food03"]{background:url(../images/story/bg_food_03.jpg) no-repeat center top;}
.contArea[data-background="food04"]{background:url(../images/story/bg_food_04_01.jpg) no-repeat center top;}
.contArea[data-background="food05"]{background:url(../images/story/bg_food_05.jpg) no-repeat center top;}
.contArea[data-background="food06"]{background:url(../images/story/bg_food_06.jpg) no-repeat center top;}
.contArea[data-background="food07"]{background:url(../images/story/bg_food_07.jpg) no-repeat center top;}
.contArea[data-background="food08"]{background:url(../images/story/bg_food_08.jpg) no-repeat center top;}
.contArea.others{background:#fff;}
.competitive{margin-top:20px;}
.competitive:after{content:'';display:block;clear:both}
.competitive .video{margin-bottom:98px;padding:5px;background-color:#fff;}
.competitive .video_wrap{width:100%;padding-top:56.25%;height:0;position:relative;}
.competitive .video iframe{width:100%;height:100%;position:absolute;left:0;top:0;border:0;}
.competitive .topArea{width:100%;}
.competitive .topArea .farmTab{display:flex;align-items:flex-end;justify-content:space-between;margin-bottom:50px;padding: 0 40px;}
.competitive .topArea .farmTab li{position:relative;}
.competitive .topArea .farmTab li a{display:flex;justify-content:center;align-items:center;color:#fff;width:350px;height:60px;border-radius:50px;background-color: #000;font-size: 20px;}
.competitive .topArea .farmTab li a .step:after{content:'';width:2px;height:15px;background-color:#fff;margin:-3px 10px 0 10px;display:block;}
.competitive .topArea .farmTab li a[aria-selected="true"]{font-weight:500;background-color:#d40014;border-color:#d40014;position: relative;}
.competitive .topArea .farmTab li a[aria-selected="true"]::after{content: '';display: block;width: 300px;height: 2px;background-color: #d40014;position: absolute;top: 65px;left: 25px;}
.competitive .topArea .farmTab li a[aria-selected="true"] .step:after{content:'';width:2px;height:15px;background-color:#fff;}
.competitive .topArea .farmTab li a .step{color:#eeba30;display:flex;align-items:center;}
.competitive .bottomArea{margin-bottom:60px;}
.competitive .bottomArea .bottom_area_txtinfo{margin: 0 auto;text-align: center;color: #333;width: 570px;padding: 20px 40px;background-color: rgba(255,255,255,.8);border-radius: 25px;line-height: 1.5em;font-size: 18px;font-weight: 600;}
.competitive .bottomArea .titDep3{margin-top:0;text-align:center;padding-top:40px;}
.competitive .bottomArea .txtInfo{text-align:center;}
.competitive .foodTab{margin:25px 0 45px 0;}
.competitive .foodTab:after{content:'';display:block;clear:both}
.competitive .foodTab li{float:left;width:136px;margin-left:10px;height:136px;}
.competitive .foodTab li a:before{content:'';display:block;width:136px;height:136px;background: no-repeat center;}
.competitive .foodTab li.food01 a:before{background-image: url(../images/story/bg_food_beef.png);}
.competitive .foodTab li.food02 a:before{background-image: url(../images/story/bg_food_chicken.png);}
.competitive .foodTab li.food03 a:before{background-image: url(../images/story/bg_food_bread.png);}
.competitive .foodTab li.food04 a:before{background-image: url(../images/story/bg_food_lettuce.png);}
.competitive .foodTab li.food05 a:before{background-image: url(../images/story/bg_food_tomato.png);}
.competitive .foodTab li.food06 a:before{background-image: url(../images/story/bg_food_egg.png);}
.competitive .foodTab li.food07 a:before{background-image: url(../images/story/bg_food_cheese.png);}
.competitive .foodTab li.food08 a:before{background-image: url(../images/story/bg_food_onion.png);}
.competitive .foodTab li a{display:block;overflow:hidden;font-size:0}
.competitive .foodTab li a[aria-selected="true"]:before{content:'';display:block;}
.competitive .foodTab li.food01 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_beef_on.png);}
.competitive .foodTab li.food02 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_chicken_on.png);}
.competitive .foodTab li.food03 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_bread_on.png);}
.competitive .foodTab li.food04 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_lettuce_on.png);}
.competitive .foodTab li.food05 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_tomato_on.png);}
.competitive .foodTab li.food06 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_egg_on.png);}
.competitive .foodTab li.food07 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_cheese_on.png);}
.competitive .foodTab li.food08 a[aria-selected="true"]::before{background-image: url(../images/story/bg_food_onion_on.png);}
.competitive .foodCont{display:table;width:100%;margin-top:40px;background-color: #fff;border-radius: 30px;}
.competitive .foodCont .img{display:table-cell;width:315px;vertical-align:top;padding: 40px 10px 40px 90px;}
.competitive .foodCont .txt{display:table-cell;vertical-align:top;padding: 80px 110px 30px 30px;}
.competitive .foodCont .txt .titDep4{line-height:1.5;margin-top:0;font-size: 20px;}
.competitive .foodCont .txt .txtInfo{font-size: 16px;line-height: 1.5em;}
.competitive .foodCont .txt .txtInfo+.txtInfo {margin-top: 15px;}
.competitive .foodCont .txt .bottom_area_txtinfo{text-align: center;color: #333;width: 570px;padding: 20px 40px;background-color: rgba(255,255,255,.8);}
.competitive .foodCont .txt .notiTxt{font-size:13px;margin-top:60px;line-height:1.6;}
.competitive .foodCont .txt .notiTxt.fBlack{color:#292929}
.competitive .socialList{margin:0;padding:0;border:0}
.competitive .socialList ul{margin:-10px 0 0 -50px;display:flex;flex-wrap:wrap;}
.competitive .socialList ul li{width:calc(50% - 50px);margin-top:55px;}
.competitive .socialList ul li strong{font-size:24px;margin:35px 0 15px;line-height:1.5}
.competitive .socialList ul li .thum img{width:100%;}
.competitive .division{padding:0 40px;}
.competitive .division .titDep4{font-size:24px;text-align:center}
.competitive .division+.division{border-top:1px solid #d1d1d1;padding-top:10px;margin-top:60px}
.competitive .division .yellowBox{background:#ffbc0d;padding:20px;border-radius:15px;font-size:14px;color:#292929;text-align:center}
.competitive .division .socialList{margin:0 -40px;}
.competitive .bottomArea #tab01 .txtInfo{text-align:left;}
/*2022.1.12 ��*/

.faqResult .sorting{padding:80px 0 60px;text-align:center;height:180px;}
.faqResult .faqToggle{border-top:2px solid #292929;border-bottom:2px solid #292929}
.faqResult .faqToggle .toggle{border-bottom:1px solid #d1d1d1}
.faqResult .faqToggle .toggle:last-child{border-bottom:0}
.faqResult .faqToggle .toggle + .toggle{margin-top:0}
.faqResult .faqToggle .toggle .question{display:table;position:relative;width:100%;height:80px}
.faqResult .faqToggle .toggle .question:before{display:block;content:'';position:absolute;top:50%;left:99px;width:1px;height:19px;margin-top:-10px;background:#d1d1d1}
.faqResult .faqToggle .toggle .question > *{display:table-cell;font-size:15px;color:#292929;vertical-align:middle}
.faqResult .faqToggle .toggle .question > strong{color:#808080}
.faqResult .faqToggle .toggle .question .sortItem{width:140px;padding-left:20px}
.faqResult .faqToggle .toggle button{top:0;height:80px}
.faqResult .faqToggle .toggle button:before{top:50%;width:21px;height:21px;margin-top:-11px;background-position:0 -54px}
.faqResult .faqToggle .toggle > button[aria-selected="true"]:before{background-position:0 -75px}
.faqResult .faqToggle .toggle.open .question > strong{color:#292929}
.faqResult .faqToggle .toggle .toggleCon{padding:50px 140px;background:#f8f8f8}

.crewCont02{padding-bottom:20px}
.crewList{padding-top:20px;margin:0 -30px}
.crewList:after{display:block;content:'';clear:both}
.crewList li{float:left;width:307px;text-align:center}
.crewList li .tit{display:block;margin-top:25px;font-size:20px;color:#292929;line-height:34px}
.crewList li .crewInfo{display:block;margin-top:5px}
.crewList li .crewThumb{display:block;position:relative}
.crewList li .crewThumb:hover:before{display:block;content:'';position:absolute;top:0;left:50%;width:248px;height:248px;margin:-1px 0 0 -124px;border-radius:125px;background:#ffbc0d;opacity:0.9}
.crewList li .crewThumb:hover:after{display:block;content:'';position:absolute;top:50%;left:50%;width:47px;height:47px;margin:-23px 0 0 -23px;background:url(../images/story/ico_crew_over.png) 0 0 no-repeat}
/* �щ（�댁빞湲� layerpop */
.crewDetail .crewCont .tit{font-size:20px;font-weight:600;color:#292929}
.crewDetail .crewCont .txt{margin-top:25px}
.crewDetail .crewCont .crewInfo{margin-top:30px;padding-top:35px;border-top:1px solid #d1d1d1;color:#292929}

/* �몄옱梨꾩슜 */
.inner.type02 .tabType01 {width:1168px;margin:0 auto 60px}
.careerIntro {padding:80px 0;background:#f8f8f8}
.careerIntro p {position:relative;width:1168px;margin:0 auto;padding-left:290px;font-size:20px;color:#292929}
.careerIntro p:before {content:'';display:block;position:absolute;top:-80px;left:70px;width:160px;height:245px;background:url(../images/story/bg_ico_career_2020_04.png) 0 0 no-repeat}
.careersWrap {overflow:hidden;width:1168px;margin:0 auto;padding-top:60px}
.careersWrap div {float:left;width:50%}
.careersWrap div p {padding:40px 0 30px}
.careersWrap div .btnM {text-align:center}

/* search */
.srchResult{padding-top:70px}
.srchResult .resultCopy{padding-bottom:35px;color:#292929;font-size:30px;text-align:center;border-bottom:5px solid #292929}
.srchResult .resultCont .titDep3{margin-bottom:0;padding-bottom:30px;border-bottom:2px solid #292929}
.srchResult .resultCont .titDep3 .unit{font-size:20px;font-weight:400}
.srchResult .resultCont .mcStore table{border-top:0}
.srchResult .resultCont .mcStore thead th{height:0;padding:0;overflow:hidden;font-size:0;border:0}
.srchResult .resultCont .mcStore tbody tr:first-child td{border-top:0}
.srchResult .resultCont .mcMenu{margin-top:40px}
.noResult{paddin g:130px 0;color:#292929;font-size:30px;text-align:center}
.noResult:before{content:'';display:block;width:360px;height:360px;margin:0 auto 40px;background:url(../images/common/bg_noresult.png) 0 0 no-repeat}
.noResult.nobg:before {display:none;}

/* sitemap */
.siteMap{padding-top:20px}
.siteMap>li{display:inline-block;margin-left:149px;line-height:1.6;vertical-align:top}
.siteMap>li:first-child{margin-left:0}
.siteMap>li:last-child{margin-left:80px}

.siteMap>li+li {margin-left:80px;}
.siteMap>li+li+li {margin-left:130px;}
.siteMap>li a{display:inline-block;border-bottom:1px solid transparent}
.siteMap>li a:hover, .siteMap>li a:focus{color:#292929;border-bottom:1px solid #292929}
.siteMap>li>a{color:#292929;font-size:26px;font-weight:600}
.siteMap .depth{margin-top:20px}
.siteMap .depth>li{margin-top:12px}

/* privacy */
.termsIndex{padding:55px 0;border-bottom:1px solid #292929;counter-reset:index}
.termsIndex>li{color:#292929;font-size:20px;line-height:1.6}
.termsIndex>li:before{content:counter(index,upper-alpha);counter-increment:index 1;display:inline-block;width:26px;height:26px;margin:-2px 12px 0 0;color:#fff;font-size:13px;line-height:28px;text-align:center;vertical-align:middle;border-radius:100%;background:#da0000}
.termsIndex>li+li{margin-top:14px}
.termsIndex a{display:inline-block}
.termsCont{margin-top:100px;counter-reset:terms}
.termsCont h2:before{content:counter(terms,upper-alpha) '. ';counter-increment:terms 1}
.termsCont h2{font-size:30px;color:#292929;margin:80px 0 8px;padding-top:80px;border-top:1px solid #292929}
.termsCont h2:first-child{padding-top:0;border-top:none;margin-top:0}
.termsCont h3{font-size:18px;color:#292929;margin:25px 0 5px}
.termsCont h4{color:#292929;margin-top:25px}
.termsCont h4 + ol{margin-top:10px}
.termsCont p > b{color:#292929}
.termsCont .color01{margin:15px 0 20px}
.termsCont .tableType02{margin-top:15px}
.termsCont .tableType02 + h4{margin-top:33px}
.termsCont .tableType02 + p{margin-top:15px}
.termsCont .listDep1{margin-top:0}
.termsCont .listDep1>li:before, .termsCont p.listDep1:before{width:4px;height:4px;background:#808080}
.termsCont .listDep1>li b{color:#292929}
.termsCont .roman{counter-reset:roman}
.termsCont .roman li:before{content:'('counter(roman,lower-roman) ')';counter-increment:roman 1;margin-right:5px}
.termsCont dl{margin-top:15px}
.termsCont .number{counter-reset:number}
.termsCont .number li:before{content:counter(number,decimal ) '.';counter-increment:number 1;margin-right:5px}
.termsCont dl.csCenter{margin-bottom:15px}
.termsCont dl.csCenter dt{margin-top:15px}
.termsCont dl.csCenter ul>li{position:relative;padding-left:12px}
.termsCont dl.csCenter ul>li:before{content:'';display:inline-block;position:absolute;left:0;top:13px;width:6px;height:2px;background:#808080}

/* error */
.error{text-align:center}
.error:before{content:'';display:block;width:360px;height:360px;margin:0 auto 45px;background: url(../images/common/bg_noresult.png) 0 0 no-repeat}
.error strong{display:block;font-size:30px;color:#292929;line-height:1.5;margin-bottom:25px}
.error strong b{display:block;font-weight:600}

/* promotion layer popup */
.promo_landing_wrap { background: #fff;padding: 0;display:block;}
.promo_landing_wrap .promo_landing_mask {position: fixed;width: 100%;height: 2000px;top: 0px;left: 0px;background-color: #000;opacity: 0.8;display:none;z-index:1}
.promo_landing_wrap .promo_landing_pop { position: absolute;top: 100px;left:5%;width: 90%;display:none;z-index:1}
.promo_landing_wrap .promo_landing_pop .promo_landing_pop_inner { text-align:center }
.promo_landing_wrap .promo_landing_pop .btn_close {display: block;width: 7%;position: absolute;left: 50%;top: 0.5%;margin-left: -3.5%;z-index:1}
</style>
</head>
<body>

<!-- Google Tag Manager (noscript) -->
<noscript>
   <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W5TBQX4" height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript> 
<!-- End Google Tag Manager (noscript) -->

	<div class="skipMenu"><a href="#container">본문 바로가기</a></div>
	<div class="wrapper ">
		<header class="header"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="/kor/images/common/logo.png" alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li><!-- li 오버시 on 클래스 추가 -->
								<a href="javascript:gotoMenu(1);" class="dth1 ">Menu</a><!-- 현재페이지 메뉴에 current 클래스 추가 -->
								<ul class="depth2">
									<li><a href="javascript:gotoMenu(1);" class="dth2">버거</a></li>
									<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
									<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
									<li><a href="javascript:gotoMenu(15);" role="button">해피 스낵</a></li>
									<li><a href="javascript:gotoMenu(7);" class="dth2">사이드 &amp; 디저트</a></li>
									<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페 &amp; 음료</a></li>
									<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li>
								<a href="/kor/store/main.do" class="dth1 current">Store</a>
								<ul class="depth2">
									<li><a href="/kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="/kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="/kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="/kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li>
								<a href="/kor/promotion/list.do" class="dth1  ">What’s New</a>
								<ul class="depth2">
									<li><a href="/kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="/kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
								    <li><a href="/kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
								</ul>
							</li>
							<li>
								<a href="/kor/story/main.do" class="dth1  ">Story</a>
								<ul class="depth2">
									<li><a href="/kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="/kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="/kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="/kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="/kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
						<a href="/kor/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
						<a href="/eng/main.do" class="lang" title="영문사이트로 이동">ENG</a>
						<div class="topSearch"><!-- 검색 활성화인 경우 open 클래스 추가 -->
							<button type="button" class="srch">검색 열기</button>
							<fieldset class="srchField">
								<legend>통합검색</legend>
								<div class="form">
									<input type="text" name="commonSearchWord" id ="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다." title="검색어 입력" onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}" >
									<button type="button" class="btnMC btnM" onclick="gotoCommonSearch()">검색하기</button>
								</div>
								<button type="button" class="close">검색 닫기</button>
							</fieldset>
						</div>
					</div>
					</form>
					<!-- //util -->
				</nav>
			</div>
		<form id="gotoMenuForm" method="post">
		<input type="hidden" name="sub_category_seq" id="gotoform_sub_category_seq">
		</form>
	<script>
			function gotoMenu(val){
				$("#gotoform_sub_category_seq").val(val);
				$("#gotoMenuForm").attr("action","/kor/menu/list.do");
				$("#gotoMenuForm").submit();
			}
			function gotoCommonSearch(){
				if($.trim($("#commonSearchWord").val())==""){
					alert("검색어을 입력해 주세요");
					$("#commonSearchWord").focus();
				}else{
					$("#commonSearchForm").attr("action","/kor/search.do");
					$("#commonSearchForm").submit();
				}
			}
	</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
				







   
<div class="visualArea bgStore01" data-title="지역별 매장찾기" data-desc="매장찾기">
					<div class="inner">
						<h1 class="titDep1">매장찾기</h1>
						<ul class="navPath">
							<li><a href="/kor/main.do">Home</a></li>
							<li><a href="/kor/store/main.do">Store</a></li>
							<li><a href="/kor/store/main.do">매장찾기</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="/kor/store/main.do" role="button" aria-selected="true">지역별</a></li>
							<li><a href="/kor/store/event.do" role="button">이벤트매장</a></li>
						</ul>
						<form   id="searchForm" method="post">
							<input type="hidden" name="page" id="page" value="1">
							<input type="hidden" name="lat" id="lat" value="NO">
							<input type="hidden" name="lng" id="lng" value="NO">
							<input type="hidden" name="search_options" id="search_options" value="">
						<!-- 20191112 수정 yjs -->
						<div class="storeFind">
					   		<span class="storeFind_bg"></span>
							<div class="srvcFilter">
								<strong class="titDep4">이용가능 서비스</strong>
								<div class="service">
								
									<span class="srvc">
									    <input type="checkbox" id="1" value="Y" >
									    <label for="1">
									        24시간
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887217994.png" alt="24시간" data-off="/upload/main/store_service/1580887217994.png" data-on="/upload/main/store_service/1580887222493.png"/>
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="6" value="Y" >
									    <label for="6">
									        맥드라이브
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887501964.png" alt="맥드라이브" data-off="/upload/main/store_service/1580887501964.png" data-on="/upload/main/store_service/1580887505434.png"/>
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="2" value="Y" >
									    <label for="2">
									        맥딜리버리
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887371824.png" alt="맥딜리버리" data-off="/upload/main/store_service/1580887371824.png" data-on="/upload/main/store_service/1580887378094.png"/>
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="4" value="Y" >
									    <label for="4">
									        맥모닝
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887410227.png" alt="맥모닝" data-off="/upload/main/store_service/1580887410227.png" data-on="/upload/main/store_service/1580887415001.png"/>
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="3" value="Y" >
									    <label for="3">
									        주차
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887307761.png" alt="주차" data-off="/upload/main/store_service/1580887307761.png" data-on="/upload/main/store_service/1580887311487.png"/>
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="9" value="Y" >
									    <label for="9">
									        디카페인 커피
									        <span class=icon>
									            <img src="/upload/main/store_service/1580887849368.png" alt="디카페인 커피" data-off="/upload/main/store_service/1580887849368.png" data-on="/upload/main/store_service/1580887855311.png"/>
									        </span>
									    </label>
									</span>
								
								</div>
							</div>
							<fieldset class="srchBox">
								<legend>매장검색</legend>
								<div class="form">
									<input type="text" placeholder="매장명, 동명, 도로명을 검색해 주세요." title="검색어 입력" id="searchWord" name="searchWord" value="">
									<button type="button" class="btnMC btnM" onclick="search()">검색하기</button>
								</div>
							</fieldset>							
						</div>
						<!-- //20191112 수정 yjs --> 
						</form>
						<!-- //storeFind -->
						<div class="storeResult">
							<div id="map" class="map"  style="height:600px;weight:600px;"><!-- 지도 마커용 태그, A~Z까지 순차적으로 사용 --></div>
							<button type="button" class="mc_current" onclick="locate();"><span>내 위치 중심으로 지도보기</span></button>
							<div class="mcStore">
								<table class="tableType01">
									<caption>매장목록 - 매장명/주소, 전화번호, 영업시간, 이용가능 서비스 정보표</caption>
									<colgroup><col style="width:16%"><col style="width:16%"><col style="width:34%"></colgroup>
									<thead>
										<tr>
											<th scope="col">매장명 / 주소</th>
											<th scope="col">전화번호</th>
											<th scope="col">영업시간</th>
											<th scope="col">이용가능 서비스</th>
										</tr>
									</thead>
									<tbody>
											<tr>
												<td class="tdName">
													<dl class="name">
														<dt><strong class="tit"><a href="javascript:moveMap(37.570698,126.983558);" title="지도보기">한국맥도날드(유)</a></strong>
														<dd>서울 종로구 공평동 70</dd>
														<dd class="road">서울특별시 종로구  종로 51(종로타워)</dd>
													</dl>
												</td>
												<td>1600-5252</td>
												<td></td>
												<td class="tdService">
													<div class="service">
													
													</div>
												</td>
											</tr>
								</table>
							</div>
								<p class="noResult nobg">검색어를 입력해 주세요.</p>
						</div>
						<!-- //storeResult -->
					</div>
				</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d2849da01922567115797fadd6e5ca4"></script>
<script type="text/javascript">

$(document).ready(function () {
    function storeFindBg(){
        var winWidth = window.innerWidth;
        var $storeFind = $('.storeFind');
        var $storeFindBg = $storeFind.find('.storeFind_bg');
        var storeFindWidth = $storeFind.innerWidth();
        if(winWidth >=1168){
            $storeFindBg.css({'width':winWidth, 'margin-left':-(winWidth-storeFindWidth)/2});
        }else{
            $storeFindBg.attr({'style':''});
        }
    };
    function clickItem(){
        $('.storeFind .srvcFilter .service>span input').each(function(){
            $(this).click(function(){
                var chk = $(this).is(':checked');
                var dataOff = $(this).siblings('label').find('img').attr('data-off');
                var dataOn = $(this).siblings('label').find('img').attr('data-on');
                if(chk){
                    $(this).prop('checked', true);
                    $(this).parent('span').addClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOn});
                }else{
                    $(this).prop('checked', false);
                    $(this).parent('span').removeClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOff});
                }
                
            });
        });
    };
    storeFindBg();
    clickItem();
    $(window).resize(function(){
        storeFindBg();
    });
    
    $("#searchWord").on("keydown", function(){
    	if(event.keyCode == 13) {
    		search();
    	}
    });
});

var map;
var mapContainer = document.getElementById('map'),
	mapOption = {
         center: new daum.maps.LatLng(37.570698,126.983558),
         level: 3
    };
	map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	var mapTypeControl = new daum.maps.MapTypeControl();
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
	var positions = [
	{
        title: '한국맥도날드(유)', 
        latlng: new daum.maps.LatLng(37.570698,126.983558)
    }
	];
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(54, 70); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage("/kor/images/store/ico_marker.png", imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });
	    marker.setMap(map);  
	}
	moveMap(37.570698, 126.983558);
function moveMap(xx,yy){
    var po = new daum.maps.LatLng(xx, yy);
    map.panTo(po);
}
function locate(){
	
	if(confirm("위치정보의 사용시 보안된 페이지에서 위치정보을 요청합니다.\n이동하시겠습니까?")){
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	       var lat = position.coords.latitude, // 위도
	           lon = position.coords.longitude; // 경도
	       var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	       map.panTo(locPosition);
	         $("#lat").val(lat);
		     $("#lng").val(lon);
		     page(1);
	      });
		//gohttps();
	}else{
	
	if(getCookie("locate_info")=="Y"){
		if (navigator.geolocation) {
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        var lat = position.coords.latitude, // 위도
		         lon = position.coords.longitude; // 경도
		       //var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		       //map.panTo(locPosition);
		         $("#lat").val(lat);
			     $("#lng").val(lon);
			     page(1);
		      });
		}else{
			alert("위치정보을 사용할수 없습니다");
		}
	}else{
		if(confirm("[위치정보 사용 동의]\n이 페이지에서\n현재 위치 정보를 사용하고자 합니다.\n동의하시겠습니까?")){
			setCookie("locate_info","Y",36500);
			if (navigator.geolocation) {
			    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
			    navigator.geolocation.getCurrentPosition(function(position) {
			        var lat = position.coords.latitude, // 위도
			         lon = position.coords.longitude; // 경도
			        //var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			        //map.panTo(locPosition);
			        $("#lat").val(lat);
			        $("#lng").val(lon);
			        page(1);
			      });
			}else{
				alert("위치정보을 사용할수 없습니다");
			} 
		}
	}
	
	}
	
}

function search(){
	$("#page").val(1);
	$("#lat").val("NO");
	$("#lng").val("NO");
	go();
}
function page(page){
	$("#page").val(page);
	go();
}
function go(){
    var search_options= [];
    $('.storeFind .srvcFilter .service>span input:checked').each(function(index, item){
    	search_options[index] = this.id;
    });
	$("#search_options").val(search_options.join(","));
	$("#searchForm").attr("action","/kor/store/list.do");
	$("#searchForm").submit();
}
function gohttps(){
	$("#searchForm").attr("action","https://www.mcdonalds.co.kr/kor/store/list.do");
	$("#searchForm").submit();
}
</script>
			</div>
			<div class="aside fixedB">
				<a href="/kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">
			
			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="/kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="/kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
					<li><a href="/kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="/kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->					
				    <li><a href="/kor/story/people/recruit.do">인재채용</a></li> 
				</ul>
				<ul class="fSns">
					<li><a href="https://www.facebook.com/McDonaldsKorea" class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
					<li><a href="https://www.instagram.com/mcdonalds_kr/" class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
					<li><a href="https://www.youtube.com/user/McDonaldsKor" class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
					<li><a href="https://story.kakao.com/ch/mcdonalds/feed" class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
					<li class="web_accessibility">
                       <a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
                        <img src="/kor/images/common/web_accessibility.png" alt="과학기술정보통신부 WA(WEB접근성) 품질인증 마크, 웹와치(WebWatch) 2022.1.6 ~ 2023.1.5" title="WA 품질인증 마크, 웹와치(WebWatch) 2022.1.6 ~ 2023.1.5"/>
                    </a>
                    </li> 
				</ul>
				<div class="fInfo">
					<ul class="info">
						<li>한국맥도날드(유)</li> 
						<li>대표이사: 김기원</li>
						<li>사업자등록번호: 101-81-26409</li>
						<li>전화주문: 1600-5252</li>
					</ul>
					<p class="copy">COPYRIGHT &copy; 2019 ALL RIGHTS RESERVED BY McDonald's.</p>
				</div>
			</div>	
		</footer>
		<!-- //footer -->
	</div>
	<!-- //wrapper -->
	





    
     
	<div class="dimmed"></div>
	<div id="materialPop" class="popLayer layerS">
		<div class="layCont" id="materialPopCon">
			
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	<script id="materialPopText" type="text/templet">
	<div class="scroll ingrInfo">
	<div class="ingrTop">
		<div class="img"><img src="{pc_image_url}" alt="{pc_kor_alt}"></div>
		<h2 class="tit">{pc_kor_desc}</h2>
	</div>
	<div class="ingrCon">
		{pc_kor_desc}
	</div>
	</div>
	</script>
	<div class="popLayer layerL layerType02" id="storeSearch">
		<div class="layCont">
			<div class="scroll storeSch">
				<div class="schTop">
					<h2 class="popTit">주방 공개의 날/쿠킹 클래스 운영매장</h2>
					<fieldset class="schArea">
						<legend>매장검색</legend>
						<div class="field01">
							<div class="formWrap">
								<label for="store01">시/도</label>		
								<div class="selectWrap">
									<select title="시/도 선택" id="store01" style="width:200px" onchange="getGugunJsonp()">
												<option value="">전체</option>
						                        <option value="서울">서울</option>
						                        <option value="경기도">경기도</option>
						                        <option value="강원도">강원도</option>
						                        <option value="광주">광주</option>
						                        <option value="경상남도">경상남도</option>
						                        <option value="경상북도">경상북도</option>
						                        <option value="대전">대전</option>
						                        <option value="대구">대구</option>
						                        <option value="부산">부산</option>
						                        <option value="인천">인천</option>
						                        <option value="울산">울산</option>
						                        <option value="제주">제주</option>
						                        <option value="전라남도">전라남도</option>
						                        <option value="전라북도">전라북도</option>
						                        <option value="충청남도">충청남도</option>
						                        <option value="충청북도">충청북도</option>
						             </select>
								</div>
							</div>
							<div class="formWrap">
								<label for="store02">시/군/구</label>		
								<div class="selectWrap">
									<select title="시/군/구 선택" id="store02" style="width:200px">
										<option value="">전체</option>
									</select>
								</div>
							</div>				
						</div>
						<div class="field02">
							<span class="formWrap">
								<label for="store03">매장</label>
								<input type="text" id="store03" placeholder="ex)안양">
								<button type="button" class="btnMC btnM" onclick="getStoreList()">검색</button>
							</span>
						</div>
					</fieldset>
					<p class="notiTxt">검색이 되지 않는 매장은 다음 달에 행사 계획이 없는 매장입니다.</p>
				</div>
				<div class="schCon">
					<!-- 지도영역 -->
					<div id="storePopMap" class="map">
						
					</div>
					<!-- //지도영역 -->
					<!-- 검색결과 있음-->
					<div class="result" id="storeS">
						<ul id="storePopListUl">
						
							
						
						</ul>
					</div>
					<!-- //검색결과 있음-->
					<!-- 검색 결과 없음 -->
					<p class="noResult" id="storeN" style="display:none;"><b class="color01" id="searchWordShow"></b>에 대한 검색결과가 없습니다.</p>
					<!-- 검색 결과 없음 -->
				</div>
			</div>			
		</div>
		<!-- //.layCont-->
		<div class="btnArea">
			<button type="button" class="btnMC btnM" onclick="selectStorePop()">선택완료</button>
		</div>				
		<button type="button" class="layClose">닫기</button>
	</div>
	<script>

	if($(location).attr('pathname') == "/kor/kitchen_step1.do"){//주방 공개의 날에서만 지도 호출 2019-12-18
		var mapPop;
		var marker;
	    var mapContainerPop = document.getElementById('storePopMap'),
		mapOptionPop = {
	         center: new daum.maps.LatLng(37.494879, 127.130762),
	         level: 3
		};
		mapPop = new daum.maps.Map(mapContainerPop, mapOptionPop); // 지도를 생성합니다
		$(window).on("load",function(){
			$("#store01").select(function(){ getGugunJsonp();});
		}); 
	}
	
	function showStorePopMaker(obj){
			if(marker!=undefined && marker!=null)marker.setMap(null);    
			
			var positions = 
				{
			        title: $(obj).data("a_company"), 
			        latlng: new daum.maps.LatLng($(obj).data("a_loc_x"),$(obj).data("a_loc_y"))
			    };
			var imageSize = new daum.maps.Size(54, 70); 
		    // 마커 이미지를 생성합니다    
		    var markerImage = new daum.maps.MarkerImage("/kor/images/whats/ico_marker.png", imageSize); 
		    
		    // 마커를 생성합니다
		     marker= new daum.maps.Marker({
		        map: mapPop, // 마커를 표시할 지도
		        position: positions.latlng, // 마커를 표시할 위치
		        title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    marker.setMap(mapPop);  
		    var mLabel = new kakao.maps.InfoWindow({
		        position: positions.latlng, // 지도의 중심좌표에 올립니다.
		        content: positions.title // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
		    });
		    mLabel.open(mapPop, marker)
		    mapPop.panTo(positions.latlng);
	}
	function getGugunJsonp(){
		if($("#store01").val()==""){
			$("#store02").html("<option value=\"\">전체</option>");
			commonJs.select.update($('#store02'));
		}else{
			$.support.cors = true;
			$.ajax({
			    url : "/kor/kitchen_getGugun.do",
			    data : {a_sido:$("#store01").val()},
			    dataType : "json",
			    success: function(data) {
			    	$("#store02").html("");
					var html="";
					for (var i=0;i<data.list.length;i++){
						html += "<option value='"+data.list[i].gugun+"'>"+data.list[i].gugun+"</option>";
					}
					$("#store02").append(html);
					commonJs.select.update($('#store02'));
			    }
			});
		}
	}
	function getStoreList(){
		if($.trim($("#store01").val()) =="" && $.trim($("#store02").val())=="" && $.trim($("#store03").val())==""){ 
			alert("매장명을 입력해주세요"); 
			$("#store03").focus();
		}else{
			$.post("/kor/kitchen_getStoreList.do",
					{a_sido:$("#store01").val(), a_gugun:$("#store02").val(), a_company:$("#store03").val() },
				   function(data){
						var html="";
						if(data.list.length > 0){
							$("#storePopListUl").html("");
							for (var i=0;i<data.list.length;i++){
								html += makeHtml("storeListPop",data.list[i]);
							}
							altEscapeTag();
							$("#storePopListUl").append(html);
							$("#storeS").show();
							$("#storePopMap").show();
							$("#storeN").hide();
						}else{
							$("#searchWordShow").html($("#store03").val());
							$("#storePopMap").hide();
							$("#storeS").hide();
							$("#storeN").show();
						}
						$(window).trigger('resize');
				   },
				   "json");
		}
	}
	function selectStorePop(){
		if(		$("input:radio[name='store_info']:checked").length>0  ){
			$("#scode").val($("input:radio[name='store_info']:checked").val());
			$("#store_name").val($("input:radio[name='store_info']:checked").data("a_company"));
			commonJs.popup.basic.hide($('#storeSearch'));
			getEvent();
		}else{
			alert("매장을 선택하셔야 합니다");
		}
	}
	</script>
	<script id="storeListPop" type="text/templet">
					<li>
						<span class="formWrap labelR">
							<input type="radio" name="store_info" id="ck_{a_scode}" data-a_loc_x="{a_loc_x}" data-a_loc_y="{a_loc_y}" data-a_scode="{a_scode}" data-a_company="{a_company}"  value="{a_scode}" onclick="showStorePopMaker(this)">
							<label for="ck_{a_scode}">{a_company}</label>	
						</span>
						<div class="addrArea">
							<p class="addr"><em class="hide">주소</em>{a_address_2}</p>
							<p class="phone"><em class="hide">연락처</em><span>{a_tel_1}</span><span>{a_tel_2}</span></p>
						</div>
					</li>
	</script>
	
			<!-- 크루 이야기 (L) -->
	<div class="popLayer layerS layerType03" id="crew_1">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop01.jpg" alt="목포 남악 DT점 김지웅 매니저"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">변화는 나의 자부심</h2>
					<p class="txt">처음엔 ‘그냥 아르바이트 하는 곳’이라는 생각으로 시작 하였던 것이 어느 것 16년을 함께 하고 있습니다. 맥도날드의 다양한 경험을 통해 항상 새로운 시도와 변화를 먼저 이끌어 나가는 기업이라는 것을 자연스럽게 느낄 수 있었습니다.</p>
					<p class="txt">맥드라이브, 맥딜리버리, 최근의 미래형 매장까지&middot;&middot;&middot;<br>멈추지 않는 다양한 시도들은 저에게 변화를 함께 만들어 가면서 최초라는 자부심을 갖고 일할 수 있게 해주었습니다.</p>
					<p class="txt">맥도날드의 변화는 곧 저의 즐거움이자 자부심이며,<br>이러한 새로운 변화를 계속해서 이끌어갈 것입니다.</p>
					<p class="crewInfo">목포 남악 DT점 김지웅 매니저</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_2">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop02.jpg" alt="경희대점 권영미 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">매일 열정적일 수 있는 나만의 비결</h2>
					<p class="txt">야간 근무를 하면서 밤낮이 바뀐 생활이 쉽진 않았습니다.<br>하지만 한 집안의 &lsquo;엄마&rsquo;와 &lsquo;아내&rsquo;로서, 그리고 맥도날드에<br>찾아오는 모든 고객 분들의 &lsquo;이웃&rsquo;과 &lsquo;친구&rsquo;로서 균형을<br>잃지 않기 위해 더 열심히 일했습니다.</p>
					<p class="txt">누구보다 더 변화하는 시스템을 긍정적이고 빠르게 받아들이려<br>노력하여, 어느새 저는 매장의 맏언니로 자리할 수 있었습니다.<br>함께 일하는 크루들도 언제나 열정적인 저의 모습을 통해<br>힘을 얻고 함께 변화하며 성장하고 있습니다.</p>
					<p class="txt">오늘 밤에도 나, 그리고 맥도날드를 찾아 주시는<br>고객 분들을 위해 더 열정적으로 일하려 합니다.</p>
					<p class="crewInfo">경희대점 권영미 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_3">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop03.jpg" alt="미아역점 이지혁 라이더"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">행복을 배달하는 사람으로.</h2>
					<p class="txt">제가 어떤 마음으로 일하느냐에 따라 고객 분들이 느끼는 게<br>다를거라 생각했습니다. 돈을 벌기 위해서, 어쩔 수 없이 해야하니까 하는 것 보단 스스로 가치 있고 &ldquo;행복을 전달하는 일이다.&rdquo;라고 생각하는 태도를 갖기로 마음 먹었습니다.</p>
					<p class="txt">그러자 전보다 감사한 마음으로 일할 수 있었고, <br>그 마음이 어느 정도 고객 분들에게 전달 되어지고 있다고 생각합니다.</p>
					<p class="txt">그렇게 감사하며 유쾌하게 일을 하고 있고,<br>더 많은 행복을 전달할 수 있도록 노력할 것 입니다</p>
					<p class="crewInfo">미아역점 이지혁 라이더</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_4">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop04.jpg" alt="석촌역점 이나라 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">맥도날드를 넘어, 나 자신의 변화까지</h2>
					<p class="txt">올 해, 고객 분들과 직접 접할 일이 더욱 많은 &lsquo;서비스 리더&rsquo;라는 직책을 맡게 되면서 저에게 고객과의 소통은 중요한 일이 되었습니다. 처음엔 낯설고 힘들었습니다.<br>하지만 고객 분들에게 저희 매장의 직원들이 친절하다는 칭찬을 듣고 싶은 욕심이 점점 생겼습니다.</p>
					<p class="txt">그렇게 마음 먹은 뒤로부터 웃는 얼굴로 일하여 노력하기 시작했고, 그러자 일이 즐겁게 느껴졌습니다. <br> 그런 것을 고객 분들도 알아주시고, 함께 웃는 얼굴로 마주해주시니 제 삶까지 행복해졌습니다.</p>
					<p class="txt">처음에는 작은 욕심으로 시작한 일이<br>맥도날드의 변화를 넘어, 나 자신의 변화까지 가져왔습니다.</p>
					<p class="crewInfo">석촌역점 이나라 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	
		<script type="text/javascript">
	$(function()
		{
		
		});
	</script>
</html>