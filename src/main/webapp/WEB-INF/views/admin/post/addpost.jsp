<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm bài viết</title>
</head>
<body>
	<c:url var="save" value="/quan-tri/bai-viet/save" />
	<c:url var="list" value="/quan-tri/bai-viet" />
	<form:form modelAttribute="post" action="${save}"
		enctype="multipart/form-data" method="POST">
		<div class="content-wrapper pt-3">
			<!-- Content Header (Page header) -->
			<!-- Main content -->
			<section class="content">
				<!-- Default box -->
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">
							<strong class="text-uppercase text-danger">Thêm bài viết
								mới</strong>
						</h3>
						<div class="card-tools">
							<button type="submit" onclick="return confirm('Bạn có chắc chắn thực hiện không?');" class="btn btn-sm btn-success">
								<i class="fas fa-save"></i> Lưu
							</button>
							<a class="btn btn-sm btn-danger" href="${list }"> Quay về
								danh sách</a>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-9">
								<div class="form-group">
									<label>Tên bài viết</label>
									<form:input class="form-control" type="text" path="post_title"
										required="required"
										value="${ empty oldvalue.post_title ? '': oldvalue.post_title }" />
									<c:if test="${ not empty msgTitle}">
										<span class="form-error">${msgTitle}</span>
									</c:if>
								</div>
								<div class="form-group">
									<label>Slug</label>
									<form:input name="title" class="form-control" type="text"
										path="post_slug" required="required"
										value="${ empty oldvalue.post_slug ? '': oldvalue.post_slug }" />
									<c:if test="${ not empty msgSlug}">
										<span class="form-error">${msgSlug}</span>
									</c:if>
								</div>
								<div class="form-group">
									<label>Chi tiết bài viết</label>
									<textarea class="form-control" id="post_detail"
										name="post_detail" required="required">${ empty oldvalue.post_detail ? '':oldvalue.post_detail}</textarea>
									<script>ClassicEditor.create( document.querySelector( '#post_detail' ) ).catch( error => {console.error( error );} );
      								 </script>
								</div>
								<div class="form-group">
									<label>Mô tả</label>
									<textarea class="form-control" id="post_metadesc"
										name="post_metadesc" required="required">${ empty oldvalue.post_metadesc ? '':oldvalue.post_metadesc}</textarea>
									<script>
									ClassicEditor.create( document.querySelector( '#post_metadesc' ) ).catch( error => {console.error( error );} );
									</script>
								</div>
								<div class="form-group">
									<label for="">Từ khóa</label>
									<form:input name="metakey" class="form-control" type="text"
										placeholder="Nhập tên" path="post_metakey"
										value="${ empty oldvalue.post_metakey ? '' : oldvalue.post_metakey}" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Trạng thái</label>
									<form:select name="status" class="form-control"
										path="post_status">
										<form:option value="2" label="Chưa xuất bản"></form:option>
										<form:option value="1" label="Xuất bản"></form:option>
									</form:select>
								</div>
								<div class="form-group">
									<label>Chủ đề</label>
									<c:if test="${topics != null }">
										<form:select name="status" class="form-control"
											path="post_topicid">
											<c:forEach var="item" items="${topics}">
												<form:option value="${item.topic_id}"
													label="${item.topic_name}"></form:option>
											</c:forEach>
										</form:select>
									</c:if>
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
	<script type="text/javascript">
		CKEDITOR
		var deeditor = CKEDITOR.replace(
						'post_detail',
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
		var meeditor = CKEDITOR
		.replace(
				'post_metadesc',
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
</body>
</html>