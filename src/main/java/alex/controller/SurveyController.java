package alex.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.View;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.upload.TempFile;
import org.nutz.mvc.upload.UploadAdaptor;
import org.nutz.mvc.view.ForwardView;

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
	@Ok("jsp:survey.ptyh")
	public void initsurvey() {
	}

	// 村委会用户生主页
	@At("initsp")
	@Ok("jsp:survey.cwhyh")
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
		if (tf != null) {
			String jkpgbgfilename = uploadroot + uuid1 + ".xls";
			File tFile1 = tf.getFile();
			myutils.copyFile(tFile1.toString(), jkpgbgfilename);
			cwhyh.setJkpgbg(uuid1);
		}
		if (tf2 != null) {
			String zrzccldcbfilename = uploadroot + uuid2 + ".xls";
			File tFile2 = tf2.getFile();
			myutils.copyFile(tFile2.toString(), zrzccldcbfilename);
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
	public void selptyh(int userid, HttpServletRequest request)
			throws UnsupportedEncodingException {
		request.setAttribute("ptyh", surveyService.getPtyhById(userid));
	}

	// 更新普通用户问卷
	@At("updateptyh")
	public View updateptyh(@Param(value = "..") Ptyh ptyh,
			HttpServletRequest request) {
		ptyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG).format(new Date()));
		surveyService.updateptyhByPtyh(ptyh);
		return new ForwardView("/showmsg");
	}

	// 更新村委会用户问卷
	@At("updatecwhyh")
	@AdaptBy(type = UploadAdaptor.class, args = { "ioc:myUpload" })
	public View updatecwhyh(@Param(value = "..") Cwhyh cwhyh,
			HttpServletRequest request, @Param("jkpgbg") TempFile tf,
			@Param("zrzccldcb") TempFile tf2) {
		String uuid1 = UUID.randomUUID().toString();
		String uuid2 = UUID.randomUUID().toString();
		String uploadroot = request.getSession().getServletContext()
				.getRealPath("/")
				+ "upload\\";
		if (tf != null) {
			String jkpgbgfilename = uploadroot + uuid1 + ".xls";
			File tFile1 = tf.getFile();
			myutils.copyFile(tFile1.toString(), jkpgbgfilename);
			cwhyh.setJkpgbg(uuid1);
		}
		if (tf2 != null) {
			String zrzccldcbfilename = uploadroot + uuid2 + ".xls";
			File tFile2 = tf2.getFile();
			myutils.copyFile(tFile2.toString(), zrzccldcbfilename);
			cwhyh.setZrzccldcb(uuid2);
		}
		cwhyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG).format(new Date()));
		surveyService.updatecwhyhByCwhyh(cwhyh);
		return new ForwardView("/showmsg");
	}
	
	
	@At("downloadjk")
	@Ok("raw")
	public File downloadjk(int userid) {
		String downloadpath = myutils.getPath("/upload") + "\\" + surveyService.getCwhyhById(userid).getJkpgbg()+ ".xls";
		return new File(downloadpath);
	}
	
	@At("downloadzr")
	@Ok("raw")
	public File downloadzr(int userid) {
		String downloadpath = myutils.getPath("/upload") + "\\" + surveyService.getCwhyhById(userid).getZrzccldcb()+ ".xls";
		return new File(downloadpath);
	}
}
