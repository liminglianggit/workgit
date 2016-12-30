--这个是测试用例，用来说明如何使用LUA脚本定制控制流（以北京人保为例）

--以下列出的全部是系统变量，名称和含义都已预定义好了，不要修改它们，只要根据实际情况去修改它们的值就可以了。
--是否支持车牌查询开关
support_inquire_car = false;
--是否支持历史保单查询
support_query_insurance_history = false;
--是否支持自动报价
support_auto_quote = false;
--是否支持自动核保
support_auto_submit = true;
--服务器IP地址（当保险公司网页访问无需VPN时，这里设置为nil；否则需要设置这个开关，用以判断是否能访问保险公司网页）
web_server_ip_address = nil;
--当前机器人建议运行的工作线程数目(取值范围在1~10之间)
suggest_work_threads_num = 1;
--保险公司类型
insurer_type = "libao";
--是否显示窗口
show_window = true;
--当前脚本的全局名称。必须是唯一的，浏览器将用它来区分每个脚本
global_name = "利宝";
--全局超时时间(单位：毫秒)
global_timeout = 10000
--保险公司所属地区
global_region = "北京";

--[[
--车牌信息
--  京P1CH37
--{"error":0,"msg":"成功", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"小型轿车",
--"owner":{"name":"吴大华"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--京QJ97V6
--{"error":0,"msg":"成功", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"小型轿车",
--"owner":{"name":"李东辉"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}
--蒙DLE963
--账号信息
--A0145
--Tbv71wdC8
json.Get(req.para,"/car/plate_no")
--京QN0W53
external.get_result('LicenseNo'
    enforceCarShipTax
    enforcePremium
A911 车损不计
A912 三者不计
A921 盗抢不计
A928 司机不计
A923 乘客

A310 自燃 A310
A290 涉水 A972
A231 玻璃 
A210 划痕 A971
--京N5GH06
--]]


--对话框输入参数常量定义
MB_OK = 0;
MB_OKCANCEL = 1;
MB_ABORTRETRYIGNORE = 2;
MB_YESNOCANCEL = 3;
MB_YESNO = 4;
MB_RETRYCANCEL = 5;
MB_CANCELTRYCONTINUE = 6;
--对话框输出结果常量定义
IDOK = 1;
IDCANCEL = 2;
IDABORT = 3;
IDRETRY = 4;
IDIGNORE = 5;
IDYES = 6;
IDNO = 7;
IDTRYAGAIN = 10;
IDCONTINUE = 11;
--验证码类型常量定义
VCT_ALPHANUMBER_4 = 1004;			-- 4位英文数字
VCT_ALPHANUMBER_5 = 1005;			-- 5位英文数字
VCT_ALPHANUMBER_6 = 1006;			-- 6位英文数字
VCT_CHINESE_2 = 2002;					-- 2位纯中文
VCT_CHINESE_4 = 2004;					-- 4位纯中文
VCT_ALPHA_4 = 3004;						-- 4位纯英文
VCT_ALPHA_5 = 3005;						-- 5位纯英文
VCT_ALPHA_6 = 3006;						-- 6位纯英文
VCT_NUMBER_4 = 4004;					-- 4位纯数字
VCT_NUMBER_5 = 4005;					-- 5位纯数字

--车牌信息
--京P1CH37 
--{"error":0,"msg":"成功", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"小型轿车",
--"owner":{"name":"吴大华"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--京QJ97V6
--{"error":0,"msg":"成功", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"小型轿车",
--"owner":{"name":"李东辉"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}

--账号信息
--A0145
--Tbv71wdC8


--京QN0W53

--京N5GH06
--京Q58K82


--内置json函数列表
--json.Valid(s)				 判定给出的s参数是否是有效的JSON字符串
--json.Get(s, k)			 返回json串s里k键处的值（以字符串形式返回）。键的类型是字符串，用'/'或'\\'分级，如要取出json串s（其值为："{'abc':{'a':'1', 'b':'2', 'c':'3'},'d':'4'}"）里第一级键'abc'下的子键'b'的值，可写为jget(s, "/abc/b")。
--json.Set(s, k, v)		 设置json串s里k键处的值为v，并将结果以字符串方式返回。
--json.Size(s, k)			 判断json串s里k键处的元素个数，要求s[k]是数组类型。

--内置系统函数列表
--sys.DBGPrint(fmt,...)			输出调试信息，参数和C函数的printf一致，fmt是格式字符串(和printf一致，可接收%d、%c、%u、%o、%f、%p、%s等等)，后面接变参。

--内置业务函数列表
--web.GetTickCount()   返回当前系统时间（从开机到目前所经历的时间，以毫秒为单位）
--web.GetUserName()		 返回当前用于登录保险公司网页的用户名
--web.GetPassword()		 返回当前用于登录保险公司网页的密码
--web.GetRequest()	 	 返回当前请求队列前端的请求对象
------请求对象包含以下成员
--------id			 类型（C对象），标识符
--------type     类型（整型），0 - 查车牌；1 - 查历史保单；2 - 自动报价；3 - 自动核保。
--------para		 类型（字符串），指示输入的参数，如果是查车牌请求，则这个参数是车牌；如果是其它的则这个参数是输入的JSON串。
--------complete(result) 类型（函数），完成当前请求。
--web.IsRunning()			 返回当前虚拟机是否在运行的标志
--web.Exit(reason)		 退出当前的脚本执行环境（reason可以不给出，否则给出的是退出原因字符串）
--web.NewPage()				 新建页面，并返回建立的页面对象
--web.GetPageCount()	 获取页面数量
--web.GetPageAt(no)		 获取序号是no的页面对象
--web.GetPageTitle(p)  获取页面对象p的标题（支持网页对话框）
--web.GetPageURL(p)		 获取页面对象p的URL（支持网页对话框）
--web.FindPageByTitle(partten)	查找页面标题匹配标题字符串的页面对象并返回，pattern中可包含通配符（?,*）
--web.FindPageByURL(partten)	  查找页面URL匹配URL字符串的页面对象并返回，pattern中可包含通配符（?,*）
--web.Navigate(p, url) 在指定的页面对象p里导航到url指定的网址，成功返回true，否则返回false
--web.ClosePage(p)		 关闭页面对象p指定的窗口
--web.ExecuteScript(p, sc[, async])	在指定的页面对象p里执行js脚本。js脚本的内容在sc字符串里。async设置的时候代表异步执行，否则同步。（支持网页对话框，对话框执行不支持异步）
--web.GetLastAsyncResult(page)	查询之前最后一次在页面对象p里执行的js脚本操作是否完成，若未完成返回nil，否则返回执行的结果（整型数），不为零表示成功。
--web.PutResult(k,v)	 在当前环境下（可跨页面）将字符串v存储到k键下，此环境和js执行环境下的external.put_result(k,v)扩展函数是一致的，可以用来在两种语言里传递数据
--web.GetResult(k)		 在当前环境下（可跨页面）获取k键下存储的字符串值，此环境和js执行环境下的external.get_result(k)扩展函数是一致的，可以用来在两种语言里传递数据
--web.IsDocumentCompleted(p)	判断页面对象p里的文档载入完成（支持网页对话框）
--web.IsNavigateError(p)	判断页面对象p导航是否出错
--web.OnShowMessage(func)	设置当前环境下网页对话框弹出事件的回调函数，func就是设置的回调函数（如果为nil则取消回调）。
-------对话框弹出事件回调函数原型是：function ShowMessageCallback(p, caption, message, type)  回调函数返回的结果是按下按钮的资源ID（详见“对话框输出结果常量”的定义）
-------回调函数运行环境和正常执行流程不在同一个环境空间下，如果要和主程序空间通讯请使用web.PutResult和web.GetResult。
--web.Wait(ms)			 	 等待ms毫秒后继续执行后续代码
--web.IsElementExist(p,name)	判定指定页面里是否存在name描述的DOM文档对象。name是JS中任何可用的指向对象的有效语句。可支持多个对象，对象间用','或';'分隔。
--web.GetNewPage(page,min_ms)	获取最新创建的页面（如果page不为nil，那么这个新页面必须是page的子页面，否则可以是任意页面），且满足创建时间在当前时间前min_ms毫秒之后。
--web.IsTimeout(t)		 判断超时器t是否超时
--web.NewTimeout(ms)	 创建ms毫秒后超时的超时器
--web.Refresh(p)			 刷新页面对象p
--web.GetCarModeCode(plateno)	查询指定车牌号是plateno的车辆识别代码（若为nil则表示未查到）
--web.IsVPNConnected() 判断VPN是否已经连接上了
--web.RecognizeVerificationCode(url, type)	识别验证码，url是验证码网址，type是验证码类型(VCT_XXXX)。返回标识符ID和识别结果，如
----------------------------------- id, code = web.RecognizeVerificationCode("https://icore-pts.pingan.com.cn/ebusiness/auto/rand-code-imgage.do", VCT_ALPHANUMBER_4);
----------------------------------- 返回的id如果是小于等于零的则表示未识别出来，这个id的值就是错误代码；
--web.ReportVerCodeError(id)	报告错误识别信息，id是web.ReportVerCodeError返回的第一个结果。函数返回错误代码，0表示成功。
--web.OnCreateDialog(func)	设置当前环境下网页对话框创建事件的回调函数，func就是设置的回调函数（如果为nil则取消回调）
-------对话框创建事件回调函数原型是：function CreateDialogCallback(p, hwnd, caption, message, type)
-------回调函数运行环境和正常执行流程不在同一个环境空间下，如果要和主程序空间通讯请使用web.PutResult和web.GetResult。
--web.SetDlgItemText(hDlg, id, text)	设置指定对话框里指定控件id的文本内容为text
--web.EndDialog(hDlg, ret)	终止对话框
--web.OnShowDialogHtml(func)	设置当前环境下网页对话框显示的回调函数，func就是设置的回调函数（如果为nil则取消回调）
-------对话框网页显示回调函数原型是：function ShowDialogHtmlCallback(p, url, name, flags)
-------返回是否允许弹出的状态，true表示允许，false表示不允许。
-------回调函数运行环境和正常执行流程不在同一个环境空间下，如果要和主程序空间通讯请使用web.PutResult和web.GetResult。
--web.GetVPNLoginInfo(type, no)	获取序号是no保险公司类型是type的渠道里的VPN帐户信息，no表示是匹配到的第几个，0表示第一个。若成功则
-------返回渠道里设置的VPN帐户和密码，否则返回nil。例如：usr,pwd = web.GetVPNLoginInfo('renbao',0)  这段代码就是获取当前登录帐户中
-------第一个设置了VPN登录信息的渠道VPN帐户和密码。
--web.GetHtmlDialog()		获取当前弹出的HTML对话框对象。

--以下为函数部分
function OnShowDialogHtml(page, url, name, flags)
	return false;	-- 禁止所有窗口网页弹出
end

--禁止系统对话框示例
function OnCreateDialog(page, hwnd, caption, message, type)
	sys.DBGPrint("发现窗口[%s]\r\n", caption);
	if (string.lower(caption) == "user-pin verification") then
		sys.DBGPrint("是PIN窗口，准备自动填写！\r\n");
		web.SetDlgItemText(hwnd, 1000, "jnluzhen");
		web.EndDialog(hwnd, IDOK);
	end
end
--禁止系统弹出框
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("截获到系统对话框[%s, dwType=%d]，强制返回继续！%s\r\n", caption, type,message);
	type = type % 16;
	global_message = message;
	if string.find(message,'投保了同类型的险种') ~= nil then
		jiaoqiang_flag = 1;
	end
	pos,_=string.find(message,"是否复制");
	if (pos ~= nil) then
		if type == MB_OKCANCEL or type == MB_RETRYCANCEL or type == MB_CANCELTRYCONTINUE or type == MB_YESNOCANCEL then
			return IDCANCEL;
		end
		if type == MB_YESNO then
			return IDNO;
		end
	end
	if(type == MB_OK or type == MB_OKCANCEL) then
		return IDOK;
	end
	if(type == MB_ABORTRETRYIGNORE) then
		return IDIGNORE;
	end
	if(type == MB_YESNOCANCEL or type == MB_YESNO) then
		return IDYES;
	end
	if(type == MB_RETRYCANCEL) then
		return IDCANCEL;
	end 
	if(type == MB_CANCELTRYCONTINUE) then
		return IDCONTINUE;
	end
	return IDOK;
end

--等待页面加载完毕
function __WaitForDocumentCompleted(page, ms)
	local tm;
	if(page == nil) then
		return false;
	end
	tm = web.NewTimeout(ms or global_timeout);
	while true do
		if(web.IsDocumentCompleted(page)) then
			return true;
		end
		if(web.IsNavigateError(page)) then
			return false;
		end
		if(web.IsTimeout(tm)) then
			sys.DBGPrint("页面加载超时！\r\n");		
			break;
		end
		web.Wait(50);
	end
	return false;
end


--等待页面对象里的文档载入完毕
function WaitForDocumentCompleted(page, ms)
	local title, pos;
	if not __WaitForDocumentCompleted(page, ms or global_timeout) then
		return false;
	end
	title = web.GetPageTitle(page);
	if title ~= nil then
		pos, _ = string.find(title, "证书错误");
		if pos ~= nil then
			if not WaitForObjectLoaded(page, "document.getElementById(\"overridelink\")") then
				sys.DBGPrint("等待证书错误页面对象加载完毕超时！\r\n");
				return false;
			end
			if (not web.ExecuteScript(page, "document.getElementById(\"overridelink\").click();")) then
				sys.DBGPrint("忽略证书错误脚本执行错误！\r\n");
				return false;
			end
			if not WaitForDocumentCompleted(page, ms or global_timeout) then
				sys.DBGPrint("等待证书错误后续页面加载超时！\r\n");
				return false;
			end
		end
	else
	  sys.DBGPrint("获取新加载页面标题失败！\r\n");
	end
	return true;
end


--等待新页面创建
function WaitForNewPage(page, ms)
	local child, tm;
	if (page == nil or ms == nil) then
		return nil;
	end
	tm = web.NewTimeout(global_timeout);
	while true do
		child = web.GetNewPage(page, ms);
		if child ~= nil then
			return child;
		end
		if(web.IsTimeout(tm)) then
			sys.DBGPrint("等待新页面打开超时！\r\n");
			break;
		end
		web.Wait(10);
	end
	return nil;
end

--登录
function login(page,url)
	local user, password, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "用户名或密码为空";
	end
	if not web.Navigate(page, url) then
		return false, "无法导航到利宝首页";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "导航失败";
	end
	--web.Wait(5000);
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("等待获取title，请稍后！\r\n");
		if title then
		
			pos = nil;
			pos, _ = string.find(title, "Motor");
			if pos == nil then
				pos, _ = string.find(title, "Welcome");
				if pos == nil then
					pos, _ = string.find(title, "https://lm.libertymutual.com.cn");
					if pos == nil then
						return false, "无法识别的标题["..title.."]";
					end
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	sys.DBGPrint(title);
	if title == nil then
		return false, "登陆失败！";
	end
	web.PutResult("username", user);
	web.PutResult("password", password);
	repeat
		web.ExecuteScript(page, "document.getElementById('userDisplay').focus();\r\n\
										document.getElementById('userDisplay').click();\r\n\
										document.getElementById('userDisplay').value=external.get_result('username');\r\n\
										document.getElementById('passwordDisplay').focus();\r\n\
										document.getElementById('passwordDisplay').click();\r\n\
										document.getElementById('passwordDisplay').value=external.get_result('password');\r\n\
										document.getElementsByClassName('new-btn')[0].click();\r\n\
									");
		web.Wait(500);
		title = web.GetPageTitle(page);
		pos, _ = string.find(title, "Welcome");
		if pos ~= nil then
			break;
		end
	until(false)
	return true, "成功";
end









--自动核保
function  auto_submit(req)

	if json.Get(req.para,'/insurance/chengke') ~= nil then
		local temp = json.Get(req.para,'/insurance/chengke/unit') + 0;
		if temp > 200000 then
			sys.DBGPrint("乘客险保额超出限额，最高保额为20万！\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'乘客险保额超出限额，利宝保险有限公司的乘客险最高保额为20万！');
			req:complete(req.para);
			return false;
		elseif temp == 150000 then
			sys.DBGPrint("利宝保险有限公司的乘客险不可选择15万\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'利宝保险有限公司的乘客险不可选择15万');
			req:complete(req.para);
			return false;
		end
	end

	if json.Get(req.para,'/insurance/siji') ~= nil then
		local temp = json.Get(req.para,'/insurance/siji/baoe') + 0;
		if temp > 200000 then
			sys.DBGPrint("司机险保额超出限额，最高保额为20万！\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'司机险保额超出限额，利宝保险有限公司的司机险最高保额为20万！');
			req:complete(req.para);
			return false;
		elseif temp == 150000 then
			sys.DBGPrint("利宝保险有限公司的司机险不可选择15万\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'利宝保险有限公司的司机险不可选择15万');
			req:complete(req.para);
			return false;
		end
	end

	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("发现核保[%s]的请求！\r\n",json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para..'\r\n');
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("新建页面失败！\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'新建页面失败！!');
		req:complete(req.para);
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		sys.DBGPrint("登录返回结果[%s]！\r\n", err);
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'登录失败!');
		req:complete(req.para);
		return false;

	end	
	sys.DBGPrint("登陆完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(20000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('机动车') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("进入首页中......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入首页成功！"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("进入首页失败！\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'进入首页失败！!');
		req:complete(req.para);
		return false;

	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('签单') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("进入签单管理页面中......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入签单管理页面成功！"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("进入签单管理页面失败！\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'进入签单管理页面失败！!');
		req:complete(req.para);
		return false;
	end
	--查询转人工错误原因
	if json.Get(req.para,'/insurance/complete') ~= nil then
		web.PutResult('shangNumber',json.Get(req.para,'/insurance/shangNumber'));
		web.PutResult('flag','');
		tm1 = web.NewTimeout(10000);
		repeat
			web.ExecuteScript(page,"var $scope = angular.element(document.getElementsByTagName('input')[1]).scope();\r\n\
									$scope.ProductionInVo.documentNo=external.get_result('shangNumber');\r\n\
									$scope.$apply();\r\n\
									var index = 0;\r\n\
									while(true){\r\n\
										var temp = document.getElementsByTagName('button')[index].innerHTML;\r\n\
										if (temp.indexOf('查询') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
				")
			sys.DBGPrint("输入单号.....\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("输入单号成功！"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(500);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("输入单号失败！\r\n");
			req:complete("{\"error\":-4,\"msg\":\"输入单号失败！\"}");
			return false;
		end
		web.PutResult('flag','');
		tm1 = web.NewTimeout(10000);
		repeat
			web.ExecuteScript(page,"var temp = document.getElementById('table_quanbuJiLu').getElementsByTagName('div')[0].innerHTML;\r\n\
									if (temp.indexOf('等待核保') != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
									else if (temp.indexOf('核保未通过') != -1){\r\n\
										external.put_result('flag','2');\r\n\
										}\r\n\
				")
			sys.DBGPrint("查询核保状态.....\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("查询核保状态成功！"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("查询核保状态失败！\r\n");
			req:complete("{\"error\":-4,\"msg\":\"查询核保状态失败！\"}");
			return false;
		end

		if web.GetResult('flag') == '1' then
			sys.DBGPrint("等待核保！\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-1);
			req.para = json.Set(req.para,"/msg",'等待核保！');
			req:complete(req.para);
			return false;
		end

		if web.GetResult('flag') == '2' then
			local tm11 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat 
				web.ExecuteScript(page, "document.getElementsByTagName('a')[2+index].click();\r\n\
										external.put_result('flag','1');\r\n\
				") 	
				if web.GetResult('flag') ~= nil then
					break;
				end
			until(web.IsTimeout(tm11));


			if web.GetResult('flag') == nil then
				sys.DBGPrint("未能查询到该车的投保单号！\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-1);
				req.para = json.Set(req.para,"/msg",'未能查询到该车的投保单号！');
				req:complete(req.para);
				return false;
			end

			local new_page = nil;
			local tm5 = web.NewTimeout(20000);
			web.PutResult('flag','');
			repeat
					new_page = web.GetPageAt(1);
					sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
					sys.DBGPrint('第一次获取页面\r\n');
					local url = web.GetPageURL(new_page);
					pos, _ = string.find(url, "https://cs.libertymutual.com.cn");
					if pos ~= nil then
						web.PutResult('flag','1');
						break;
					end
					new_page = web.GetPageAt(0);
					sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
					sys.DBGPrint('第二次获取页面\r\n');
					local url = web.GetPageURL(new_page);
					pos, _ = string.find(url, "https://cs.libertymutual.com.cn");
					if pos ~= nil then
						web.PutResult('flag','1');
						break;
					end
			until(web.IsTimeout(tm5));
			if web.GetResult('flag') == nil then
				web.ClosePage(page);
				sys.DBGPrint("获取审核意见页面失败！\r\n");
				req.para = json.Set(req.para,"/error",-6);
				req.para = json.Set(req.para,"/msg",'获取审核意见页面失败！');
				req:complete(req.para);
				return false;
			end

			WaitForDocumentCompleted(new_page);

			web.PutResult('common1','');
			web.PutResult('common2','');
			tm11 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat 
				web.ExecuteScript(page, "external.put_result('common1',document.getElementsByTagName('textarea')[0].innerHTML);\r\n\
										external.put_result('common2',document.getElementsByTagName('textarea')[1].innerHTML);\r\n\
										external.put_result('flag','1');\r\n\
				") 	
				if web.GetResult('flag') ~= nil then
					break;
				end
			until(web.IsTimeout(tm11));


			if web.GetResult('flag') == nil then
				sys.DBGPrint("未能获取审核意见！\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-1);
				req.para = json.Set(req.para,"/msg",'未能获取审核意见！');
				req:complete(req.para);
				return false;
			end

			local common = web.GetResult('common1')..web.GetResult('common2');
			sys.DBGPrint("获取审核意见成功！\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-1);
			req.para = json.Set(req.para,"/msg",common);
			req.para = json.Set(req.para,"/insurance/complete",1);
			req:complete(req.para);
			return false;

		end
	end








	web.PutResult('flag','');
	tm1 = web.NewTimeout(30000);
	repeat
		web.ExecuteScript(page,"document.getElementById('side_menu_12').click();\r\n\
			");
		web.ExecuteScript(page,"document.getElementById('licenseNo').value;\r\n\
			var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('投保') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("进入投保报价页面中......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入投保报价页面成功！"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("进入投保报价页面失败！\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'进入投保报价页面失败！!');
		req:complete(req.para);
		return false;
	end


	WaitForDocumentCompleted(page);
	local ownership_code = nil;
	if json.Get(req.para,'/car/ownership_code') ~= nil then
		local ownership_code = json.Get(req.para,'/car/ownership_code');
		ownership_code = ownership_code + 0;
		if ownership_code == 1 then
			web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
											$scope.PrpTitemCarDTO.carInsuredRelation=4;\r\n\
											$scope.$apply();\r\n\
											")
		end
	end

	if json.Get(req.para,"/insurance/jiaoqiang") == '1' then
		web.PutResult('StartDate','');
		web.PutResult('EndDate','');
		web.PutResult('StartDate',json.Get(req.para,'/insurance/qiangDateStart'));
		web.PutResult('EndDate',json.Get(req.para,'/insurance/qiangDateEnd'));
		if web.GetResult('StartDate') ~= nil and web.GetResult('EndDate') ~= nil then
			if not web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('startDate1')).scope();\r\n\
											$scope.proposal.mtplStartDate=external.get_result('StartDate');\r\n\
											$scope.proposal.mtplEndDate=external.get_result('EndDate');\r\n\
											$scope.$apply();\r\n\
				") then
					web.ClosePage(page);
					sys.DBGPrint("选择投保日期失败！\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'选择投保日期失败！');
					req:complete(req.para);
					return false;
			end
		end

	end

	if json.Get(req.para,"/insurance/shang") == '1' then
		web.PutResult('StartDate','');
		web.PutResult('EndDate','');
		web.PutResult('StartDate',json.Get(req.para,'/insurance/shangDateStart'));
		web.PutResult('EndDate',json.Get(req.para,'/insurance/shangDateEnd'));
		if web.GetResult('StartDate') ~= nil and web.GetResult('EndDate') ~= nil then
			if not web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('startDate1')).scope();\r\n\
											$scope.proposal.startDate=external.get_result('StartDate');\r\n\
											$scope.proposal.endDate=external.get_result('EndDate');\r\n\
											$scope.$apply();\r\n\
				") then
					web.ClosePage(page);
					sys.DBGPrint("选择投保日期失败！\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'选择投保日期失败！');
					req:complete(req.para);
					return false;
			end
		end

	end

	

	web.PutResult('vinNo',json.Get(req.para,'/car/vin'));
	web.PutResult('licenseNo',json.Get(req.para,'/car/plate_no'));
	web.PutResult('carOwner',json.Get(req.para,'/car/owner/name'));
	web.PutResult('enrollDate',json.Get(req.para,'/car/register_date'));
	web.PutResult('engineNo',json.Get(req.para,'/car/engine_no'));
	local enrollDate = web.GetResult('enrollDate');
	if string.len(enrollDate) == 8 then
		enrollDate = string.gsub(enrollDate,'-','-0');
		web.PutResult('enrollDate',enrollDate);
	elseif string.len(enrollDate) == 9 then
		local str = string.sub(enrollDate,7,7);
		if str == '-' then 
			enrollDate = string.gsub(enrollDate,'-','-0',1);
			web.PutResult('enrollDate',enrollDate);
		else
			enrollDate = string.gsub(enrollDate,'-','-0');
			enrollDate = string.gsub(enrollDate,'-0','-',1);
			web.PutResult('enrollDate',enrollDate);
		end
	end

	local licenseNo = web.GetResult('licenseNo');
	local pos = nil;
	pos, _ = string.find(licenseNo, "京");
	if pos == nil then
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.whethercar='1';\r\n\
									$scope.$apply();\r\n\
									") 
	end


	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.vinNo=external.get_result('vinNo');\r\n\
									$scope.PrpTitemCarDTO.licenseNo=external.get_result('licenseNo');\r\n\
									$scope.PrpTitemCarDTO.carOwner=external.get_result('carOwner');\r\n\
									$scope.PrpTitemCarDTO.enrollDate=external.get_result('enrollDate');\r\n\
									$scope.PrpTitemCarDTO.engineNo=external.get_result('engineNo');\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									") 
		web.ExecuteScript(page,"var temp = document.getElementById('carOwner').value;\r\n\
								if (temp.indexOf(external.get_result('carOwner')) != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("输入车辆信息失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'输入车辆信息失败!');
		req:complete(req.para);
		return false;
	end

	

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page,"document.getElementById('vinbutton').disabled=false;\r\n\
								document.getElementById('vinbutton').click();\r\n\
			");
		web.Wait(1000);
		WaitForDocumentCompleted(page);
		web.ExecuteScript(page,"document.getElementsByClassName('modal-content')[0].getElementsByTagName('tr')[1].click();\r\n\
								document.getElementsByClassName('modal-content')[0].getElementsByTagName('button')[1].click();\r\n\
			");
		web.ExecuteScript(page,"var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
								if ($scope.PrpTitemCarDTO.seatCount != 1){\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("选择车型中......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("选择车型成功"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("选择车型失败\r\n");
		req:complete("{\"error\":-4,\"msg\":\"选择车型失败\"}");
		return false;
	end
	--web.Wait(100000);


	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('btn btn-topbtn btn-primary w60 fl-r  btn-display')[1].click();\r\n\
								"); 
		web.ExecuteScript(page, "if (document.getElementsByClassName('btn btn-topbtn btn-primary w60 fl-r  btn-display')[1].disabled == true)\r\n\
									external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("车型查询中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("车型查询失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'车型查询失败');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].innerHTML;\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("等待查询车型......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("查询车型失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'查询车型失败');
		req:complete(req.para);
		return false;
	end


	web.Wait(1000);

	web.PutResult('flag','');
	tm1 = web.NewTimeout(15000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].getElementsByTagName('input')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("选择车型中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("选择车型失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'选择车型失败');
		req:complete(req.para);
		return false;
	end



	if json.Get(req.para,"/insurance/shang") ~= '1' then
		web.ExecuteScript(page, "document.getElementById('Commercial').click();\r\n\
									")
	end


	if json.Get(req.para,"/insurance/jiaoqiang") ~= '1' then
		web.ExecuteScript(page, "document.getElementById('MTPL').click();\r\n\
									")
	end

	web.Wait(1000);





	if ownership_code == 1 then
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.Wait(100);
			web.ExecuteScript(page, "var temp = document.getElementById('useNature').innerHTML;\r\n\
										if (temp.indexOf('非营业企业') != -1)\r\n\
											external.put_result('flag','1');\r\n\
										")
			sys.DBGPrint("等待网页响应中......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
		until(web.IsTimeout(tm1))
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.Wait(100);
			web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
										$scope.PrpTitemCarDTO.useNatureCode='8B';\r\n\
										$scope.$apply();\r\n\
										if ((document.getElementById('useNature').value).indexOf('8B') != -1)\r\n\
											external.put_result('flag','1');\r\n\
										")
			sys.DBGPrint("选择使用类型中......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("选择使用类型失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择使用类型失败');
			req:complete(req.para);
			return false;
		end
	else
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
										$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
										$scope.$apply();\r\n\
										if ((document.getElementById('useNature').value).indexOf('8A') != -1)\r\n\
											external.put_result('flag','1');\r\n\
										")
			sys.DBGPrint("选择使用类型中......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("选择使用类型失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择使用类型失败');
			req:complete(req.para);
			return false;
		end
	end



	web.ExecuteScript(page, "document.getElementsByClassName('more')[0].click();\r\n\
									")
	web.Wait(1000);
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("选择客户类型中......\r\n");
		web.Wait(500);
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("选择客户类型失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'选择客户类型失败');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
								$scope.CustomerInfoDto.name=external.get_result('carOwner');\r\n\
								$scope.CustomerInfoDto.idNo='111111111111111111';\r\n\
								$scope.CustomerInfoDto.mailAddress='11111111111';\r\n\
								$scope.CustomerInfoDto.cellPhoneNo='88888888888';\r\n\
								$scope.CustomerInfoDto.zipCode='444444';\r\n\
								$scope.CustomerInfoDto.contact=external.get_result('carOwner');\r\n\
								$scope.$apply();\r\n\
								document.getElementById('baocun').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("填写客户信息中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("填写客户信息失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'填写客户信息失败');
		req:complete(req.para);
		return false;
	end

	tm1 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
								var temp = $scope.CustomerInfo1.name;\r\n\
								var temp1 = external.get_result('carOwner');\r\n\
								if (temp.indexOf(temp1) != -1){\r\n\
								external.put_result('flag','1');\r\n\
								}\r\n\
								"); 
		sys.DBGPrint("等待网页响应中......\r\n");
		web.Wait(100);
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1)); 




	
	web.ExecuteScript(page, "document.getElementsByClassName('more')[3].click();");
	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('more')[3].click();\r\n\
								document.getElementById('businesscode_BJ00474').click()\r\n\
								document.getElementsByClassName('modal-footer move-header')[4].getElementsByTagName('button')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("选择渠道中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("选择渠道失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'选择渠道失败');
		req:complete(req.para);
		return false;
	end
	
	web.ExecuteScript(page,"var temp = document.getElementById('newvehicleflag').getElementsByTagName('input')[0].checked;\r\n\
							if (temp == true){\r\n\
							document.getElementById('newvehicleflag').getElementsByTagName('input')[0].click();\r\n\
							}\r\n\
			");

	
	web.Wait(1000);
	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "var temp = document.getElementById('queryPlateRequest').disabled;\r\n\
								if (temp == true){\r\n\
									document.getElementById('queryPlateRequest').disabled=false;\r\n\
									}\r\n\
								"); 
		web.ExecuteScript(page, "document.getElementById('queryPlateRequest').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("平台交互中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("选平台交互失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'平台交互失败');
		req:complete(req.para);
		return false;
	end




	web.PutResult('flag','');
	web.PutResult('qiangerror','');
	tm1 = web.NewTimeout(20000);
	local ownererrorcount = 0;
	repeat
		web.ExecuteScript(page, "if (document.getElementById('calculateRequest').disabled == false){\r\n\
								document.getElementById('my_choice_td_custom').click();\r\n\
								external.put_result('flag','1');\r\n\
								}\r\n\
								"); 
		--交强险错误判断
		web.PutResult('ownererror','');
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								if (temp.indexOf('同类型的险种') != -1){\r\n\
								external.put_result('qiangerror',temp);\r\n\
								}\r\n\
								else if (temp.indexOf('使用性质') != -1){\r\n\
									var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									document.getElementById('queryPlateRequest').click();\r\n\
								}\r\n\
								else if (temp.indexOf('车主名称') != -1){\r\n\
									external.put_result('ownererror','1');\r\n\
								}\r\n\
								else if(temp.indexOf('整备') != -1){\r\n\
									var $scope = angular.element(document.getElementsByClassName('controls con-list')[0].getElementsByTagName('input')[1]).scope();\r\n\
									$scope.PrpTitemCarExtDTO.poWeight=1;\r\n\
									$scope.$apply();\r\n\
									document.getElementById('queryPlateRequest').click();\r\n\
								}\r\n\
								"); 
		if web.GetResult('ownererror') ~= nil and ownererrorcount == 0 then
			ownererrorcount = 1;
			web.ExecuteScript(page, "document.getElementsByClassName('more')[0].click();\r\n\
									")
			web.Wait(1000);
			web.PutResult('tempflag','');
			tm1 = web.NewTimeout(10000);
			repeat
				web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
										external.put_result('tempflag','1');\r\n\
										"); 
				sys.DBGPrint("选择客户类型中......\r\n");
				web.Wait(500);
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("选择客户类型失败\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'选择客户类型失败');
				req:complete(req.para);
				return false;
			end

			web.PutResult('tempflag','');
			tm1 = web.NewTimeout(10000);
			repeat
				web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
										$scope.CustomerInfoDto.name=external.get_result('carOwner');\r\n\
										$scope.CustomerInfoDto.idNo='111111111111111111';\r\n\
										$scope.CustomerInfoDto.mailAddress='11111111111';\r\n\
										$scope.CustomerInfoDto.cellPhoneNo='88888888888';\r\n\
										$scope.CustomerInfoDto.zipCode='444444';\r\n\
										$scope.CustomerInfoDto.contact=external.get_result('carOwner');\r\n\
										$scope.$apply();\r\n\
										document.getElementById('baocun').click();\r\n\
										external.put_result('tempflag','1');\r\n\
										"); 
				sys.DBGPrint("重复输入用户信息中......\r\n");
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("重复输入用户信息失败\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'重复输入用户信息失败');
				req:complete(req.para);
				return false;
			end
			web.Wait(1500);
			web.ExecuteScript(page, "document.getElementById('queryPlateRequest').click();\r\n\
										"); 
		end

		if web.GetResult('qiangerror') ~= nil then
			sys.DBGPrint(web.GetResult('qiangerror').."\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",web.GetResult('qiangerror'));
			req:complete(req.para);
			return false;
		end
		sys.DBGPrint("选择自定义险种中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(500);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								external.put_result('flag',temp);\r\n\
								}\r\n\
								"); 
		sys.DBGPrint("选择自定义险种失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'选择自定义险种失败');
		req:complete(req.para);
		return false;
	end



	
	

	web.PutResult('chesun','');
	web.PutResult('sanzhe','');
	web.PutResult('siji','');
	web.PutResult('chengke','');
	web.PutResult('daoqiang','');
	web.PutResult('boli','');
	web.PutResult('huahen','');
	web.PutResult('ziran','');
	web.PutResult('sheshui','');
	web.PutResult('sanfang','');
	web.PutResult('zhiding','');


	web.PutResult('chesun_buji','');
	web.PutResult('sanzhe_buji','');
	web.PutResult('siji_buji','');
	web.PutResult('chengke_buji','');
	web.PutResult('daoqiang_buji','');
	web.PutResult('huahen_buji','');
	web.PutResult('ziran_buji','');
	web.PutResult('sheshui_buji','');


	web.PutResult('sanzhe_baoe','');
	web.PutResult('siji_baoe','');
	web.PutResult('chengke_baoe','');
	web.PutResult('boli_baoe','');
	web.PutResult('huahen_baoe','');
	web.PutResult('zhiding_baoe','');

	if json.Get(req.para,'/insurance/chesun') ~= nil then
		web.PutResult('chesun',json.Get(req.para,'/insurance/chesun'));
	end

	if json.Get(req.para,'/insurance/sanzhe') ~= nil then
		web.PutResult('sanzhe',json.Get(req.para,'/insurance/sanzhe'));
		web.PutResult('sanzhe_baoe',json.Get(req.para,'/insurance/sanzhe/baoe')..".00");
	end

	if json.Get(req.para,'/insurance/siji') ~= nil then
		web.PutResult('siji',json.Get(req.para,'/insurance/siji'));
		web.PutResult('siji_baoe',json.Get(req.para,'/insurance/siji/baoe')..".00");
	end

	if json.Get(req.para,'/insurance/chengke') ~= nil then
		web.PutResult('chengke',json.Get(req.para,'/insurance/chengke'));
		web.PutResult('chengke_baoe',json.Get(req.para,'/insurance/chengke/unit')..".00");
	end

	if json.Get(req.para,'/insurance/daoqiang') ~= nil then
		web.PutResult('daoqiang',json.Get(req.para,'/insurance/daoqiang'));
	end

	if json.Get(req.para,'/insurance/boli') ~= nil then
		web.PutResult('boli',json.Get(req.para,'/insurance/boli'));
		web.PutResult('boli_baoe',json.Get(req.para,'/insurance/boli/baoe'));
	end

	if json.Get(req.para,'/insurance/huahen') ~= nil then
		web.PutResult('huahen',json.Get(req.para,'/insurance/huahen'));
		web.PutResult('huahen_baoe',json.Get(req.para,'/insurance/huahen/baoe')..".00");
	end

	if json.Get(req.para,'/insurance/ziran') ~= nil then
		web.PutResult('ziran',json.Get(req.para,'/insurance/ziran'));
	end

	if json.Get(req.para,'/insurance/sheshui') ~= nil then
		web.PutResult('sheshui',json.Get(req.para,'/insurance/sheshui'));
	end

	if json.Get(req.para,'/insurance/sanfang') ~= nil then
		web.PutResult('sanfang',json.Get(req.para,'/insurance/sanfang'));
	end
	if json.Get(req.para,'/insurance/zhiding') ~= nil then
		web.PutResult('zhiding',json.Get(req.para,'/insurance/zhiding'));
		web.PutResult('zhiding_baoe',tostring(json.Get(req.para,'/insurance/zhiding/baoe')*100)..".00");
	end


	

	if json.Get(req.para,'/insurance/chesun/buji') ~= nil then
		web.PutResult('chesun_buji',json.Get(req.para,'/insurance/chesun/buji'));
	end

	if json.Get(req.para,'/insurance/siji/buji') ~= nil then
		web.PutResult('siji_buji',json.Get(req.para,'/insurance/siji/buji'));
	end

	if json.Get(req.para,'/insurance/chengke/buji') ~= nil then
		web.PutResult('chengke_buji',json.Get(req.para,'/insurance/chengke/buji'));
	end

	if json.Get(req.para,'/insurance/huahen/buji') ~= nil then
		web.PutResult('huahen_buji',json.Get(req.para,'/insurance/huahen/buji'));
	end

	if json.Get(req.para,'/insurance/ziran/buji') ~= nil then
		web.PutResult('ziran_buji',json.Get(req.para,'/insurance/ziran/buji'));
	end

	if json.Get(req.para,'/insurance/sheshui/buji') ~= nil then
		web.PutResult('sheshui_buji',json.Get(req.para,'/insurance/sheshui/buji'));
	end

	if json.Get(req.para,'/insurance/daoqiang/buji') ~= nil then
		web.PutResult('daoqiang_buji',json.Get(req.para,'/insurance/daoqiang/buji'));
	end

	if json.Get(req.para,'/insurance/sanzhe/buji') ~= nil then
		web.PutResult('sanzhe_buji',json.Get(req.para,'/insurance/sanzhe/buji'));
	end





	if web.GetResult('chesun') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
								document.getElementById('kindCode_A200').click();\r\n\
								") then
			sys.DBGPrint("保取消车辆损失险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消车辆损失险失败');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chesun_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
							") then
			sys.DBGPrint("取消车辆损失险不计免赔失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消车辆损失险不计免赔失败');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('sanzhe') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
								document.getElementById('kindCode_A600').click();\r\n\
								") then
			sys.DBGPrint("取消三者险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消三者险失败');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('sanzhe_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
										document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("取消三者险不计免赔失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消三者险不计免赔失败');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("录入三者保额失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'录入三者保额失败');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('siji') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
								document.getElementById('kindCode_A701').click();\r\n\
								") then
			sys.DBGPrint("取消司机险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消司机险失败');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('siji_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
			document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("取消司机险不计免赔失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消司机险不计免赔失败');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("录入司机险保额失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'录入司机险保额失败');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('chengke') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
								document.getElementById('kindCode_A702').click();\r\n\
								") then
			sys.DBGPrint("取消乘客险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消乘客险失败');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chengke_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
			document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("取消乘客险不计免赔失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消乘客险不计免赔失败');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("录入乘客险保额失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'录入乘客险保额失败');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('daoqiang') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
								document.getElementById('kindCode_A500').click();\r\n\
								") then
			sys.DBGPrint("取消盗抢险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消三者险失败');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('daoqiang_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
							") then
			sys.DBGPrint("取消盗抢险不计免赔失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'取消盗抢险不计免赔失败');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('boli') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A231').click();\r\n\
			if (external.get_result('boli_baoe').indexOf('国产') != -1 || external.get_result('boli_baoe').indexOf('国产玻璃') != -1)\r\n\
					document.getElementById('Coverage_A231').value='1';\r\n\
					else if (external.get_result('boli_baoe').indexOf('进口') != -1 || external.get_result('boli_baoe').indexOf('进口玻璃') != -1)\r\n\
						document.getElementById('Coverage_A231').value='2';\r\n\
								") then
			sys.DBGPrint("选择玻璃险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择玻璃险失败');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('huahen') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A210').click();\r\n\
			document.getElementById('Coverage_A210').value=external.get_result('huahen_baoe');\r\n\
								") then
			sys.DBGPrint("选择划痕险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择划痕险失败');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('huahen_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A971').click();\r\n\
								") then
				sys.DBGPrint("选择划痕险不计免赔失败\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'选择划痕险不计免赔失败');
				req:complete(req.para);
				return false;
			end
		end

	end



	if web.GetResult('ziran') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A310').click();\r\n\
								") then
			sys.DBGPrint("选择自燃险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择自燃险失败');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('ziran_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A970').click();\r\n\
								") then
				sys.DBGPrint("选择自燃险不计免赔失败\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'选择自燃险不计免赔失败');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sheshui') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A290').click();\r\n\
								") then
			sys.DBGPrint("选择涉水险失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择涉水险失败');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('sheshui_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A972').click();\r\n\
								") then
				sys.DBGPrint("选择涉水险不计免赔失败\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'选择涉水险不计免赔失败');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sanfang') ~= nil or web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('showKindList_span').click();\r\n\
								") then
			sys.DBGPrint("点击显示险种按钮失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'点击显示险种按钮失败');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('sanfang') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A250').click();\r\n\
								") then
			sys.DBGPrint("选择第三方险种失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择第三方险种失败');
			req:complete(req.para);
			return false;
		end
	end



	if web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A252').click();\r\n\
			document.getElementById('Coverage_A252').value=external.get_result('zhiding_baoe');\r\n\
								") then
			sys.DBGPrint("选择指定修理厂险种失败\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'选择指定修理厂险种失败');
			req:complete(req.para);
			return false;
		end
	end

	web.Wait(1000);
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('controls con-list')[0].getElementsByTagName('input')[1]).scope();\r\n\
								$scope.PrpTitemCarExtDTO.autonomyAdjustValue=0.85;\r\n\
								$scope.$apply();\r\n\
								$scope.PrpTitemCarExtDTO.channelAdjustValue=0.85;\r\n\
								$scope.$apply();\r\n\
								$scope.PrpTitemCarExtDTO.autonomyValue=0.7225;\r\n\
								$scope.$apply();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("选择保险系数中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("选择保险系数失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'选择保险系数失败');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementById('calculateRequest').click();\r\n\
							"); 
		web.ExecuteScript(page, "var temp = document.getElementById('total_custom').innerHTML;\r\n\
							if (temp != '')\r\n\
								external.put_result('flag','1');\r\n\
							"); 
		sys.DBGPrint("保费计算中中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(500);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("保费计算失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'保费计算失败');
		req:complete(req.para);
		return false;
	end

	local bujiPrice = '0';

	if web.GetResult('chesun') ~= nil then
		if web.GetResult('chesun_buji') ~= nil then
			web.PutResult('chesun_baofei','');
			web.PutResult('chesun_buji_baofei','');
			web.ExecuteScript(page, "external.put_result('chesun_baofei',document.getElementById('Premium_custom_A200').title);\r\n\
							"); 
			local chesun = string.gsub(web.GetResult('chesun_baofei'),',','');
			local chesun_buji =  string.match(chesun,"+.+=");
			chesun = string.match(chesun,"%d+.%d+");
			chesun_buji = string.match(chesun_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/chesun/price',chesun);
			bujiPrice = chesun_buji;
		else
			web.PutResult('chesun_baofei','');
			web.ExecuteScript(page, "external.put_result('chesun_baofei',document.getElementById('Premium_custom_A200').innerHTML);\r\n\
							"); 
			local chesun =  string.gsub(web.GetResult('chesun_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/chesun/price',chesun);
		end
	end



	if web.GetResult('sanzhe') ~= nil then
		if web.GetResult('sanzhe_buji') ~= nil then
			web.PutResult('sanzhe_baofei','');
			web.ExecuteScript(page, "external.put_result('sanzhe_baofei',document.getElementById('Premium_custom_A600').title);\r\n\
							"); 
			local sanzhe = string.gsub(web.GetResult('sanzhe_baofei'),',','');
			local sanzhe_buji =  string.match(sanzhe,"+.+=");
			sanzhe = string.match(sanzhe,"%d+.%d+");
			sanzhe_buji = string.match(sanzhe_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/sanzhe/price',sanzhe);
			bujiPrice = tostring((bujiPrice+0)+(sanzhe_buji+0));
		else
			web.PutResult('sanzhe_baofei','');
			web.ExecuteScript(page, "external.put_result('sanzhe_baofei',document.getElementById('Premium_custom_A600').innerHTML);\r\n\
							"); 
			local sanzhe =  string.gsub(web.GetResult('sanzhe_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/sanzhe/price',sanzhe);
		end
	end


	if web.GetResult('chengke') ~= nil then
		if web.GetResult('chengke_buji') ~= nil then
			web.PutResult('chengke_baofei','');
			web.ExecuteScript(page, "external.put_result('chengke_baofei',document.getElementById('Premium_custom_A702').title);\r\n\
							"); 
			local chengke = string.gsub(web.GetResult('chengke_baofei'),',','');
			local chengke_buji =  string.match(chengke,"+.+=");
			chengke = string.match(chengke,"%d+.%d+");
			chengke_buji = string.match(chengke_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/chengke/price',chengke);
			bujiPrice = tostring((bujiPrice+0)+(chengke_buji+0));
		else
			web.PutResult('chengke_baofei','');
			web.ExecuteScript(page, "external.put_result('chengke_baofei',document.getElementById('Premium_custom_A702').innerHTML);\r\n\
							"); 
			local chengke =  string.gsub(web.GetResult('chengke_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/chengke/price',chengke);
		end
	end

	if web.GetResult('siji') ~= nil then
		if web.GetResult('siji_buji') ~= nil then
			web.PutResult('siji_baofei','');
			web.ExecuteScript(page, "external.put_result('siji_baofei',document.getElementById('Premium_custom_A701').title);\r\n\
							"); 
			local siji = string.gsub(web.GetResult('siji_baofei'),',','');
			local siji_buji =  string.match(siji,"+.+=");
			siji = string.match(siji,"%d+.%d+");
			siji_buji = string.match(siji_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/siji/price',siji);
			bujiPrice = tostring((bujiPrice+0)+(siji_buji+0));
		else
			web.PutResult('siji_baofei','');
			web.ExecuteScript(page, "external.put_result('siji_baofei',document.getElementById('Premium_custom_A701').innerHTML);\r\n\
							"); 
			local siji =  string.gsub(web.GetResult('siji_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/siji/price',siji);
		end
	end

	if web.GetResult('daoqiang') ~= nil then
		if web.GetResult('daoqiang_buji') ~= nil then
			web.PutResult('daoqiang_baofei','');
			web.ExecuteScript(page, "external.put_result('daoqiang_baofei',document.getElementById('Premium_custom_A500').title);\r\n\
							"); 
			local daoqiang = string.gsub(web.GetResult('daoqiang_baofei'),',','');
			local daoqiang_buji =  string.match(daoqiang,"+.+=");
			daoqiang = string.match(daoqiang,"%d+.%d+");
			daoqiang_buji = string.match(daoqiang_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/daoqiang/price',daoqiang);
			bujiPrice = tostring((bujiPrice+0)+(daoqiang_buji+0));
		else
			web.PutResult('daoqiang_baofei','');
			web.ExecuteScript(page, "external.put_result('daoqiang_baofei',document.getElementById('Premium_custom_A500').innerHTML);\r\n\
							"); 
			local daoqiang =  string.gsub(web.GetResult('daoqiang_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/daoqiang/price',daoqiang);
		end
	end

	if web.GetResult('huahen') ~= nil then
		if web.GetResult('huahen_buji') ~= nil then
			web.PutResult('huahen_baofei','');
			web.ExecuteScript(page, "external.put_result('huahen_baofei',document.getElementById('Premium_custom_A210').title);\r\n\
							"); 
			local huahen = string.gsub(web.GetResult('huahen_baofei'),',','');
			local huahen_buji =  string.match(huahen,"+.+=");
			huahen = string.match(huahen,"%d+.%d+");
			huahen_buji = string.match(huahen_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/huahen/price',huahen);
			bujiPrice = tostring((bujiPrice+0)+(huahen_buji+0));
		else
			web.PutResult('huahen_baofei','');
			web.ExecuteScript(page, "external.put_result('huahen_baofei',document.getElementById('Premium_custom_A210').innerHTML);\r\n\
							"); 
			local huahen =  string.gsub(web.GetResult('huahen_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/huahen/price',huahen);
		end
	end


	if web.GetResult('ziran') ~= nil then
		if web.GetResult('ziran_buji') ~= nil then
			web.PutResult('ziran_baofei','');
			web.ExecuteScript(page, "external.put_result('ziran_baofei',document.getElementById('Premium_custom_A310').title);\r\n\
							"); 
			local ziran = string.gsub(web.GetResult('ziran_baofei'),',','');
			local ziran_buji =  string.match(ziran,"+.+=");
			ziran = string.match(ziran,"%d+.%d+");
			ziran_buji = string.match(ziran_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/ziran/price',ziran);
			bujiPrice = tostring((bujiPrice+0)+(ziran_buji+0));
		else
			web.PutResult('ziran_baofei','');
			web.ExecuteScript(page, "external.put_result('ziran_baofei',document.getElementById('Premium_custom_A310').innerHTML);\r\n\
							"); 
			local ziran =  string.gsub(web.GetResult('ziran_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/ziran/price',ziran);
		end
	end

	if web.GetResult('sheshui') ~= nil then
		if web.GetResult('sheshui_buji') ~= nil then
			web.PutResult('sheshui_baofei','');
			web.ExecuteScript(page, "external.put_result('sheshui_baofei',document.getElementById('Premium_custom_A290').title);\r\n\
							"); 
			local sheshui = string.gsub(web.GetResult('sheshui_baofei'),',','');
			local sheshui_buji =  string.match(sheshui,"+.+=");
			sheshui = string.match(sheshui,"%d+.%d+");
			sheshui_buji = string.match(sheshui_buji,"%d+.%d+");
			req.para = json.Set(req.para,'/insurance/sheshui/price',sheshui);
			bujiPrice = tostring((bujiPrice+0)+(sheshui_buji+0));
		else
			web.PutResult('sheshui_baofei','');
			web.ExecuteScript(page, "external.put_result('sheshui_baofei',document.getElementById('Premium_custom_A290').innerHTML);\r\n\
							"); 
			local sheshui =  string.gsub(web.GetResult('sheshui_baofei'),',','');
			req.para = json.Set(req.para,'/insurance/sheshui/price',sheshui);
		end
	end

	if web.GetResult('boli') ~= nil then
		web.PutResult('boli_baofei','');
		web.ExecuteScript(page, "external.put_result('boli_baofei',document.getElementById('Premium_custom_A231').innerHTML);\r\n\
						"); 
		local boli =  string.gsub(web.GetResult('boli_baofei'),',','');
		req.para = json.Set(req.para,'/insurance/boli/price',boli);
	end

	if web.GetResult('sanfang') ~= nil then
		web.PutResult('sanfang_baofei','');
		web.ExecuteScript(page, "external.put_result('sanfang_baofei',document.getElementById('Premium_custom_A250').innerHTML);\r\n\
						"); 
		local sanfang =  string.gsub(web.GetResult('sanfang_baofei'),',','');
		req.para = json.Set(req.para,'/insurance/sanfang/price',sanfang);
	end

	if web.GetResult('zhiding') ~= nil then
		web.PutResult('zhiding_baofei','');
		web.ExecuteScript(page, "external.put_result('zhiding_baofei',document.getElementById('Premium_custom_A252').innerHTML);\r\n\
						"); 
		local zhiding =  string.gsub(web.GetResult('zhiding_baofei'),',','');
		req.para = json.Set(req.para,'/insurance/zhiding/price',zhiding);
	end

	if json.Get(req.para,'/insurance/jiaoqiang') ~= nil then
		web.PutResult('qiang','');
		web.PutResult('tax','');
		web.ExecuteScript(page, "external.put_result('qiang',document.getElementsByClassName('ks_c1 hidden-xs')[1].getElementsByTagName('span')[0].innerHTML);\r\n\
			external.put_result('tax',document.getElementsByClassName('ks_c1 hidden-xs')[2].getElementsByTagName('span')[0].innerHTML);\r\n\
						"); 
		local qiangPrice = web.GetResult('qiang');
		local tax = web.GetResult('tax');
		tax = string.gsub(tax,',','');
		tax = string.match(tax,'%d+.%d+');
		qiangPrice = string.gsub(qiangPrice,',','');
		qiangPrice = string.match(qiangPrice,'%d+.%d+');
		req.para = json.Set(req.para,'/insurance/qiangPrice',qiangPrice);
		req.para = json.Set(req.para,'/insurance/tax',tax);
	end

	if json.Get(req.para,'/insurance/shang') ~= nil then
		web.PutResult('shang','');
		web.ExecuteScript(page, "external.put_result('shang',document.getElementsByClassName('ks_c1 hidden-xs')[0].getElementsByTagName('span')[0].innerHTML);\r\n\
						"); 
		local shangPrice = web.GetResult('shang');
		shangPrice = string.gsub(shangPrice,',','');
		shangPrice = string.match(shangPrice,'%d+.%d+');
		req.para = json.Set(req.para,'/insurance/shangPrice',shangPrice);
	end

	web.PutResult('final_price','');
	web.ExecuteScript(page, "external.put_result('final_price',document.getElementsByClassName('ks_c2')[0].getElementsByTagName('span')[0].innerHTML);\r\n\
					"); 
	local final_price = web.GetResult('final_price');
	final_price = string.gsub(final_price,',','');
	final_price = string.match(final_price,'%d+.%d+');
	req.para = json.Set(req.para,'/insurance/final_price',final_price);

	if (bujiPrice ~= '0') then
		req.para = json.Set(req.para,"/insurance/bujiPrice",bujiPrice);
	end

	web.PutResult("complete",'');
	web.PutResult("shangNumber",'');
	local shangNumber = web.GetResult('shangNumber');

	web.ExecuteScript(page, "var temp = document.getElementsById('submitCommtion').disabled;\r\n\
								if (temp == true){\r\n\
									document.getElementsById('submitCommtion').disabled=false;\r\n\
									}\r\n\
								"); 

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementsById('submitCommtion').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("提交核保中......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("提交核保失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'提交核保失败');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "var temp = document.getElementsByClassName('lobibox-body-text-wrapper')[0].innerHTML;\r\n\
								if (temp.indexOf('自动核保通过') != -1){\r\n\
									var reg=/[A-Z0-9]/g;\r\n\
									temp = temp.match(reg,'').join('');\r\n\
									external.put_result('shangNumber',temp);\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
								else if(temp.indexOf('转人工') != -1){\r\n\
									var reg=/[A-Z0-9]/g;\r\n\
									temp = temp.match(reg,'').join('');\r\n\
									external.put_result('shangNumber',temp);\r\n\
									external.put_result('flag','2');\r\n\
									}\r\n\
								"); 
		sys.DBGPrint("等待核保结果......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))


	if  web.GetResult("flag") == nil then
		sys.DBGPrint("等待核保结果失败\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'等待核保结果失败');
		req:complete(req.para);
		return false;
	end

	if web.GetResult('flag') == '2' then
		local shangNumber = web.GetResult('shangNumber');
		req.para = json.Set(req.para,'/insurance/shangNumber',shangNumber);
		req.para = json.Set(req.para,'/insurance/complete',0);

		local ret = req.para;
		sys.DBGPrint('转人工核保，'.."总耗时："..((web.GetTickCount()-startTime)/1000)..'\r\n');
		ret = json.Set(ret,'/error',-1);
		sys.DBGPrint(ret);
		req:complete(ret);
		web.ClosePage(page);
		
		return true;
	end
end

--主体函数，机器人运行时会自动调用此函数
function main()	
	local req;
	sys.DBGPrint("脚本开始执行……\r\n");
	web.OnShowMessage("OnDialog");

	while web.IsRunning() do
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--查车牌
			elseif (req.type == 1) then
				--查历史保单
			elseif (req.type == 2) then
				--自动报价
			elseif (req.type == 3) then
				--自动核保
				startTime = web.GetTickCount();
				auto_submit(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("总耗时："..((endTime-startTime)/1000).."\r\n");
			else
				--未知的请求类型
				req:complete("{\"error\":-1,\"msg\":\"未知请求\"}");
			end
		end
		web.Wait(10);
	end


	sys.DBGPrint("脚本退出\r\n");
end
