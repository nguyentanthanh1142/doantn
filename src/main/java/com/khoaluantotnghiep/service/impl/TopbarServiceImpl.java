package com.khoaluantotnghiep.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khoaluantotnghiep.dao.TopbarDAO;
import com.khoaluantotnghiep.entity.TopbarEntity;
import com.khoaluantotnghiep.service.ITopbarService;

@Service
public class TopbarServiceImpl implements ITopbarService {

	@Autowired
	TopbarDAO topbarDAO;

	@Override
	public List<TopbarEntity> GetDataTopbarPaginate(int start, int totalPage) {
		return topbarDAO.GetDataTopbarPaginate(start, totalPage);
	}

	@Override
	public List<TopbarEntity> GetDataTopbarTrashPaginate(int start, int totalPage) {
		return topbarDAO.GetDataTopbarTrashPaginate(start, totalPage);
	}

	@Override
	public List<TopbarEntity> findAllTopbar() {
		return topbarDAO.findAllTopbar();
	}

	@Override
	public List<TopbarEntity> findAllTopbarShow() {
		return topbarDAO.findAllTopbarShow();
	}

	@Override
	public TopbarEntity findTopbarrById(TopbarEntity topbar) {
		return topbarDAO.findTopbarrById(topbar);
	}

	@Override
	public void addTopbar(TopbarEntity topbar) {
		topbarDAO.addTopbar(topbar);
	}

	@Override
	public void deleteTopbar(int id) {
		topbarDAO.deleteTopbar(id);
	}

	@Override
	public void updateTopbar(TopbarEntity topbar) {
		topbarDAO.updateTopbar(topbar);
	}

	@Override
	public List<TopbarEntity> findTrashTopbar() {
		return topbarDAO.findTrashTopbar();
	}

	@Override
	public void deltrash(int id) {
		topbarDAO.deltrash(id);
	}

	@Override
	public void retrash(int id) {
		topbarDAO.retrash(id);
	}

	@Override
	public void onOffTopbar(int id) {
		topbarDAO.onOffTopbar(id);
	}

	@Override
	public boolean isNameExists(String name) {
		return topbarDAO.isNameExists(name);
	}

	@Override
	public boolean isNameExists(String name, int id) {
		return topbarDAO.isNameExists(name, id);
	}

}
