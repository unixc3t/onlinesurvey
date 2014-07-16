package alex.controller;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.view.JspView;

import alex.pojo.User;
import alex.service.AccountService;
import alex.service.SurveyService;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
@InjectName("acountController")
public class AcountController {
	private AccountService accountService;
	private SurveyService surveyService;
	
	@At("login")
	public View useLogin(@Param(value = "..") User user,
			HttpServletRequest request) {
		if (accountService.login(user)) {
			request.getSession().setAttribute("username", user.getUsername());
			request.setAttribute("ptyhset", surveyService.GetAllPtyh());
			request.setAttribute("cwhyhset", surveyService.GetAllCwhyh());
			return new JspView("admin.index");
		} else {
			return new JspView("admin.login");
		}
	}

	@At("logout")
	@Ok("redirect:/")
	public void logout(HttpServletRequest request) {
		request.getSession().invalidate();
	}
}