--[[�Ѿ������������&vpn�Զ�����&����         
	 

��
function main()
	local req,err,msg,tm,tm1,err2,tm3,tm4,err3,err4,t,t2;
	sys.DBGPrint("�ű���ʼִ�С���\r\n");
	web.OnShowMessage("OnDialog");
	tm=web.NewTimeout(0)
	tm4=web.NewTimeout(0)
	t=0
	t2=1
	while web.IsRunning() do
	    if web.IsTimeout(tm4) then
		   sys.DBGPrint("��ʼ����˱�vpn��\r\n")
		   err3=web.IsVPNConnected()
		   if not err3 then
		       sys.DBGPrint("vpn�����ߣ�\r\n")
		       err4,message=loginvpn()
			   sys.DBGPrint("������Ϣ%s",message) 
			   if not err4 then
			      sys.DBGPrint("vpn��¼ʧ�ܣ�\r\n") 
			      web.ClosePage(page2[web.Self()])
				  web.Wait(1000)
			   else
                  sys.DBGPrint("vpn��¼�ɹ���\r\n") 			   
                  web.Wait(15000)			   
			   end
			   t2=1
               tm4=web.NewTimeout(0)				   
		   else
		       sys.DBGPrint("vpn���ߣ�\r\n")
			   t2=0
			   tm4=web.NewTimeout(180000)
		   end
		end
	end
function longinVpn()
	local url,pos;
  page2[web.Self()] = web.NewPage(true);
  if (page2[web.Self()] == nil) then
		return false,"�½�ҳ��ʧ�ܣ�";
  end
  if not web.Navigate(page2[web.Self()], "https://114.255.11.98/prx/000/http/localhost/login") then
		return false, "�޷�������vpn��ҳ";
  end
  WaitForDocumentCompleted(page2[web.Self()], 20000)
  url = web.GetPageURL(page2[web.Self()]);
  if (url == nil) then
	return false, "�޷���ȡ��ҳURL��ַ";
  end
  if (url ~= "https://114.255.11.98/prx/000/http/localhost/login") then
		return false, "�޷�������vpn��ҳ";
  end
  if (not web.ExecuteScript(page2[web.Self()], "document.getElementsByName('uname')[0].value='yx2daili01'\r\n\
			document.getElementsByName('pwd')[0].value='cpicyx2'\r\n\
			document.getElementsByName('submitbutton')[0].click()")) then
		return false, "ִ�е�¼�ű�ʧ�ܣ�";
  end 
  web.Wait(15000)  
  WaitForDocumentCompleted(page2[web.Self()], 20000)
  url = web.GetPageURL(page2[web.Self()]);
  if (url == nil) then
	return false, "�޷���ȡ��ҳURL��ַ";
  end
  pos,_ = string.find(url, "/welcome");
  if (pos == nil) then
	return false, "��¼����δ֪ҳ��["..url.."]";
  end
  return true,"suc"
Զ�̣�
	���أ�192.168.1.105
	Server
	123
�ƣ�
	120.92.43.30
	�˺�kingsoft
	����Sun12xing45
vpn��
	https://202.108.173.89/portal_default/index1.html
	������VPN�˺ţ�zhonghuiguoji_cb
	���룺123456
]]--
--[[�ٶȺ��ȶ���
js����document�ĵ���
lua���������ݽṹ���Ż������е�ѭ������

]]--
--[[
SSL VPN���ڹ������벻Ҫ�ظ���¼��
]]

--��������ʹ�� 
--�����г���ȫ����ϵͳ���������ƺͺ��嶼��Ԥ������ˣ���Ҫ�޸����ǣ�ֻҪ����ʵ�����ȥ�޸����ǵ�ֵ�Ϳ����ˡ�
--�Ƿ�֧�ֳ��Ʋ�ѯ����
support_inquire_car = false;
--�Ƿ�֧����ʷ������ѯ
support_query_insurance_history = false;
--�Ƿ�֧���Զ�����
support_auto_quote = false;
--�Ƿ�֧���Զ��˱�
support_auto_submit = true;
--������IP��ַ�������չ�˾��ҳ��������VPNʱ����������Ϊnil��������Ҫ����������أ������ж��Ƿ��ܷ��ʱ��չ�˾��ҳ��
web_server_ip_address = "10.134.136.48";
--��ǰ�����˽������еĹ����߳���Ŀ(ȡֵ��Χ��1~10֮��)
suggest_work_threads_num = 1;
--���չ�˾����
insurer_type = "renbao";
--�Ƿ���ʾ����
show_window = true;
--��ǰ�ű���ȫ�����ơ�������Ψһ�ģ������������������ÿ���ű�
global_name = "�˱�ʾ��";
--ȫ�ֳ�ʱʱ��(��λ������)
global_timeout = 10000
--���չ�˾��������
global_region = "����";

--�Ի������������������
MB_OK = 0;
MB_OKCANCEL = 1;
MB_ABORTRETRYIGNORE = 2;
MB_YESNOCANCEL = 3;
MB_YESNO = 4;
MB_RETRYCANCEL = 5;
MB_CANCELTRYCONTINUE = 6;
--�Ի�����������������
IDOK = 1;
IDCANCEL = 2;
IDABORT = 3;
IDRETRY = 4;
IDIGNORE = 5;
IDYES = 6;
IDNO = 7;
IDTRYAGAIN = 10;
IDCONTINUE = 11;

--����json�����б�
--json.Valid(s)				 �ж�������s�����Ƿ�����Ч��JSON�ַ���
--json.Get(s, k)			 ����json��s��k������ֵ�����ַ�����ʽ���أ��������������ַ�������'/'��'\\'�ּ�����Ҫȡ��json��s����ֵΪ��"{'abc':{'a':'1', 'b':'2', 'c':'3'},'d':'4'}"�����һ����'abc'�µ��Ӽ�'b'��ֵ����дΪjget(s, "/abc/b")��
--json.Set(s, k, v)		 ����json��s��k������ֵΪv������������ַ�����ʽ���ء�
--json.Size(s, k)			 �ж�json��s��k������Ԫ�ظ�����Ҫ��s[k]���������͡�

--����ϵͳ�����б�
--sys.DBGPrint(fmt,...)			���������Ϣ��������C������printfһ�£�fmt�Ǹ�ʽ�ַ���(��printfһ�£��ɽ���%d��%c��%u��%o��%f��%p��%s�ȵ�)������ӱ�Ρ�

--����ҵ�����б�
--web.GetTickCount()   ���ص�ǰϵͳʱ�䣨�ӿ�����Ŀǰ��������ʱ�䣬�Ժ���Ϊ��λ��
--web.GetUserName()		 ���ص�ǰ���ڵ�¼���չ�˾��ҳ���û���
--web.GetPassword()		 ���ص�ǰ���ڵ�¼���չ�˾��ҳ������
--web.GetRequest()	 	 ���ص�ǰ�������ǰ�˵��������
------�������������³�Ա
--------id			 ���ͣ�C���󣩣���ʶ��
--------type     ���ͣ����ͣ���0 - �鳵�ƣ�1 - ����ʷ������2 - �Զ����ۣ�3 - �Զ��˱���
--------para		 ���ͣ��ַ�������ָʾ����Ĳ���������ǲ鳵����������������ǳ��ƣ����������������������������JSON����
--------complete(result) ���ͣ�����������ɵ�ǰ����
--web.IsRunning()			 ���ص�ǰ������Ƿ������еı�־
--web.Exit(reason)		 �˳���ǰ�Ľű�ִ�л�����reason���Բ�������������������˳�ԭ���ַ�����
--web.NewPage()				 �½�ҳ�棬�����ؽ�����ҳ�����
--web.GetPageCount()	 ��ȡҳ������
--web.GetPageAt(no)		 ��ȡ�����no��ҳ�����
--web.GetPageTitle(p)  ��ȡҳ�����p�ı���
--web.GetPageURL(p)		 ��ȡҳ�����p��URL
--web.FindPageByTitle(partten)	����ҳ�����ƥ������ַ�����ҳ����󲢷��أ�pattern�пɰ���ͨ�����?,*��
--web.FindPageByURL(partten)	  ����ҳ��URLƥ��URL�ַ�����ҳ����󲢷��أ�pattern�пɰ���ͨ�����?,*��
--web.Navigate(p, url) ��ָ����ҳ�����p�ﵼ����urlָ������ַ���ɹ�����true�����򷵻�false
--web.ClosePage(p)		 �ر�ҳ�����pָ���Ĵ���
--web.ExecuteScript(p, sc)	��ָ����ҳ�����p��ִ��js�ű���js�ű���������sc�ַ�����
--web.PutResult(k,v)	 �ڵ�ǰ�����£��ɿ�ҳ�棩���ַ���v�洢��k���£��˻�����jsִ�л����µ�external.put_result(k,v)��չ������һ�µģ��������������������ﴫ������
--web.GetResult(k)		 �ڵ�ǰ�����£��ɿ�ҳ�棩��ȡk���´洢���ַ���ֵ���˻�����jsִ�л����µ�external.gut_result(k)��չ������һ�µģ��������������������ﴫ������
--web.IsDocumentCompleted(p)	�ж�ҳ�����p����ĵ��������
--web.IsNavigateError(p)	�ж�ҳ�����p�����Ƿ����
--web.OnShowMessage(func)	���õ�ǰ��������ҳ�Ի��򵯳��¼��Ļص�������func�������õĻص����������Ϊnil��ȡ���ص�����
-------�Ի��򵯳��¼��ص�����ԭ���ǣ�function ShowMessageCallback(p, caption, message, type)  �ص��������صĽ���ǰ��°�ť����ԴID��������Ի����������������Ķ��壩
-------�ص��������л���������ִ�����̲���ͬһ�������ռ��£����Ҫ��������ռ�ͨѶ��ʹ��web.PutResult��web.GetResult��
--web.Wait(ms)			 	 �ȴ�ms��������ִ�к�������
--web.IsElementExist(p,name)	�ж�ָ��ҳ�����Ƿ����name������DOM�ĵ�����name��'.'�����Ӷ���ͳ�Ա��ID�ţ����һ����Ա����������ﺬ'.'�ţ�������'@'���������֧�ֶ�����󣬶������','��';'�ָ���
--web.GetNewPage(page,min_ms)	��ȡ���´�����ҳ�棨���page��Ϊnil����ô�����ҳ�������page����ҳ�棬�������������ҳ�棩�������㴴��ʱ���ڵ�ǰʱ��ǰmin_ms����֮��
--web.IsTimeout(t)		 �жϳ�ʱ��t�Ƿ�ʱ
--web.NewTimeout(ms)	 ����ms�����ʱ�ĳ�ʱ��
--web.Refresh(p)			 ˢ��ҳ�����p

--����Ϊ��������
--����Ϊ��������
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
	return false;	-- ��ֹ���д�����ҳ����
end
--��ֹϵͳ������
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("�ػ�ϵͳ�Ի���[%s, dwType=%d]��ǿ�Ʒ��ؼ�����\r\n", caption, type);
	type = type % 16;
	pos,_=string.find(message,"�Ƿ���");
	if (message ~= nil) then
		sys.DBGPrint("�Ի���Ϣ%s��\r\n", message);
		if (string.match(message,"Ͷ����ͬ���͵�����") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"����ֹ�ڱ�����ڱ�������") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"USBKEY") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"�豸��Ϣ�����Ϣ����") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"��.*����") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"����㱣��") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"��ѯ��������ȷ") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"δ�鵽�˳�����Ϣ") ~= nil) then
			web.PutResult("msg",message);
		end
		if (string.match(message,"ʹ�����ʲ���") ~= nil) then
			web.PutResult("msg",message);
		end
		-- ����vpn
		if (string.match(message,"�ѵ�½") ~= nil) then
			web.PutResult("vpnmsg",message);
		end
		if (string.match(message,"VPN���ڹ���") ~= nil) then
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


--�ȴ�ҳ��������
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
			sys.DBGPrint("ҳ����س�ʱ��\r\n");			
			break;
		end
		web.Wait(50);
	end
	return false;
end

--�ȴ�ҳ���ĳ������������
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
			sys.DBGPrint("�ȴ�����'"..objName.."'������ϳ�ʱ��\r\n");
			break;
		end
		web.Wait(50);
	end
	return false;
end

--�ȴ�ҳ���������ĵ��������
function WaitForDocumentCompleted(page, ms)
	local title, pos;
	if not __WaitForDocumentCompleted(page, ms or global_timeout) then
		return false;
	end
	title = web.GetPageTitle(page);
	if title ~= nil then
		pos, _ = string.find(title, "֤�����");
		if pos ~= nil then
			if not WaitForObjectLoaded(page, "overridelink") then
				sys.DBGPrint("�ȴ�֤�����ҳ����������ϳ�ʱ��\r\n");
				return false;
			end
			if (not web.ExecuteScript(page, "document.getElementById(\"overridelink\").click();")) then
				sys.DBGPrint("����֤�����ű�ִ�д���\r\n");
				return false;
			end
			if not WaitForDocumentCompleted(page, ms or global_timeout) then
				sys.DBGPrint("�ȴ�֤��������ҳ����س�ʱ��\r\n");
				return false;
			end
		end
	else
	  sys.DBGPrint("��ȡ�¼���ҳ�����ʧ�ܣ�\r\n");
	end
	return true;
end


--�ȴ���ҳ�洴��
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
			sys.DBGPrint("�ȴ���ҳ��򿪳�ʱ��\r\n");
			break;
		end
		web.Wait(10);
	end
	return nil;
end

--��¼
function login(page)
	local user, password, url, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "�û���������Ϊ��"; 
	end
	if not web.Navigate(page, "http://10.134.136.48/") then
		return false, "�޷��������˱���ҳ";
	end
	if not WaitForDocumentCompleted(page) then
		return false, "����ʧ��";
	end
	title = web.GetPageTitle(page);
	if title == nil then
		return false, "�޷���ȡ����";
	end
	pos, _ = string.find(title, "PICC");
	if pos == nil then
		return false, "�޷�ʶ��ı���["..title.."]";
	end
	url = web.GetPageURL(page);
	if (url == nil) then
		return false, "�޷���ȡ��ҳURL��ַ";
	end
	pos,_=string.find(url, "/login?");
	if (pos == nil) then
		pos,_=string.find(url, "/portal/");
		if (pos == nil) then
			sys.DBGPrint("��ǰ�������ĵ�ַ��[%s]��\r\n", url);
			return false, error;
		else
			return true, "�ɹ�";
		end
	end
	WaitForObjectLoaded(page, "document.getElementById(\"username1\");document.getElementById(\"password1\");document.getElementById(\"button\")");
	web.PutResult("username", user);
	web.PutResult("password", password);
	if (not web.ExecuteScript(page, "document.getElementById(\"username1\").value=external.get_result(\"username\");\r\n\
								document.getElementById(\"password1\").value=external.get_result(\"password\");\r\n\
								document.getElementById(\"button\").click();")) then
		return false, "ִ�е�¼�ű�ʧ�ܣ�";
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
		return false, "�޷���ȡҳ��URL��ַ";
	end
	pos,_ = string.find(url, "/index.jsp?");
	if (pos == nil) then
		return false, "��¼����δ֪ҳ��["..url.."]";
	end
	return true, "�ɹ�";
end

--�򿪹���̨
function opendesk(page)
	local desk, ret;
	web.PutResult("result", "");
	WaitForObjectLoaded(page, "main");
	if (not web.ExecuteScript(page, "var arr=main.document.getElementsByTagName('A');\r\n\
														for(var i=0;i<arr.length;i++){\r\n\
															if(arr[i].title=='>> �������ճб�ϵͳ'){\r\n\
																external.put_result('result','1');\r\n\
																arr[i].click();\r\n\
																break;\r\n\
															}\r\n\
														}\r\n")) then
			return nil, "ִ�д򿪹���̨�ű�ʧ��";
	end
	ret = web.GetResult("result");
	if ret == nil then
		return nil, "ִ�д򿪹���̨�ű��ɹ�������û���ҵ����б�ϵͳ���ı�ǩ";
	end
	desk = WaitForNewPage(page, 3000);
	if (desk == nil) then
		return nil, "û���ҵ���ҳ��";
	end
	WaitForDocumentCompleted(desk);
	return desk, "�ɹ�";
end


--�Զ��˱�
function auto_check(req)
	local page, err, ret, desk2, engine, cls, model, vin, num, tm, qiangNo, shangNo;
	sys.DBGPrint("���ֺ˱�[%s]������\r\n", req.para);
	startTime = web.GetTickCount();
	sys.DBGPrint()
	
	--Ϊ������Ϣ����
	req.para = json.Set(req.para, "/insurance/complete", 1);
	
	car = json.Get(req.para, "/car");
	insuredPerson = json.Get(req.para, "/insured person");
	insurer = json.Get(req.para, "/insurer");
	insurance = json.Get(req.para, "/insurance");
	--��ʼ��msg
	web.PutResult('msg',"�޴�����Ϣ");
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
	
	--�����������
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("�½�ҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-2,\"msg\":\"����ҳ��ʧ��\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
		return false;
	end
	ret, err = login(page, req);
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��¼���ؽ��[%s]��\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
		return false;
	end
	if web.GetUserName() ~= nil then
		sys.DBGPrint("��¼��"..web.GetUserName().."\r\n");
	end
	if web.GetPassword() ~= nil then
		sys.DBGPrint("����"..web.GetPassword().."\r\n");
	end
	
	
	desk, err = opendesk(page);
	web.ClosePage(page);
	if desk == nil then
		sys.DBGPrint("�򿪹���̨ʧ��[%s]��\r\n", err);
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
			sys.DBGPrint("ִ�е�����������ű�ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"ִ�е�����������ű�ʧ��\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
			return false;
	end
	ret = web.GetResult("result");
	if (ret == nil) then
			web.ClosePage(desk);
			sys.DBGPrint("��ҳδ����ȫ���أ�\r\n");
			req:complete("{\"error\":-6,\"msg\":\"��ҳδ����ȫ����\",\"car\":"..car..",\"insuredPerson\":"..insuredPerson..",\"insurance\":"..insurance.."}");
			return false;
	end
	WaitForDocumentCompleted(desk);
	sys.DBGPrint("�������ҳ�棬�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	
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

	
	sys.DBGPrint("����json��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	--������Ϣ
	tm00 = web.NewTimeout(10000);	
	repeat
		--ȡ���˱���Ϣ����ֵ��texti
		web.Wait(500);	
		plateNoFill = web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCitemCar.licenseNo').value = external.get_result('plate_no');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.engineNo').value = external.get_result('engine_no');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.frameNo').value = external.get_result('vin');\r\n\
									//main.page.fm.document.getElementById('prpCitemCar.enrollDate').value = external.get_result('register_date');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.licenseNo').onchange();\r\n\
									")
		sys.DBGPrint("������䳵�ƣ����Ժ�\r\n");
	until(plateNoFill or web.IsTimeout(tm00))
	if plateNoFill then
		sys.DBGPrint("���������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk);
		sys.DBGPrint("������Ϣ������\r\n");
		req:complete("{\"error\":-711,\"msg\":\"������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
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
			sys.DBGPrint("������Ϣ�Զ�������\r\n");
			req:complete("{\"error\":-712,\"msg\":\"������Ϣ�Զ�������\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		msg = web.GetResult("msg");
		if (string.match(msg,"δ�鵽�˳�����Ϣ") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
				req:complete("{\"error\":-7121,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		en = web.GetResult("en");
		fn = web.GetResult("fn");
		ed = web.GetResult("ed");
		sys.DBGPrint("��������У����Ժ�\r\n");
	until ((en ~= nil and fn ~= nil and ed ~= nil) or web.IsTimeout(tm0))
	if (en == nil or fn == nil or ed == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("�������ʧ�ܣ�\r\n");
		if(string.match(msg,"�޴���") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-713,\"msg\":\"�������ʧ��!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("�����Զ������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--�滻�Զ����ĳ�����Ϣ
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCitemCar.engineNo').value = external.get_result('engine_no');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.engineNo').onchange();\r\n\
									main.page.fm.document.getElementById('prpCitemCar.frameNo').value = external.get_result('vin');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.frameNo').onchange();\r\n\
									main.page.fm.document.getElementById('prpCitemCar.enrollDate').value = external.get_result('register_date');\r\n\
									main.page.fm.document.getElementById('prpCitemCar.enrollDate').onchange();\r\n\
									") then
		sys.DBGPrint("�滻�Զ����ĳ�����Ϣ����\r\n");
		req:complete("{\"error\":-7131,\"msg\":\"�滻�Զ����ĳ�����Ϣ����\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	web.Wait(500);

	if not	web.ExecuteScript(desk, "if(main.page.fm.document.getElementById('CarKindCodeDes').value='��������'){\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').value='A01';\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').onblur();\r\n\
									main.page.fm.document.getElementById('CarKindCodeDes').onchange();}\r\n\
									main.page.fm.document.getElementById('searchByJY').click();//���\r\n\
									") then
			web.ClosePage(desk);	
			sys.DBGPrint("������Ϣ��ѯ����������\r\n");
			req:complete("{\"error\":-714,\"msg\":\"������Ϣ��ѯ����������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	tm1 = web.NewTimeout(20000);
	repeat
		web.Wait(500);
		if not	web.ExecuteScript(desk, "external.put_result('inn',main.page.fm.document.getElementById('prpCinsureds[0].insuredName').value);\r\n\
										") then
			sys.DBGPrint("������Ϣ��ѯ����\r\n");
			req:complete("{\"error\":-715,\"msg\":\"������Ϣ��ѯ����\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		inn = web.GetResult("inn");
		sys.DBGPrint("������Ϣ��ѯ�У����Ժ�\r\n");
	until ((inn ~= nil) or web.IsTimeout(tm1))
	if (inn == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("������Ϣ��ѯʧ�ܣ�\r\n");
		if(string.match(msg,"�޴���") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-716,\"msg\":\"������Ϣ��ѯʧ��!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("������Ϣ��ѯ��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--ƥ������	
	
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
											case '��������':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[0].selected=true;\r\n\
												break;\r\n\
											case '��������(�������)':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[1].selected=true;\r\n\
												break;\r\n\
											case '���ڲ���':\r\n\
												main.page.fm.document.getElementById('prpCitemKindsTemp[6].modeCode').options[2].selected=true;\r\n\
												break;\r\n\
											case '���ڲ������������)':\r\n\
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
			sys.DBGPrint("ƥ�����ִ���\r\n");
			req:complete("{\"error\":-721,\"msg\":\"ִ�к˱�����!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	if (chesun ~= nil) then
		if (sanfang ~= nil) then
			if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('btn_add_kindSub').click();\r\n\
								") then
					web.ClosePage(desk);
					sys.DBGPrint("��������ʧ�ܣ�\r\n");
					req:complete("{\"error\":-722,\"msg\":\"��������ʧ��!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
			end	
			tm51 = web.NewTimeout(20000);	
			repeat
				web.Wait(100);
				web.PutResult("flag","");
				web.ExecuteScript(desk, "main.page.document.getElementById('prpCitemKindsTemp[21].kindCode').value='050451';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].kindName').value='��������ʧ�����޷��ҵ���������Լ��';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].calculateFlag').value='N32N000';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].clauseCode').value='050064';\r\n\
											main.page.document.getElementById('prpCitemKindsTemp[21].flag').value='200000';\r\n\
											external.put_result('flag','1');\r\n\
									")
				sys.DBGPrint("�����������֣����Ժ�\r\n");
				flag = web.GetResult("flag");
			until((flag == '1') or web.IsTimeout(tm51))	
			if flag == '1' then
				sys.DBGPrint("����������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			else
				web.ClosePage(desk);
				sys.DBGPrint("�������ִ���\r\n");
				req:complete("{\"error\":-723,\"msg\":\"�������ִ���!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
		end
	end

	
	--Ͷ������Ϣ
	--Ͷ���� ������ ������Ϣ
	if web.GetResult('id_no') then
		sys.DBGPrint('id_no����');
		sys.DBGPrint(web.GetResult('id_no'))
		sys.DBGPrint('/r/n owner_id_no:');
		sys.DBGPrint(web.GetResult('owner_id_no'))
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementsByName('btn_deleteInsured')['1'].click();//'512927197611165190';//\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("ɾ����Ϣ����\r\n");
					req:complete("{\"error\":-7310,\"msg\":\"ɾ����Ϣ����!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		web.Wait(50);
		sys.DBGPrint('ɾ���ɹ�');
		if not	web.ExecuteScript(desk, "doc = main.page.fm.document.getElementsByName('_insuredFlag');\r\n\
											doc['0'].click();\r\n\
											doc['1'].click();\r\n\
											main.page.fm.document.getElementById('insertInsuredBtn').click();\r\n\
											main.page.fm.document.getElementById('prpCinsureds[1].identifyNumber').value = external.get_result('id_no');//'512927197611165190';\r\n\
											main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("��������Ϣ������\r\n");
					req:complete("{\"error\":-7311,\"msg\":\"��������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
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
			sys.DBGPrint("��������Ͷ���˼��������ˣ����Ժ�\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("Ͷ���˼������������ӳɹ�");
				break;
			end
		until(web.IsTimeout(tm51))	
		if flag == nil then
			web.ClosePage(desk);
			sys.DBGPrint("����Ͷ���˼��������˴���\r\n");
			req:complete("{\"error\":-73111,\"msg\":\"����Ͷ���˼��������˴���!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		-- web.Wait(50);
		sys.DBGPrint('����Ͷ���˼��������˳ɹ�\r\n');
		
		if not	web.ExecuteScript(desk, "doc = main.page.fm.document.getElementsByName('_insuredFlag');\r\n\
											doc['0'].click();\r\n\
											doc['1'].click();\r\n\
											doc['2'].click();\r\n\
											main.page.fm.document.getElementById('insertInsuredBtn').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("������Ϣ����\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;
		end
		sys.DBGPrint('����������Ϣ�ɹ�1\r\n');
		web.Wait(50);
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCinsureds[2].identifyNumber').value = external.get_result('owner_id_no');//'512927197611165190';\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("������Ϣ������\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		sys.DBGPrint('����������Ϣ�ɹ�2\r\n');
		web.Wait(50)
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
											") then
					web.ClosePage(desk);
					sys.DBGPrint("������Ϣ������\r\n");
					req:complete("{\"error\":-7312,\"msg\":\"������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
					return false;	
		end
		sys.DBGPrint('����������Ϣ�ɹ�3\r\n');
		
		tm51 = web.NewTimeout(20000);	
		flag = '';
		repeat
			web.Wait(100);
			web.PutResult("flag","");
			web.ExecuteScript(desk, "external.put_result('flag',main.page.fm.document.getElementById('prpCinsureds[2].insuredName').value);\r\n\
								")
			sys.DBGPrint("�����������������Ժ�\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("�������ӳɹ�");
				break;
			end
		until(web.IsTimeout(tm51))	
		if flag == nil then
			web.ClosePage(desk);
			sys.DBGPrint("������������\r\n");
			req:complete("{\"error\":-73111,\"msg\":\"������������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		sys.DBGPrint('���������ɹ�\r\n');
	else
		sys.DBGPrint('�ޱ�������Ϣ/r/n')
		if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('prpCinsureds[0].insuredName').value = '';//ȥ������\r\n\
									main.page.fm.document.getElementById('prpCinsureds[0].identifyNumber').value = '512927197611165190';//'512927197611165190';//\r\n\
									main.page.fm.document.getElementById('save2_insured_4S').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("��������Ϣ������\r\n");
			req:complete("{\"error\":-731,\"msg\":\"��������Ϣ������!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;	
		end
	end
	web.Wait(2000);--�ȴ�����ƥ��
	sys.DBGPrint("��������Ϣ��估ƥ��������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	
	--���㱣��
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonPremium_1').click();//���㱣��\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("���㱣�Ѵ���\r\n");
			req:complete("{\"error\":-741,\"msg\":\"���㱣�Ѵ���!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	tm2 = web.NewTimeout(30000);
	repeat
		web.Wait(500);
		if not	web.ExecuteScript(desk, "external.put_result('sunnumber',main.page.fm.document.getElementById('sunnumber').value);\r\n\
									external.put_result('msg', external.get_result('msg'));\r\n\
									") then
			sys.DBGPrint("���Ѽ�����,���Ժ�\r\n");
			req:complete("{\"error\":-742,\"msg\":\"������Ϣ��ȡ����\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
		end
		msg = web.GetResult("msg");
		
		if (string.match(msg,"Ͷ����ͬ���͵�����") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-743,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"����ֹ�ڱ�����ڱ�������") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-744,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"USBKEY") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-745,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"�豸��Ϣ�����Ϣ����") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-746,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"��ѯ��������ȷ") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-747,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		if (string.match(msg,"ʹ�����ʲ���") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-748,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end
		
		sunnumber = web.GetResult("sunnumber");--�ܱ���
		sys.DBGPrint("���Ѽ�����,���Ժ�\r\n");
	until ((sunnumber ~= '0' and sunnumber ~= nil) or web.IsTimeout(tm2))
	if(sunnumber == '0') then
		web.ClosePage(desk);
		sys.DBGPrint("���Ѽ���ʧ�ܣ�\r\n");
		if(string.match(msg,"�޴���") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-7491,\"msg\":\"���Ѽ���ʧ�ܣ�"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	sys.DBGPrint("���Ѽ�����ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	sys.DBGPrint("�����ܶ"..sunnumber.."\r\n");
	--���汣��
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonSave').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("���汣������\r\n");
			req:complete("{\"error\":-751,\"msg\":\"���汣������\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end	
	if (web.GetResult("shang") == '1') then
		--ȷ����ҵ�ձ����Ƿ񱣴�ɹ�
		tm3 = web.NewTimeout(30000);
		repeat
			web.Wait(200);
			if not	web.ExecuteScript(desk, "external.put_result('shangdanhao',main.page.fm.document.getElementById('prpCmain.proposalNo').value);\r\n\
										external.put_result('msg', external.get_result('msg'));\r\n\
										") then
				sys.DBGPrint("������ҵ�ձ�������\r\n");
				req:complete("{\"error\":-752,\"msg\":\"������ҵ�ձ�������\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
			
			msg = web.GetResult("msg");
			if (string.match(msg,"����㱣��") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
				req:complete("{\"error\":-748,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			end
			
			shangNo = web.GetResult("shangdanhao");
			sys.DBGPrint("��ҵ�ձ��������У����Ժ�\r\n");
		until ((shangNo ~= nil) or web.IsTimeout(tm3))
		
		if(shangNo == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("��ҵ�ձ�������ʧ�ܣ�\r\n");
		if(string.match(msg,"�޴���") ~= nil) then--�������Ƿ���Ч
			msg = '';
		end
		req:complete("{\"error\":-753,\"msg\":\"��ҵ�ձ�������ʧ��!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
		end
	end

	
	
	if (web.GetResult("qiang") == '1') then
		--ȷ����ǿ�ձ����Ƿ񱣴�ɹ�
		tm4 = web.NewTimeout(30000);
		repeat
			web.Wait(200);
			if not	web.ExecuteScript(desk, "external.put_result('qiangdanhao',main.page.fm.document.getElementById('prpCmainCI.proposalNo').value);\r\n\
										external.put_result('msg', external.get_result('msg'));\r\n\
										") then
				sys.DBGPrint("���潻ǿ�ձ�������\r\n");
				req:complete("{\"error\":-754,\"msg\":\"���潻ǿ�ձ�������\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
				return false;
			end
			
			msg = web.GetResult("msg");
			if (string.match(msg,"����㱣��") ~= nil) then
				web.ClosePage(desk);
				sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
				req:complete("{\"error\":-749,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			end
			
			qiangNo = web.GetResult("qiangdanhao");
			sys.DBGPrint("��ǿ�ձ��������У����Ժ�\r\n");
		until ((qiangNo ~= nil) or web.IsTimeout(tm4))
		if(qiangNo == nil) then
		web.ClosePage(desk);
		sys.DBGPrint("��ǿ�ձ�������ʧ�ܣ�\r\n");
		if(string.match(msg,"�޴���") ~= nil) then
			msg = '';
		end
		req:complete("{\"error\":-755,\"msg\":\"��ǿ�ձ�������ʧ��!"..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
		end
	end
	
	
	--����ҵ�����źͽ�ǿ�����Ŵ���req.para--
	if shangNo ~= nil then
		req.para = json.Set(req.para, "/insurance/shangNumber", shangNo);
	end
	if qiangNo ~= nil then
		req.para = json.Set(req.para, "/insurance/qiangNumber", qiangNo);
	end
	sys.DBGPrint("����������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	--ˢ��insurance
	insurance = json.Get(req.para, "/insurance");
	--�˱�
	if not	web.ExecuteScript(desk, "main.page.fm.document.getElementById('buttonSubmitUnw').click();\r\n\
									") then
			web.ClosePage(desk);
			sys.DBGPrint("����˱�����\r\n");
			req:complete("{\"error\":-761,\"msg\":\"����˱�����\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
			return false;
	end
	sys.DBGPrint("����˱���ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm50 = web.NewTimeout(30000);	
	repeat
		--ȡ���˱���Ϣ����ֵ��texti
		web.Wait(500);	
		pageClick = web.ExecuteScript(desk, "main.page.fm.document.getElementsByTagName('a')[0].click();//\r\n\
									//alert(main.page.fm.document.getElementsByTagName('a'));\r\n\
									")
		sys.DBGPrint("���ڵ���򿪺˱�����ҳ��ť�����Ժ�\r\n");
	until(pageClick or web.IsTimeout(tm50))	
	if pageClick then
		sys.DBGPrint("����򿪺˱�����ҳ��ť��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk);
		sys.DBGPrint("����򿪺˱�����ҳ��ť����\r\n");
		req:complete("{\"error\":-711,\"msg\":\"����򿪺˱�����ҳ��ť����!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end	
	sys.DBGPrint("����򿪺˱�����ҳ��ť�ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");	
	tm53 = web.NewTimeout(10000);
	repeat

		desk2 = WaitForNewPage(desk, 500);
		sys.DBGPrint("�ȴ��˱�����ҳ�����У����Ժ�")
	until(desk2 or web.IsTimeout(tm53))
	if  desk2 then
		sys.DBGPrint("�򿪺˱�����ҳ�ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk2);
		sys.DBGPrint("�򿪺˱�����ҳʧ�ܣ�\r\n");
		req:complete("{\"error\":-711,\"msg\":\"�򿪺˱�����ҳʧ��!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end	
	web.ClosePage(desk);
	sys.DBGPrint("�򿪺˱�����ҳ�ɹ�");
	web.ClosePage(desk);

	tm5 = web.NewTimeout(20000);
	flag = nil
	repeat
		--ȡ���˱���Ϣ����ֵ��texti
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
		sys.DBGPrint("ȡ�����У����Ժ�\r\n");
		if (string.match(msg,"��.*����") ~= nil) then
			web.ClosePage(desk);
			sys.DBGPrint("�˱�ʧ��,ԭ��"..msg.."\r\n");
			req:complete("{\"error\":-764,\"msg\":\""..msg.."\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		end						
	until((flag == '1') or web.IsTimeout(tm5))

	if  flag == '1' then
		sys.DBGPrint("ȡ�˱�����ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	else
		web.ClosePage(desk2);
		sys.DBGPrint("ȡ�˱�����ʧ�ܣ�\r\n");
		req:complete("{\"error\":-765,\"msg\":\"ȡ�˱�����ʧ��!\","..car..insuredPerson..insurer.."\"insurance\":"..insurance.."}");
		return false;
	end
	web.ClosePage(desk2);
	sys.DBGPrint("ȡ������ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	--json�������
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
	if (string.match(msg,"�˱�ͨ��") ~= nil) then
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
--vpn�Զ�����
function loginvpn()
	local url,pos,tm6;
	page2={};
	page2[web.Self()] = web.NewPage(true);
	print("1");
	if (page2[web.Self()] == nil) then
		return false,"�½�ҳ��ʧ�ܣ�\r\n";
	end
	print("2");
	if not web.Navigate(page2[web.Self()], "https://202.108.173.89/portal_default/index1.html") then
		return false, "�޷�������vpn��ҳ\r\n";
	end
	WaitForDocumentCompleted(page2[web.Self()], 20000)
	url = web.GetPageURL(page2[web.Self()]);
	if (url == nil) then
		return false, "�޷���ȡ��ҳURL��ַ\r\n";
	end
	if (url ~= "https://202.108.173.89/portal_default/index1.html") then
		return false, "�޷�������vpn��ҳ\r\n";
	end
	if (not web.ExecuteScript(page2[web.Self()], "document.getElementById('name_1').value='zhonghuiguoji_cb';\r\n\
			document.getElementById('pwd_1').value='123456';\r\n\
			document.getElementById('submit_1').click();\r\n\
			")) then
		return false, "ִ�е�¼�ű�ʧ�ܣ�\r\n";
	end
	web.Wait(10000);
	tm6=web.NewTimeout(50000);
	repeat
		url = web.GetPageURL(page2[web.Self()]);
		if (url == nil) then
			return false, "�޷���ȡ��ҳURL��ַ\r\n";
		end
		pos,_ = string.find(url, "/vone");
		sys.DBGPrint("vpn��½�����Ժ�\r\n");
		web.Wait(500);
	until(pos ~= nil or web.IsTimeout(tm6))
	if (pos == nil) then
	return false, "��¼����δ֪ҳ��["..url.."]\r\n";
	end
	tm7=web.NewTimeout(60000);
	repeat
		err3=web.IsVPNConnected();
		if (err3~=nil) then
			sys.DBGPrint(err3);
		end
		sys.DBGPrint("���vpn�Ƿ�ȷ����½�����Ժ�\r\n")
		web.Wait(500);
		vpnmsg = web.GetResult("vpnmsg");
		if (vpnmsg ~=nil) then
			if (string.match(vpnmsg,"�ѵ�½") ~= nil) then
			--�������������
			sys.DBGPrint("�˺��ѵ�½��\r\n");
			--��½����ѭ��
			return false,"�˺��ѵ�½\r\n";
			end
			if (string.match(vpnmsg,"vpn���ڹ���") ~= nil) then
				sys.DBGPrint("vpn���ڹ�����\r\n");
				return false,"ssl vpn���ڹ���\r\n";
			end
		end
	until(err3 or web.IsTimeout(tm7))
	if (page2[web.Self()]~=nil) then
		web.ClosePage(page2[web.Self()]);
	end
	return true,"�˱�vpn�������\r\n";
end


--���庯��������������ʱ���Զ����ô˺���
function main()
	local req,err,msg,tm1,err2,tm3,tm4,err3,err4,t;
	sys.DBGPrint("�ű���ʼִ�С���\r\n");
	web.OnShowMessage("OnDialog");
	web.OnShowDialogHtml("OnShowDialogHtml");
	tm4=web.NewTimeout(0);
	t=0;
	sys.DBGPrint("�ű���ʼִ�С���\r\n");
	while web.IsRunning() do
	 --    if web.IsTimeout(tm4) and t<5 then
		--    sys.DBGPrint("��ʼ����˱�vpn��\r\n");
		--    err3 = nil;
		--    err3=web.IsVPNConnected();
		--    print("err3");
		--    print(err3);
		--    print("\r\n");
		--    if not err3 then
		--        sys.DBGPrint("vpn�����ߣ�\r\n");
		-- 	   web.PutResult("vpnmsg","");
		--        err4,message=loginvpn();
		-- 	   t = t + 1;
		-- 	   sys.DBGPrint("������Ϣ%s",message) ;
		-- 	   if not err4 then
		-- 	      sys.DBGPrint("vpn��¼ʧ�ܣ�\r\n");
		-- 	      web.ClosePage(page2[web.Self()]);
		-- 		  web.Wait(1000);
		-- 	   else
  --                 sys.DBGPrint("vpn��¼�ɹ���\r\n");			   
  --                 web.Wait(15000);   
		-- 	   end
  --              tm4=web.NewTimeout(0)				   
		--    else
		--        sys.DBGPrint("vpnһֱ���ߣ�\r\n");
		-- 	   tm4=web.NewTimeout(180000);
		--    end
		-- end
		-- if (t>=5) then
		-- 	return false,"��γ��Ե�½vpnʧ�ܣ�";
		-- end
		
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--�鳵��
				inquire_car(req);
			else 
				if (req.type == 1) then
					--����ʷ����
					req:complete("{\"error\":-1,\"msg\":\"��֧�ֲ���ʷ����\"}");
				else 
					if (req.type == 2) then
						--�Զ�����
						auto_quote(req);
					else 
						if (req.type == 3) then
							--�Զ��˱�
							startTime = web.GetTickCount();
							auto_check(req);
							endTime = web.GetTickCount();
							sys.DBGPrint("�ܺ�ʱ��"..((endTime-startTime)/1000).."\r\n");
							else
							--δ֪����������
							req:complete("{\"error\":-1,\"msg\":\"δ֪����\"}");
						end
					end
				end
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("�ű��˳�\r\n");
end


