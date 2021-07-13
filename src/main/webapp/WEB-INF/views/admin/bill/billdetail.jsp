<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi tiết hóa đơn</title>
</head>
<body>
	<div class="content-wrapper pt-3">
		<c:url var="list" value="/quan-tri/hoa-don" />
		<!-- Main content -->
		<section class="content">

			<!-- Default box -->
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">
						<strong class="text-danger text-uppercase">Chi tiết đơn
							hàng</strong>
					</h3>
					<div class="card-tools">
						<a class="btn btn-sm btn-danger" href="${list }"><i
							class="fas fa-backward"></i> Quay lại</a>
					</div>
				</div>
				<div class="card-body">
					<table class="table table-bordered table-hover mb-4">
						<thead>
							<h3>Thông tin người nhận hàng</h3>
						</thead>
						<tbody>
							<tr>
								<th>Tên:</th>
								<td>${bill.display_name }</td>
							</tr>
							<tr>
								<th>Số điện thoại:</th>
								<td>${bill.phone}</td>
							</tr>
							<tr>
								<th>Email:</th>
								<td>${bill.email}</td>
							</tr>
							<tr>
								<th>Địa chỉ nhận hàng:</th>
								<td>${bill.address},${bill.province },${bill.district },
									${bill.city }</td>
							</tr>
							<tr>
								<th>Ngày đặt hàng:</th>
								<td>${bill.created_at}</td>
							</tr>
							<tr>
								<th>Phiếu giảm giá:</th>
								<td>${bill.coupon == true?'Có':'Không'}</td>
							</tr>

						</tbody>
					</table>
					<table class="table table-bordered table-hover mb-4">
						<thead>
							<h3>Sản phẩm đã đặt</h3>
						</thead>
						<tbody>
							<tr>
								<th style="width: 350px;">Sản phẩm</th>
								<th style="width: 120px;">Mã sản phẩm</th>
								<th>Giá</th>
								<th>Số lượng</th>
								<th>Tổng</th>
							</tr>

							<c:forEach var="item" items="${ billdetail }">
								<tr>
									<td style="width: 350px;">${item.productinfo.productname }</td>
									<td style="width: 120px;">${item.productinfo.product_id }</td>
									<td><fmt:formatNumber
											value="${item.productinfo.productpricesale}" type="number" />đ</td>
									<td>${item.quanty}</td>
									<td><fmt:formatNumber value="${item.total }" type="number" />đ</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="5" class="text-right pr-5">Phí vận chuyển: <fmt:formatNumber
										value="40000" type="number" />đ
								</td>
							</tr>
							<tr>
								<td colspan="5" class="text-right pr-5">Giảm giá coupon: <fmt:formatNumber
										value="${couponEntity.pricesale}" type="number" />
								</td>
							</tr>
							<tr>
								<td colspan="5" class="text-right pr-5">Tổng cộng: <fmt:formatNumber
										value="${bill.total}" type="number" />đ
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- /.card-body -->
				<div class="card-footer">Footer</div>
				<!-- /.card-footer-->
			</div>
			<!-- /.card -->
		</section>
		<!-- /.content -->
	</div>
</body>
</html>