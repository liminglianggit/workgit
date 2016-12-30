--[[已经添加新增险种&vpn自动重启&提速         
	 

段
function main()
	local req,err,msg,tm,tm1,err2,tm3,tm4,err3,err4,t,t2;
	sys.DBGPrint("脚本开始执行……\r\n");
	web.OnShowMessage("OnDialog");
	tm=web.NewTimeout(0)
	tm4=web.NewTimeout(0)
	t=0
	t2=1
	while web.IsRunning() do
	    if web.IsTimeout(tm4) then
		   sys.DBGPrint("开始检测人保vpn！\r\n")
		   err3=web.IsVPNConnected()
		   if not err3 then
		       sys.DBGPrint("vpn不在线！\r\n")
		       err4,message=loginvpn()
			   sys.DBGPrint("错误消息%s",message) 
			   if not err4 then
			      sys.DBGPrint("vpn登录失败！\r\n") 
			      web.ClosePage(page2[web.Self()])
				  web.Wait(1000)
			   else
                  sys.DBGPrint("vpn登录成功！\r\n") 			   
                  web.Wait(15000)			   
			   end
			   t2=1
               tm4=web.NewTimeout(0)				   
		   else
		       sys.DBGPrint("vpn在线！\r\n")
			   t2=0
			   tm4=web.NewTimeout(180000)
		   end
		end
	end
function longinVpn()
	local url,pos;
  page2[web.Self()] = web.NewPage(true);
  if (page2[web.Self()] == nil) then
		return false,"新建页面失败！";
  end
  if not web.Navigate(page2[web.Self()], "https://114.255.11.98/prx/000/http/localhost/login") then
		return false, "无法导航到vpn首页";
  end
  WaitForDocumentCompleted(page2[web.Self()], 20000)
  url = web.GetPageURL(page2[web.Self()]);
  if (url == nil) then
	return false, "无法获取首页URL地址";
  end
  if (url ~= "https://114.255.11.98/prx/000/http/localhost/login") then
		return false, "无法导航到vpn首页";
  end
  if (not web.ExecuteScript(page2[web.Self()], "document.getElementsByName('uname')[0].value='yx2daili01'\r\n\
			document.getElementsByName('pwd')[0].value='cpicyx2'\r\n\
			document.getElementsByName('submitbutton')[0].click()")) then
		return false, "执行登录脚本失败！";
  end 
  web.Wait(15000)  
  WaitForDocumentCompleted(page2[web.Self()], 20000)
  url = web.GetPageURL(page2[web.Self()]);
  if (url == nil) then
	return false, "无法获取首页URL地址";
  end
  pos,_ = string.find(url, "/welcome");
  if (pos == nil) then
	return false, "登录到了未知页面["..url.."]";
  end
  return true,"suc"
远程：
	本地：192.168.1.105
	Server
	123
云：
	120.92.43.30
	账号kingsoft
	密码Sun12xing45
vpn：
	https://202.108.173.89/portal_default/index1.html
	天融信VPN账号：zhonghuiguoji_cb
	密码：123456
]]--
--[[速度和稳定性
js：对document的调用
lua：善用数据结构，优化代码中的循环调用

]]--
--[[
SSL VPN正在工作，请不要重复登录！
]]

--可以正常使用 
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
web_server_ip_address = "10.134.136.48";
--当前机器人建议运行的工作线程数目(取值范围在1~10之间)
suggest_work_threads_num = 1;
--保险公司类型
insurer_type = "renbao";
--是否显示窗口
show_window = true;
--当前脚本的全局名称。必须是唯一的，浏览器将用它来区分每个脚本
global_name = "人保示例";
--全局超时时间(单位：毫秒)
global_timeout = 10000
--保险公司所属地区
global_region = "北京";

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
--web.GetPageTitle(p)  获取页面对象p的标题
--web.GetPageURL(p)		 获取页面对象p的URL
--web.FindPageByTitle(partten)	查找页面标题匹配标题字符串的页面对象并返回，pattern中可包含通配符（?,*）
--web.FindPageByURL(partten)	  查找页面URL匹配URL字符串的页面对象并返回，pattern中可包含通配符（?,*）
--web.Navigate(p, url) 在指定的页面对象p里导航到url指定的网址，成功返回true，否则返回false
--web.ClosePage(p)		 关闭页面对象p指定的窗口
--web.ExecuteScript(p, sc)	在指定的页面对象p里执行js脚本。js脚本的内容在sc字符串里
--web.PutResult(k,v)	 在当前环境下（可跨页面）将字符串v存储到k键下，此环境和js执行环境下的external.put_result(k,v)扩展函数是一致的，可以用来在两种语言里传递数据
--web.GetResult(k)		 在当前环境下（可跨页面）获取k键下存储的字符串值，此环境和js执行环境下的external.gut_result(k)扩展函数是一致的，可以用来在两种语言里传递数据
--web.IsDocumentCompleted(p)	判断页面对象p里的文档载入完成
--web.IsNavigateError(p)	判断页面对象p导航是否出错
--web.OnShowMessage(func)	设置当前环境下网页对话框弹出事件的回调函数，func就是设置的回调函数（如果为nil则取消回调）。
-------对话框弹出事件回调函数原型是：function ShowMessageCallback(p, caption, message, type)  回调函数返回的结果是按下按钮的资源ID（详见“对话框输出结果常量”的定义）
-------回调函数运行环境和正常执行流程不在同一个环境空间下，如果要和主程序空间通讯请使用web.PutResult和web.GetResult。
--web.Wait(ms)			 	 等待ms毫秒后继续执行后续代码
--web.IsElementExist(p,name)	判定指定页面里是否存在name描述的DOM文档对象。name用'.'号连接对象和成员的ID号，最后一个成员如果变量名里含'.'号，可以用'@'号替代。可支持多个对象，对象间用','或';'分隔。
--web.GetNewPage(page,min_ms)	获取最新创建的页面（如果page不为nil，那么这个新页面必须是page的子页面，否则可以是任意页面），且满足创建时间在当前时间前min_ms毫秒之后。
--web.IsTimeout(t)		 判断超时器t是否超时
--web.NewTimeout(ms)	 创建ms毫秒后超时的超时器
--web.Refresh(p)			 刷新页面对象p

--以下为函数部分
--以下为函数部分
function OnShowDialogHtml(page, url, name, flags)
	if (page ~=nil) then
		sys.DBGPrint(page);
		sys.DBGPrint("\r\n");
	end
	if (url ~=nil) then
		sys.DBGPrint(url);
		sys.DBGPrint("\r\n");
	end
	if (name ~=nil) then
		sys.DBGPrint(name);
		sys.DBGPrint("\r\n");
	end
	if (flags ~=nil) then
		sys.DBGPrint(flags);
		sys.DBGPrint("\r\n");
	end
	return false;	-- 禁止所有窗口网页弹出
end
--禁止系统弹出框
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("截获到系统对话框[%s, dwType=%d]，强制返回继续！\r\n", caption, type);
	type = type % 16;
	pos,_=string.find(message,"是否复制");
	if (message ~= nil) then
		sys.DBGPrint("对话消息%s！\r\n", message);
		if (string.match(message,"投保了同类型的险种") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"保险止期必须大于保险起期") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"USBKEY") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"设备信息与绑定信息不符") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"打开.*错误") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"请计算保费") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"查询参数不正确") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"未查到此车辆信息") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"使用性质不能") ~= nil) then
			web.PutResult("msg",message);
		end
		-- 重启vpn
		if (string.match(message,"已登陆") ~= nil) then
			web.PutResult("vpnmsg",message);
		end
		if (string.match(message,"VPN正在工作") ~= nil) then
			web.PutResult("vpnmsg",message);
		end
		
	end
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
			if not WaitForObjectLoaded(page, "overridelink") then
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
function login(page)
	local user, password, url, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "用户名或密码为空"; 
	end
	if not web.Navigate(page, "http://10.134.136.48/") then
		return false, "无法导航到人保首页";
	end
	if not WaitForDocumentCompleted(page) then
		return false, "导航失败";
	end
	title = web.GetPageTitle(page);
	if title == nil then
		return false, "无法获取标题";
	end
	pos, _ = string.find(title, "PICC");
	if pos == nil then
		return false, "无法识别的标题["..title.."]";
	end
	url = web.GetPageURL(page);
	if (url == nil) then
		return false, "无法获取首页URL地址";
	end
	pos,_=string.find(url, "/login?");
	if (pos == nil) then
		pos,_=string.find(url, "/portal/");
		if (pos == nil) then
			sys.DBGPrint("当前导航到的地址是[%s]！\r\n", url);
			return false, error;
		else
			return true, "成功";
		end
	end
	WaitForObjectLoaded(page, "document.getElementById(\"username1\");document.getElementById(\"password1\");document.getElementById(\"button\")");
	web.PutResult("username", user);
	web.PutResult("password", password);
	if (not web.ExecuteScript(page, "document.getElementById(\"username1\").value=external.get_result(\"username\");\r\n\
								document.getElementById(\"password1\").value=external.get_result(\"password\");\r\n\
								document.getElementById(\"button\").click();")) then
		return false, "执行登录脚本失败！";
	end
	while true do
		url1 = web.GetPageURL(page);
		if url1 ~= url then
			break;
		end
		web.Wait(1);
	end
	WaitForDocumentCompleted(page);
	url = web.GetPageURL(page);
	if (url == nil) then
		return false, "无法获取页面URL地址";
	end
	pos,_ = string.find(url, "/index.jsp?");
	if (pos == nil) then
		return false, "登录到了未知页面["..url.."]";
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


--自动核保
function auto_check(req)
	local page, err, ret, desk2, engine, cls, model, vin, num, tm, qiangNo, shangNo;
	sys.DBGPrint("发现核保[%s]的请求！\r\n", req.para);
	startTime = web.GetTickCount();
	sys.DBGPrint()
	
	--为错误信息备用
	req.para = json.Set(req.para, "/insurance/complete", 1);
	
	car = json.Get(req.para, "/car");
	insuredPerson = json.Get(req.para, "/insured person");
	insurer = json.Get(req.para, "/insurer");
	insurance = json.Get(req.para, "/insurance");
	--初始化msg
	web.PutResult('msg',"无错误信息");
	if car == nil then
		car = "";
	else
		car = "\"car\":"..car..",";
	end
	if insuredPerson == nil then
		insuredPerson = "";
	else
		insuredPerson = "\"insured person\":"..insuredPerson..",";
	end
	if insurer == nil then
		insurer = "";
	else
		insurer = "\"insurer\":\""..insurer.."\",";
	end
	
	--进入出单界面
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("新建页面失败！\r\n");
		req:complete("{\"error\":-2,\"msg\":\"创建页面失败\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
		return false;
	end
	ret, err = login(page, req);
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("登录返回结果[%s]！\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
		return false;
	end
	if web.GetUserName() ~= nil then
		sys.DBGPrint("登录名"..web.GetUserName().."\r\n");
	end
	if web.GetPassword() ~= nil then
		sys.DBGPrint("密码"..web.GetPassword().."\r\n");
	end
	
	
	desk, err = opendesk(page);
	web.ClosePage(page);
	if desk == nil then
		sys.DBGPrint("打开工作台失败[%s]！\r\n", err);
		req:complete("{\"error\":-4,\"msg\":\""..err.."\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
		return false;
	end
	WaitForObjectLoaded(desk, "main.page.document.getElementById('quick_4S')");
	web.PutResult("result","");
	if not web.ExecuteScript(desk, "var obj = main.page.document.getElementById('quick_4S');\r\n\
								if(obj){\r\n\
										obj.click();\r\n\
					 					external.put_result('result', '1');\r\n\
								}") then
			web.ClosePage(desk);
			sys.DBGPrint("执行点击车商渠道脚本失败！\r\n");
			req:complete("{\"error\":-5,\"msg\":\"执行点击车商渠道脚本失败\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
			return false;
	end
	ret = web.GetResult("result");
	if (ret == nil) then
			web.ClosePage(desk);
			sys.DBGPrint("网页未能完全加载！\r\n");
			req:complete("{\"error\":-6,\"msg\":\"网页未能完全加载\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
			return false;
	end
	WaitForDocumentCompleted(desk);
	sys.DBGPrint("进入出单页面，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--json
	web.PutResult("plate_no", "");
	if (json.Get(req.para,"/car/plate_no") ~= nil) then
		web.PutResult("plate_no", json.Get(req.para,"/car/plate_no"));
	end

	web.PutResult("engine_no",  "");
	if (json.Get(req.para,"/car/engine_no") ~= nil) then
		web.PutResult("engine_no", json.Get(req.para,"/car/engine_no"));
	end

	web.PutResult("vin",  "");
	if (json.Get(req.para,"/car/vin") ~= nil) then
		web.PutResult("vin", json.Get(req.para,"/car/vin"));
	end

	web.PutResult("register_date", "");
	if (json.Get(req.para,"/car/register_date") ~= nil) then
		web.PutResult("register_date", json.Get(req.para,"/car/register_date"));
	end
	--[[
	if (json.Get(req.para,"/insured person/id_no") ~= nil) then
		web.PutResult("id_no", json.Get(req.para,"/insured person/id_no"));
	end
	]]--
	
	web.PutResult("id_no", "");

	if (json.Get(req.para,"/insured person/id_no") ~= nil) then
		web.PutResult("id_no", json.Get(req.para,"/insured person/id_no"));
		print("insured person.id_no:");
		print(web.GetResult("id_no"));
	else	
		if (json.Get(req.para,"/insured/id_no") ~= nil) then
			web.PutResult("id_no", json.Get(req.para,"/insured/id_no"));
			print("insured.id_no:");
			print(web.GetResult("id_no"));
		end
	end
	
	web.PutResult("owner_id_no", "");
	if (json.Get(req.para,"/car/owner/id_no") ~= nil) then
		web.PutResult("owner_id_no", json.Get(req.para,"/car/owner/id_no"));
	end
	
	-- web.PutResult("id_no", "512927197611165190");
	web.PutResult("insurer", "");
	if (json.Get(req.para,"/insurer") ~= nil) then
		web.PutResult("insurer", json.Get(req.para,"/insurer"));
	end

	web.PutResult("qiang", "");
	if (json.Get(req.para,"/insurance/jiaoqiang") == "1") then
		sys.DBGPrint("qiang\r\n");
		web.PutResult("qiang", json.Get(req.para,"/insurance/jiaoqiang"));
		if (json.Get(req.para,"/insurance/qiangDateStart") ~= nil) then
			web.PutResult("qiangDateStart", json.Get(req.para,"/insurance/qiangDateStart"));
		end	
		if (json.Get(req.para,"/insurance/qiangDateEnd") ~= nil) then
			web.PutResult("qiangDateEnd", json.Get(req.para,"/insurance/qiangDateEnd"));	
		end
	end


	
	web.PutResult("chesun","");
	if (json.Get(req.para,"/insurance/chesun") ~= nil) then
		sys.DBGPrint("chesun\r\n");
		web.PutResult("chesun", json.Get(req.para,"/insurance/chesun"));
		if (json.Get(req.para,"/insurance/chesun/buji") ~= nil) then
			web.PutResult("chesunbuji", json.Get(req.para,"/insurance/chesun/buji"));
		end
	end

	

	
	web.PutResult("daoqiang", "");	
	if (json.Get(req.para,"/insurance/daoqiang") ~= nil) then
		sys.DBGPrint("daoqiang\r\n");
		web.PutResult("daoqiang", json.Get(req.para,"/insurance/daoqiang"));	
		if (json.Get(req.para,"/insurance/daoqiang/buji") ~= nil) then
		web.PutResult("daoqiangbuji", json.Get(req.para,"/insurance/daoqiang/buji"));
		end
	end

	
	web.PutResult("sanzhe", "");
	if(json.Get(req.para,"/insurance/sanzhe") ~= nil) then
		sys.DBGPrint("sanzhe\r\n");
		web.PutResult("sanzhe", json.Get(req.para,"/insurance/sanzhe"));
		if(json.Get(req.para,"/insurance/sanzhe/baoe") ~= nil) then
		web.PutResult("sanzhebaoe", json.Get(req.para,"/insurance/sanzhe/baoe"));
		end
		if(json.Get(req.para,"/insurance/sanzhe/buji") ~= nil) then
		web.PutResult("sanzhebuji", json.Get(req.para,"/insurance/sanzhe/buji"));
		end
	end

	
	web.PutResult("siji", "");
	if(json.Get(req.para,"/insurance/siji") ~= nil) then
		sys.DBGPrint("siji\r\n");
		web.PutResult("siji", json.Get(req.para,"/insurance/siji"));
		if(json.Get(req.para,"/insurance/siji/baoe") ~= nil) then
		web.PutResult("sijibaoe", json.Get(req.para,"/insurance/siji/baoe"));
		end
		if(json.Get(req.para,"/insurance/siji/buji") ~= nil) then
		web.PutResult("sijibuji", json.Get(req.para,"/insurance/siji/buji"));
		end
	end


	
	web.PutResult("chengke", "");
	if(json.Get(req.para,"/insurance/chengke") ~= nil) then
		sys.DBGPrint("chengke\r\n");
		web.PutResult("chengke", json.Get(req.para,"/insurance/chengke"));
		if(json.Get(req.para,"/insurance/chengke/buji") ~= nil) then
		web.PutResult("chengkebuji", json.Get(req.para,"/insurance/chengke/buji"));
		end
		if(json.Get(req.para,"/insurance/chengke/unit") ~= nil) then
		web.PutResult("chengkeunit", json.Get(req.para,"/insurance/chengke/unit"));
		end
	end


	
	web.PutResult("huahen", "");
	if(json.Get(req.para,"/insurance/huahen") ~= nil) then
		sys.DBGPrint("huahen\r\n");
		web.PutResult("huahen", json.Get(req.para,"/insurance/huahen"));
		if(json.Get(req.para,"/insurance/huahen/baoe") ~= nil) then
		web.PutResult("huahenbaoe", json.Get(req.para,"/insurance/huahen/baoe"));
		end
		if(json.Get(req.para,"/insurance/huahen/buji") ~= nil) then
		web.PutResult("huahenbuji", json.Get(req.para,"/insurance/huahen/buji"));
		end	
	end

	
	web.PutResult("boli", "");
	if(json.Get(req.para,"/insurance/boli") ~= nil) then
		sys.DBGPrint("boli\r\n");
		web.PutResult("boli", json.Get(req.para,"/insurance/boli"));
		if(json.Get(req.para,"/insurance/boli/baoe") ~= nil) then
			web.PutResult("bolibaoe", json.Get(req.para,"/insurance/boli/baoe"));
		end
	end
	
	web.PutResult("zhiding", "");
	if(json.Get(req.para,"/insurance/zhiding") ~= nil) then
		web.PutResult("zhiding", json.Get(req.para,"/insurance/zhiding"));
	end
	sys.DBGPrint("zhiding\r\n");

	web.PutResult("sanfang", "");
	if(json.Get(req.para,"/insurance/sanfang") ~= nil) then
		web.PutResult("sanfang", json.Get(req.para,"/insurance/sanfang"));
	end
	sys.DBGPrint("sanfang\r\n");

	web.PutResult("ziran", "");
	if(json.Get(req.para,"/insurance/ziran") ~= nil) then
		sys.DBGPrint("ziran\r\n");
		web.PutResult("ziran", json.Get(req.para,"/insurance/ziran"));
		if(json.Get(req.para,"/insurance/ziran/buji") ~= nil) then
			web.PutResult("ziranbuji", json.Get(req.para,"/insurance/ziran/buji"));
		end
	end	
	web.PutResult("sheshui", "");
	if(json.Get(req.para,"/insurance/sheshui") ~= nil) then
		sys.DBGPrint("ziran\r\n");
		web.PutResult("sheshui", json.Get(req.para,"/insurance/sheshui"));
		if(json.Get(req.para,"/insurance/sheshui/buji") ~= nil) then
			web.PutResult("sheshuibuji", json.Get(req.para,"/insurance/sheshui/buji"));
		end
	end

	web.PutResult("shang", "");
	if(json.Get(req.para,"/insurance/shang") == "1") then
		sys.DBGPrint("shang\r\n");
		web.PutResult("shang", json.Get(req.para,"/insurance/shang"));
		if(json.Get(req.para,"/insurance/shangDateStart") ~= nil) then
			web.PutResult("shangDateStart", json.Get(req.para,"/insurance/shangDateStart"));
		end
		if(json.Get(req.para,"/insurance/shangDateEnd") ~= nil) then
			web.PutResult("shangDateEnd",  json.Get(req.para,"/insurance/shangDateEnd"));
		end
	end

	
	sys.DBGPrint("解析json完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	--车牌信息
	tm00 = web.NewTimeout(10000);	
	repeat
		--取出核保信息并赋值给texti
		web.Wait(500);	
		plateNoFill = web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCitemCar.licenseNo').value = external.get_result('plate_no');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.engineNo').value = external.get_result('engine_no');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.frameNo').value = external.get_result('vin');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.enrollDate').value = external.get_result('register_date');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.licenseNo').onchange();\r\n\
									")
		sys.DBGPrint("正在填充车牌，请稍后！\r\n");
	until(plateNoFill or web.IsTimeout(tm00))
	if plateNoFill then
		sys.DBGPrint("车牌填充完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk);
		sys.DBGPrint("车牌信息填充错误！\r\n");
		req:complete("{\"error\":-711,\"msg\":\"车牌信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	tm0 = web.NewTimeout(20000);
	repeat
		web.Wait(500);
		if not	web.ExecuteScript(desk, "external.put_result('en',main.page.fm.document.getElementById('prpCitemCar.engineNo').value);\r\n\
										external.put_result('fn',main.page.fm.document.getElementById('prpCitemCar.frameNo').value);\r\n\
										external.put_result('ed',main.page.fm.document.getElementById('prpCitemCar.enrollDate').value);\r\n\
										external.put_result('msg', external.get_result('msg'));\r\n\
										") then
			sys.DBGPrint("车牌信息自动填充错误！\r\n");
			req:complete("{\"error\":-712,\"msg\":\"车牌信息自动填充错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		msg = web.GetResult("msg");
		if (string.match(msg,"未查到此车辆信息") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("核保失败,原因："..msg.."\r\n");
				req:complete("{\"error\":-7121,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		en = web.GetResult("en");
		fn = web.GetResult("fn");
		ed = web.GetResult("ed");
		sys.DBGPrint("车牌填充中，请稍后！\r\n");
	until ((en ~= nil and fn ~= nil and ed ~= nil) or web.IsTimeout(tm0))
	if (en == nil or fn == nil or ed == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("车牌填充失败！\r\n");
		if(string.match(msg,"无错误") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-713,\"msg\":\"车牌填充失败!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("车牌自动填充完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--替换自动填充的车牌信息
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCitemCar.engineNo').value = external.get_result('engine_no');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.engineNo').onchange();\r\n\
									main.page.fm.document.getElementById('prpCitemCar.frameNo').value = external.get_result('vin');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.frameNo').onchange();\r\n\
									main.page.fm.document.getElementById('prpCitemCar.enrollDate').value = external.get_result('register_date');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.enrollDate').onchange();\r\n\
									") then
		sys.DBGPrint("替换自动填充的车牌信息错误！\r\n");
		req:complete("{\"error\":-7131,\"msg\":\"替换自动填充的车牌信息错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	web.Wait(500);

	if not	web.ExecuteScript(desk, "if(main.page.fm.document.getElementById('CarKindCodeDes').value='其他车辆'){\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').value='A01';\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').onblur();\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').onchange();}\r\n\
									main.page.fm.document.getElementById('searchByJY').click();//点查\r\n\
									") then
			web.ClosePage(desk);	
			sys.DBGPrint("车牌信息查询及修正错误！\r\n");
			req:complete("{\"error\":-714,\"msg\":\"车牌信息查询及修正错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	tm1 = web.NewTimeout(20000);
	repeat
		web.Wait(500);
		if not	web.ExecuteScript(desk, "external.put_result('inn',main.page.fm.document.getElementById('prpCinsureds[0].insuredName').value);\r\n\
										") then
			sys.DBGPrint("车牌信息查询错误！\r\n");
			req:complete("{\"error\":-715,\"msg\":\"车牌信息查询错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		inn = web.GetResult("inn");
		sys.DBGPrint("车牌信息查询中，请稍后！\r\n");
	until ((inn ~= nil) or web.IsTimeout(tm1))
	if (inn == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("车牌信息查询失败！\r\n");
		if(string.match(msg,"无错误") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-716,\"msg\":\"车牌信息查询失败!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("车牌信息查询完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--匹配险种	
	
	if not	web.ExecuteScript(desk, "if(external.get_result('chesun') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[0].chooseFlag').click();\r\n\
										if(external.get_result('chesunbuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[0].specialFlag').click();\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('qiang') == '1'){\r\n\
										main.page.fm.document.getElementById('prpCitemKindCI.familyNo').click();\r\n\
										if(external.get_result('qiangDateStart') != ''){\r\n\
											main.page.fm.document.getElementById('prpCmainCI.startDate').value = external.get_result('qiangDateStart');\r\n\
											main.page.fm.document.getElementById('prpCmainCI.startDate').onchange();\r\n\
										}\r\n\
										if(external.get_result('qiangDateEnd') != ''){\r\n\
											main.page.fm.document.getElementById('prpCmainCI.endDate').value = external.get_result('qiangDateEnd');\r\n\
											main.page.fm.document.getElementById('prpCmainCI.endDate').onchange();\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('shangDateStart') != ''){\r\n\
										main.page.fm.document.getElementById('prpCmain.startDate').value = external.get_result('shangDateStart');\r\n\
										main.page.fm.document.getElementById('prpCmain.startDate').onchange();\r\n\
									}\r\n\
									if(external.get_result('shangDateEnd') != ''){\r\n\
										main.page.fm.document.getElementById('prpCmain.endDate').value = external.get_result('shangDateEnd');\r\n\
										main.page.fm.document.getElementById('prpCmain.endDate').onchange();\r\n\
									}\r\n\
									if(external.get_result('daoqiang') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[1].chooseFlag').click();\r\n\
										if(external.get_result('daoqiangbuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[1].specialFlag').click();\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('sanzhe') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[2].chooseFlag').click();\r\n\
										if(external.get_result('sanzhebuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[2].specialFlag').click();\r\n\
										}\r\n\
										if(external.get_result('sanzhebaoe') != ''){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[2].amount').value = external.get_result('sanzhebaoe');\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('siji') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[3].chooseFlag').click();\r\n\
										if(external.get_result('sijibuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[3].specialFlag').click();\r\n\
										}\r\n\
										if(external.get_result('sijibaoe') != ''){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[3].amount').value = external.get_result('sijibaoe');\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('chengke') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[4].chooseFlag').click();\r\n\
										if(external.get_result('chengkebuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[4].specialFlag').click();\r\n\
										}\r\n\
										if(external.get_result('chengkeunit') != ''){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[4].unitAmount').value = external.get_result('chengkeunit');\r\n\
										}\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[4].unitAmount').onchange();\r\n\
									}\r\n\
									if(external.get_result('huahen') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[5].chooseFlag').click();\r\n\
										if(external.get_result('huahenbuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[5].specialFlag').click();\r\n\
											}\r\n\
									}\r\n\
									switch (external.get_result('huahenbaoe'))\r\n\
										{\r\n\
										case '2000':\r\n\
											main.page.fm.document.getElementsByName('prpCitemKindsTemp[5].amount')[0].options[0].selected=true;\r\n\
											break;\r\n\
										case '5000':\r\n\
											main.page.fm.document.getElementsByName('prpCitemKindsTemp[5].amount')[0].options[1].selected=true;\r\n\
											break;\r\n\
										case '10000':\r\n\
											main.page.fm.document.getElementsByName('prpCitemKindsTemp[5].amount')[0].options[2].selected=true;\r\n\
											break;\r\n\
										case '20000':\r\n\
											main.page.fm.document.getElementsByName('prpCitemKindsTemp[5].amount')[0].options[3].selected=true;\r\n\
											break;\r\n\
										default:\r\n\
											main.page.fm.document.getElementsByName('prpCitemKindsTemp[5].amount')[0].options[0].selected=true;\r\n\
											break;\r\n\
										}\r\n\
									if(external.get_result('boli') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[6].chooseFlag').click();\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[6].chooseFlag').onchange();\r\n\
										switch(external.get_result('bolibaoe')){\r\n\
											case '国产玻璃':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[0].selected=true;\r\n\
												break;\r\n\
											case '国产玻璃(特殊材质)':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[1].selected=true;\r\n\
												break;\r\n\
											case '进口玻璃':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[2].selected=true;\r\n\
												break;\r\n\
											case '进口玻璃（特殊材质)':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[3].selected=true;\r\n\
												break;\r\n\
											//default:\r\n\
											//	main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[0].selected=true;\r\n\
										}\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').onchange();\r\n\
									}\r\n\
									if(external.get_result('zhiding') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[7].chooseFlag').click();\r\n\
									}\r\n\
									if(external.get_result('ziran') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[8].chooseFlag').click();\r\n\
										if(external.get_result('ziranbuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[8].specialFlag').click();\r\n\
										}\r\n\
									}\r\n\
									if(external.get_result('sheshui') != ''){\r\n\
										main.page.fm.document.getElementById('prpCitemKindsTemp[9].chooseFlag').click();\r\n\
										if(external.get_result('sheshuibuji') != '1'){\r\n\
											main.page.fm.document.getElementById('prpCitemKindsTemp[9].specialFlag').click();\r\n\
										}\r\n\
									}\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("匹配险种错误！\r\n");
			req:complete("{\"error\":-721,\"msg\":\"执行核保错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	if (chesun ~= nil) then
		if (sanfang ~= nil) then
			if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('btn_add_kindSub').click();\r\n\
								") then
					web.ClosePage(desk);
					sys.DBGPrint("新增险种失败！\r\n");
					req:complete("{\"error\":-722,\"msg\":\"新增险种失败!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
			end	
			tm51 = web.NewTimeout(20000);	
			repeat
				web.Wait(100);
				web.PutResult("flag","");
				web.ExecuteScript(desk, "main.page.document.getElementById('prpCitemKindsTemp[21].kindCode').value='050451';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].kindName').value='机动车损失保险无法找到第三方特约险';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].calculateFlag').value='N32N000';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].clauseCode').value='050064';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].flag').value='200000';\r\n\
											external.put_result('flag','1');\r\n\
									")
				sys.DBGPrint("正在新增险种，请稍后！\r\n");
				flag = web.GetResult("flag");
			until((flag == '1') or web.IsTimeout(tm51))	
			if flag == '1' then
				sys.DBGPrint("新增险种完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
			else
				web.ClosePage(desk);
				sys.DBGPrint("新增险种错误！\r\n");
				req:complete("{\"error\":-723,\"msg\":\"新增险种错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
		end
	end

	
	--投保人信息
	--投保人 被保人 车主信息
	if web.GetResult('id_no') then
		sys.DBGPrint('id_no存在');
		sys.DBGPrint(web.GetResult('id_no'))
		sys.DBGPrint('/r/n owner_id_no:');
		sys.DBGPrint(web.GetResult('owner_id_no'))
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementsByName('btn_deleteInsured')['1'].click();//'512927197611165190';//\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("删除信息错误！\r\n");
					req:complete("{\"error\":-7310,\"msg\":\"删除信息错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		web.Wait(50);
		sys.DBGPrint('删除成功');
		if not	web.ExecuteScript(desk, "doc = main.page.fm.document.getElementsByName('_insuredFlag');\r\n\
											doc['0'].click();\r\n\
											doc['1'].click();\r\n\
											main.page.fm.document.getElementById('insertInsuredBtn').click();\r\n\
											main.page.fm.document.getElementById('prpCinsureds[1].identifyNumber').value = external.get_result('id_no');//'512927197611165190';\r\n\
											main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("被保人信息填充错误！\r\n");
					req:complete("{\"error\":-7311,\"msg\":\"被保人信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		-- web.Wait(50);
		tm51 = web.NewTimeout(20000);	
		flag = '';
		repeat
			web.Wait(100);
			web.PutResult("flag","");
			web.ExecuteScript(desk, "external.put_result('flag',main.page.fm.document.getElementById('prpCinsureds[1].insuredName').value);\r\n\
								")
			sys.DBGPrint("正在新增投保人及被保险人，请稍后！\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("投保人及被保险人增加成功");
				break;
			end
		until(web.IsTimeout(tm51))	
		if flag == nil then
			web.ClosePage(desk);
			sys.DBGPrint("新增投保人及被保险人错误！\r\n");
			req:complete("{\"error\":-73111,\"msg\":\"新增投保人及被保险人错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		-- web.Wait(50);
		sys.DBGPrint('新增投保人及被保险人成功\r\n');
		
		if not	web.ExecuteScript(desk, "doc = main.page.fm.document.getElementsByName('_insuredFlag');\r\n\
											doc['0'].click();\r\n\
											doc['1'].click();\r\n\
											doc['2'].click();\r\n\
											main.page.fm.document.getElementById('insertInsuredBtn').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("车主信息错误！\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"车主信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;
		end
		sys.DBGPrint('新增车主信息成功1\r\n');
		web.Wait(50);
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCinsureds[2].identifyNumber').value = external.get_result('owner_id_no');//'512927197611165190';\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("车主信息填充错误！\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"车主信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		sys.DBGPrint('新增车主信息成功2\r\n');
		web.Wait(50)
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("车主信息填充错误！\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"车主信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		sys.DBGPrint('新增车主信息成功3\r\n');
		
		tm51 = web.NewTimeout(20000);	
		flag = '';
		repeat
			web.Wait(100);
			web.PutResult("flag","");
			web.ExecuteScript(desk, "external.put_result('flag',main.page.fm.document.getElementById('prpCinsureds[2].insuredName').value);\r\n\
								")
			sys.DBGPrint("正在新增车主，请稍后！\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("车主增加成功");
				break;
			end
		until(web.IsTimeout(tm51))	
		if flag == nil then
			web.ClosePage(desk);
			sys.DBGPrint("新增车主错误！\r\n");
			req:complete("{\"error\":-73111,\"msg\":\"新增车主错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		sys.DBGPrint('新增车主成功\r\n');
	else
		sys.DBGPrint('无被保人信息/r/n')
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCinsureds[0].insuredName').value = '';//去掉姓名\r\n\
									main.page.fm.document.getElementById('prpCinsureds[0].identifyNumber').value = '512927197611165190';//'512927197611165190';//\r\n\
									main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("被保人信息填充错误！\r\n");
			req:complete("{\"error\":-731,\"msg\":\"被保人信息填充错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;	
		end
	end
	web.Wait(2000);--等待险种匹配
	sys.DBGPrint("被保人信息填充及匹配险种完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--计算保费
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonPremium_1').click();//计算保费\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("计算保费错误！\r\n");
			req:complete("{\"error\":-741,\"msg\":\"计算保费错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	tm2 = web.NewTimeout(30000);
	repeat
		web.Wait(500);
		if not	web.ExecuteScript(desk, "external.put_result('sunnumber',main.page.fm.document.getElementById('sunnumber').value);\r\n\
									external.put_result('msg', external.get_result('msg'));\r\n\
									") then
			sys.DBGPrint("保费计算中,请稍后！\r\n");
			req:complete("{\"error\":-742,\"msg\":\"保费信息提取错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		msg = web.GetResult("msg");
		
		if (string.match(msg,"投保了同类型的险种") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-743,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"保险止期必须大于保险起期") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-744,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"USBKEY") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-745,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"设备信息与绑定信息不符") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-746,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"查询参数不正确") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-747,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"使用性质不能") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-748,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		sunnumber = web.GetResult("sunnumber");--总保费
		sys.DBGPrint("保费计算中,请稍后！\r\n");
	until ((sunnumber ~= '0' and sunnumber ~= nil) or web.IsTimeout(tm2))
	if(sunnumber == '0') then
		web.ClosePage(desk);
		sys.DBGPrint("保费计算失败！\r\n");
		if(string.match(msg,"无错误") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-7491,\"msg\":\"保费计算失败！"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("保费计算完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	sys.DBGPrint("保费总额："..sunnumber.."\r\n");
	--保存保单
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonSave').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("保存保单错误！\r\n");
			req:complete("{\"error\":-751,\"msg\":\"保存保单错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end	
	if (web.GetResult("shang") == '1') then
		--确定商业险保单是否保存成功
		tm3 = web.NewTimeout(30000);
		repeat
			web.Wait(200);
			if not	web.ExecuteScript(desk, "external.put_result('shangdanhao',main.page.fm.document.getElementById('prpCmain.proposalNo').value);\r\n\
										external.put_result('msg', external.get_result('msg'));\r\n\
										") then
				sys.DBGPrint("保存商业险保单错误！\r\n");
				req:complete("{\"error\":-752,\"msg\":\"保存商业险保单错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
			
			msg = web.GetResult("msg");
			if (string.match(msg,"请计算保费") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("核保失败,原因："..msg.."\r\n");
				req:complete("{\"error\":-748,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			end
			
			shangNo = web.GetResult("shangdanhao");
			sys.DBGPrint("商业险保单保存中，请稍后！\r\n");
		until ((shangNo ~= nil) or web.IsTimeout(tm3))
		
		if(shangNo == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("商业险保单保存失败！\r\n");
		if(string.match(msg,"无错误") ~= nil) then--待测试是否有效
			msg = '';
		end
		req:complete("{\"error\":-753,\"msg\":\"商业险保单保存失败!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
		end
	end

	
	
	if (web.GetResult("qiang") == '1') then
		--确定交强险保单是否保存成功
		tm4 = web.NewTimeout(30000);
		repeat
			web.Wait(200);
			if not	web.ExecuteScript(desk, "external.put_result('qiangdanhao',main.page.fm.document.getElementById('prpCmainCI.proposalNo').value);\r\n\
										external.put_result('msg', external.get_result('msg'));\r\n\
										") then
				sys.DBGPrint("保存交强险保单错误！\r\n");
				req:complete("{\"error\":-754,\"msg\":\"保存交强险保单错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
			
			msg = web.GetResult("msg");
			if (string.match(msg,"请计算保费") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("核保失败,原因："..msg.."\r\n");
				req:complete("{\"error\":-749,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			end
			
			qiangNo = web.GetResult("qiangdanhao");
			sys.DBGPrint("交强险保单保存中，请稍后！\r\n");
		until ((qiangNo ~= nil) or web.IsTimeout(tm4))
		if(qiangNo == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("交强险保单保存失败！\r\n");
		if(string.match(msg,"无错误") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-755,\"msg\":\"交强险保单保存失败!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
		end
	end
	
	
	--将商业保单号和交强保单号存入req.para--
	if shangNo ~= nil then
		req.para = json.Set(req.para, "/insurance/shangNumber", shangNo);
	end
	if qiangNo ~= nil then
		req.para = json.Set(req.para, "/insurance/qiangNumber", qiangNo);
	end
	sys.DBGPrint("保单保存完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	--刷新insurance
	insurance = json.Get(req.para, "/insurance");
	--核保
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonSubmitUnw').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("点击核保错误！\r\n");
			req:complete("{\"error\":-761,\"msg\":\"点击核保错误！\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	sys.DBGPrint("点击核保完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm50 = web.NewTimeout(30000);	
	repeat
		--取出核保信息并赋值给texti
		web.Wait(500);	
		pageClick = web.ExecuteScript(desk, "main.page.fm.document.getElementsByTagName('a')[0].click();//\r\n\
									//alert(main.page.fm.document.getElementsByTagName('a'));\r\n\
									")
		sys.DBGPrint("正在点击打开核保详情页按钮，请稍后！\r\n");
	until(pageClick or web.IsTimeout(tm50))	
	if pageClick then
		sys.DBGPrint("点击打开核保详情页按钮完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk);
		sys.DBGPrint("点击打开核保详情页按钮错误！\r\n");
		req:complete("{\"error\":-711,\"msg\":\"点击打开核保详情页按钮错误!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end	
	sys.DBGPrint("点击打开核保详情页按钮成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");	
	tm53 = web.NewTimeout(10000);
	repeat

		desk2 = WaitForNewPage(desk, 500);
		sys.DBGPrint("等待核保详情页加载中，请稍后！")
	until(desk2 or web.IsTimeout(tm53))
	if  desk2 then
		sys.DBGPrint("打开核保详情页成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk2);
		sys.DBGPrint("打开核保详情页失败！\r\n");
		req:complete("{\"error\":-711,\"msg\":\"打开核保详情页失败!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end	
	web.ClosePage(desk);
	sys.DBGPrint("打开核保详情页成功");
	web.ClosePage(desk);

	tm5 = web.NewTimeout(20000);
	flag = nil
	repeat
		--取出核保信息并赋值给texti
		web.Wait(100);
		web.PutResult("flag","");
		web.ExecuteScript(desk2, "var obj= document.getElementsByTagName('textarea');\r\n\
								for(var i=0;i < obj.length;i++){\r\n\
								external.put_result('test'+i,obj[i].value);\r\n\
								external.put_result('msg', external.get_result('msg'));\r\n\
								external.put_result('flag','1');\r\n\}\r\n\
								")
		flag = web.GetResult("flag");
		msg = web.GetResult("msg");
		sys.DBGPrint("取数据中，请稍后！\r\n");
		if (string.match(msg,"打开.*错误") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("核保失败,原因："..msg.."\r\n");
			req:complete("{\"error\":-764,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end						
	until((flag == '1') or web.IsTimeout(tm5))

	if  flag == '1' then
		sys.DBGPrint("取核保详情成功，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk2);
		sys.DBGPrint("取核保详情失败！\r\n");
		req:complete("{\"error\":-765,\"msg\":\"取核保详情失败!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	web.ClosePage(desk2);
	sys.DBGPrint("取数据完成，总耗时："..((web.GetTickCount()-startTime)/1000).."\r\n");
	--json打包传出
	test0 = web.GetResult("test0");
	print(test0);
	test1 = web.GetResult("test1");
	print(test0);
	test2 = web.GetResult("test2");
	print(test0);
	print('/r/n')
	
	
	if test0 ~= nil then
		msg = test0;
	end
	if test1 ~= nil then
		msg = msg..test1;
	end
	if test2 ~= nil then
		msg = msg..test2;
	end
	sys.DBGPrint(msg);
	error = -8;
	if (string.match(msg,"核保通过") ~= nil) then
		error = 0;
	end
	ret = "{\"error\":"..error..",\"msg\":\""..msg.."\",";
	
	req.para = json.Set(req.para, "/insurance/complete", 1);
	insurance = json.Get(req.para, "/insurance");
	ret = ret..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}";
	sys.DBGPrint(ret);
	req:complete(ret);
	return true;
	
end
--vpn自动重启
function loginvpn()
	local url,pos,tm6;
	page2={};
	page2[web.Self()] = web.NewPage(true);
	print("1");
	if (page2[web.Self()] == nil) then
		return false,"新建页面失败！\r\n";
	end
	print("2");
	if not web.Navigate(page2[web.Self()], "https://202.108.173.89/portal_default/index1.html") then
		return false, "无法导航到vpn首页\r\n";
	end
	WaitForDocumentCompleted(page2[web.Self()], 20000)
	url = web.GetPageURL(page2[web.Self()]);
	if (url == nil) then
		return false, "无法获取首页URL地址\r\n";
	end
	if (url ~= "https://202.108.173.89/portal_default/index1.html") then
		return false, "无法导航到vpn首页\r\n";
	end
	if (not web.ExecuteScript(page2[web.Self()], "document.getElementById('name_1').value='zhonghuiguoji_cb';\r\n\
			document.getElementById('pwd_1').value='123456';\r\n\
			document.getElementById('submit_1').click();\r\n\
			")) then
		return false, "执行登录脚本失败！\r\n";
	end
	web.Wait(10000);
	tm6=web.NewTimeout(50000);
	repeat
		url = web.GetPageURL(page2[web.Self()]);
		if (url == nil) then
			return false, "无法获取首页URL地址\r\n";
		end
		pos,_ = string.find(url, "/vone");
		sys.DBGPrint("vpn登陆中请稍后！\r\n");
		web.Wait(500);
	until(pos ~= nil or web.IsTimeout(tm6))
	if (pos == nil) then
	return false, "登录到了未知页面["..url.."]\r\n";
	end
	tm7=web.NewTimeout(60000);
	repeat
		err3=web.IsVPNConnected();
		if (err3~=nil) then
			sys.DBGPrint(err3);
		end
		sys.DBGPrint("检测vpn是否确定登陆中请稍后！\r\n")
		web.Wait(500);
		vpnmsg = web.GetResult("vpnmsg");
		if (vpnmsg ~=nil) then
			if (string.match(vpnmsg,"已登陆") ~= nil) then
			--重启瑶瑶浏览器
			sys.DBGPrint("账号已登陆！\r\n");
			--登陆则不再循环
			return false,"账号已登陆\r\n";
			end
			if (string.match(vpnmsg,"vpn正在工作") ~= nil) then
				sys.DBGPrint("vpn正在工作！\r\n");
				return false,"ssl vpn正在工作\r\n";
			end
		end
	until(err3 or web.IsTimeout(tm7))
	if (page2[web.Self()]~=nil) then
		web.ClosePage(page2[web.Self()]);
	end
	return true,"人保vpn处理完成\r\n";
end


--主体函数，机器人运行时会自动调用此函数
function main()
	local req,err,msg,tm1,err2,tm3,tm4,err3,err4,t;
	sys.DBGPrint("脚本开始执行……\r\n");
	web.OnShowMessage("OnDialog");
	web.OnShowDialogHtml("OnShowDialogHtml");
	tm4=web.NewTimeout(0);
	t=0;
	sys.DBGPrint("脚本开始执行……\r\n");
	while web.IsRunning() do
	 --    if web.IsTimeout(tm4) and t<5 then
		--    sys.DBGPrint("开始检测人保vpn！\r\n");
		--    err3 = nil;
		--    err3=web.IsVPNConnected();
		--    print("err3");
		--    print(err3);
		--    print("\r\n");
		--    if not err3 then
		--        sys.DBGPrint("vpn不在线！\r\n");
		-- 	   web.PutResult("vpnmsg","");
		--        err4,message=loginvpn();
		-- 	   t = t + 1;
		-- 	   sys.DBGPrint("错误消息%s",message) ;
		-- 	   if not err4 then
		-- 	      sys.DBGPrint("vpn登录失败！\r\n");
		-- 	      web.ClosePage(page2[web.Self()]);
		-- 		  web.Wait(1000);
		-- 	   else
  --                 sys.DBGPrint("vpn登录成功！\r\n");			   
  --                 web.Wait(15000);   
		-- 	   end
  --              tm4=web.NewTimeout(0)				   
		--    else
		--        sys.DBGPrint("vpn一直在线！\r\n");
		-- 	   tm4=web.NewTimeout(180000);
		--    end
		-- end
		-- if (t>=5) then
		-- 	return false,"多次尝试登陆vpn失败！";
		-- end
		
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--查车牌
				inquire_car(req);
			else 
				if (req.type == 1) then
					--查历史保单
					req:complete("{\"error\":-1,\"msg\":\"不支持查历史保单\"}");
				else 
					if (req.type == 2) then
						--自动报价
						auto_quote(req);
					else 
						if (req.type == 3) then
							--自动核保
							startTime = web.GetTickCount();
							auto_check(req);
							endTime = web.GetTickCount();
							sys.DBGPrint("总耗时："..((endTime-startTime)/1000).."\r\n");
							else
							--未知的请求类型
							req:complete("{\"error\":-1,\"msg\":\"未知请求\"}");
						end
					end
				end
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("脚本退出\r\n");
end


