 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="format-detection" content="telephone=no">
        <title>株式会社エーエルジェイ</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Heebo|Noto+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/earlyaccess/notosansjp.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://www.al-j.co.jp/css/reset.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/css/swiper.min.css">
        <link rel="stylesheet" href="https://www.al-j.co.jp/css/validationEngine.jquery.css">
        <link rel="stylesheet" href="https://www.al-j.co.jp/css/validationEngine.jquery.css">
		<link rel="stylesheet" href="https://www.al-j.co.jp/css/style.css">
 
		<link rel="stylesheet" href="https://www.al-j.co.jp/css/custombox.min.css">
		<link rel="shortcut icon" href="favicon.ico" />
		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async src="https://www.googletagmanager.com/gtag/js?id=UA-79176341-1"></script>
		<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-79176341-1');
		</script>
    </head>
    <body>
    
        <div class="header--cover"></div>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light nav--custom">
                <h1 class="navbar-brand"><a href="https://www.al-j.co.jp/index.html"><img src="https://www.al-j.co.jp/images/logo.svg"></a></h1>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#Navber" aria-controls="Navber" aria-expanded="false" aria-label="ナビゲーションの切替">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse navbar-collapse--custom" id="Navber">
                	<div>
	                	<ul class="navber-subnav d-none d-lg-flex justify-content-end">
	                		<li><a href="https://www.al-j.co.jp/access.html">アクセス</a></li>
	                		<li><a href="https://www.al-j.co.jp/contact.html">お問い合わせ</a></li>
	                		<li><a href="https://www.al-j.co.jp/english/">English</a></li>
	                	</ul>
	                    <ul class="navbar-nav mr-auto navbar-nav--custom">
	                        <li class="nav-item dropdown">
	                            <a href="https://www.al-j.co.jp/vision.html" class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="https://www.al-j.co.jp/vision.html">
	                            会社情報</a>
	                            <div class="dropdown-menu dropdown-menu--custom" aria-labelledby="navbarDropdown">
	                                <div class="dropdown-menu--area-custom">
	                                    <div class="dropdown-item--area dropdown-item--area__img">
	                                        <a href="https://www.al-j.co.jp/vision.html"><img src="images/nav_img_corporate.png"></a>
	                                    </div>
	                                    <div class="dropdown-item--area dropdown-item--border">
	                                    	<div class="d-lg-flex">
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/vision.html">企業理念</a>
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/message.html">代表挨拶</a>
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/officers.html">役員紹介</a>
		                                    </div>
		                                    <div class="d-lg-flex">
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/outline.html">会社概要</a>
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/history.html">会社沿革</a>
		                                        <a class="dropdown-item" href="https://www.al-j.co.jp/partner.html">主要取引先</a>
		                                    </div>
		                                </div>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="nav-item dropdown">
	                            <a href="https://www.al-j.co.jp/business_model_2.html" class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">グループ理念</a>
	                            <div class="dropdown-menu dropdown-menu--custom" aria-labelledby="navbarDropdown">
	                                <div class="dropdown-menu--area-custom">
	                                    <div class="dropdown-item--area dropdown-item--area__img">
	                                        <a href="https://www.al-j.co.jp/group_vision.html"><img src="images/nav_img_group_vision.png"></a>
	                                    </div>
	                                    <div class="dropdown-item--area dropdown-item--border">
	                                    	<a class="dropdown-item" href="https://www.al-j.co.jp/group_vision.html">ALJのグループ構想</a>
	                                    </div>
	                                    <div class="dropdown-item--area">
	                                       <a class="dropdown-item" href="https://www.al-j.co.jp/business_model_2.html">ALJのビジネスモデル</a>
	                                    </div>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="nav-item dropdown">
	                            <a href="https://www.al-j.co.jp/aljservice.html" class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">サービスについて</a>
	                            <div class="dropdown-menu dropdown-menu--custom nav-link-service" aria-labelledby="navbarDropdown">
	                                <div class="dropdown-menu--area-custom">
	                                    <div class="dropdown-item--area dropdown-item--area__service dropdown-item--area__img">
	                                        <a href="https://www.al-j.co.jp/aljservice.html"><img src="images/nav_img_ict_service.png"></a>
	                                    </div>
	                                    <div class="dropdown-item--border">
		                                    <div class="dropdown-item--area dropdown-item--area__service dropdown-item--area__service-b">
		                                    	<div class="d-flex py-lg-2">
			                                        <a class="dropdown-item w-nav-200" href="https://www.al-j.co.jp/aljservice.html">事業領域</a>
			                                        <div class="w-nav-200">
			                                        	<a class="d-none d-lg-block" id="system" href="https://www.al-j.co.jp/aljservice.html#delivery-system">システム納品までの流れ </a>
				                                    </div>
			                                    </div>
		                                    </div>
		                                    <div class="dropdown-item--area dropdown-item--area__service dropdown-item--area__service-b">
		                                    	<div class="d-flex py-lg-2">
			                                        <a class="dropdown-item w-nav-200" href="https://www.al-j.co.jp/service.html">システム開発事業</a>
			                                        <div class="w-nav-200">
				                                        <a class="d-none d-lg-block" href="https://www.al-j.co.jp/service.html#service-systemintegration">システムインテグレーション</a>
				                                       <a class="d-none d-lg-block" href="https://www.al-j.co.jp/service.html#service-networkinfrastructure">ネットワーク・インフラ</a>
				                                       <a class="d-none d-lg-block" href="https://www.al-j.co.jp/service.html#service-systemengineering">システムエンジニアリング</a>
				                                    </div>
				                                    <div class="ml-lg-4 w-nav-200">
				                                    	 <a class="d-none d-lg-block" href="https://www.al-j.co.jp/service.html#service-mobilesmartphone">モバイル・スマートフォン</a>
				                                        <a class="d-none d-lg-block" href="https://www.al-j.co.jp/service.html#service-serviceproduct">サービス・プロダクト</a>			                                        </div>
			                                    </div>
		                                    </div>
		                                    <div class="dropdown-item--area dropdown-item--area__service">
		                                    	<div class="d-flex py-lg-2">
			                                        <a class="dropdown-item dropdown-item--none w-nav-200" href="https://www.al-j.co.jp/ict_service.html">自社運営サービス</a>
			                                        <div class="w-nav-200">
				                                        <a class="d-none d-lg-block" href="https://www.al-j.co.jp/ict_service.html#ict-service-aljjob">ALJ JOB</a>
				                                        <a class="d-none d-lg-block" href="https://www.al-j.co.jp/ict_service.html#ict-service-ghr">ALJ GLOBAL HR</a>
				                                        
				                                    </div>
				                                    <div class="ml-lg-4 w-nav-200">
				                                    	<a class="d-none d-lg-block" href="https://www.al-j.co.jp/ict_service.html#ict-service-aljglobalca">ALJ GLOBAL Career</a>
				                                    	<a class="d-none d-lg-block" href="https://www.al-j.co.jp/ict_service.html#ict-service-tod">TOD</a>
				                                        <!--  
				                                        <a class="d-none d-lg-block" href="https://www.al-j.co.jp/ict_service.html#ict-service-1ww">1WeekWeb</a>-->
				                                    </div>
			                                    </div>
		                                    </div>
		                               </div>
	                                </div>
	                            </div>
	                        </li>
	                        <li class="nav-item dropdown">
	                            <a href="https://www.al-j.co.jp/development.html" class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">業務事例</a>
	                            <div class="dropdown-menu dropdown-menu--custom nav-link-dev" aria-labelledby="navbarDropdown">
	                                <div class="dropdown-menu--area-custom">
	                                    <div class="dropdown-item--area dropdown-item--area__service dropdown-item--area__img">
	                                        <a href="https://www.al-j.co.jp/development.html"><img src="images/nav_img_development.png"></a>
	                                    </div>
	                                    <div class="dropdown-item--border">
		                                    <div class="dropdown-item--area dropdown-item--area__service dropdown-item--area__service-b">
		                                    	<div class="d-flex py-lg-2">
			                                        <a class="dropdown-item w-nav-200" href="https://www.al-j.co.jp/development.html#dev-all-link-service">サービス別</a>
			                                        <div class="w-nav-200">
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-systemintegration">業務・WEBアプリ</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-networkinfrastructure">ネットワークインフラ</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-webappdesign">WEB・アプリデザイン</a>
				                                    </div>
				                                    <div class="ml-lg-4 w-nav-200">
				                                    	<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-mobilesmartphone">モバイル・スマートフォン</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-serviceproduct">サービス・プロダクト</a>
			                                        </div>
			                                    </div>
		                                    </div>
		                                    <div class="dropdown-item--area dropdown-item--area__service">
		                                    	<div class="d-flex py-lg-2">
			                                        <a class="dropdown-item dropdown-item--none w-nav-200" href="https://www.al-j.co.jp/development.html#dev-all-link-job">業種別</a>
			                                        <div class="w-nav-200">
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-agency">官公庁</a>

														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-service">サービス業</a>

														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-transportation">運輸・運送業</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-construction">建設業</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-manufacturing">製造業</a>
														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-publication">出版業</a>
				                                    </div>
				                                    <div class="ml-lg-4 w-nav-200">
				                                    	<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-medical">医療機関</a>
				                                    	<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-maker">メーカー</a>

														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-finance">金融業</a>

														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-information">情報通信業</a>

														<a class="d-none d-lg-block" href="https://www.al-j.co.jp/development.html#dev-realestate">不動産業</a>
				                                    </div>
			                                    </div>
		                                    </div>
		                               </div>
	                                </div>
	                            </div>
	                        </li>

	                        <li class="nav-item"><a class="nav-link" href="https://www.al-j.co.jp/recruit.html">採用情報</a></li>
	                        <li class="nav-item"><a class="nav-link" href="https://www.al-j.co.jp/csr.html">CSR活動</a></li>
							<li class="nav-item d-block d-lg-none"><a class="nav-link" href="./access.html">アクセス</a></li>
	                		<li class="nav-item d-block d-lg-none"><a class="nav-link" href="./contact.html">お問い合わせ</a></li>
	                		<!-- <li class="nav-item d-block d-lg-none"><a class="nav-link" href="">English</a></li> -->
	                    </ul>
	                </div>
                </div>
            </nav>
        </header>
        <div id="nav-close--area"></div><div class="content-area">
    <div class="content-header">
        <div class="content-header-bg">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="content-header-h"><span>CONTACT</span>お問い合せ</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-header-bg-img content-header-bg-img__press">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="content-breadcrumb">
                            <ul>
                              <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                                <a href="./index.html" itemprop="url">
                                 <p align="right"><input type="button" value="Back" onClick="location.href='menu.jsp'"></p>
                                  <span itemprop="title">TOP</span>
                                </a>
                              </li>
                              <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                                  <span itemprop="title">お問い合せ</span>
                              </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
			<div class="col-12">
				<div class="contact-area--h">
					<div><h2 class="contact-title">CONTACT</h2></div>
					<p>お問い合せ</p>
				</div>
			</div>
		</div>
		<form id="form" method="POST" action="./confirm.html">
			<div class="container contact-form">
				<div class="row">
					<div class="col-12"><span class="contact-form-red">必須</span>お名前（漢字）</div>
					<div class="col-12"><input type="text" name="name" class="validate[required] form-input" value=""placeholder="姓名"></div>
				</div>
				<div class="row mt-4">
					<div class="col-12"><span class="contact-form-red">必須</span>お名前（ふりがな）</div>
					<div class="col-12"><input type="text" value="" name="name_f" class="validate[required] form-input" placeholder="せいめい"></div>
				</div>
				<div class="row mt-4">
					<div class="col-12">会社/団体名</div>
					<div class="col-12"><input type="text" value="" name="company" class="form-input" placeholder="株式会社◯◯◯◯"></div>
				</div>
				<div class="row mt-4">
					<div class="col-12">電話番号</div>
					<div class="col-12"><input type="text" value="" name="tel" class="form-input" placeholder="0312341234"></div>
				</div>
				<div class="row mt-4">
					<div class="col-12"><span class="contact-form-red">必須</span>メールアドレス</div>
					<div class="col-12"><input type="text" value="" name="mail" class="form-input validate[required ,custom[email]]" placeholder="info@al-j.co.jp"></div>
				</div>
				<div class="row mt-4">
					<div class="col-12"><span class="contact-form-red">必須</span>件名</div>
					<div class="col-12"><input type="text" value="" name="title" class="validate[required] form-input" placeholder="お問い合わせ、資料請求"></div>

				</div>
				<div class="row mt-4">
					<div class="col-12"><span class="contact-form-red">必須</span>お問い合わせ内容</div>
					<div class="col-12"><textarea name="body" class="validate[required] contact-textarea" placeholder="お問い合わせ内容を記入してください"></textarea></div>
				</div>
				<div class="row mt-4">
					<div class="col-12"><p>恐れ入りますが「<a href="privacypolicy.html" class="contact-link" target="_blank">個人情報の取り扱い</a>」に同意の上、以下のボタンより確認画面へとお進みください。</p></div>
				</div>
				<div class="row mt-4">
					<div class="contact-submit">
						<div><input type="submit" class="contact-btn" value="入力内容確認"></div>
						<input type="hidden" name="nextpage" value="./send.html">
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
		<footer id="footer">
			<div class="footer-page-up">
				<a href="#" class="footer-page-up-div">
					<i class="fa fa-angle-up" aria-hidden="true"></i>
				</a>
			</div>
            <div class="footer-area container">
                <div class="row footer-border">
					<div class="col-6 col-lg-2 d-none d-lg-block">
						<ul class="footer-navi">
							<li class="footer-navi-title">会社情報</li>
							<li><a href="https://www.al-j.co.jp/vision.html">企業理念</a></li>
							<li><a href="https://www.al-j.co.jp/message.html">代表挨拶</a></li>
							<li><a href="https://www.al-j.co.jp/officers.html">役員紹介</a></li>
							<li><a href="https://www.al-j.co.jp/outline.html">会社概要</a></li>
							<li><a href="https://www.al-j.co.jp/history.html">沿革</a></li>
							<li><a href="https://www.al-j.co.jp/partner.html">主要取引先</a></li>
							
						</ul>
						<ul class="footer-navi">
							<li class="footer-navi-title">グループ理念</li>
							<!--<li><a href="https://www.al-j.co.jp/business_model.html">ビジネスモデル</a></li>-->
							<li><a href="https://www.al-j.co.jp/group_vision.html">ALJグループ構想</a></li>
							<li><a href="https://www.al-j.co.jp/business_model_2.html">ALJのビジネスモデル</a></li>
						</ul>
					</div>						
					<div class="col-6 col-lg-3 d-none d-lg-block">
						<ul class="footer-navi">
							<li class="footer-navi-title">サービスについて</li>
							<li><a class="footer-navi-sub-tittle" href="https://www.al-j.co.jp/aljservice.html"><p class="indent">・事業領域</p></a></li>
							<!--<li><a href="https://www.al-j.co.jp/system_integration.html">ICTソリューション</a></li>
							<li><a href="http://www.aljmyanmar.com" target="_blank">オフショア</a></li>
							<li><a href="http://www.aljep.com" target="_blank">ITスクール</a></li>-->	
							<li><a class="footer-navi-sub-tittle" href="https://www.al-j.co.jp/service.html"><p class="indent">・システム開発事業</p></a></li>
							<li><a href="https://www.al-j.co.jp/service.html#service-systemintegration">システムインテグレーション</a></li>
							<li><a href="https://www.al-j.co.jp/service.html#service-mobilesmartphone">モバイル・スマートフォン</a></li>
							<li><a href="https://www.al-j.co.jp/service.html#service-networkinfrastructure">ネットワーク・インフラ</a>
							<li><a href="https://www.al-j.co.jp/service.html#service-serviceproduct">サービス･プロダクト</a></li>
							<li><a href="https://www.al-j.co.jp/service.html#service-systemengineering">システムエンジニアリング</a></li>	
							<li>
								<a class="footer-navi-sub-tittle" href="https://www.al-j.co.jp/ict_service.html"><p class="indent">・自社運営サービス</p></a>
							</li>
							<li><a href="https://www.al-j.co.jp/ict_service.html#ict-service-aljjob">ALJ JOB</a></li>
							<li><a href="https://www.al-j.co.jp/ict_service.html#ict-service-aljglobalca">ALJ GLOBAL Career</a></li>
							<li><a href="https://www.al-j.co.jp/ict_service.html#ict-service-1ww">ALJ GLOBAL HR</a></li>
							<li><a href="https://www.al-j.co.jp/ict_service.html#ict-service-tod">TOD</a></li>
						</ul>
					</div>
					<div class="col-6 col-lg-3 d-none d-lg-block">
						<ul class="footer-navi nav-link-dev">
							<li class="footer-navi-title">業務事例</li>
							<li>
								<a class="footer-navi-sub-tittle" href="https://www.al-j.co.jp/development.html#dev-all-link-service"><p class="indent">・サービス別</p></a>
							</li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-systemintegration">業務・WEBアプリケーション</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-mobilesmartphone">モバイル・スマートフォン</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-networkinfrastructure">ネットワークインフラ</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-serviceproduct">サービス・プロダクト</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-webappdesign">WEB・アプリデザイン</a></li>
						</ul>	
					</div>
					<div class="col-12 col-lg-2 d-none d-lg-block">
						<ul class="footer-navi nav-link-dev"><br>
							<li>
								<a class="footer-navi-sub-tittle" href="https://www.al-j.co.jp/development.html#dev-systemintegration"><p class="indent">・業種別</p></a>
							</li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-agency">官公庁</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-medical">医療機関</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-service">サービス業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-maker">メーカー</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-transportation">運輸・運送業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-finance">金融業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-construction">建設業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-information">情報通信業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-manufacturing">製造業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-realestate">不動産業</a></li>
							<li><a href="https://www.al-j.co.jp/development.html#dev-publication">出版業</a></li>
						</ul>
					</div>
					<div class="col-12 col-lg-2 d-none d-lg-block">
						<ul class="footer-navi">
							<li><a href="https://www.al-j.co.jp/recruit.html" class="footer-navi-title">採用情報</a></li>
							<li><a href="https://www.al-j.co.jp/csr.html" class="footer-navi-title">CSR活動</a></li>
							<li><a href="https://www.al-j.co.jp/sitemap.html" class="footer-navi-title">サイトマップ</a></li>
							<li><a href="https://www.al-j.co.jp/privacypolicy.html" class="footer-navi-title">個人情報保護方針</a></li>
							<li><a href="https://www.al-j.co.jp/contact.html" class="footer-navi-title">お問い合せ</a></li>
							<li><a href="https://www.al-j.co.jp/sitepolicy.html" class="footer-navi-title">サイトポリシー</a></li>
						</ul>
					</div>
					<div class="col-12 d-block d-lg-none">
						<div class="footer-navi-mb">
							<div><a href="https://www.al-j.co.jp/sitemap.html" class="footer-navi-title">サイトマップ</a></div>
							<div><a href="https://www.al-j.co.jp/privacypolicy.html" class="footer-navi-title">個人情報保護方針</a></div>
							<div><a href="https://www.al-j.co.jp/sitepolicy.html" class="footer-navi-title">サイトポリシー</a></div>
						</div>
					</div>
				</div>
				<div class="row">
     <div class="col-12 col-lg-3">
						<div class="footer-logo-img"><img src="https://www.al-j.co.jp/images/logo_footer.svg" /></div>
					</div>
					<div class="col-12 col-lg-5 footer-address footer--txt">
                        <p class="ml-lg-5">〒160-0022<br />東京都新宿区新宿3-2-1 京王新宿321ビル9F</p>
					</div>
					<div class="col-12 col-lg-2 footer--txt">
						<div>【代表】</div>
						<div class="footer-tel">
							<div><span class="footer-tel">TEL : 03-5363-6315</span></div>
							<div><span class="footer-tel-left">FAX : 03-5363-6316</span></div>
						</div>
					</div>
					<div class="col-12 col-lg-2">
						<div class="footer-snslink footer-sns-icon">
							<a href="https://twitter.com/alj_groupes" target="_blank"><i class="fa fa-twitter"></i></a>
							<a href="https://www.facebook.com/alj.official" target="_blank"><i class="fa fa-facebook"></i></a>
							<a href="https://www.instagram.com/aljsns/" target="_blank"><i class="fa fa-instagram"></i></a>
						</div>
					</div>
                </div>
            </div>
            <p class="copyright text-center">Copyright © ALJ Inc. All Rights Reserved.</p>
        </footer>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <script src="https://www.al-j.co.jp/js/modernizr-custom.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://www.al-j.co.jp/js/jquery.inview.min.js"></script>
        <script type="text/javascript" src="https://www.al-j.co.jp/js/footerFixed.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/js/swiper.min.js"></script>
        <script type="text/javascript" src="https://www.al-j.co.jp/js/jquery.validationEngine-ja.js"></script>
        <script type="text/javascript" src="https://www.al-j.co.jp/js/jquery.validationEngine.js"></script>
        <script src="https://www.al-j.co.jp/js/jquery.bgswitcher.js"></script>
        <script src="https://www.al-j.co.jp/js/common.js"></script>
        <script src="https://www.al-j.co.jp/js/animetion.js"></script>
        <script src="https://www.al-j.co.jp/js/jquery.easypiechart.min.js"></script>
    </body>
</html>