package alex.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
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
		ptyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG).format(new Date()));
		surveyService.InsPtyh(ptyh);
		request.setAttribute("ifok", "1");
	}
	
	@At("cwhyh")
	@Ok("jsp:welcome")
	@AdaptBy(type = UploadAdaptor.class, args = { "ioc:myUpload" })
	public void ptyh(@Param(value = "..") Cwhyh cwhyh,HttpServletRequest request,
			@Param("jkpgbg") TempFile tf,@Param("zrzccldcb") TempFile tf2) {
		String uuid1 = UUID.randomUUID().toString();
		String uuid2 = UUID.randomUUID().toString();
		String uploadroot = request.getSession().getServletContext().getRealPath("/") + "upload\\";
		if (tf != null || tf2 != null) {
			String jkpgbgfilename = uploadroot + uuid1 +tf.getMeta().getFileLocalName();
			String zrzccldcbfilename = uploadroot + uuid2+tf2.getMeta().getFileLocalName();
			File tFile1 = tf.getFile();
			File tFile2 = tf.getFile();
			myutils.copyFile(tFile1.toString(), jkpgbgfilename);
			myutils.copyFile(tFile2.toString(), zrzccldcbfilename);
			cwhyh.setJkpgbg(uuid1);
			cwhyh.setZrzccldcb(uuid2);
		}
		surveyService.InsCwhyh(cwhyh);
		request.setAttribute("ifok", "1");
	}
	
	@At("gptyh")
	@Ok("jsp:list.ptyh")
	public void gptyh(HttpServletRequest request) {
		request.setAttribute("ptyhset", surveyService.GetAllPtyh());
	}
	
	@At("gcwhyh")
	@Ok("jsp:list.cwhyh")
	public void gcwhyh(HttpServletRequest request) {
		request.setAttribute("cwhyhset", surveyService.GetAllCwhyh());
	}
}
