package alex.service.impl;

import java.util.List;

import org.nutz.service.NameEntityService;

import alex.pojo.Cwhyh;
import alex.pojo.Ptyh;
import alex.service.SurveyService;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
public class SurveyServiceImpl extends NameEntityService<Ptyh> implements
		SurveyService {

	public void InsPtyh(Ptyh ptyh) {
		this.dao().insert(ptyh);
	}

	public void InsCwhyh(Cwhyh cwhyh) {
		this.dao().insert(cwhyh);
	}

	public List<Ptyh> GetAllPtyh() {
		return dao().query(Ptyh.class, null);
	}

	public List<Cwhyh> GetAllCwhyh() {
		return dao().query(Cwhyh.class, null);
	}

	public void delPtyhById(int userid) {
		dao().delete(Ptyh.class,userid);
	}

	public void delCwhyhById(int userid) {
		dao().delete(Cwhyh.class,userid);
	}
}
