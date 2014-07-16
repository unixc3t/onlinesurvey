package alex.controller;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.view.ForwardView;
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
	public View useLogin(@Param(value = "..") User user,
			HttpServletRequest request) {
		if (accountService.login(user)) {
			request.getSession().setAttribute("username", user.getUsername());
			return new ForwardView("/showmsg");
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