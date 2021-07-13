package com.khoaluantotnghiep.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.khoaluantotnghiep.entity.TopbarEntity;

@Service
public interface ITopbarService {

	public List<TopbarEntity> GetDataTopbarPaginate(int start, int totalPage);

	public List<TopbarEntity> GetDataTopbarTrashPaginate(int start, int totalPage);

	public List<TopbarEntity> findAllTopbar();

	public List<TopbarEntity> findAllTopbarShow();

	public TopbarEntity findTopbarrById(TopbarEntity topbar);

	public void addTopbar(TopbarEntity topbar);

	public void deleteTopbar(int id);

	public void updateTopbar(TopbarEntity topbar);

	public List<TopbarEntity> findTrashTopbar();

	public void deltrash(int id);

	public void retrash(int id);

	public void onOffTopbar(int id);

	public boolean isNameExists(String name);

	public boolean isNameExists(String name, int id);

}
