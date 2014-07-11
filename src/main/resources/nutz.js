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
		type : "alex.impl.service.AccountServiceImpl",
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
	dataService : {
		type : "alex.impl.service.DataServiceImpl",
		fields : {
			dao : {
				refer : 'dao'
			}
		}
	}
}