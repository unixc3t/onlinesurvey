var ioc = {
	dataSource : {
		type : "com.alibaba.druid.pool.DruidDataSource",
		events : {
			depose : 'close'
		},
		fields : {
			driverClassName : "com.mysql.jdbc.Driver",
			url : "jdbc:mysql://localhost:3306/onlinesurvey",
			username : "root",
			password : "kismet"
		}
	},
	dao : {  
        type : "org.nutz.dao.impl.NutDao",  
        args : [ {  
            refer : "dataSource"  
        } ]  
    },
    accountService : {
		type : "alex.service.impl.AccountServiceImpl",
		fields : {
			dao : {
				refer : 'dao'
			}
		}
	},
	surveyService : {
		type : "alex.service.impl.SurveyServiceImpl",
		fields : {
			dao : {
				refer : 'dao'
			}
		}
	},
	acountController : {
		type : "alex.controller.AcountController",
		fields : {
			accountService : {
				refer : 'accountService'
			}
		}
	},
	surveyController : {
		type : "alex.controller.SurveyController",
		fields : {
			surveyService : {
				refer : 'surveyService'
			}
		}
	}
}