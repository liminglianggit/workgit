--这个是测试用例，用来说明如何使用LUA脚本定制控制流（以北京人保为例）

--以下列出的全部是系统变量，名称和含义都已预定义好了，不要修改它们，只要根据实际情况去修改它们的值就可以了。
--是否支持车牌查询开关
support_inquire_car = true;
--是否支持历史保单查询
support_query_insurance_history = true;
--是否支持自动报价
support_auto_quote = true;
--是否支持自动核保
support_auto_submit = false;
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

--等待页面的某个对象加载完毕
function WaitForObjectLoaded(page, objName, ms)
	local tm;
	if (page == nil or objName == nil) then
		return false;
	end
	tm = web.NewTimeout(ms or global_timeout);
	while true do
		if web.IsElementExist(page, objName) then
			return true;
		end
		if(web.IsNavigateError(page)) then
			sys.DBGPrint("导航失败！\r\n");
			return false;
		end
		if(web.IsTimeout(tm)) then
			sys.DBGPrint("等待对象'"..objName.."'加载完毕超时！\r\n");
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
	user = "A0145";
	password = "Tbv71wdC8";
	if user == nil or password == nil then
		return false, "用户名或密码为空";
	end
	if not web.Navigate(page, url) then
		return false, "无法导航到利宝首页";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "导航失败";
	end
	WaitForObjectLoaded(page, "document.getElementsByTagName('title')[0]");--此方法有问题
	
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("等待获取title，请稍后！\r\n");
		if title then
		--判断登陆到了哪个界面
			pos = nil;
			pos, _ = string.find(title, "利宝核心");
			if pos == nil then
				pos, _ = string.find(title, "承保管理系统");
				if pos == nil then
					pos, _= string.find(title,"收付管理系统");
					if pos == nil then
						return false, "无法识别的标题["..title.."]";
					else
						return true,"成功";
					end
				else
					return true,"成功";
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	if title == nil then
		return false, "无法获取标题";
	end
	web.PutResult("username", user);
	web.PutResult("password", password);
	--这里可能需要改写成repeat
	if (not web.ExecuteScript(page, "document.getElementById('usernameDisplay').value=external.get_result('username');\r\n\
								document.getElementById('passwordDisplay').value=external.get_result('password');\r\n\
								document.getElementsByName('loginSubmitButton')[0].click();\r\n\
								")) then
		return false, "执行登录脚本失败！";
	end
	return true, "成功";
end


--打开工作台
function opendesk(page)
	local desk, ret;
	web.PutResult("result", "");
	WaitForObjectLoaded(page, "main");
	if (not web.ExecuteScript(page, "var arr=main.document.getElementsByTagName('A');\r\n\
														for(var i=0;i<arr.length;i++){\r\n\
															if(arr[i].title=='>> 北京车险承保系统'){\r\n\
																external.put_result('result','1');\r\n\
																arr[i].click();\r\n\
																break;\r\n\
															}\r\n\
														}\r\n")) then
			return nil, "执行打开工作台脚本失败";
	end
	ret = web.GetResult("result");
	if ret == nil then
		return nil, "执行打开工作台脚本成功，但是没有找到‘承保系统’的标签";
	end
	desk = WaitForNewPage(page, 3000);
	if (desk == nil) then
		return nil, "没有找到新页面";
	end
	WaitForDocumentCompleted(desk);
	return desk, "成功";
end


--查车牌
function inquire_car(req)
	local page, err, ret, desk, engine, cls, model, vin, num, tm;
	sys.DBGPrint("发现查询车牌[%s]的请求！\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("新建页面失败！\r\n");
		req:complete("{\"error\":-2,\"msg\":\"创建页面失败\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("登录返回结果[%s]！\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("登陆完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("进入承保管理系统页面中！\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入承保管理系统页面成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("进入承保管理系统页面失败！\r\n");
		req:complete("{\"error\":-4,\"msg\":\"进入承保管理系统页面失败!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[3].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击投保管理！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击投保管理失败\"}");
			return false;
	end

	sys.DBGPrint("进入点击投保界面，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");

	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('LicenseNo')[0];");
	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('buttonSubmit')[0];");
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value = external.get_result('LicenseNo');\r\n\
		fraInterface.document.getElementsByName('buttonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("输入车牌号失败！\r\n");
			req:complete("{\"error\":-6,\"msg\":\"输入车牌号失败\"}");
			return false;
	end
	sys.DBGPrint("输入车牌号成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");

	local tm11 = web.NewTimeout(5000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "fraInterface.document.getElementsByTagName('a')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
		") 
		if web.GetResult('flag') ~= nil then
			break;
		end
	until(web.IsTimeout(tm11));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("未能查询到该车的投保单号！\r\n");
		req:complete("{\"error\":-7,\"msg\":\"未能查询到该车的投保单号！\"}");
		return false;
	end

	sys.DBGPrint("点击投保单号，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	WaitForDocumentCompleted(page);--（加上以防漏查）
	sys.DBGPrint("页面加载完毕，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	--获取车牌号	web.PutResult("plateno", req.para);
	--取车辆信息
	--WaitForObjectLoaded(page, "mainFrame.document.getElementsByName('GuMainEndDate')");
	web.PutResult("VehicleCategoryName",'');
	web.PutResult("EngineNo",'');
	web.PutResult("BrandName",'');
	web.PutResult("VINNo",'');
	web.PutResult("EnrollDate",'');
	web.PutResult("SeatCount",'');
	web.PutResult("LicenseKindName",'');
	web.PutResult("LicenseNo",'');
	web.PutResult("PurchasePrice",'');
	web.PutResult("ExhaustScale",'');
	web.PutResult("LabelTypeName",'');
	web.PutResult("InsuredNature",'');
	web.PutResult("CarOwnerSex",'');
	web.PutResult("CarOwnerCertificateNo",'');
	web.PutResult("UseNatureCodeName",'');
	web.PutResult("UseNatureCode",'');
	web.PutResult("CarKindCodeName",'');


	local CarOwner = web.GetResult("CarOwner");
	local EngineNo = web.GetResult("EngineNo");
	local BrandName = web.GetResult("BrandName");
	local EnrollDate = web.GetResult("EnrollDate");
	local VINNo = web.GetResult("VINNo");
	local SeatCount = web.GetResult("SeatCount");
	local LicenseNo = web.GetResult("LicenseNo");
	local LicenseKindName = web.GetResult("LicenseKindName");
	local PurchasePrice = web.GetResult("PurchasePrice");
	local ExhaustScale = web.GetResult("ExhaustScale");
	local LabelTypeName = web.GetResult("LabelTypeName");
	local InsuredNature = web.GetResult("InsuredNature");
	local CarOwnerSex = web.GetResult("CarOwnerSex");
	local CarOwnerCertificateNo = web.GetResult("CarOwnerCertificateNo");
	local UseNatureCodeName = web.GetResult("UseNatureCodeName");
	local UseNatureCode = web.GetResult("UseNatureCode");
	local CarKindCodeName = web.GetResult("CarKindCodeName");
	tm2 = web.NewTimeout(20000);
	repeat
		web.Wait(1);
		web.ExecuteScript(page, "var EngineNo = fraInterface.document.getElementsByName('EngineNo')[0];\r\n\
								var  BrandName = fraInterface.document.getElementsByName('BrandName')[0];\r\n\
								var  VINNo = fraInterface.document.getElementsByName('VINNo')[0];\r\n\
								var  EnrollDate = fraInterface.document.getElementsByName('EnrollDate')[0];\r\n\
								var  SeatCount = fraInterface.document.getElementsByName('SeatCount')[0];\r\n\
								var  LicenseKindName = fraInterface.document.getElementsByName('LicenseKindName')[0];\r\n\
								var  LicenseNo = fraInterface.document.getElementsByName('LicenseNo')[0];\r\n\
								var  VehicleCategoryName = fraInterface.document.getElementsByName('VehicleCategoryName')[0];\r\n\
								var  PurchasePrice = fraInterface.document.getElementsByName('PurchasePrice')[0];\r\n\
								var  ExhaustScale = fraInterface.document.getElementsByName('ExhaustScale')[0];\r\n\
								var  LabelTypeName = fraInterface.document.getElementsByName('LabelTypeName')[0];\r\n\
								var  InsuredNature = fraInterface.document.getElementsByName('InsuredNature')[0].value;\r\n\
								var  UseNatureCodeName = fraInterface.document.getElementsByName('UseNatureCodeName')[0];\r\n\
								var  UseNatureCode = fraInterface.document.getElementsByName('UseNatureCode')[0];\r\n\
								var  CarKindCodeName = fraInterface.document.getElementsByName('CarKindCodeName')[0];\r\n\
								if (InsuredNature.indexOf('非') != -1){\r\n\
									external.put_result('InsuredNature','1');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('InsuredNature','0');\r\n\
								}\r\n\
								if (EngineNo != '' && LicenseNo != '' && VINNo != ''){\r\n\
									external.put_result('EngineNo',EngineNo.value);\r\n\
									external.put_result('BrandName',BrandName.value);\r\n\
									external.put_result('VINNo',VINNo.value);\r\n\
									external.put_result('EnrollDate',EnrollDate.value);\r\n\
									external.put_result('SeatCount',SeatCount.value);\r\n\
									external.put_result('LicenseKindName',LicenseKindName.value);\r\n\
									external.put_result('LicenseNo',LicenseNo.value);\r\n\
									external.put_result('VehicleCategoryName',VehicleCategoryName.value);\r\n\
									external.put_result('PurchasePrice',PurchasePrice.value);\r\n\
									external.put_result('ExhaustScale',ExhaustScale.value);\r\n\
									external.put_result('LabelTypeName',LabelTypeName.value);\r\n\
									external.put_result('UseNatureCodeName',UseNatureCodeName.value);\r\n\
									external.put_result('UseNatureCode',UseNatureCode.value);\r\n\
									external.put_result('CarKindCodeName',CarKindCodeName.value);\r\n\
								}\r\n\
							")
		--车主信息在第二页，需要先进入第二页才能拿到
		web.ExecuteScript(page, "fraInterface.document.getElementById('tableB').click(); \r\n\
								var CarOwner = fraInterface.document.getElementsByName('CarOwner')[0];\r\n\
								var CarOwnerSex = fraInterface.document.getElementsByName('CarOwnerSex')[0];\r\n\
								var CarOwnerCertificateNo = fraInterface.document.getElementsByName('CarOwnerCertificateNo')[0];\r\n\
								if (CarOwner != ''){\r\n\
									external.put_result('CarOwner',CarOwner.value);\r\n\
									external.put_result('CarOwnerSex',CarOwnerSex.value);\r\n\
									external.put_result('CarOwnerCertificateNo',CarOwnerCertificateNo.value);\r\n\
								}\r\n\
							")
								
		sys.DBGPrint("正在取数据，请稍后！\r\n");
		--必须查到才算成功的项目
		CarOwner = web.GetResult("CarOwner");
		EngineNo = web.GetResult("EngineNo");
		BrandName = web.GetResult("BrandName");
		EnrollDate = web.GetResult("EnrollDate");
		VINNo = web.GetResult("VINNo");
		SeatCount = web.GetResult("SeatCount");
		LicenseNo = web.GetResult("LicenseNo");
		LicenseKindName = web.GetResult("LicenseKindName");
		PurchasePrice = web.GetResult("PurchasePrice");
		ExhaustScale = web.GetResult("ExhaustScale");
		LabelTypeName = web.GetResult("LabelTypeName");
		InsuredNature = web.GetResult("InsuredNature");
		CarOwnerSex = web.GetResult("CarOwnerSex");
		CarOwnerCertificateNo = web.GetResult("CarOwnerCertificateNo");
		UseNatureCodeName = web.GetResult("UseNatureCodeName");
		UseNatureCode = web.GetResult("UseNatureCode");
		CarKindCodeName = web.GetResult("CarKindCodeName");
		if EngineNo ~= nil and LicenseNo ~= nil and VINNo ~= nil and CarOwner ~= nil then
			sys.DBGPrint("取数据成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("等待车牌查询超时！\r\n");
			req:complete("{\"error\":-9,\"msg\":\"等待车牌查询超时\"}");
			return false;
	end

	ret = "{\"error\":0,\"msg\":\"成功\", \"car\":{";
	if CarKindCodeName ~= nil then 
		ret = ret.."\"vehicle_type\":\""..CarKindCodeName.."\"";
	end
	if UseNatureCodeName ~= nil then 
		ret = ret..",\"use_type\":\""..UseNatureCodeName.."\"";
	end
	if UseNatureCode ~= nil then 
		ret = ret..",\"use_code\":\""..UseNatureCode.."\"";
	end
	if EngineNo ~= nil then 
		ret = ret..",\"engine_no\":\""..EngineNo.."\"";
	end
	if VINNo ~= nil then 
		ret = ret..",\"vin\":\""..VINNo.."\"";
	end
	if LicenseNo ~= nil then 
		ret = ret..",\"plate_no\":\""..LicenseNo.."\"";
	end
	ret = ret..",\"owner\":{\"name\":\""..CarOwner.."\"";
	if CarOwnerSex ~= nil then 
		ret = ret..",\"sex\":\""..CarOwnerSex.."\"";
	end
	if CarOwnerCertificateNo ~= nil then 
		ret = ret..",\"id_no\":\""..CarOwnerCertificateNo.."\"";
	end
	ret = ret.."}";
	if EnrollDate ~= nil then 
		ret = ret..",\"register_date\":\""..EnrollDate.."\"";
	end
	if SeatCount ~= nil then 
		ret = ret..",\"seats\":\""..SeatCount.."\"";
	end
	if LicenseKindName ~= nil then 
		ret = ret..",\"license_type\":\""..LicenseKindName.."\"";
	end
	if BrandName ~= nil then 
		ret = ret..",\"model\":\""..BrandName.."\"";
	end
	if LabelTypeName ~= nil then 
		ret = ret..",\"alias\":\""..LabelTypeName.."\"";
	end
	if PurchasePrice ~= nil then 
		ret = ret..",\"purchasePrice\":\""..PurchasePrice.."\"";
	end
	if ExhaustScale ~= nil then 
		ret = ret..",\"displacement\":\""..ExhaustScale.."\"";
	end
	if InsuredNature ~= nil then
		if InsuredNature == '1' then 
			ret = ret..",\"ownership_code\":"..1;
		else
			ret = ret..",\"ownership_code\":"..0;
		end
	end
	ret = ret.."}";
	--car相关信息加工完成
	--查车牌信息加工完成
	ret = ret.."}";
	--总json串加工完成
	web.ClosePage(page);
	req:complete(ret);
	return true;
end



function query_insurance_history(req)
	local page, err, ret, desk;
	sys.DBGPrint("发现查询历史保单[%s]的请求！\r\n", json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("新建页面失败！\r\n");
		req:complete("{\"error\":-2,\"msg\":\"创建页面失败\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("登录返回结果[%s]！\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("登陆完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("进入承保管理系统页面中！\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入承保管理系统页面成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("进入承保管理系统页面失败！\r\n");
		req:complete("{\"error\":-4,\"msg\":\"进入承保管理系统页面失败!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[3].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击投保管理失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击投保管理失败\"}");
			return false;
	end

	sys.DBGPrint("进入点击投保界面，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");

	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('LicenseNo')[0];");
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value = external.get_result('LicenseNo');\r\n\
		fraInterface.document.getElementsByName('buttonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("输入车牌号失败！\r\n");
			req:complete("{\"error\":-6,\"msg\":\"输入车牌号失败\"}");
			return false;
	end
	sys.DBGPrint("输入车牌号成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");

	local tm12 = web.NewTimeout(5000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "fraInterface.document.getElementsByTagName('a')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
		") 
		if web.GetResult('flag') ~= nil then
			break;
		end
	until(web.IsTimeout(tm12));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("未能查询到该车的投保单号！\r\n");
		req:complete("{\"error\":-7,\"msg\":\"未能查询到该车的投保单号！\"}");
		return false;
	end

	sys.DBGPrint("点击投保单号，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	WaitForDocumentCompleted(page);--（加上以防漏查）
	sys.DBGPrint("页面加载完毕，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	--获取车牌号	web.PutResult("plateno", req.para);
	--取车辆信息
	--WaitForObjectLoaded(page, "mainFrame.document.getElementsByName('GuMainEndDate')");
		
	web.PutResult("VehicleCategoryName",'');
	web.PutResult("EngineNo",'');
	web.PutResult("BrandName",'');
	web.PutResult("VINNo",'');
	web.PutResult("EnrollDate",'');
	web.PutResult("SeatCount",'');
	web.PutResult("LicenseKindName",'');
	web.PutResult("LicenseNo",'');
	web.PutResult("PurchasePrice",'');
	web.PutResult("ExhaustScale",'');
	web.PutResult("LabelTypeName",'');
	web.PutResult("InsuredNature",'');
	web.PutResult("CarOwnerSex",'');
	web.PutResult("CarOwnerCertificateNo",'');
	web.PutResult("UseNatureCodeName",'');
	web.PutResult("UseNatureCode",'');
	web.PutResult("CarKindCodeName",'');
	web.PutResult('FuelTypeName','');

	local CarOwner = web.GetResult("CarOwner");
	local EngineNo = web.GetResult("EngineNo");
	local BrandName = web.GetResult("BrandName");
	local EnrollDate = web.GetResult("EnrollDate");
	local VINNo = web.GetResult("VINNo");
	local SeatCount = web.GetResult("SeatCount");
	local LicenseNo = web.GetResult("LicenseNo");
	local LicenseKindName = web.GetResult("LicenseKindName");
	local PurchasePrice = web.GetResult("PurchasePrice");
	local ExhaustScale = web.GetResult("ExhaustScale");
	local LabelTypeName = web.GetResult("LabelTypeName");
	local InsuredNature = web.GetResult("InsuredNature");
	local CarOwnerSex = web.GetResult("CarOwnerSex");
	local CarOwnerCertificateNo = web.GetResult("CarOwnerCertificateNo");
	local UseNatureCodeName = web.GetResult("UseNatureCodeName");
	local UseNatureCode = web.GetResult("UseNatureCode");
	local CarKindCodeName = web.GetResult("CarKindCodeName");
	local FuelTypeName = web.GetResult('FuelTypeName');

	sys.DBGPrint("正在取出车辆信息.....".."\r\n");
	local tm10 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat
		web.ExecuteScript(page, "var EngineNo = fraInterface.document.getElementsByName('EngineNo')[0];\r\n\
									var  BrandName = fraInterface.document.getElementsByName('BrandName')[0];\r\n\
									var  VINNo = fraInterface.document.getElementsByName('VINNo')[0];\r\n\
									var  EnrollDate = fraInterface.document.getElementsByName('EnrollDate')[0];\r\n\
									var  SeatCount = fraInterface.document.getElementsByName('SeatCount')[0];\r\n\
									var  LicenseKindName = fraInterface.document.getElementsByName('LicenseKindName')[0];\r\n\
									var  LicenseNo = fraInterface.document.getElementsByName('LicenseNo')[0];\r\n\
									var  VehicleCategoryName = fraInterface.document.getElementsByName('VehicleCategoryName')[0];\r\n\
									var  PurchasePrice = fraInterface.document.getElementsByName('PurchasePrice')[0];\r\n\
									var  ExhaustScale = fraInterface.document.getElementsByName('ExhaustScale')[0];\r\n\
									var  LabelTypeName = fraInterface.document.getElementsByName('LabelTypeName')[0];\r\n\
									var  InsuredNature = fraInterface.document.getElementsByName('InsuredNature')[0].value;\r\n\
									var  UseNatureCodeName = fraInterface.document.getElementsByName('UseNatureCodeName')[0];\r\n\
									var  UseNatureCode = fraInterface.document.getElementsByName('UseNatureCode')[0];\r\n\
									var  CarKindCodeName = fraInterface.document.getElementsByName('CarKindCodeName')[0];\r\n\
									if (InsuredNature.indexOf('非') != -1){\r\n\
										external.put_result('InsuredNature','1');\r\n\
									}\r\n\
									else{\r\n\
										external.put_result('InsuredNature','0');\r\n\
									}\r\n\
									if (EngineNo != '' && LicenseNo != '' && VINNo != ''){\r\n\
										external.put_result('EngineNo',EngineNo.value);\r\n\
										external.put_result('BrandName',BrandName.value);\r\n\
										external.put_result('VINNo',VINNo.value);\r\n\
										external.put_result('EnrollDate',EnrollDate.value);\r\n\
										external.put_result('SeatCount',SeatCount.value);\r\n\
										external.put_result('LicenseKindName',LicenseKindName.value);\r\n\
										external.put_result('LicenseNo',LicenseNo.value);\r\n\
										external.put_result('VehicleCategoryName',VehicleCategoryName.value);\r\n\
										external.put_result('PurchasePrice',PurchasePrice.value);\r\n\
										external.put_result('ExhaustScale',ExhaustScale.value);\r\n\
										external.put_result('LabelTypeName',LabelTypeName.value);\r\n\
										external.put_result('UseNatureCodeName',UseNatureCodeName.value);\r\n\
										external.put_result('UseNatureCode',UseNatureCode.value);\r\n\
										external.put_result('CarKindCodeName',CarKindCodeName.value);\r\n\
									}\r\n\
								")
			--车主信息在第二页，需要先进入第二页才能拿到
		web.ExecuteScript(page, "fraInterface.document.getElementById('tableB').click(); \r\n\
								var CarOwner = fraInterface.document.getElementsByName('CarOwner')[0];\r\n\
								var CarOwnerSex = fraInterface.document.getElementsByName('CarOwnerSex')[0];\r\n\
								var CarOwnerCertificateNo = fraInterface.document.getElementsByName('CarOwnerCertificateNo')[0];\r\n\
								if (CarOwner != ''){\r\n\
									external.put_result('CarOwner',CarOwner.value);\r\n\
									external.put_result('CarOwnerSex',CarOwnerSex.value);\r\n\
									external.put_result('CarOwnerCertificateNo',CarOwnerCertificateNo.value);\r\n\
								}\r\n\
								fraInterface.document.getElementById('tableA').click(); \r\n\
							")					
		sys.DBGPrint("正在取数据，请稍后！\r\n");
		--必须查到才算成功的项目
		CarOwner = web.GetResult("CarOwner");
		EngineNo = web.GetResult("EngineNo");
		BrandName = web.GetResult("BrandName");
		EnrollDate = web.GetResult("EnrollDate");
		VINNo = web.GetResult("VINNo");
		SeatCount = web.GetResult("SeatCount");
		LicenseNo = web.GetResult("LicenseNo");
		LicenseKindName = web.GetResult("LicenseKindName");
		PurchasePrice = web.GetResult("PurchasePrice");
		ExhaustScale = web.GetResult("ExhaustScale");
		LabelTypeName = web.GetResult("LabelTypeName");
		InsuredNature = web.GetResult("InsuredNature");
		CarOwnerSex = web.GetResult("CarOwnerSex");
		CarOwnerCertificateNo = web.GetResult("CarOwnerCertificateNo");
		UseNatureCodeName = web.GetResult("UseNatureCodeName");
		UseNatureCode = web.GetResult("UseNatureCode");
		CarKindCodeName = web.GetResult("CarKindCodeName");
		FuelTypeName = web.GetResult('FuelTypeName');
		if EngineNo ~= nil and LicenseNo ~= nil and VINNo ~= nil and CarOwner ~= nil then
			web.PutResult('flag','1');
			sys.DBGPrint("取车辆信息成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm10));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("获取车辆信息失败！\r\n");
		req:complete("{\"error\":-8,\"msg\":\"获取车辆信息失败！\"}");
		return false;
	end
	web.PutResult('chesun','');
	web.PutResult('sanzhe','');
	web.PutResult('siji','');
	web.PutResult('boli','');
	web.PutResult('chengke','');
	web.PutResult('daoqiang','');
	web.PutResult('ziran','');
	web.PutResult('sheshui','');
	web.PutResult('huahen','');
	web.PutResult('sanfang','');
	web.PutResult('zhiding','');

	web.PutResult('chesun_buji','');
	web.PutResult('sanzhe_buji','');
	web.PutResult('siji_buji','');
	web.PutResult('chengke_buji','');
	web.PutResult('daoqiang_buji','');
	web.PutResult('ziran_buji','');
	web.PutResult('sheshui_buji','');
	web.PutResult('huahen_buji','');

	web.PutResult('enforceStartDate','');
	web.PutResult('enforceEndDate','');
	web.PutResult('enforcePolicyNo','');
	web.PutResult('enforcePremium','');

	web.PutResult('StartDate','');
	web.PutResult('EndDate','');
	web.PutResult('PolicyNo','');
	web.PutResult('PremiumCount','');

	local chesun = web.GetResult("chesun");
	local sanzhe = web.GetResult("sanzhe");
	local siji = web.GetResult("siji");
	local chengke = web.GetResult("chengke");
	local daoqiang = web.GetResult("daoqiang");
	local boli = web.GetResult("boli");
	local ziran = web.GetResult("ziran");
	local sheshui = web.GetResult("sheshui");
	local huahen = web.GetResult("huahen");
	local sanfang = web.GetResult("sanfang");
	local zhiding = web.GetResult("zhiding");

	local chesun_buji = web.GetResult("chesun_buji");
	local sanzhe_buji = web.GetResult("sanzhe_buji");
	local siji_buji = web.GetResult("siji_buji");
	local chengke_buji = web.GetResult("chengke_buji");
	local daoqiang_buji = web.GetResult("daoqiang_buji");
	local ziran_buji = web.GetResult("ziran_buji");
	local sheshui_buji = web.GetResult("sheshui_buji");
	local huahen_buji = web.GetResult("huahen_buji");
	--车主信息在第二页，需要先进入第二页才能拿到
	--sys.DBGPrint("正在取商业险保单数据，请稍后！"..web.GetResult("temp_flag").."\r\n");
	local StartDate = web.GetResult("StartDate");
	local EndDate = web.GetResult("EndDate");
	local PremiumCount = web.GetResult("PremiumCount");
	local PolicyNo = web.GetResult("PolicyNo");

	local enforceStartDate = web.GetResult('enforceStartDate');
	local enforceEndDate = web.GetResult('enforceEndDate');
	local enforcePolicyNo = web.GetResult('enforcePolicyNo');
	local enforcePremium = web.GetResult('enforcePremium');


	--web.PutResult('temp_flag','');
	tm2 = web.NewTimeout(20000);

	--判断用户投保产品	1为商业和交强	2为商业		3为交强
	web.PutResult("PolicyFlagName","");
	web.ExecuteScript(page,"var PolicyFlagName = fraInterface.document.getElementsByName('PolicyFlagName')[0].value;\r\n\
							if (PolicyFlagName.indexOf('商业') != -1 && PolicyFlagName.indexOf('交强') != -1){\r\n\
								external.put_result('PolicyFlagName','1');\r\n\
							}\r\n\
							else if (PolicyFlagName.indexOf('商业') != -1){\r\n\
								external.put_result('PolicyFlagName','2');\r\n\
							}\r\n\
							else{\r\n\
								external.put_result('PolicyFlagName','3');\r\n\
							}\r\n\
		");							
	PolicyFlag = web.GetResult("PolicyFlagName");
	--取交强险信息
	if PolicyFlag == '1' or PolicyFlag == '3' then 
		web.ExecuteScript(page, "var enforceStartDate = fraInterface.document.getElementsByName('StartDate')[0];\r\n\
								var  enforceEndDate = fraInterface.document.getElementsByName('EndDate')[0];\r\n\
								var  enforcePolicyNo = fraInterface.document.getElementsByName('PolicyNo')[0];\r\n\
								var  enforcePremium = fraInterface.document.getElementsByName('enforcePremium')[0];\r\n\
								var  FuelTypeName = fraInterface.document.getElementsByName('FuelTypeName')[0];\r\n\
								if ( enforceStartDate != '' && enforceEndDate != '' ){\r\n\
									external.put_result('enforceStartDate',enforceStartDate.value);\r\n\
									external.put_result('enforceEndDate',enforceEndDate.value);\r\n\
									external.put_result('enforcePremium',enforcePremium.value);\r\n\
									external.put_result('enforcePolicyNo',enforcePolicyNo.value);\r\n\
									external.put_result('FuelTypeName',FuelTypeName.value);\r\n\
								}\r\n\
							")
		enforceStartDate = web.GetResult('enforceStartDate');
		enforceEndDate = web.GetResult('enforceEndDate');
		enforcePolicyNo = web.GetResult('enforcePolicyNo');
		enforcePremium = web.GetResult('enforcePremium');
		FuelTypeName = web.GetResult('FuelTypeName');
		sys.DBGPrint("正在取交强险保单数据，请稍后！\r\n");
		if StartDate ~= nil  and EndDate ~= nil then
				sys.DBGPrint("取数据成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
				web.PutResult("flag","1");
		end
		if PolicyFlag == '1' then
			if not web.ExecuteScript(page,"history.go(-1);") then 
				web.ClosePage(page);
				sys.DBGPrint("返回上一页失败！\r\n");
				req:complete("{\"error\":-8,\"msg\":\"返回上一页失败\"}");
				return false;
			end
			WaitForDocumentCompleted(page);
			web.ExecuteScript(page,"var index = 1;\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByTagName('a')[index].innerHTML;\r\n\
										if (temp.indexOf('0') != -1){\r\n\
											fraInterface.document.getElementsByTagName('a')[index].click();\r\n\
											break;\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
					")			
			WaitForDocumentCompleted(page);
		end
	end
	--取商业险信息
	if PolicyFlag == '1' or PolicyFlag == '2' then
		repeat
			web.Wait(1);
			--获取日期/保单号/保费
			web.ExecuteScript(page, "var StartDate = fraInterface.document.getElementsByName('StartDate')[0];\r\n\
									var  EndDate = fraInterface.document.getElementsByName('EndDate')[0];\r\n\
									var  PolicyNo = fraInterface.document.getElementsByName('PolicyNo')[0];\r\n\
									var  PremiumCount = fraInterface.document.getElementsByName('PremiumCount')[0];\r\n\
									if (PolicyNo != '' && StartDate != '' && EndDate != ''  && PolicyNo != '' ){\r\n\
										external.put_result('StartDate',StartDate.value);\r\n\
										external.put_result('EndDate',EndDate.value);\r\n\
										external.put_result('PremiumCount',PremiumCount.value);\r\n\
										external.put_result('PolicyNo',PolicyNo.value);\r\n\
									}\r\n\
								")
			--判断车牌所办理的险种
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByName('Amount')[index].value;\r\n\
										if (temp != '0.00'){\r\n\
											var insure_type = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
											if (insure_type.indexOf('车辆损失险') != -1)\r\n\
												external.put_result('chesun',temp);\r\n\
											else if (insure_type.indexOf('自燃损失险') != -1)\r\n\
												external.put_result('ziran',temp);\r\n\
											else if (insure_type.indexOf('第三者') != -1)\r\n\
												external.put_result('sanzhe',temp);\r\n\
											else if (insure_type.indexOf('司机') != -1)\r\n\
												external.put_result('siji',temp);\r\n\
											else if (insure_type.indexOf('乘客') != -1)\r\n\
												external.put_result('chengke',temp);\r\n\
											else if (insure_type.indexOf('盗抢') != -1)\r\n\
												external.put_result('daoqiang',temp);\r\n\
											else if (insure_type.indexOf('发动机涉水损失险') != -1)\r\n\
												external.put_result('sheshui',temp);\r\n\
											else if (insure_type.indexOf('划痕') != -1)\r\n\
												external.put_result('huahen',temp);\r\n\
											else if (insure_type.indexOf('第三方') != -1)\r\n\
												external.put_result('sanfang',temp);\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
									external.put_result('temp_flag',index);\r\n\
						")
			--判断是否有玻璃险
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
											var boli = fraInterface.document.getElementsByName('Model')[index].value;\r\n\
											if (boli.indexOf('玻璃') != -1){\r\n\
												external.put_result('boli',boli);\r\n\
												break;\r\n\
												}\r\n\
											index++;\r\n\
									}\r\n\
						")
			--判断是否为不计免赔
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
											if (temp.indexOf('机动车损失') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('chesun_buji',temp);\r\n\
											else if (temp.indexOf('第三者') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('sanzhe_buji',temp);\r\n\
											else if (temp.indexOf('司机') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('siji_buji',temp);\r\n\
											else if (temp.indexOf('乘客') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('chengke_buji',temp);\r\n\
											else if (temp.indexOf('盗抢') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('daoqiang_buji',temp);\r\n\
											else if (temp.indexOf('发动机涉水损失险') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('sheshui_buji',temp);\r\n\
											else if (temp.indexOf('自燃损失险') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('ziran_buji',temp);\r\n\
											else if (temp.indexOf('划痕') != -1 && temp.indexOf('不计') != -1)\r\n\
												external.put_result('huahen_buji',temp);\r\n\
											else if (insure_type.indexOf('指定') != -1)\r\n\
												external.put_result('zhiding',temp);\r\n\
										index++;\r\n\
									}\r\n\
						")
			chesun = web.GetResult("chesun");
			sanzhe = web.GetResult("sanzhe");
			siji = web.GetResult("siji");
			chengke = web.GetResult("chengke");
			daoqiang = web.GetResult("daoqiang");
			boli = web.GetResult("boli");
			ziran = web.GetResult("ziran");
			sheshui = web.GetResult("sheshui");
			huahen = web.GetResult('huahen');
			sanfang = web.GetResult('sanfang');
			zhiding = web.GetResult('zhiding');

			chesun_buji = web.GetResult("chesun_buji");
			sanzhe_buji = web.GetResult("sanzhe_buji");
			siji_buji = web.GetResult("siji_buji");
			chengke_buji = web.GetResult("chengke_buji");
			daoqiang_buji = web.GetResult("daoqiang_buji");
			ziran_buji = web.GetResult("ziran_buji");
			sheshui_buji = web.GetResult("sheshui_buji");
			huahen_buji = web.GetResult('huahen_buji');
			--车主信息在第二页，需要先进入第二页才能拿到
			--sys.DBGPrint("正在取商业险保单数据，请稍后！"..web.GetResult("temp_flag").."\r\n");
			sys.DBGPrint("正在取商业险保单数据，请稍后！\r\n");
			--必须查到才算成功的项目
			StartDate = web.GetResult("StartDate");
			EndDate = web.GetResult("EndDate");
			PremiumCount = web.GetResult("PremiumCount");
			PolicyNo = web.GetResult("PolicyNo");

			
			--当有乘客险时，需要重新查找每位乘客险的值
			if chengke ~= nil then
				web.ExecuteScript(page,"var index  = 1\r\n\
										while(true){\r\n\
											var temp = fraInterface.document.getElementsByName('UnitAmount')[index].value;\r\n\
											if (temp.indexOf('00.00') != -1){\r\n\
												external.put_result('chengke',temp);\r\n\
												break;\r\n\
											}\r\n\
											index++;\r\n\
										}\r\n\
					")
				chengke = web.GetResult("chengke");			
			end 
			if StartDate ~= nil  and EndDate ~= nil then
				sys.DBGPrint("取数据成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
				web.PutResult("flag","1");
				break;
			end
		until (web.IsTimeout(tm2));
	end
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("等待保单查询超时！\r\n");
			req:complete("{\"error\":-9,\"msg\":\"等待保单查询超时\"}");
			return false;
	end
	--flag 判断是否需要加逗号
	local flag = 0;
	ret = "{\"error\":0,\"msg\":\"成功\", \"car\":{";
	if CarKindCodeName ~= nil then 
		ret = ret.."\"vehicle_type\":\""..CarKindCodeName.."\"";
	end
	if UseNatureCodeName ~= nil then 
		ret = ret..",\"use_type\":\""..UseNatureCodeName.."\"";
	end
	if UseNatureCode ~= nil then 
		ret = ret..",\"use_code\":\""..UseNatureCode.."\"";
	end
	if FuelTypeName ~= nil then 
		ret = ret..",\"FuelTypeName\":\""..FuelTypeName.."\"";
	end
	if EngineNo ~= nil then 
		ret = ret..",\"engine_no\":\""..EngineNo.."\"";
	end

	if VINNo ~= nil then 
		ret = ret..",\"vin\":\""..VINNo.."\"";
	end

	if LicenseNo ~= nil then 
		ret = ret..",\"plate_no\":\""..LicenseNo.."\"";
	end

	if CarOwner ~= nil then 
		ret = ret..",\"owner\":{\"name\":\""..CarOwner.."\"";
	end

	if CarOwnerSex ~= nil then 
		ret = ret..",\"sex\":\""..CarOwnerSex.."\"";
	end

	if CarOwnerCertificateNo ~= nil then 
		ret = ret..",\"id_no\":\""..CarOwnerCertificateNo.."\"";
	end

	ret = ret.."}";
	if EnrollDate ~= nil then 
		ret = ret..",\"register_date\":\""..EnrollDate.."\"";
	end

	if SeatCount ~= nil then 
		ret = ret..",\"seats\":\""..SeatCount.."\"";
	end

	if LicenseKindName ~= nil then 
		ret = ret..",\"license_type\":\""..LicenseKindName.."\"";
	end

	if BrandName ~= nil then 
		ret = ret..",\"model\":\""..BrandName.."\"";
	end

	if LabelTypeName ~= nil then 
		ret = ret..",\"alias\":\""..LabelTypeName.."\"";
	end

	if PurchasePrice ~= nil then 
		ret = ret..",\"purchasePrice\":\""..PurchasePrice.."\"";
	end

	if ExhaustScale ~= nil then 
		ret = ret..",\"displacement\":\""..ExhaustScale.."\"";
	end

	if InsuredNature ~= nil then
		if InsuredNature == '1' then 
			ret = ret..",\"ownership_code\":"..1;
		else
			ret = ret..",\"ownership_code\":"..0;
		end
	end

	ret = ret..",\"hisInsurances\": [ ";
	--每辆车的险种数量都不一样需要一次判断是否缴纳该险种
	--再判断是否为不计免赔
	--判断是否办理商业险
	if PolicyFlag == '1' or PolicyFlag == '2' then
		ret = ret.."{\"applyInsurance\": { ";
		if chesun ~= nil then 
			flag = 1;
			chesun = string.gsub(chesun, ',', '');
			ret = ret.."\"chesun\": { ".."\"baoe\":\""..chesun.."\"";
			if chesun_buji ~= nil then
				ret = ret..",\"buji\": \"1\"";
			end
			ret = ret.."}";
		end
		if boli ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			ret = ret.."\"boli\": { ".."\"baoe\":\""..boli.."\"}";
		end
		if sanfang ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			sanfang = string.gsub(sanfang, ',', '');
			ret = ret.."\"sanfang\": { ".."\"baoe\":\""..sanfang.."\"}";
		end
		if zhiding ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			ret = ret.."\"zhiding\": { ".."\"baoe\":\"1\"}";
		end
		if ziran ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			ziran = string.gsub(ziran, ',', '');
			ret = ret.."\"ziran\": { ".."\"baoe\":\""..ziran.."\"";
			if ziran_buji ~= nil then
				ret = ret..",\"buji\":\"1\"";
			end
			ret = ret.."}";
		end
		if huahen ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			huahen = string.gsub(ziran, ',', '');
			ret = ret.."\"huahen\": { ".."\"baoe\":\""..huahen.."\"";
			if huahen_buji ~= nil then
				ret = ret..",\"buji\":\"1\"";
			end
			ret = ret.."}";
		end
		if sheshui ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			sheshui = string.gsub(sheshui, ',', '');
			ret = ret.."\"sheshui\": { ".."\"baoe\":\""..sheshui.."\"";
			if sheshui_buji ~= nil then
				ret = ret..",\"buji\":\"1\"";
			end
			ret = ret.."}";
		end
		if siji ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			siji = string.gsub(siji, ',', '');
			ret = ret.."\"siji\": { ".."\"baoe\":\""..siji.."\"";
			if siji_buji ~= nil then
				ret = ret..",\"buji\": \"1\"";
			end
			ret = ret.."}";
		end
		if daoqiang ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			daoqiang = string.gsub(daoqiang, ',', '');
			ret = ret.."\"daoqiang\": { ".."\"baoe\":\""..daoqiang.."\"";
			if daoqiang_buji ~= nil then
				ret = ret..",\"buji\": \"1\"";
			end
			ret = ret.."}";
		end
		if chengke ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			chengke = string.gsub(chengke, ',', '');
			ret = ret.."\"chengke\": { ".."\"unit\":\""..chengke.."\"";
			if chengke_buji ~= nil then
				ret = ret..",\"buji\": \"1\"";
			end
			ret = ret.."}";
		end
		if sanzhe ~= nil then 
			if flag > 0 then 
				ret = ret..",";
			end
			flag = 1;
			sanzhe = string.gsub(sanzhe, ',', '');
			ret = ret.."\"sanzhe\": { ".."\"baoe\":\""..sanzhe.."\"";
			if sanzhe_buji ~= nil then
				ret = ret..",\"buji\": \"1\"";
			end
			ret = ret.."}";
		end
		ret = ret.."}";
		ret = ret..",\"comDes\":\"利宝保险有限公司\"";
		ret = ret..",\"isComm\":\"1\"";
		if PolicyNo ~= nil then
			ret = ret..",\"insuranceId\":\""..PolicyNo.."\"";
		end
		if StartDate ~= nil then
			ret = ret..",\"insuredStartDate\":\""..StartDate.." ".."\"";
		end
		if EndDate ~= nil then
			ret = ret..",\"insuredEndDate\":\""..EndDate.." ".."\"";
		end
		if PremiumCount ~= nil then
			PremiumCount = string.gsub(PremiumCount, ',', '');
			ret = ret..",\"price\":\""..PremiumCount.."\"}";
		end
	end
	--判断是否办理交强险
	if PolicyFlag == '1' or PolicyFlag == '3' then
		if flag > 0 then
			ret = ret..",";
		end
		ret = ret.."{\"comDes\":\"利宝保险有限公司\"";
		ret = ret..",\"isComm\":\"0\"";
		if enforcePolicyNo ~= nil then
			ret = ret..",\"insuranceId\":\""..enforcePolicyNo.."\"";
		end
		if enforceStartDate ~= nil then
			ret = ret..",\"insuredStartDate\":\""..enforceStartDate.." ".."\"";
		end
		if enforceEndDate ~= nil then
			ret = ret..",\"insuredEndDate\":\""..enforceEndDate.." ".."\"";
		end
		if enforcePremium ~= nil then
			enforcePremium = string.gsub(enforcePremium, ',', '');
			ret = ret..",\"price\":\""..enforcePremium.."\"}";
		end
	end
	ret = ret.."] }";
	--历史保单信息加工完成
	ret = ret.."}";
	--总json串加工完成
	web.ClosePage(page);
	req:complete(ret);
	return true;
end

--自动报价
function  auto_quote(req)
	-- body
	--判断是否已投保交强险
	jiaoqiang_flag = 0;
	global_message = nil;
	sys.DBGPrint("发现自动报价[%s]的请求！\r\n", json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para);
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("新建页面失败！\r\n");
		req:complete("{\"error\":-2,\"msg\":\"创建页面失败\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("登录返回结果[%s]！\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("登陆完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("进入承保管理系统页面中！\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("进入承保管理系统页面成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("进入承保管理系统页面失败！\r\n");
		req:complete("{\"error\":-4,\"msg\":\"进入承保管理系统页面失败!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[1].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击投保录入管理失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击投保录入管理失败\"}");
			return false;
	end

	WaitForDocumentCompleted(page);
	--选择投保商业险或者交强险

	if json.Get(req.para,"/insurance/jiaoqiang") == '1' and json.Get(req.para,"/insurance/shang") == '1' then 
		sys.DBGPrint("选择商业险和交强险!\r\n");
	elseif json.Get(req.para,"/insurance/jiaoqiang") == "1" then
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('ProductTypeMTPL')[0].click();\r\n\
								") then
			web.ClosePage(page);
			sys.DBGPrint("选择交强险失败\r\n");
			req:complete("{\"error\":-5,\"msg\":\"选择交强险失败\"}");
			return false;
		end
	else
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('ProductTypeMOTOR')[0].click();\r\n\
									") then
				web.ClosePage(page);
				sys.DBGPrint("选择商业险失败\r\n");
				req:complete("{\"error\":-5,\"msg\":\"选择商业险失败\"}");
				return false;
		end
	end

	web.Wait(1000);
	if json.Get(req.para,"/car/ownership_code") ~= nil then
		if json.Get(req.para,"/car/ownership_code") == 1 then
			web.ExecuteScript(page,"fraInterface.document.getElementsByName('InsuredNature')[0].click()");
		end
	end
	
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('AgreementNo')[0].focus();\r\n\
									fraInterface.document.getElementsByName('AgreementNo')[0].click();\r\n\
									fraInterface.document.getElementsByName('AgreementNo')[0].value='BJ00474';\r\n\
									fraInterface.document.getElementsByName('AgreementNo')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('AgreementNo')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("业务关系代码输入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"自动报价失败！可能由于网络原因导致，请重试！\"}");
			return false;
	end
	web.Wait(1500);

	web.PutResult('CarKindName','');
	if json.Get('/car/vehicle_type') ~= nil then
		web.PutResult('CarKindName',json.Get('/car/vehicle_type'));
	end
	if web.GetResult('CarKindName') == nil then
		sys.DBGPrint('未能获取车辆种类，使用默认值！\r\n');
		 web.PutResult('CarKindName','客车');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CarKindName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].click();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].value=external.get_result('CarKindName');\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车辆种类录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车辆种类录入失败！\"}");
			return false;
	end
	web.Wait(1500);

	web.PutResult('LicenseKindName','');
	if json.Get('/car/license_type') ~= nil then
		web.PutResult('LicenseKindName',json.Get('/car/license_type'));
	end
	if web.GetResult('LicenseKindName') == nil then
		sys.DBGPrint('未能获取车牌种类，使用默认值！\r\n');
		 web.PutResult('LicenseKindName','小型汽车号牌');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseKindName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].click();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].value=external.get_result('LicenseKindName');\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车牌种类录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车牌种类录入失败！\"}");
			return false;
	end
	web.Wait(1500);

	web.PutResult('UseNatureName','');
	web.PutResult('UseNatureCode','');
	if json.Get('/car/use_type') ~= nil then
		web.PutResult('UseNatureName',json.Get('/car/use_type'));
	end
	if json.Get('/car/use_code') ~= nil then
		web.PutResult('UseNatureCode',json.Get('/car/use_code'));
	end
	if web.GetResult('UseNatureName') == nil then
		sys.DBGPrint('未能获取车辆使用性质，使用默认值！\r\n');
		web.PutResult('UseNatureName','家庭自用汽车');
	end
	if web.GetResult('UseNatureCode') == nil then
		sys.DBGPrint('未能获取车辆使用性质代码，使用默认值！\r\n');
		 web.PutResult('UseNatureCode','8A');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('UseNatureName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('UseNatureName')[0].click();\r\n\
									fraInterface.document.getElementsByName('UseNatureName')[0].value=external.get_result('UseNatureName');\r\n\
									fraInterface.document.getElementsByName('UseNatureCode')[0].value=external.get_result('UseNatureCode');\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车辆使用性质录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车辆使用性质录入失败\"}");
			return false;
	end
	if json.Get(req.para,"/insurance/jiaoqiang") == "1" then
		web.PutResult('FuelTypeName','汽油');
		if json.Get(req.para,'/car/FuelTypeName') ~= nil then
			web.PutResult('FuelTypeName',json.Get(req.para,'/car/FuelTypeName'));
		end
		web.Wait(1500);
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('FuelTypeName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('FuelTypeName')[0].click();\r\n\
									fraInterface.document.getElementsByName('FuelTypeName')[0].value=external.get_result('FuelTypeName');\r\n\
									fraInterface.document.getElementsByName('FuelTypeName')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('FuelTypeName')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车辆燃油类型录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车辆燃油类型录入失败\"}");
			return false;
		end
		web.Wait(1000);
	end


	web.PutResult('LicenseNo','');
	web.PutResult('SeatCount','');
	web.PutResult('AccordingEngineNo','');
	web.PutResult('EnrollDate','');
	web.PutResult('AccordingMainCarOwner','');
	web.PutResult('AccordingVINNo','');

	if json.Get(req.para,'/car/plate_no') ~= nil then
		web.PutResult('LicenseNo',json.Get(req.para,'/car/plate_no'));
	end
	if json.Get(req.para,'/car/seats') ~= nil then
		web.PutResult('SeatCount',json.Get(req.para,'/car/seats'));
	end
	if json.Get(req.para,'/car/engine_no') ~= nil then
		web.PutResult('AccordingEngineNo',json.Get(req.para,'/car/engine_no'));
	end
	if json.Get(req.para,'/car/register_date') ~= nil then
		web.PutResult('EnrollDate',json.Get(req.para,'/car/register_date'));
	end
	if json.Get(req.para,'/car/owner/name') ~= nil then
		web.PutResult('AccordingMainCarOwner',json.Get(req.para,'/car/owner/name'));
	end
	if json.Get(req.para,'/car/vin') ~= nil then
		web.PutResult('AccordingVINNo',json.Get(req.para,'/car/vin'));
	end
	

	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('AccordingVINNo')[0].focus();\r\n\
									fraInterface.document.getElementsByName('AccordingVINNo')[0].click();\r\n\
									fraInterface.document.getElementsByName('AccordingVINNo')[0].value=external.get_result('AccordingVINNo');\r\n\
									fraInterface.document.getElementsByName('AccordingVINNo')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('AccordingVINNo')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车架号/VIN录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车架号/VIN录入失败！\"}");
			return false;
	end
	
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('AccordingEngineNo')[0].focus();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].click();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].value=external.get_result('AccordingEngineNo');\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("发动机号录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"发动机号录入失败！\"}");
			return false;
	end

	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value=external.get_result('LicenseNo');\r\n\
									fraInterface.document.getElementsByName('SeatCount')[0].value=external.get_result('SeatCount');\r\n\
									fraInterface.document.getElementsByName('EnrollDate')[0].value=external.get_result('EnrollDate');\r\n\
									fraInterface.document.getElementsByName('AccordingMainCarOwner')[0].value=external.get_result('AccordingMainCarOwner');\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("车牌座位初登日期车主录入失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"车牌座位初登日期车主录入失败！\"}");
			return false;
	end

	if not web.ExecuteScript(page, "fraInterface.document.getElementById('tableB').click();\r\n\
									fraInterface.document.getElementsByName('buttonAddCustomer1')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击添加被保人信息失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击添加被保人信息失败！\"}");
			return false;
	end

	local new_page = nil;
	local tm5 = web.NewTimeout(5000);
	web.PutResult('flag','');
	repeat
			new_page = web.GetPageAt(1);
			sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
			sys.DBGPrint('第一次获取页面\r\n');
			if web.GetPageURL(new_page)=='https://cs.libertymutual.com.cn/prpall/common/pub/CustomerFrame.jsp?EditType=I&Language=C' then
				web.PutResult('flag','1');
				break;
			end
			new_page = web.GetPageAt(0);
			sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
			sys.DBGPrint('第二次获取页面\r\n');
			if web.GetPageURL(new_page)=='https://cs.libertymutual.com.cn/prpall/common/pub/CustomerFrame.jsp?EditType=I&Language=C' then
				web.PutResult('flag','1');
				break;
			end
	until(web.IsTimeout(tm5));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("获取被保人信息页面失败！\r\n");
		req:complete("{\"error\":-5,\"msg\":\"获取被保人信息页面失败！\"}");
		return false;
	end




	web.PutResult('prpDcustomerIdvCustomerCName','');
	web.PutResult('prpDcustomerIdvIdentifyNumber','');

	if json.Get(req.para,'/car/owner/name') ~= nil then
		web.PutResult('prpDcustomerIdvCustomerCName',json.Get(req.para,'/car/owner/name'));
	end
	if json.Get(req.para,'/car/owner/id_no') ~= nil then
		web.PutResult('prpDcustomerIdvIdentifyNumber',json.Get(req.para,'/car/owner/id_no'));
	end
	web.PutResult('prpDcustomerIdvPhoneNumber','111111');
	web.PutResult('prpDcustomerIdvPostCode','100000');
	web.PutResult('prpDcustomerIdvMobile','11111111111');
	web.PutResult('prpDcustomerIdvAddressCName','北京市');

	if web.GetResult('prpDcustomerIdvIdentifyNumber') == nil then
		sys.DBGPrint('未能获取车主ID，使用默认值！\r\n');
		web.PutResult('prpDcustomerIdvIdentifyNumber','1111111111111111111');
	end
	WaitForDocumentCompleted(new_page);
	if not web.ExecuteScript(new_page, "inputFrame.document.getElementsByName('CustomerType')[1].click();\r\n\
									inputFrame.document.getElementsByName('prpDcustomerUnitCustomerCName')[0].value=external.get_result('prpDcustomerIdvCustomerCName');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerUnitOrganizeCode')[0].value=external.get_result('prpDcustomerIdvIdentifyNumber');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerUnitLinkerName')[0].value=external.get_result('prpDcustomerIdvCustomerCName');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerUnitPostCode')[0].value=external.get_result('prpDcustomerIdvPostCode');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerUnitAddressCName')[0].value=external.get_result('prpDcustomerIdvAddressCName');\r\n\
		") then
			web.ClosePage(page);
			if new_page ~= nil then
				web.ClosePage(new_page);
			end
			sys.DBGPrint("输入被保人信息失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"输入被保人信息失败\"}");
			return false;
	end
--[[
	if not web.ExecuteScript(new_page, "inputFrame.document.getElementsByName('CustomerType')[1].click();\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvCustomerCName')[0].value=external.get_result('prpDcustomerIdvCustomerCName');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvIdentifyNumber')[0].value=external.get_result('prpDcustomerIdvIdentifyNumber');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvPhoneNumber')[0].value=external.get_result('prpDcustomerIdvPhoneNumber');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvPostCode')[0].value=external.get_result('prpDcustomerIdvPostCode');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvMobile')[0].value=external.get_result('prpDcustomerIdvMobile');\r\n\
									inputFrame.document.getElementsByName('prpDcustomerIdvAddressCName')[0].value=external.get_result('prpDcustomerIdvAddressCName');\r\n\
		") then
			web.ClosePage(page);
			if new_page ~= nil then
				web.ClosePage(new_page);
			end
			sys.DBGPrint("输入被保人信息失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"输入被保人信息失败\"}");
			return false;
	end
	
	if web.GetResult('prpDcustomerIdvSex') == '男' then
		web.ExecuteScript(new_page,"inputFrame.document.getElementById('xMale').click();")
	else
		web.ExecuteScript(new_page,"inputFrame.document.getElementById('xWoman').click();")
	end
	--]]
	if not web.ExecuteScript(new_page, "inputFrame.document.getElementsByName('UnitButtonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击保存被保人信息失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击保存被保人信息失败！\"}");
			return false;
	end

	local new_page = nil;
	if not web.ExecuteScript(page, "fraInterface.document.getElementById('tableA').click();\r\n\
		fraInterface.document.getElementsByName('vinnoquery')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击车架号查询失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击车架号查询失败！\"}");
			return false;
	end


	local tm7 = web.NewTimeout(5000);
	web.PutResult('flag','');
	local vinUrl = 'https://cs.libertymutual.com.cn/prpall/0501/common/tb/UIProposalModelCodeList.jsp?VPNNo='..json.Get(req.para,'/car/vin')..'&LicenseNo='..json.Get(req.para,'/car/plate_no');
	repeat
			new_page = web.GetPageAt(1);
			if web.GetPageURL(new_page)==vinUrl then
				web.PutResult('flag','1');
				sys.DBGPrint('获取获取车架号页面\r\n');
				break;
			end
			new_page = web.GetPageAt(0);
			if web.GetPageURL(new_page)==vinUrl then
				web.PutResult('flag','1');
				sys.DBGPrint('获取获取车架号页面\r\n');
				break;
			end
	until(web.IsTimeout(tm7));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("获取选择车架号页面失败！\r\n");
		req:complete("{\"error\":-5,\"msg\":\"获取选择车架号页面失败！\"}");
		return false;
	end

	WaitForDocumentCompleted(new_page);
	if not web.ExecuteScript(new_page, "var index = 0;\r\n\
										while(true){\r\n\
											if (document.getElementsByName('SeatCount')[index].value == external.get_result('SeatCount')){\r\n\
												document.getElementsByName('vinChecked')[index].click();\r\n\
												document.getElementsByName('modelcodeconfirm')[0].click();\r\n\
												break;\r\n\
											}\r\n\
											index++;\r\n\
										}\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("选择车架号失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"选择车架号失败\"}");
			return false;
									
	end
	new_page = nil;
	--是否投保险种
	--初始化
	web.PutResult('chesun','');
	web.PutResult('sanzhe','');
	web.PutResult('siji','');
	web.PutResult('boli','');
	web.PutResult('chengke','');
	web.PutResult('daoqiang','');
	web.PutResult('ziran','');
	web.PutResult('sheshui','');
	web.PutResult('huahen','');
	web.PutResult('sanfang','');
	web.PutResult('zhiding','');
	--是否不计免赔
	
	web.PutResult('chesun_buji','');
	web.PutResult('sanzhe_buji','');
	web.PutResult('siji_buji','');
	web.PutResult('chengke_buji','');
	web.PutResult('daoqiang_buji','');
	web.PutResult('ziran_buji','');
	web.PutResult('sheshui_buji','');
	web.PutResult('huahen_buji','');
	--保额
	
	web.PutResult('sanzhe_baoe','');
	web.PutResult('siji_baoe','');
	web.PutResult('boli_baoe','');
	web.PutResult('huahen_baoe','');
	web.PutResult('chengke_baoe','');

	if json.Get(req.para,"/insurance/chesun") ~= nil then
		web.PutResult('chesun',json.Get(req.para,"/insurance/chesun"));
	end
	if json.Get(req.para,"/insurance/sanzhe") ~= nil then
		web.PutResult('sanzhe',json.Get(req.para,"/insurance/sanzhe"));
	end
	if json.Get(req.para,"/insurance/siji") ~= nil then
		web.PutResult('siji',json.Get(req.para,"/insurance/siji"));
	end
	if json.Get(req.para,"/insurance/boli") ~= nil then
		web.PutResult('boli',json.Get(req.para,"/insurance/boli"));
	end
	if json.Get(req.para,"/insurance/chengke") ~= nil then
		web.PutResult('chengke',json.Get(req.para,"/insurance/chengke"));
	end
	if json.Get(req.para,"/insurance/daoqiang") ~= nil then
		web.PutResult('daoqiang',json.Get(req.para,"/insurance/daoqiang"));
	end
	if json.Get(req.para,"/insurance/ziran") ~= nil then
		web.PutResult('ziran',json.Get(req.para,"/insurance/ziran"));
	end
	if json.Get(req.para,"/insurance/sheshui") ~= nil then
		web.PutResult('sheshui',json.Get(req.para,"/insurance/sheshui"));
	end
	if json.Get(req.para,"/insurance/huahen") ~= nil then
		web.PutResult('huahen',json.Get(req.para,"/insurance/huahen"));
	end
	if json.Get(req.para,"/insurance/sanfang") ~= nil then
		web.PutResult('sanfang',json.Get(req.para,"/insurance/sanfang"));
	end
	if json.Get(req.para,"/insurance/zhiding") ~= nil then
		web.PutResult('zhiding',json.Get(req.para,"/insurance/zhiding"));
	end

	if json.Get(req.para,"/insurance/chesun/buji") ~= nil then
		web.PutResult('chesun_buji',json.Get(req.para,"/insurance/chesun/buji"));
	end
	if json.Get(req.para,"/insurance/sanzhe/buji") ~= nil then
		web.PutResult('sanzhe_buji',json.Get(req.para,"/insurance/sanzhe/buji"));
	end
	if json.Get(req.para,"/insurance/siji/buji") ~= nil then
		web.PutResult('siji_buji',json.Get(req.para,"/insurance/siji/buji"));
	end
	if json.Get(req.para,"/insurance/chengke/buji") ~= nil then
		web.PutResult('chengke_buji',json.Get(req.para,"/insurance/chengke/buji"));
	end
	if json.Get(req.para,"/insurance/daoqiang/buji") ~= nil then
		web.PutResult('daoqiang_buji',json.Get(req.para,"/insurance/daoqiang/buji"));
	end
	if json.Get(req.para,"/insurance/ziran/buji") ~= nil then
		web.PutResult('ziran_buji',json.Get(req.para,"/insurance/ziran/buji"));
	end
	if json.Get(req.para,"/insurance/sheshui/buji") ~= nil then
		web.PutResult('sheshui_buji',json.Get(req.para,"/insurance/sheshui/buji"));
	end
	if json.Get(req.para,"/insurance/huahen/buji") ~= nil then
		web.PutResult('huahen_buji',json.Get(req.para,"/insurance/huahen/buji"));
	end

	--是否不计免赔

	--保额
	if json.Get(req.para,"/insurance/sanzhe/baoe") ~= nil then
		web.PutResult('sanzhe_baoe',json.Get(req.para,"/insurance/sanzhe/baoe"));
	end
	if json.Get(req.para,"/insurance/siji/baoe") ~= nil then
		web.PutResult('siji_baoe',json.Get(req.para,"/insurance/siji/baoe"));
	end
	if json.Get(req.para,"/insurance/huahen/baoe") ~= nil then
		web.PutResult('huahen_baoe',json.Get(req.para,"/insurance/huahen/baoe"));
	end
	if json.Get(req.para,"/insurance/chengke/unit") ~= nil then
		web.PutResult('chengke_baoe',json.Get(req.para,"/insurance/chengke/unit"));
	end
	if json.Get(req.para,"/insurance/boli/baoe") ~= nil then
		web.PutResult('boli_baoe',json.Get(req.para,"/insurance/boli/baoe"));
	end

	local chesun = web.GetResult("chesun");
	local sanzhe = web.GetResult("sanzhe");
	local siji = web.GetResult("siji");
	local chengke = web.GetResult("chengke");
	local daoqiang = web.GetResult("daoqiang");
	local boli = web.GetResult("boli");
	local ziran = web.GetResult("ziran");
	local sheshui = web.GetResult("sheshui");
	local sanfang = web.GetResult("sanfang");
	local zhiding = web.GetResult("zhiding");

	local chesun_buji = web.GetResult("chesun_buji");
	local sanzhe_buji = web.GetResult("sanzhe_buji");
	local siji_buji = web.GetResult("siji_buji");
	local chengke_buji = web.GetResult("chengke_buji");
	local daoqiang_buji = web.GetResult("daoqiang_buji");
	local ziran_buji = web.GetResult("ziran_buji");
	local sheshui_buji = web.GetResult("sheshui_buji");
	local huahen_buji = web.GetResult('huahen_buji');
	--主险信息录入
	if json.Get(req.para,"/insurance/shang") ~= nil then
		web.PutResult('insure_code','');
		local num = 1;
		repeat
			if web.GetResult('chesun') ~= nil and num == 1 then
				web.PutResult('insure_code','A200');
			elseif web.GetResult('daoqiang') ~= nil and num == 2 then
				web.PutResult('insure_code','A500');
			elseif web.GetResult('sanzhe') ~= nil and num == 3 then
				web.PutResult('insure_code','A600');
			elseif web.GetResult('siji') ~= nil and num == 4 then
				web.PutResult('insure_code','A701');
			elseif web.GetResult('chengke') ~= nil and num == 5 then
				web.PutResult('insure_code','A702');
			end
		 	if web.GetResult('insure_code') ~= nil then
		 		web.ExecuteScript(page, "fraInterface.document.getElementsByName('button_ItemKindMain_Insert')[0].click();");
		 		repeat
		 		web.PutResult('flag','');
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														var temp1 = fraInterface.document.getElementsByName('KindCode')[index].value;\r\n\
														if (temp1 == '' ){\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].focus();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].click();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].value=external.get_result('insure_code');\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].onchange();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].onblur();\r\n\
															break;\r\n\
															}\r\n\
														index++;\r\n\
														}\r\n\
													");
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														fraInterface.document.getElementsByName('KindCode')[index].onblur();\r\n\
														index++;\r\n\
														}\r\n\
													");
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														var temp2 = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
														if (temp2 == ''){\r\n\
															external.put_result('flag','1');\r\n\
															break;\r\n\
															}\r\n\
														index++;\r\n\
														}\r\n\
													");
		 		if global_message ~= nil then
					pos,_=string.find(global_message,'A702不能单独');
					if pos ~= nil then
						global_message = nil;
						web.ClosePage(page);
						sys.DBGPrint("乘客险不能单独录入，请先选择司机险!\r\n");
						req:complete("{\"error\":-5,\"msg\":\"乘客险不能单独录入，请先选择司机险!\"}");
						return false;	
					end
				end
				until(web.GetResult('flag') == nil)
			end
			
			num = num + 1;
			web.PutResult('insure_code','');
		until(num > 5);
	end
	--主险附加险不计免赔录入
	if json.Get(req.para,"/insurance/shang") ~= nil then
		web.PutResult('insure_code','');
		num = 1;
		repeat
			if web.GetResult('chesun_buji') ~= nil and num == 1 then
				web.PutResult('insure_code','A911');
			elseif web.GetResult('daoqiang_buji') ~= nil and num == 2 then
				web.PutResult('insure_code','A921');
			elseif web.GetResult('sanzhe_buji') ~= nil and num == 3 then
				web.PutResult('insure_code','A912');
			elseif web.GetResult('siji_buji') ~= nil and num == 4 then
				web.PutResult('insure_code','A928');
			elseif web.GetResult('chengke_buji') ~= nil and num == 5 then
				web.PutResult('insure_code','A929');
			elseif web.GetResult('ziran') ~= nil and num == 6 then
				web.PutResult('insure_code','A310');
			elseif web.GetResult('sheshui') ~= nil and num == 7 then
				web.PutResult('insure_code','A290');
			elseif web.GetResult('boli') ~= nil and num == 8 then
				web.PutResult('insure_code','A231');
			elseif web.GetResult('huahen') ~= nil and num == 9 then
				web.PutResult('insure_code','A210');
			elseif web.GetResult('ziran_buji') ~= nil and num == 10 then
				web.PutResult('insure_code','A970');
			elseif web.GetResult('sheshui_buji') ~= nil and num == 11 then
				web.PutResult('insure_code','A972');
			elseif web.GetResult('huahen_buji') ~= nil and num == 12 then
				web.PutResult('insure_code','A971');
			elseif web.GetResult('sanfang') ~= nil and num == 13 then
			web.PutResult('insure_code','A250');
			elseif web.GetResult('zhiding') ~= nil and num == 14 then
			web.PutResult('insure_code','A252');
			end
		 	if web.GetResult('insure_code') ~= nil then
		 		web.ExecuteScript(page, "fraInterface.document.getElementsByName('button_ItemKindSub_Insert')[0].click();");
		 		repeat
		 		web.PutResult('flag','');
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														var temp1 = fraInterface.document.getElementsByName('KindCode')[index].value;\r\n\
														if (temp1 == '' ){\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].focus();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].click();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].value=external.get_result('insure_code');\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].onchange();\r\n\
															fraInterface.document.getElementsByName('KindCode')[index].onblur();\r\n\
															break;\r\n\
															}\r\n\
														index++;\r\n\
														}\r\n\
													");
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														fraInterface.document.getElementsByName('KindCode')[index].onblur();\r\n\
														index++;\r\n\
														}\r\n\
													");
		 		web.ExecuteScript(page, "var index  = 1;\r\n\
													while(true){\r\n\
														var temp2 = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
														if (temp2 == ''){\r\n\
															external.put_result('flag','1');\r\n\
															break;\r\n\
															}\r\n\
														index++;\r\n\
														}\r\n\
													");
				until(web.GetResult('flag') == nil)
			end
			num = num + 1;
			web.PutResult('insure_code','');
		until(num > 14);
	end

	--保额录入
	
	if web.GetResult('sanzhe') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('三者') != -1){\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].value=external.get_result('sanzhe_baoe');\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].onchange();\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end


	
	if web.GetResult('siji') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('司机') != -1){\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].value=external.get_result('siji_baoe');\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].onchange();\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end
	
	
	if web.GetResult('chengke') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('乘客') != -1){\r\n\
										fraInterface.document.getElementsByName('UnitAmountSelect')[index].value=external.get_result('chengke_baoe');\r\n\
										fraInterface.document.getElementsByName('UnitAmountSelect')[index].onchange();\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end

	
	if web.GetResult('boli') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('玻璃') != -1){\r\n\
										if (external.get_result('boli_baoe') == '国产' || external.get_result('boli_baoe') == '国产玻璃'){\r\n\
											fraInterface.document.getElementsByName('Model')[index].value=1;\r\n\
											fraInterface.document.getElementsByName('Model')[index].onchange();\r\n\
										}\r\n\
										else if(external.get_result('boli_baoe') == '进口' || external.get_result('boli_baoe') == '进口玻璃'){\r\n\
											fraInterface.document.getElementsByName('Model')[index].value=2;\r\n\
											fraInterface.document.getElementsByName('Model')[index].onchange();\r\n\
										}\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end

	
	if web.GetResult('huahen') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('划痕') != -1 && temp.indexOf('不计') == -1){\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].value=external.get_result('huahen_baoe');\r\n\
										fraInterface.document.getElementsByName('AmountSelect')[index].onchange();\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end

	if web.GetResult('zhiding') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('指定') != -1 ){\r\n\
										fraInterface.document.getElementsByName('UnitAmount')[index].value=20;\r\n\
										break;\r\n\
									}\r\n\
									index++;\r\n\
									}\r\n\
			")
	end
	web.ExecuteScript(page, "var index  = 1;\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByName('KindCode')[index].value;\r\n\
										if (temp == ''){\r\n\
											fraInterface.document.getElementsByName('button_ItemKind_Delete')[index].click();\r\n\
											break;\r\n\
											}\r\n\
										index++;\r\n\
										}\r\n\
									");
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CIQueryDemandSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击车型查询失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击车型查询失败！\"}");
			return false;
	end
	web.PutResult('click_status','true');
	local tm8 = web.NewTimeout(5000);
	repeat
		web.ExecuteScript(page,"var temp = fraInterface.document.getElementsByName('CIQueryDemandSubmit')[0].disabled;\r\n\
								if (temp == false){\r\n\
									external.put_result('click_status','false');\r\n\
								}\r\n\
			")
	until(web.GetResult('click_status') == 'false' or web.IsTimeout(tm8));

	if global_message ~= nil then
		pos,_=string.find(global_message,'平台交互成功');
		if pos == nil then
			web.ClosePage(page);
			sys.DBGPrint(global_message);
			req:complete("{\"error\":-5,\"msg\":\""..global_message.."\"}");
			return false;
		end
	end
	
	web.PutResult('flag','');
	local tm1 = web.NewTimeout(10000);
	repeat

		web.ExecuteScript(page, "fraInterface.document.getElementsByName('CIDemandBusiVehiclePriceTypeName')[1].click();\r\n\
								external.put_result('flag','1');\r\n\
		")
		web.Wait(200);
		sys.DBGPrint("选择车型中\r\n");
		if web.GetResult('flag') ~= nil then 
			break;
		end
		if jiaoqiang_flag == 1 then
			web.ClosePage(page);
			sys.DBGPrint("交强险异常，该车已投保同类型的险种!\r\n");
			req:complete("{\"error\":-10,\"msg\":\"交强险异常，该车已在本公司或其他公司投保同类型险种，不可重复投保！\"}");
			return false;
		end
	until(web.IsTimeout(tm1));

	if jiaoqiang_flag == 1 then
		web.ClosePage(page);
		sys.DBGPrint("交强险异常，该车已投保同类型的险种!\r\n");
		req:complete("{\"error\":-10,\"msg\":\"交强险异常，该车已在本公司或其他公司投保同类型险种，不可重复投保！\"}");
		return false;
	end

	if web.GetResult('flag') == nil then 
		web.ClosePage(page);
		sys.DBGPrint("报价失败，可能由于网络故障，请重试！\r\n");
		req:complete("{\"error\":-5,\"msg\":\"报价失败，可能由于网络故障，请重试！\"}");
		return false;
	end


	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CIQueryDemandSubmit')[0].click();\r\n\
			") then 
		web.ClosePage(page);
		sys.DBGPrint("第二次平台交互失败！\r\n");
		req:complete("{\"error\":-5,\"msg\":\"第二次平台交互失败！\"}");
		return false;
	end
	local tm4 = web.NewTimeout(10000);
	repeat
		if global_message ~= nil then
			pos,_=string.find(global_message,'平台交互成功');
			if pos ~= nil then
				break;
			end
		end
	until(web.IsTimeout(tm4));

	web.PutResult('click_status','true');
	repeat
		web.ExecuteScript(page,"var temp = fraInterface.document.getElementsByName('CIQueryDemandSubmit')[0].disabled;\r\n\
								if (temp == false){\r\n\
									external.put_result('click_status','false');\r\n\
								}\r\n\
			")
	until(web.GetResult('click_status') == 'false');

	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CIDemandBusiVehiclePriceTypeName')[1].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("第二次选择车型失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"选择车型失败！\"}");
			return false;
	end

	web.ExecuteScript(page, "fraInterface.document.getElementsByName('ChannelAdjustValue')[0].focus();\r\n\
							fraInterface.document.getElementsByName('ChannelAdjustValue')[0].click();\r\n\
							fraInterface.document.getElementsByName('ChannelAdjustValue')[0].value=0.85;\r\n\
							fraInterface.document.getElementsByName('ChannelAdjustValue')[0].onchange();\r\n\
							fraInterface.document.getElementsByName('ChannelAdjustValue')[0].onblur();\r\n\
							fraInterface.document.getElementsByName('AutonomyAdjustValue')[0].focus();\r\n\
							fraInterface.document.getElementsByName('AutonomyAdjustValue')[0].click();\r\n\
							fraInterface.document.getElementsByName('AutonomyAdjustValue')[0].value=0.85;\r\n\
							fraInterface.document.getElementsByName('AutonomyAdjustValue')[0].onchange();\r\n\
							fraInterface.document.getElementsByName('AutonomyAdjustValue')[0].onblur();\r\n\
		") ;
	web.PutResult('StartDate','');
	web.PutResult('EndDate','');
	if json.Get(req.para,'/insurance/shang') == '1' then
		web.PutResult('StartDate',json.Get(req.para,'/insurance/shangDateStart'));
		web.PutResult('EndDate',json.Get(req.para,'/insurance/shangDateEnd'));
	elseif json.Get(req.para,'/insurance/qiang') == '1' then
		web.PutResult('StartDate',json.Get(req.para,'/insurance/qiangDateStart'));
		web.PutResult('EndDate',json.Get(req.para,'/insurance/qiangDateEnd'));
	end
	
	if web.GetResult('StartDate') ~= nil and web.GetResult('EndDate') ~= nil then
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('StartDate')[0].value=external.get_result('StartDate');\r\n\
										fraInterface.document.getElementsByName('EndDate')[0].value=external.get_result('EndDate');\r\n\
			") then
				web.ClosePage(page);
				sys.DBGPrint("选择投保日期失败！\r\n");
				req:complete("{\"error\":-5,\"msg\":\"选择投保日期失败！\"}");
				return false;
		end
	end
	
	web.Wait(1000);
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('buttonCaculate')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("点击保费计算失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"点击保费计算失败！\"}");
			return false;
	end

	if global_message ~= nil then
		pos,_=string.find(global_message,'请选择A701险下拉');
		if pos ~= nil then
			global_message = nil;
			web.ClosePage(page);
			sys.DBGPrint("司机险保额超出赔偿限额，最高保额为20万！\r\n");
			req:complete("{\"error\":-7,\"msg\":\"司机险保额超出赔偿限额，最高保额为20万！\"}");
			return false;
		end
		pos,_=string.find(global_message,'请选择A702险下拉');
		if pos ~= nil then
			global_message = nil;
			web.ClosePage(page);
			sys.DBGPrint("乘客险保额超出赔偿限额，最高保额为20万！\r\n");
			req:complete("{\"error\":-7,\"msg\":\"乘客险保额超出赔偿限额，最高保额为20万！\"}");
			return false;
		end
	end
	web.PutResult('click_status','true');
	repeat
		web.ExecuteScript(page,"var temp = fraInterface.document.getElementsByName('buttonCaculate')[0].disabled;\r\n\
								if (temp == false){\r\n\
									external.put_result('click_status','false');\r\n\
								}\r\n\
			")
	until(web.GetResult('click_status') == 'false');			
	
	
	--保费
	web.PutResult('chesun_baofei','');
	web.PutResult('sheshui_baofei','');
	web.PutResult('sanzhe_baofei','');
	web.PutResult('siji_baofei','');
	web.PutResult('chengke_baofei','');
	web.PutResult('boli_baofei','');
	web.PutResult('ziran_baofei','');
	web.PutResult('daoqiang_baofei','');
	web.PutResult('huahen_baofei','');
	web.PutResult('sanfang_baofei','');
	web.PutResult('zhiding_baofei','');

	web.PutResult('chesun_buji_baofei','');
	web.PutResult('sheshui_buji_baofei','');
	web.PutResult('sanzhe_buji_baofei','');
	web.PutResult('siji_buji_baofei','');
	web.PutResult('chengke_buji_baofei','');
	web.PutResult('ziran_buji_baofei','');
	web.PutResult('daoqiang_buji_baofei','');
	web.PutResult('huahen_buji_baofei','');
	web.PutResult('jiaoqiang','');
	web.PutResult('shangye','');
	web.PutResult('tax','');
	web.PutResult('final_price','');
	web.ExecuteScript(page, "var index = 1\r\n\
							while(true){\r\n\
								var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
								var value = fraInterface.document.getElementsByName('Premium')[index].value;\r\n\
									if (temp.indexOf('机动车损失') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('chesun_buji_baofei',value);\r\n\
									else if (temp.indexOf('第三者') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('sanzhe_buji_baofei',value);\r\n\
									else if (temp.indexOf('司机') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('siji_buji_baofei',value);\r\n\
									else if (temp.indexOf('乘客') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('chengke_buji_baofei',value);\r\n\
									else if (temp.indexOf('盗抢') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('daoqiang_buji_baofei',value);\r\n\
									else if (temp.indexOf('发动机涉水损失险') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('sheshui_buji_baofei',value);\r\n\
									else if (temp.indexOf('自燃损失险') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('ziran_buji_baofei',value);\r\n\
									else if (temp.indexOf('划痕') != -1 && temp.indexOf('不计') != -1)\r\n\
										external.put_result('huahen_buji_baofei',value);\r\n\
									else if (temp.indexOf('第三者') != -1 )\r\n\
										external.put_result('sanzhe_baofei',value);\r\n\
									else if (temp.indexOf('司机') != -1 )\r\n\
										external.put_result('siji_baofei',value);\r\n\
									else if (temp.indexOf('乘客') != -1 )\r\n\
										external.put_result('chengke_baofei',value);\r\n\
									else if (temp.indexOf('盗抢') != -1 )\r\n\
										external.put_result('daoqiang_baofei',value);\r\n\
									else if (temp.indexOf('发动机涉水损失险') != -1 )\r\n\
										external.put_result('sheshui_baofei',value);\r\n\
									else if (temp.indexOf('自燃损失险') != -1 )\r\n\
										external.put_result('ziran_baofei',value);\r\n\
									else if (temp.indexOf('划痕') != -1 )\r\n\
										external.put_result('huahen_baofei',value);\r\n\
									else if (temp.indexOf('车辆损失') != -1 )\r\n\
										external.put_result('chesun_baofei',value);\r\n\
									else if (temp.indexOf('玻璃') != -1 )\r\n\
										external.put_result('boli_baofei',value);\r\n\
									else if (temp.indexOf('指定') != -1 )\r\n\
										external.put_result('zhiding_baofei',value);\r\n\
									else if (temp.indexOf('第三方特约') != -1 )\r\n\
										external.put_result('sanfang_baofei',value);\r\n\
								index++;\r\n\
							}\r\n\
						")
	if json.Get(req.para,"/insurance/jiaoqiang") == '1' then
		web.ExecuteScript(page,"external.put_result('tax',fraInterface.document.getElementsByName('enforceCarShipTax')[0].value);\r\n\
									external.put_result('jiaoqiang',fraInterface.document.getElementsByName('enforcePremium')[0].value);\r\n\
									");
	end

	if json.Get(req.para,"/insurance/shang") == '1' then
		web.ExecuteScript(page,"external.put_result('shangye',fraInterface.document.getElementsByName('PremiumCount')[0].value);\r\n\
								");
	end

	web.ExecuteScript(page,"external.put_result('final_price',fraInterface.document.getElementsByName('SumPremiumForView')[0].value);\r\n\
							");

	local chesun_baofei = web.GetResult('chesun_baofei');
	local sheshui_baofei = web.GetResult('sheshui_baofei');
	local sanzhe_baofei = web.GetResult('sanzhe_baofei');
	local siji_baofei = web.GetResult('siji_baofei');
	local chengke_baofei = web.GetResult('chengke_baofei');
	local boli_baofei = web.GetResult('boli_baofei');
	local ziran_baofei = web.GetResult('ziran_baofei');
	local daoqiang_baofei = web.GetResult('daoqiang_baofei');
	local huahen_baofei = web.GetResult('huahen_baofei');
	local sanfang_baofei=web.GetResult('sanfang_baofei');
	local zhiding_baofei=web.GetResult('zhiding_baofei');

	local chesun_buji_baofei = web.GetResult('chesun_buji_baofei');
	local sheshui_buji_baofei = web.GetResult('sheshui_buji_baofei');
	local sanzhe_buji_baofei = web.GetResult('sanzhe_buji_baofei');
	local siji_buji_baofei = web.GetResult('siji_buji_baofei');
	local chengke_buji_baofei = web.GetResult('chengke_buji_baofei');
	local ziran_buji_baofei = web.GetResult('ziran_buji_baofei');
	local daoqiang_buji_baofei = web.GetResult('daoqiang_buji_baofei');
	local huahen_buji_baofei = web.GetResult('huahen_buji_baofei');
	
	local shangye = web.GetResult('shangye');
	local jiaoqiang = web.GetResult('jiaoqiang');
	local final_price = web.GetResult('final_price');
	local tax = web.GetResult('tax');

	local flag = 0;

	if chesun_baofei ~= nil  then
		if chesun_buji_baofei ~= nil then
			chesun_zong = string.gsub(tostring((chesun_baofei+0) + (chesun_buji_baofei + 0)),',','');
		else
			chesun_zong = string.gsub(chesun_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/chesun/price",chesun_zong);
	end

	if sheshui_baofei ~= nil  then
		if sheshui_buji_baofei ~= nil then
			sheshui_zong = string.gsub(tostring((sheshui_baofei+0) + (sheshui_buji_baofei + 0)),',','');
		else
			sheshui_zong = string.gsub(sheshui_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/sheshui/price",sheshui_zong);
	end

	if sanzhe_baofei ~= nil  then
		if sanzhe_buji_baofei ~= nil then
			sanzhe_zong = string.gsub(tostring((sanzhe_baofei+0) + (sanzhe_buji_baofei + 0)),',','');
		else
			sanzhe_zong = string.gsub(sanzhe_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/sanzhe/price",sanzhe_zong);
	end

	if chengke_baofei ~= nil  then
		if chengke_buji_baofei ~= nil then
			chengke_zong = string.gsub(tostring((chengke_baofei+0) + (chengke_buji_baofei + 0)),',','');
		else
			chengke_zong = string.gsub(chengke_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/chengke/price",chengke_zong);
	end

	if siji_baofei ~= nil  then
		if siji_buji_baofei ~= nil then
			siji_zong = string.gsub(tostring((siji_baofei+0) + (siji_buji_baofei + 0)),',','');
		else
			siji_zong = string.gsub(siji_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/siji/price",siji_zong);
	end

	if huahen_baofei ~= nil  then
		if huahen_buji_baofei ~= nil then
			huahen_zong = string.gsub(tostring((huahen_baofei+0) + (huahen_buji_baofei + 0)),',','');
		else
			huahen_zong = string.gsub(huahen_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/huahen/price",huahen_zong);
	end

	if ziran_baofei ~= nil  then
		if ziran_buji_baofei ~= nil then
			ziran_zong = string.gsub(tostring((ziran_baofei+0) + (ziran_buji_baofei + 0)),',','');
		else
			ziran_zong = string.gsub(ziran_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/ziran/price",ziran_zong);
	end

	if daoqiang_baofei ~= nil  then
		if daoqiang_buji_baofei ~= nil then
			daoqiang_zong = string.gsub(tostring((daoqiang_baofei+0) + (daoqiang_buji_baofei + 0)),',','');
		else
			daoqiang_zong = string.gsub(daoqiang_baofei,',','');
		end
		req.para = json.Set(req.para,"/insurance/daoqiang/price",daoqiang_zong);
	end

	if boli_baofei ~= nil  then
		boli_zong = string.gsub(boli_baofei,',','');
		req.para = json.Set(req.para,"/insurance/boli/price",boli_zong);
	end

	if sanfang_baofei ~= nil  then
		sanfang_zong = string.gsub(sanfang_baofei,',','');
		req.para = json.Set(req.para,"/insurance/sanfang/price",sanfang_baofei);
	end

	if zhiding_baofei ~= nil  then
		zhiding_zong = string.gsub(zhiding_baofei,',','');
		req.para = json.Set(req.para,"/insurance/zhiding/price",zhiding_zong);
	end
	if json.Get(req.para,"/insurance/shang") == '1' then
		if shangye ~= nil  then
			shangye = string.gsub(shangye,',','');
			req.para = json.Set(req.para,"/insurance/shangPrice",shangye);
		end
	end
	
	if json.Get(req.para,"/insurance/jiaoqiang") == '1' then
		if jiaoqiang ~= nil  then
			jiaoqiang = string.gsub(jiaoqiang,',','');
			req.para = json.Set(req.para,"/insurance/qiangPrice",jiaoqiang);
		end
	end

	if final_price ~= nil  then
		final_price = string.gsub(final_price,',','');
		req.para = json.Set(req.para,"/insurance/final_price",final_price);
	end

	if json.Get(req.para,"/insurance/jiaoqiang") == '1' then
		if tax ~= nil  then
			tax = string.gsub(tax,',','');
			req.para = json.Set(req.para,"/insurance/tax",tax);
		end
	end
	
	ret = req.para;
	if web.GetResult('final_price') ~= nil or web.GetResult('shangye') ~= nil or web.GetResult('jiaoqiang') ~= nil then
		sys.DBGPrint('保费计算成功，'.."总耗时："..((web.GetTickCount()-startTime)/1000)..'\r\n');
		sys.DBGPrint(ret);
		web.ClosePage(page);
		req:complete(ret);
		return true;
	end
	web.ClosePage(page);
	sys.DBGPrint("保费计算失败\r\n");
	req:complete("{\"error\":-8,\"msg\":\"保费计算失败，可能由于网络原因导致，请重试！\"}");
	return false;

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
				startTime = web.GetTickCount();
				inquire_car(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("总耗时："..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 1) then
				--查历史保单
				startTime = web.GetTickCount();
				query_insurance_history(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("总耗时："..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 2) then
				--自动报价
				startTime = web.GetTickCount();
				auto_quote(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("总耗时："..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 3) then
				--自动核保
				req:complete("{\"error\":-1,\"msg\":\"不支持自动核保\"}");
			else
				--未知的请求类型
				req:complete("{\"error\":-1,\"msg\":\"未知请求\"}");
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("脚本退出\r\n");
end
