package alex.controller;

import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.ioc.provider.JsonIocProvider;

/**
 * @author liuzhilong<alexmaven@icloud.com>
 */
@Modules({ AcountController.class })
@IocBy(type = JsonIocProvider.class, args = { "nutz.js" })
@Encoding(input = "utf-8", output = "utf-8")
public class MainController {
}
