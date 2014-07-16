package alex.service;

import java.util.List;

import alex.pojo.Cwhyh;
import alex.pojo.Ptyh;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
public interface SurveyService {
	public void InsPtyh(Ptyh ptyh);
	public void InsCwhyh(Cwhyh cwhyh);
	public List<Ptyh> GetAllPtyh();
	public List<Cwhyh> GetAllCwhyh();
}
