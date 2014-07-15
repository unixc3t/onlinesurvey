package alex.controller;

import org.nutz.mvc.annotation.AdaptBy;
import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.ioc.provider.JsonIocProvider;
import org.nutz.mvc.upload.UploadAdaptor;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
@Modules({ AcountController.class , SurveyController.class})
@IocBy(type = JsonIocProvider.class, args = { "nutz.js" })
@AdaptBy(type = UploadAdaptor.class, args = { "ioc:myUpload" })
@Encoding(input = "utf-8", output = "utf-8")
public class MainController {
}
