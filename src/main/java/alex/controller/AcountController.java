package alex.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
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
	private Logger logger = Logger.getLogger(AcountController.class);
	
	//登陆
	@At("login")
	public View useLogin(@Param(value = "..") User user,
			HttpServletRequest request) {
		if (accountService.login(user)) {
			logger.info("用户尝试登陆：username：" + user.getUsername() + "| password：" + user.getPassword().hashCode());
			request.getSession().setAttribute("username", user.getUsername());
			return new ForwardView("/showmsg");
		} else {
			return new JspView("admin.login");
		}
	}

	//登出
	@At("logout")
	@Ok("redirect:/")
	public void logout(HttpServletRequest request) {
		request.getSession().invalidate();
	}
}