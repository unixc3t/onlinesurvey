package alex.service;

import java.util.List;

import alex.pojo.Cwhyh;
import alex.pojo.Ptyh;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
public interface SurveyService {
	//插入普通用户问卷
	public void InsPtyh(Ptyh ptyh);
	//插入村委会用户问卷
	public void InsCwhyh(Cwhyh cwhyh);
	//获取所有的普通用户问卷
	public List<Ptyh> GetAllPtyh();
	//获取所有的村委会用户问卷
	public List<Cwhyh> GetAllCwhyh();
	//通过ID删除普通用户问卷
	public void delPtyhById(int userid);
	//通过ID删除村委会用户问卷
	public void delCwhyhById(int userid);
	//通过ID获取普通用户问卷
	public Ptyh getPtyhById(int userid);
	//通过ID获取村委会用户问卷
	public Cwhyh getCwhyhById(int userid);
}
