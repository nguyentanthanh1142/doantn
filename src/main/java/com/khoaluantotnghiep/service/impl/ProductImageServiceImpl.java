package com.khoaluantotnghiep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khoaluantotnghiep.dao.ProductImageDAO;
import com.khoaluantotnghiep.entity.ProductImageEntity;
import com.khoaluantotnghiep.service.IProductImageService;

@Service
public class ProductImageServiceImpl implements IProductImageService {

	@Autowired
	ProductImageDAO prodimgDao;

	@Override
	public List<ProductImageEntity> GetDataProductImagePaginate(int start, int totalPage) {
		return prodimgDao.GetDataProductImagePaginate(start, totalPage);
	}

	@Override
	public List<ProductImageEntity> GetDataProductImageTrashPaginate(int start, int totalPage) {
		return prodimgDao.GetDataProductImageTrashPaginate(start, totalPage);
	}

	@Override
	public List<ProductImageEntity> findAllProductImage() {
		return prodimgDao.findAllProductImage();
	}

	@Override
	public List<ProductImageEntity> findAllProductImageShow() {
		return prodimgDao.findAllProductImageShow();
	}

	@Override
	public ProductImageEntity findProductImageById(ProductImageEntity prodimg) {
		return prodimgDao.findProductImageById(prodimg);
	}

	@Override
	public List<ProductImageEntity> findTrashProductImage() {
		return prodimgDao.findTrashProductImage();
	}

	@Override
	public void deltrashProductImage(int id) {
		prodimgDao.deltrashProductImage(id);
	}

	@Override
	public void retrashProductImage(int id) {
		prodimgDao.retrashProductImage(id);
	}

	@Override
	public void deleteProductImage(int id) {
		prodimgDao.deleteProductImage(id);
	}

	@Override
	public void onOffProductImage(int id) {
		prodimgDao.onOffProductImage(id);
	}

	@Override
	public void add(ProductImageEntity prodimg) {
		prodimgDao.add(prodimg);
	}

	@Override
	public void update(ProductImageEntity prodimg) {
		prodimgDao.update(prodimg);
	}

}
