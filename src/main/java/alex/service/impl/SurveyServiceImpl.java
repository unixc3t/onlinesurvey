package alex.service.impl;

import org.nutz.service.NameEntityService;

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
}
