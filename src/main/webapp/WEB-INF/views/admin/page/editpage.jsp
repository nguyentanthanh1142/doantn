<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa trang đơn</title>
</head>
<body>
	<c:url var="editsave" value="/quan-tri/trang-don/editsave" />
	<c:url var="list" value="/quan-tri/trang-don" />
	<form:form modelAttribute="page" action="${editsave}" method="POST"
		enctype="multipart/form-data">
		<div class="content-wrapper pt-3">
			<!-- Content Header (Page header) -->
			<!-- Main content -->
			<section class="content">
				<!-- Default box -->
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">
							<strong class="text-uppercase text-danger">Cập nhật
								trang đơn</strong>
						</h3>
						<div class="card-tools">
							<button type="submit"
								onclick="return confirm('Bạn có chắc chắn thực hiện không?');"
								class="btn btn-sm btn-success">
								<i class="fas fa-save"></i> Lưu
							</button>
							<a class="btn btn-sm btn-danger" href="${list }"> Quay về
								danh sách</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-9">
								<form:hidden path="page_id" />
								<div class="form-group">
									<label>Tên trang đơn</label>
									<form:input class="form-control" type="text" path="page_title"
										required="required"
										value="${ empty oldvalue.page_title ? pageitem.page_title: oldvalue.page_title }" />
									<c:if test="${ not empty msgTitle}">
										<span class="form-error">${msgTitle}</span>
									</c:if>
								</div>
								<div class="form-group">
									<label>Slug</label>
									<form:input class="form-control" type="text" path="page_slug"
										required="required"
										value="${ empty oldvalue.page_slug ? pageitem.page_slug: oldvalue.page_slug }" />
									<c:if test="${ not empty msgSlug}">
										<span class="form-error">${msgSlug}</span>
									</c:if>
								</div>
								<div class="form-group">
									<label>Chi tiết trang đơn</label>
									<textarea class="form-control" id="page_detail"
										name="page_detail" required="required">${ empty oldvalue.page_detail ? pageitem.page_detail:oldvalue.page_detail}</textarea>
								</div>
								<div class="form-group">
									<label>Mô tả</label>
									<textarea class="form-control" id="page_metadesc"
										name="page_metadesc" required="required">${ empty oldvalue.page_metadesc ? pageitem.page_metadesc:oldvalue.page_metadesc}</textarea>
								</div>
								<div class="form-group">
									<label for="">Từ khóa</label>
									<form:input class="form-control" type="text"
										placeholder="Nhập tên" path="page_metakey" required="required"
										value="${ empty oldvalue.page_metakey ? pageitem.page_metakey: oldvalue.page_metakey }" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Chủ đề</label>
									<form:input type="hidden" path="page_topic"
										value="${pageitem.page_topic}" />
									<c:if test="${listtopic != null }">
										<select name="status" class="form-control" id="topicseclet">
											<c:forEach var="item" items="${listtopic}">
												<option value="${item.topic_id}" label="${item.topic_name}"></option>
											</c:forEach>
										</select>
									</c:if>
								</div>
								<div class="form-group">
									<label>Trạng thái</label> <input type="hidden" id="status"
										value="${pageitem.page_status }">
									<form:select class="form-control" path="page_status">
										<form:option value="1" label="Xuất bản"></form:option>
										<form:option value="2" label="Chưa xuất bản" />
									</form:select>
								</div>
								<div class="form-group">
									<label>Hình đại diện</label> <input type="file"
										class="form-control-file" accept="image/*" name="image" />
								</div>

							</div>
						</div>

					</div>
				</div>
				<!-- /.card -->

			</section>
			<!-- /.content -->
		</div>
	</form:form>
	<script>
		CKEDITOR
				.replace(
						'page_detail',
						{
							filebrowserBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
							filebrowserImageUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
							filebrowserFlashUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash',
							filebrowserWindowWidth : '1000',
							filebrowserWindowHeight : '700'
						});
		CKEDITOR
				.replace(
						'page_metadesc',
						{
							filebrowserBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : '${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
							filebrowserImageUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
							filebrowserFlashUploadUrl : '${pageContext.request.contextPath}/libraries/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash',
							filebrowserWindowWidth : '1000',
							filebrowserWindowHeight : '700'
						});
	</script>
	<script>
		var status = document.getElementById("status").value;
		if (status == 2) {
			var list = document.getElementById("page_status").lastElementChild.selected = true;

		}
	</script>
	<script type="text/javascript">
		var topicid = document.getElementById("page_topic").value;
		$("#topicseclet").val(topicid);

		$('#topicseclet').on('change', function() {
			$("#page_topic").val(this.value);
		});
	</script>


</body>
</html>