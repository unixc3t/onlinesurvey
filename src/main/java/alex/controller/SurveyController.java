package alex.controller;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import alex.pojo.Ptyh;
import alex.service.SurveyService;

/**
 * @author Liuzhilong<alexmaven@icloud.com>
 * @version 2014年7月11日
 */
@InjectName("surveyController")
public class SurveyController {
	private SurveyService surveyService;

	@At("initsu")
	@Ok("jsp:survey.init")
	public void initsurvey() {
	}

	@At("initsp")
	@Ok("jsp:survey.init2")
	public void initsurvey2() {
	}

	@At("ptyh")
	@Ok("jsp:welcome")
	public void ptyh(@Param(value = "..") Ptyh ptyh,HttpServletRequest request) {
		surveyService.InsPtyh(ptyh);
		request.setAttribute("ifok", "1");
	}
}
