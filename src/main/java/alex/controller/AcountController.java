package alex.controller;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.view.JspView;

import alex.pojo.User;
import alex.service.AccountService;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
@InjectName("acountController")
public class AcountController {
	private AccountService accountService;

	@At("login")
	public View useLogin(String username, String password,
			HttpServletRequest request) {
		User user = new User(username, password);
		if (accountService.login(user)) {
			request.getSession().setAttribute("username", username);
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