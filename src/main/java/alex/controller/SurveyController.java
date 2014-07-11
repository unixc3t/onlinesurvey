package alex.controller;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.view.JspView;

/**
 * @author	Liuzhilong<alexmaven@icloud.com>
 * @version	2014年7月11日
 */
@InjectName("surveyController")
public class SurveyController {
	@At("initsu")
	public View initsurvey() {
		return new JspView("survey.init");
	}
}
