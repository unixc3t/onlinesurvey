package alex.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.nutz.ioc.annotation.InjectName;
import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;
import org.nutz.mvc.upload.UploadAdaptor;

import alex.pojo.Cwhyh;
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
		ptyh.setSurveydate(DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG).format(new Date()));
		surveyService.InsPtyh(ptyh);
		request.setAttribute("ifok", "1");
	}
	
	@At("cwhyh")
	@Ok("jsp:welcome")
	@AdaptBy(type = UploadAdaptor.class, args = { "ioc:myUpload" })
	public void ptyh(@Param(value = "..") Cwhyh cwhyh,HttpServletRequest request) {

		
		
		request.setAttribute("ifok", "1");
	}
	
	public void copyFile(String oldPath, String newPath) {
		try {
			int byteread = 0;
			File oldfile = new File(oldPath);
			if (oldfile.exists()) { // 文件存在时
				InputStream inStream = new FileInputStream(oldPath); // 读入原文件
				FileOutputStream fs = new FileOutputStream(newPath);
				byte[] buffer = new byte[10000];
				while ((byteread = inStream.read(buffer)) != -1) {
					fs.write(buffer, 0, byteread);
				}
				inStream.close();
				fs.close();
			}
		} catch (Exception e) {
			System.out.println("复制单个文件操作出错");
			e.printStackTrace();
		}
	}
}
