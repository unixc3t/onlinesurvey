package alex.controller;

import java.io.File;
import java.text.DateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;

import alex.pojo.Cwhyh;
import alex.pojo.Ptyh;
import alex.service.SurveyService;
import alex.util.MyUtils;

/**
 * @author Liuzhilong<alexmaven@icloud.com>
 * @version 2014年7月11日
 */
@InjectName("surveyController")
public class SurveyController {
	private SurveyService surveyService;
	private MyUtils myutils;

	// 普通用户生主页
	@At("initsu")
	@Ok("jsp:survey.init")
	public void initsurvey() {
	}

	// 村委会用户生主页
	@At("initsp")
	@Ok("jsp:survey.init2")
	public void initsurvey2() {
	}

	// 持久化普通用户问卷
	@At("ptyh")
	@Ok("jsp:welcome")
	public void ptyh(@Param(value = "..") Ptyh ptyh, HttpServletRequest request) {
		ptyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG).format(new Date()));
		surveyService.InsPtyh(ptyh);
		request.setAttribute("ifok", "1");
	}

	// 持久化村委会用户问卷
	@At("cwhyh")
	@Ok("jsp:welcome")
	@AdaptBy(type = UploadAdaptor.class, args = { "ioc:myUpload" })
	public void ptyh(@Param(value = "..") Cwhyh cwhyh,
			HttpServletRequest request, @Param("jkpgbg") TempFile tf,
			@Param("zrzccldcb") TempFile tf2) {
		String uuid1 = UUID.randomUUID().toString();
		String uuid2 = UUID.randomUUID().toString();
		String uploadroot = request.getSession().getServletContext()
				.getRealPath("/")
				+ "upload\\";
		if (tf != null || tf2 != null) {
			String jkpgbgfilename = uploadroot + uuid1
					+ tf.getMeta().getFileLocalName();
			String zrzccldcbfilename = uploadroot + uuid2
					+ tf2.getMeta().getFileLocalName();
			File tFile1 = tf.getFile();
			File tFile2 = tf.getFile();
			myutils.copyFile(tFile1.toString(), jkpgbgfilename);
			myutils.copyFile(tFile2.toString(), zrzccldcbfilename);
			cwhyh.setJkpgbg(uuid1);
			cwhyh.setZrzccldcb(uuid2);
		}
		cwhyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG).format(new Date()));
		surveyService.InsCwhyh(cwhyh);
		request.setAttribute("ifok", "1");
	}

	// 显示所有问卷
	@At("showmsg")
	@Ok("jsp:admin.index")
	public void showmsg(HttpServletRequest request) {
		request.setAttribute("ptyhset", surveyService.GetAllPtyh());
		request.setAttribute("cwhyhset", surveyService.GetAllCwhyh());
	}

	// 删除普通问卷
	@At("delptyh")
	@Ok("redirect:/showmsg")
	public void delptyh(int userid) {
		surveyService.delPtyhById(userid);
	}

	// 删除村委会问卷
	@At("delcwhyh")
	@Ok("redirect:/showmsg")
	public void delcwhyh(int userid) {
		surveyService.delCwhyhById(userid);
	}

	// 浏览村委会用户问卷
	@At("selcwhyh")
	@Ok("jsp:list.cwhyh")
	public void selcwhyh(int userid, HttpServletRequest request) {
		request.setAttribute("cwhyh", surveyService.getCwhyhById(userid));
	}

	// 浏览普通用户问卷
	@At("selptyh")
	@Ok("jsp:list.ptyh")
	public void selptyh(int userid, HttpServletRequest request) {
		request.setAttribute("ptyh", surveyService.getPtyhById(userid));
	}
}
