<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url var="topic" value="/quan-tri/chu-de" />
<c:url var="banner" value="/quan-tri/web/anh-bia" />
<c:url var="topbar" value="/quan-tri/web/thanh-tren" />
<c:url var="slide" value="/quan-tri/web/trinh-chieu" />
<c:url var="post" value="/quan-tri/bai-viet" />
<c:url var="page" value="/quan-tri/trang-don" />
<c:url var="service" value="/quan-tri/web/dich-vu" />
<c:url var="menu" value="/quan-tri/web/menu" />
<c:url var="account" value="/quan-tri/web/tai-khoan/" />
<c:url var="customer" value="/quan-tri/khach-hang/" />
<c:url var="coupon" value="/quan-tri/web/ma-khuyen-mai/" />
<c:url var="configweb" value="/quan-tri/web/cau-hinh-web" />
<c:url var="home" value="/quan-tri" />
<c:url var="manufacturer" value="/quan-tri/hang" />
<c:url var="bill" value="/quan-tri/hoa-don" />
<c:url var="cate" value="/quan-tri/danh-muc" />
<c:url var="search" value="/quan-tri/search" />
<c:url var="contact" value="/quan-tri/lien-he" />
<c:url var="product" value="/quan-tri/san-pham" />
<c:url var="utilities" value="/quan-tri/tien-ich" />
<c:url var="optiongroup" value="/quan-tri/nhom-tuy-chon" />
<c:url var="option" value="/quan-tri/tuy-chon" />
<c:url var="prodoption" value="/quan-tri/tuy-chon-san-pham" />
<c:url var="accountinfo" value="/quan-tri/thong-tin-tai-khoan" />
<c:url var="productimg" value="/quan-tri/hinh-anh-san-pham" />
<c:url var="smartpay" value="/quan-tri/web/nha-thanh-toan" />
<c:url var="socialnetwork" value="/quan-tri/web/mang-xa-hoi" />
<c:url var="note" value="/quan-tri/web/nhat-ky" />
<c:url var="logout" value="/dang-xuat" />
<div class="wrapper">
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="${home}"
				class="nav-link">Trang ch???</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="${contact }" class="nav-link">Li??n h???</a></li>
		</ul>
		<!-- SEARCH FORM -->
		<form class="form-inline ml-3" action="${search}" method="GET">
			<div class="input-group input-group-sm">
				<input class="form-control form-control-navbar" type="search"
					name="q" placeholder="T??m ki???m ????n h??ng" aria-label="Search">
				<input type="hidden" name="currentPage" value="1">
				<div class="input-group-append">
					<button class="btn btn-navbar" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>
		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Messages Dropdown Menu -->
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item"><a class="nav-link"
				data-widget="control-sidebar" data-slide="true" href="#"
				role="button"> <i class="fas fa-th-large"></i>
			</a></li>
		</ul>
	</nav>
	<!-- /.navbar -->
	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="${home }" class="brand-link"> <span
			class="brand-text font-weight-light ml-4"><strong>H???
					th???ng</strong></span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image"></div>
				<div class="info">
					<a href="#" class="d-block">Ch??o Admin</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								S???n ph???m <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ml-2"><a href="${product}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Danh s??ch s???n ph???m</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${cate}" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Lo???i s???n ph???m</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${manufacturer}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>H??ng s???n ph???m</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${utilities}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Ti???n ??ch s???n ph???m</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${prodoption}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>T??y ch???n s???n ph???m</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${optiongroup}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Nh??m t??y ch???n</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${option}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>T??y ch???n</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${productimg}"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>???nh s???n ph???m</p>
							</a></li>
						</ul></li>
					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-copy"></i>
							<p>
								B??i vi???t <i class="fas fa-angle-left right"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ml-2"><a href="${post}" class="nav-link">
									<i class="far fa-circle nav-icon text-danger"></i>
									<p>Danh s??ch b??i vi???t</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${topic}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-danger"></i>
									<p>Ch??? ????? b??i vi???t</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${page}" class="nav-link">
									<i class="far fa-circle nav-icon text-danger"></i>
									<p>Trang ????n</p>
							</a></li>
						</ul></li>
					<li class="nav-item"><a href="${bill}" class="nav-link"> <i
							class="far fa-circle nav-icon text-info"></i>
							<p>????n h??ng</p>
					</a></li>
					<li class="nav-item"><a href="${customer }" class="nav-link">
							<i class="far fa-circle nav-icon text-success"></i>
							<p>Kh??ch h??ng</p>
					</a></li>
					<li class="nav-item"><a href="${contact}" class="nav-link">
							<i class="far fa-circle nav-icon text-danger"></i>
							<p>Li??n h???</p>
					</a></li>

					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-chart-pie"></i>
							<p>
								Giao di???n <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ml-2"><a href="${service}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-primary"></i>
									<p>D???ch v???</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${coupon}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-secondary"></i>
									<p>M?? khuy???n m??i</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${smartpay}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-success"></i>
									<p>Nh?? thanh to??n</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${socialnetwork}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-warning"></i>
									<p>M???ng x?? h???i</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${menu }"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-info"></i>
									<p>Menu</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${slide}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-primary"></i>
									<p>Slider</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${banner}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-secondary"></i>
									<p>Banner</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${topbar}"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-success"></i>
									<p>Topbar</p>
							</a></li>
						</ul></li>
					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-chart-pie"></i>
							<p>
								H??? th???ng <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item ml-2"><a href="${account }"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-danger"></i>
									<p>Th??nh vi??n</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${configweb }"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-danger"></i>
									<p>C???u h??nh website</p>
							</a></li>
							<li class="nav-item ml-2"><a href="${note }"
								class="nav-link"> <i
									class="far fa-circle nav-icon text-danger"></i>
									<p>Nh???t k?? qu???n tr???</p>
							</a></li>
						</ul></li>
					<li class="nav-header">TH??NG TIN</li>
					<li class="nav-item ml-2"><a href="${logout}" class="nav-link">
							<i class="nav-icon far fa-circle text-danger"></i>
							<p class="text">????ng xu???t</p>
					</a></li>
					<li class="nav-item ml-2"><a href="${accountinfo }"
						class="nav-link"> <i
							class="nav-icon far fa-circle text-warning"></i>
							<p>Th??ng tin c?? nh??n</p>
					</a></li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>