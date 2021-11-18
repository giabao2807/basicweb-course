package model.bo;

import java.util.List;

import model.bean.People;
import model.dao.PeopleDao;

public class PeopleBo {
	
	private PeopleDao ppdao;
	public PeopleBo() {
		ppdao = new PeopleDao();
	}
	
	public List<People> getAll() {
		return ppdao.getAll();
	}
	
	public People getById(String id) {
		return ppdao.getById(id);
	}
	
	public boolean update(People pp) {
		return ppdao.update(pp);
	}
	
	public boolean deleteById(int id) {
		return ppdao.deleteById(id);
	}
	
	public List<People> search(String key, String value) {
		return ppdao.search(key, value);
	}
}
