package alex.controller;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

/**
 * @author	Liuzhilong<alexmaven@icloud.com>
 * @version	2014年7月11日
 */
@InjectName("surveyController")
public class SurveyController {
	@At("initsu")
	@Ok("jsp:survey.init")
	public void initsurvey() {
	}
	
	@At("initsp")
	@Ok("jsp:survey.init2")
	public void initsurvey2() {
	}
	
	@At("ptyh")
	public void ptyh() {
		
	}
}
