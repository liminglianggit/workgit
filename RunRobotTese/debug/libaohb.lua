--����ǲ�������������˵�����ʹ��LUA�ű����ƿ��������Ա����˱�Ϊ����

--�����г���ȫ����ϵͳ���������ƺͺ��嶼��Ԥ������ˣ���Ҫ�޸����ǣ�ֻҪ����ʵ�����ȥ�޸����ǵ�ֵ�Ϳ����ˡ�
--�Ƿ�֧�ֳ��Ʋ�ѯ����
support_inquire_car = true;
--�Ƿ�֧����ʷ������ѯ
support_query_insurance_history = true;
--�Ƿ�֧���Զ�����
support_auto_quote = true;
--�Ƿ�֧���Զ��˱�
support_auto_submit = true;
--������IP��ַ�������չ�˾��ҳ��������VPNʱ����������Ϊnil��������Ҫ����������أ������ж��Ƿ��ܷ��ʱ��չ�˾��ҳ��
web_server_ip_address = nil;
--��ǰ�����˽������еĹ����߳���Ŀ(ȡֵ��Χ��1~10֮��)
suggest_work_threads_num = 1;
--���չ�˾����
insurer_type = "libao";
--�Ƿ���ʾ����
show_window = true;
--��ǰ�ű���ȫ�����ơ�������Ψһ�ģ������������������ÿ���ű�
global_name = "����";
--ȫ�ֳ�ʱʱ��(��λ������)
global_timeout = 10000
--���չ�˾��������
global_region = "����";

--[[
--������Ϣ
--  ��P1CH37
--{"error":0,"msg":"�ɹ�", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"С�ͽγ�",
--"owner":{"name":"���"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--��QJ97V6
--{"error":0,"msg":"�ɹ�", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"С�ͽγ�",
--"owner":{"name":"���"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}
--��DLE963
--�˺���Ϣ
--A0145
--Tbv71wdC8
json.Get(req.para,"/car/plate_no")
--��QN0W53
external.get_result('LicenseNo'
    enforceCarShipTax
    enforcePremium
A911 ���𲻼�
A912 ���߲���
A921 ��������
A928 ˾������
A923 �˿�

A310 ��ȼ A310
A290 ��ˮ A972
A231 ���� 
A210 ���� A971
--��N5GH06
--]]


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
--��֤�����ͳ�������
VCT_ALPHANUMBER_4 = 1004;			-- 4λӢ������
VCT_ALPHANUMBER_5 = 1005;			-- 5λӢ������
VCT_ALPHANUMBER_6 = 1006;			-- 6λӢ������
VCT_CHINESE_2 = 2002;					-- 2λ������
VCT_CHINESE_4 = 2004;					-- 4λ������
VCT_ALPHA_4 = 3004;						-- 4λ��Ӣ��
VCT_ALPHA_5 = 3005;						-- 5λ��Ӣ��
VCT_ALPHA_6 = 3006;						-- 6λ��Ӣ��
VCT_NUMBER_4 = 4004;					-- 4λ������
VCT_NUMBER_5 = 4005;					-- 5λ������

--������Ϣ
--��P1CH37 
--{"error":0,"msg":"�ɹ�", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"С�ͽγ�",
--"owner":{"name":"���"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--��QJ97V6
--{"error":0,"msg":"�ɹ�", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"С�ͽγ�",
--"owner":{"name":"���"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}

--�˺���Ϣ
--A0145
--Tbv71wdC8


--��QN0W53

--��N5GH06
--��Q58K82


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
--web.GetPageTitle(p)  ��ȡҳ�����p�ı��⣨֧����ҳ�Ի���
--web.GetPageURL(p)		 ��ȡҳ�����p��URL��֧����ҳ�Ի���
--web.FindPageByTitle(partten)	����ҳ�����ƥ������ַ�����ҳ����󲢷��أ�pattern�пɰ���ͨ�����?,*��
--web.FindPageByURL(partten)	  ����ҳ��URLƥ��URL�ַ�����ҳ����󲢷��أ�pattern�пɰ���ͨ�����?,*��
--web.Navigate(p, url) ��ָ����ҳ�����p�ﵼ����urlָ������ַ���ɹ�����true�����򷵻�false
--web.ClosePage(p)		 �ر�ҳ�����pָ���Ĵ���
--web.ExecuteScript(p, sc[, async])	��ָ����ҳ�����p��ִ��js�ű���js�ű���������sc�ַ����async���õ�ʱ������첽ִ�У�����ͬ������֧����ҳ�Ի��򣬶Ի���ִ�в�֧���첽��
--web.GetLastAsyncResult(page)	��ѯ֮ǰ���һ����ҳ�����p��ִ�е�js�ű������Ƿ���ɣ���δ��ɷ���nil�����򷵻�ִ�еĽ����������������Ϊ���ʾ�ɹ���
--web.PutResult(k,v)	 �ڵ�ǰ�����£��ɿ�ҳ�棩���ַ���v�洢��k���£��˻�����jsִ�л����µ�external.put_result(k,v)��չ������һ�µģ��������������������ﴫ������
--web.GetResult(k)		 �ڵ�ǰ�����£��ɿ�ҳ�棩��ȡk���´洢���ַ���ֵ���˻�����jsִ�л����µ�external.get_result(k)��չ������һ�µģ��������������������ﴫ������
--web.IsDocumentCompleted(p)	�ж�ҳ�����p����ĵ�������ɣ�֧����ҳ�Ի���
--web.IsNavigateError(p)	�ж�ҳ�����p�����Ƿ����
--web.OnShowMessage(func)	���õ�ǰ��������ҳ�Ի��򵯳��¼��Ļص�������func�������õĻص����������Ϊnil��ȡ���ص�����
-------�Ի��򵯳��¼��ص�����ԭ���ǣ�function ShowMessageCallback(p, caption, message, type)  �ص��������صĽ���ǰ��°�ť����ԴID��������Ի����������������Ķ��壩
-------�ص��������л���������ִ�����̲���ͬһ�������ռ��£����Ҫ��������ռ�ͨѶ��ʹ��web.PutResult��web.GetResult��
--web.Wait(ms)			 	 �ȴ�ms��������ִ�к�������
--web.IsElementExist(p,name)	�ж�ָ��ҳ�����Ƿ����name������DOM�ĵ�����name��JS���κο��õ�ָ��������Ч��䡣��֧�ֶ�����󣬶������','��';'�ָ���
--web.GetNewPage(page,min_ms)	��ȡ���´�����ҳ�棨���page��Ϊnil����ô�����ҳ�������page����ҳ�棬�������������ҳ�棩�������㴴��ʱ���ڵ�ǰʱ��ǰmin_ms����֮��
--web.IsTimeout(t)		 �жϳ�ʱ��t�Ƿ�ʱ
--web.NewTimeout(ms)	 ����ms�����ʱ�ĳ�ʱ��
--web.Refresh(p)			 ˢ��ҳ�����p
--web.GetCarModeCode(plateno)	��ѯָ�����ƺ���plateno�ĳ���ʶ����루��Ϊnil���ʾδ�鵽��
--web.IsVPNConnected() �ж�VPN�Ƿ��Ѿ���������
--web.RecognizeVerificationCode(url, type)	ʶ����֤�룬url����֤����ַ��type����֤������(VCT_XXXX)�����ر�ʶ��ID��ʶ��������
----------------------------------- id, code = web.RecognizeVerificationCode("https://icore-pts.pingan.com.cn/ebusiness/auto/rand-code-imgage.do", VCT_ALPHANUMBER_4);
----------------------------------- ���ص�id�����С�ڵ���������ʾδʶ����������id��ֵ���Ǵ�����룻
--web.ReportVerCodeError(id)	�������ʶ����Ϣ��id��web.ReportVerCodeError���صĵ�һ��������������ش�����룬0��ʾ�ɹ���
--web.OnCreateDialog(func)	���õ�ǰ��������ҳ�Ի��򴴽��¼��Ļص�������func�������õĻص����������Ϊnil��ȡ���ص���
-------�Ի��򴴽��¼��ص�����ԭ���ǣ�function CreateDialogCallback(p, hwnd, caption, message, type)
-------�ص��������л���������ִ�����̲���ͬһ�������ռ��£����Ҫ��������ռ�ͨѶ��ʹ��web.PutResult��web.GetResult��
--web.SetDlgItemText(hDlg, id, text)	����ָ���Ի�����ָ���ؼ�id���ı�����Ϊtext
--web.EndDialog(hDlg, ret)	��ֹ�Ի���
--web.OnShowDialogHtml(func)	���õ�ǰ��������ҳ�Ի�����ʾ�Ļص�������func�������õĻص����������Ϊnil��ȡ���ص���
-------�Ի�����ҳ��ʾ�ص�����ԭ���ǣ�function ShowDialogHtmlCallback(p, url, name, flags)
-------�����Ƿ���������״̬��true��ʾ����false��ʾ������
-------�ص��������л���������ִ�����̲���ͬһ�������ռ��£����Ҫ��������ռ�ͨѶ��ʹ��web.PutResult��web.GetResult��
--web.GetVPNLoginInfo(type, no)	��ȡ�����no���չ�˾������type���������VPN�ʻ���Ϣ��no��ʾ��ƥ�䵽�ĵڼ�����0��ʾ��һ�������ɹ���
-------�������������õ�VPN�ʻ������룬���򷵻�nil�����磺usr,pwd = web.GetVPNLoginInfo('renbao',0)  ��δ�����ǻ�ȡ��ǰ��¼�ʻ���
-------��һ��������VPN��¼��Ϣ������VPN�ʻ������롣
--web.GetHtmlDialog()		��ȡ��ǰ������HTML�Ի������

--����Ϊ��������
function OnShowDialogHtml(page, url, name, flags)
	return false;	-- ��ֹ���д�����ҳ����
end

--��ֹϵͳ�Ի���ʾ��
function OnCreateDialog(page, hwnd, caption, message, type)
	sys.DBGPrint("���ִ���[%s]\r\n", caption);
	if (string.lower(caption) == "user-pin verification") then
		sys.DBGPrint("��PIN���ڣ�׼���Զ���д��\r\n");
		web.SetDlgItemText(hwnd, 1000, "jnluzhen");
		web.EndDialog(hwnd, IDOK);
	end
end
--��ֹϵͳ������
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("�ػ�ϵͳ�Ի���[%s, dwType=%d]��ǿ�Ʒ��ؼ�����%s\r\n", caption, type,message);
	type = type % 16;
	global_message = message;
	if string.find(message,'Ͷ����ͬ���͵�����') ~= nil then
		jiaoqiang_flag = 1;
	end
	pos,_=string.find(message,"�Ƿ���");
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
			if not WaitForObjectLoaded(page, "document.getElementById(\"overridelink\")") then
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
function login(page,url)
	local user, password, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "�û���������Ϊ��";
	end
	if not web.Navigate(page, url) then
		return false, "�޷�������������ҳ";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "����ʧ��";
	end
	--web.Wait(5000);
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("�ȴ���ȡtitle�����Ժ�\r\n");
		if title then
		
			pos = nil;
			pos, _ = string.find(title, "Motor");
			if pos == nil then
				pos, _ = string.find(title, "Welcome");
				if pos == nil then
					pos, _ = string.find(title, "https://lm.libertymutual.com.cn");
					if pos == nil then
						return false, "�޷�ʶ��ı���["..title.."]";
					end
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	sys.DBGPrint(title);
	if title == nil then
		return false, "��½ʧ�ܣ�";
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
	return true, "�ɹ�";
end









--�Զ��˱�
function  auto_submit(req)

	if json.Get(req.para,'/insurance/chengke') ~= nil then
		local temp = json.Get(req.para,'/insurance/chengke/unit') + 0;
		if temp > 200000 then
			sys.DBGPrint("�˿��ձ�����޶��߱���Ϊ20��\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'�˿��ձ�����޶�����������޹�˾�ĳ˿�����߱���Ϊ20��');
			req:complete(req.para);
			return false;
		elseif temp == 150000 then
			sys.DBGPrint("�����������޹�˾�ĳ˿��ղ���ѡ��15��\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'�����������޹�˾�ĳ˿��ղ���ѡ��15��');
			req:complete(req.para);
			return false;
		end
	end

	if json.Get(req.para,'/insurance/siji') ~= nil then
		local temp = json.Get(req.para,'/insurance/siji/baoe') + 0;
		if temp > 200000 then
			sys.DBGPrint("˾���ձ�����޶��߱���Ϊ20��\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'˾���ձ�����޶�����������޹�˾��˾������߱���Ϊ20��');
			req:complete(req.para);
			return false;
		elseif temp == 150000 then
			sys.DBGPrint("�����������޹�˾��˾���ղ���ѡ��15��\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'�����������޹�˾��˾���ղ���ѡ��15��');
			req:complete(req.para);
			return false;
		end
	end

	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("���ֺ˱�[%s]������\r\n",json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para..'\r\n');
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("�½�ҳ��ʧ�ܣ�\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'�½�ҳ��ʧ�ܣ�!');
		req:complete(req.para);
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		sys.DBGPrint("��¼���ؽ��[%s]��\r\n", err);
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'��¼ʧ��!');
		req:complete(req.para);
		return false;

	end	
	sys.DBGPrint("��½��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(20000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('������') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("������ҳ��......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("������ҳ�ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("������ҳʧ�ܣ�\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'������ҳʧ�ܣ�!');
		req:complete(req.para);
		return false;

	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('ǩ��') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("����ǩ������ҳ����......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("����ǩ������ҳ��ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("����ǩ������ҳ��ʧ�ܣ�\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'����ǩ������ҳ��ʧ�ܣ�');
		req:complete(req.para);
		return false;
	end


	--��ѯת�˹�����ԭ��
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
										if (temp.indexOf('��ѯ') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
				")
			sys.DBGPrint("���뵥��.....\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("���뵥�ųɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(500);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("���뵥��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-4,\"msg\":\"���뵥��ʧ�ܣ�\"}");
			return false;
		end
		web.PutResult('flag','');
		tm1 = web.NewTimeout(10000);
		repeat
			web.ExecuteScript(page,"var temp = document.getElementById('table_quanbuJiLu').getElementsByTagName('div')[0].innerHTML;\r\n\
									if (temp.indexOf('�ȴ��˱�') != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
									else if (temp.indexOf('�˱�δͨ��') != -1){\r\n\
										external.put_result('flag','2');\r\n\
										}\r\n\
				")
			sys.DBGPrint("��ѯ�˱�״̬.....\r\n");
			flag = web.GetResult("flag");
			if flag ~= nil then
				sys.DBGPrint("��ѯ�˱�״̬�ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("��ѯ�˱�״̬ʧ�ܣ�\r\n");
			req:complete("{\"error\":-4,\"msg\":\"��ѯ�˱�״̬ʧ�ܣ�\"}");
			return false;
		end

		if web.GetResult('flag') == '1' then
			sys.DBGPrint("�ȴ��˱���\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",0);
			req.para = json.Set(req.para,"/msg",'�ȴ��˱���');
			req:complete(req.para);
			return false;
		end

		if web.GetResult('flag') == '2' then
			local tm11 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat 
				web.ExecuteScript(page, "document.getElementsByTagName('a')[3].click();\r\n\
										external.put_result('flag','1');\r\n\
				") 	
				if web.GetResult('flag') ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm11));


			if web.GetResult('flag') == nil then
				sys.DBGPrint("δ�ܲ�ѯ���ó���Ͷ�����ţ�\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-1);
				req.para = json.Set(req.para,"/msg",'δ�ܲ�ѯ���ó���Ͷ�����ţ�');
				req:complete(req.para);
				return false;
			end


			tm11 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat 
				web.ExecuteScript(page, "var index = 0;\r\n\
										while(true){\r\n\
											var temp = document.getElementsByClassName('widget-content')[index].innerHTML;\r\n\
											if (temp.indexOf('�����Ϣ') != -1){\r\n\
												document.getElementsByClassName('widget-content')[index].getElementsByTagName('a')[0].click();\r\n\
												external.put_result('flag','1');\r\n\
												}\r\n\
												index++;\r\n\
												}\r\n\
				") 	
				if web.GetResult('flag') ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm11));


			if web.GetResult('flag') == nil then
				sys.DBGPrint("δ�ܲ�ѯ���ó���Ͷ�����ţ�\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-1);
				req.para = json.Set(req.para,"/msg",'δ�ܲ�ѯ���ó���Ͷ�����ţ�');
				req:complete(req.para);
				return false;
			end


			local new_page = nil;
			local tm5 = web.NewTimeout(20000);
			web.PutResult('flag','');
			repeat
					new_page = web.GetPageAt(1);
					sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
					sys.DBGPrint('��һ�λ�ȡҳ��\r\n');
					local url = web.GetPageURL(new_page);
					pos, _ = string.find(url, "https://cs.libertymutual.com.cn");
					if pos ~= nil then
						web.PutResult('flag','1');
						break;
					end
					new_page = web.GetPageAt(0);
					sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
					sys.DBGPrint('�ڶ��λ�ȡҳ��\r\n');
					local url = web.GetPageURL(new_page);
					pos, _ = string.find(url, "https://cs.libertymutual.com.cn");
					if pos ~= nil then
						web.PutResult('flag','1');
						break;
					end
					web.Wait(200);
			until(web.IsTimeout(tm5));
			if web.GetResult('flag') == nil then
				web.ClosePage(page);
				if new_page ~= nil then
					web.ClosePage(new_page);
				end
				sys.DBGPrint("��ȡ������ҳ��ʧ�ܣ�\r\n");
				req.para = json.Set(req.para,"/error",-6);
				req.para = json.Set(req.para,"/msg",'��ȡ������ҳ��ʧ�ܣ�');
				req:complete(req.para);
				return false;
			end

			WaitForDocumentCompleted(new_page);

			web.PutResult('common1','');
			web.PutResult('common2','');
			tm11 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat 
				web.ExecuteScript(new_page, "external.put_result('common1',document.getElementsByTagName('textarea')[0].innerHTML);\r\n\
										external.put_result('common2',document.getElementsByTagName('textarea')[1].innerHTML);\r\n\
										external.put_result('flag','1');\r\n\
				") 	
				if web.GetResult('flag') ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm11));


			if web.GetResult('flag') == nil then
				sys.DBGPrint("δ�ܻ�ȡ��������\r\n");
				if new_page ~= nil then
					web.ClosePage(new_page);
				end
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-1);
				req.para = json.Set(req.para,"/msg",'δ�ܻ�ȡ��������');
				req:complete(req.para);
				return false;
			end

			local common = web.GetResult('common1')..web.GetResult('common2');
			sys.DBGPrint("��ȡ�������ɹ���\r\n");
			web.ClosePage(page);
			if new_page ~= nil then
				web.ClosePage(new_page);
			end
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",common);
			req.para = json.Set(req.para,"/insurance/complete",1);
			req:complete(req.para);
			sys.DBGPrint(req.para);
			return false;
		end
	end


	--�ڶ��κ˱����ݻ����Լ�����
	if json.Get(req.para,'/insurance/autoCancel') == nil then
		web.PutResult('flag','');
		tm1 = web.NewTimeout(30000);
		repeat
			web.ExecuteScript(page,"document.getElementById('side_menu_12').click();\r\n\
				");
			web.ExecuteScript(page,"document.getElementById('licenseNo').value;\r\n\
				var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
									if (temp.indexOf('Ͷ��') != -1)\r\n\
									{\r\n\
										external.put_result('flag','1');\r\n\
									}\r\n\
				");
			sys.DBGPrint("����Ͷ������ҳ����......\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("����Ͷ������ҳ��ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			sys.DBGPrint("����Ͷ������ҳ��ʧ�ܣ�\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'����Ͷ������ҳ��ʧ�ܣ�!');
			req:complete(req.para);
			return false;
		end


		WaitForDocumentCompleted(page);
		local ownership_code = nil;
		if json.Get(req.para,'/car/ownership_code') ~= nil then
			ownership_code = json.Get(req.para,'/car/ownership_code');
			ownership_code = ownership_code + 0;
			if ownership_code == 1 then
				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.Wait(100);
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
												$scope.PrpTitemCarDTO.carInsuredRelation=4;\r\n\
												$scope.$apply();\r\n\
												$scope.PrpTitemCarDTO.useNatureCode='8B';\r\n\
												$scope.$apply();\r\n\
												external.put_result('flag','1');\r\n\
												")
					sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1))

				if  flag == nil then
					sys.DBGPrint("�ȴ���ҳ��Ӧ��ʱ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'�ȴ���ҳ��Ӧ��ʱ��!');
					req:complete(req.para);
					return false;
				end
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
						sys.DBGPrint("ѡ��Ͷ������ʧ�ܣ�\r\n");
						req.para = json.Set(req.para,"/error",-5);
						req.para = json.Set(req.para,"/msg",'ѡ��Ͷ������ʧ�ܣ�');
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
						sys.DBGPrint("ѡ��Ͷ������ʧ�ܣ�\r\n");
						req.para = json.Set(req.para,"/error",-5);
						req.para = json.Set(req.para,"/msg",'ѡ��Ͷ������ʧ�ܣ�');
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
		pos, _ = string.find(licenseNo, "��");
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
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("���복����Ϣʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'���복����Ϣʧ��!');
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
			sys.DBGPrint("ѡ������......\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("ѡ���ͳɹ�"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("ѡ����ʧ��\r\n");
			req:complete("{\"error\":-4,\"msg\":\"ѡ����ʧ��\"}");
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
			sys.DBGPrint("���Ͳ�ѯ��......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(150);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("���Ͳ�ѯʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'���Ͳ�ѯʧ��');
			req:complete(req.para);
			return false;
		end

		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].innerHTML;\r\n\
									external.put_result('flag','1');\r\n\
									"); 
			sys.DBGPrint("�ȴ���ѯ����......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(150);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("��ѯ����ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��ѯ����ʧ��');
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
			sys.DBGPrint("ѡ������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡ����ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ����ʧ��');
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
											if (temp.indexOf('��Ӫҵ��ҵ') != -1)\r\n\
												external.put_result('flag','1');\r\n\
											")
				sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
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
				sys.DBGPrint("ѡ��ʹ��������......\r\n");
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("ѡ��ʹ������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ʹ������ʧ��');
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
				sys.DBGPrint("ѡ��ʹ��������......\r\n");
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("ѡ��ʹ������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ʹ������ʧ��');
				req:complete(req.para);
				return false;
			end
		end


		
		web.ExecuteScript(page, "document.getElementsByClassName('more')[0].click();\r\n\
										")
		web.Wait(1000);
		if ownership_code == 1 then
			web.PutResult('flag','');
			tm1 = web.NewTimeout(20000);
			repeat
				web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
										external.put_result('flag','1');\r\n\
										"); 
				sys.DBGPrint("ѡ��ͻ�������......\r\n");
				web.Wait(500);
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("ѡ��ͻ�����ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
				req:complete(req.para);
				return false;
			end



			web.PutResult('name','');
			web.PutResult('idNo','');
			web.PutResult('mailAddress','');
			web.PutResult('cellPhoneNo','');
			web.PutResult('contact','');

			web.PutResult('name',json.Get(req.para,'/insured/name'));
			web.PutResult('idNo',json.Get(req.para,'/insured/id_no'));
			web.PutResult('mailAddress',json.Get(req.para,'/insured/address'));
			web.PutResult('cellPhoneNo',json.Get(req.para,'/insured/phone'));
			web.PutResult('contact',json.Get(req.para,'/insured/name'));

			if web.GetResult('idNo') == nil then
				web.PutResult('idNo','111111111111111111');
			end

			if web.GetResult('mailAddress') == nil then
				web.PutResult('mailAddress','11111111111');
			end

			if web.GetResult('cellPhoneNo') == nil then
				web.PutResult('cellPhoneNo','88888888888');
			end

			if json.Get(req.para,'/insured/name') == json.Get(req.para,'/car/owner') then
				web.PutResult('issameperson',1);
			else
				web.PutResult('issameperson',0);
			end
			web.PutResult('flag','');
			tm1 = web.NewTimeout(20000);
			repeat
				web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
										$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
										$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
										$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
										$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
										$scope.CustomerInfoDto.zipCode='100000';\r\n\
										$scope.CustomerInfoDto.contact=external.get_result('name');\r\n\
										if (external.get_result('issameperson') == 0){\r\n\
											$scope.CustomerInfoDto.intrest='9';\r\n\
											}\r\n\
										$scope.$apply();\r\n\
										document.getElementById('baocun').click();\r\n\
										external.put_result('flag','1');\r\n\
										"); 
				sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
				req:complete(req.para);
				return false;
			end

			tm1 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat
				web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
										var temp = $scope.CustomerInfo1.name;\r\n\
										var temp1 = external.get_result('name');\r\n\
										if (temp.indexOf(temp1) != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										"); 
				sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
				web.Wait(100);
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1)); 
			
			if json.Get(req.para,'/insured/name') ~= json.Get(req.para,'/insured person/name') then

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementById('care_insured').click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("�����������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementsByClassName('more')[1].click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("������뱻������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);
				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("ѡ�񱻱��˿ͻ�������......\r\n");
					web.Wait(500);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("ѡ�񱻱��˿ͻ�����ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
					req:complete(req.para);
					return false;
				end



				web.PutResult('name','');
				web.PutResult('idNo','');
				web.PutResult('mailAddress','');
				web.PutResult('cellPhoneNo','');
				web.PutResult('contact','');

				web.PutResult('name',json.Get(req.para,'/insured person/name'));
				web.PutResult('idNo',json.Get(req.para,'/insured person/id_no'));
				web.PutResult('mailAddress',json.Get(req.para,'/insured person/address'));
				web.PutResult('cellPhoneNo',json.Get(req.para,'/insured person/phone'));
				web.PutResult('contact',json.Get(req.para,'/insured person/name'));

				if web.GetResult('idNo') == nil then
					web.PutResult('idNo','111111111111111111');
				end

				if web.GetResult('mailAddress') == nil then
					web.PutResult('mailAddress','11111111111');
				end

				if web.GetResult('cellPhoneNo') == nil then
					web.PutResult('cellPhoneNo','88888888888');
				end

				if json.Get(req.para,'/insured person/name') == json.Get(req.para,'/car/owner') then
					web.PutResult('issameperson',1);
				else
					web.PutResult('issameperson',0);
				end

				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
											$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
											$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
											$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
											$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
											$scope.CustomerInfoDto.zipCode='100000';\r\n\
											$scope.CustomerInfoDto.contact=external.get_result('name');\r\n\
											if (external.get_result('issameperson') == 0){\r\n\
											$scope.CustomerInfoDto.intrest='9';\r\n\
											}\r\n\
											$scope.$apply();\r\n\
											document.getElementById('baocun').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
					web.Wait(200);
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
					req:complete(req.para);
					return false;
				end
				web.Wait(5000);
				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
											var temp = $scope.CustomerInfo3.name;\r\n\
											var temp1 = external.get_result('name');\r\n\
											if (temp.indexOf(temp1) != -1){\r\n\
											external.put_result('flag','1');\r\n\
											}\r\n\
											"); 
					sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 
			end

			if json.Get(req.para,'/insured/name') ~= json.Get(req.para,'/car/owner/name') then

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementById('care_owner').click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("���������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementsByClassName('more')[2].click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("������복����Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);
				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("ѡ����������......\r\n");
					web.Wait(500);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("ѡ��������ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��������ʧ��');
					req:complete(req.para);
					return false;
				end



				web.PutResult('name','');
				web.PutResult('idNo','');
				web.PutResult('mailAddress','');
				web.PutResult('cellPhoneNo','');
				web.PutResult('contact','');

				web.PutResult('name',json.Get(req.para,'/car/owner/name'));
				web.PutResult('idNo',json.Get(req.para,'/car/owner/id_no'));
				web.PutResult('mailAddress',json.Get(req.para,'/car/owner/address'));
				web.PutResult('cellPhoneNo',json.Get(req.para,'/car/owner/phone'));
				web.PutResult('contact',json.Get(req.para,'/car/owner/name'));

				if web.GetResult('idNo') == nil then
					web.PutResult('idNo','111111111111111111');
				end

				if web.GetResult('mailAddress') == nil then
					web.PutResult('mailAddress','11111111111');
				end

				if web.GetResult('cellPhoneNo') == nil then
					web.PutResult('cellPhoneNo','88888888888');
				end

				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
											$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
											$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
											$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
											$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
											$scope.CustomerInfoDto.zipCode='100000';\r\n\
											$scope.CustomerInfoDto.contact=external.get_result('name');\r\n\
											$scope.$apply();\r\n\
											document.getElementById('baocun').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
					web.Wait(200);
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
					req:complete(req.para);
					return false;
				end
				web.Wait(5000);

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
											var temp = $scope.CustomerInfo2.name;\r\n\
											var temp1 = external.get_result('name');\r\n\
											if (temp.indexOf(temp1) != -1){\r\n\
											external.put_result('flag','1');\r\n\
											}\r\n\
											"); 
					sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
					web.Wait(1000);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 
			end


		else


			web.PutResult('flag','');
			tm1 = web.NewTimeout(20000);
			repeat
				web.ExecuteScript(page, "document.getElementsByName('PeopleInput')[0].getElementsByTagName('button')[1].click();\r\n\
										external.put_result('flag','1');\r\n\
										"); 
				sys.DBGPrint("ѡ��ͻ�������......\r\n");
				web.Wait(500);
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("ѡ��ͻ�����ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
				req:complete(req.para);
				return false;
			end



			web.PutResult('name','');
			web.PutResult('idNo','');
			web.PutResult('mailAddress','');
			web.PutResult('cellPhoneNo','');
			web.PutResult('nation','');
			web.PutResult('issuedAt','');
			web.PutResult('effectedDate','');
			web.PutResult('expiredDate','');

			web.PutResult('name',json.Get(req.para,'/insured/name'));
			web.PutResult('idNo',json.Get(req.para,'/insured/id_no'));
			web.PutResult('mailAddress',json.Get(req.para,'/insured/address'));
			web.PutResult('cellPhoneNo',json.Get(req.para,'/insured/phone'));
			web.PutResult('nation',json.Get(req.para,'/insured/ethnicity'));
			web.PutResult('issuedAt',json.Get(req.para,'/insured/authority'));
			web.PutResult('effectedDate',json.Get(req.para,'/insured/periodOfValidity'));
			web.PutResult('expiredDate',json.Get(req.para,'/insured/periodOfValidity'));


			local effectedDate = web.GetResult('effectedDate');
			local expiredDate =  web.GetResult('effectedDate');
			effectedDate = string.match(effectedDate,"%d+-%d+-%d+");
			expiredDate = string.match(expiredDate,"~%d+-%d+-%d+");
			expiredDate = string.match(expiredDate,"%d+-%d+-%d+");
			web.PutResult('effectedDate',effectedDate);
			web.PutResult('expiredDate',expiredDate);





			if web.GetResult('idNo') == nil then
				web.PutResult('idNo','111111111111111111');
			end

			if web.GetResult('mailAddress') == nil then
				web.PutResult('mailAddress','11111111111');
			end

			if web.GetResult('cellPhoneNo') == nil then
				web.PutResult('cellPhoneNo','88888888888');
			end

			if web.GetResult('nation') == nil then
				web.PutResult('nation','��');
			end

			if web.GetResult('issuedAt') == nil then
				web.PutResult('issuedAt','������');
			end

			if json.Get(req.para,'/insured/name') == json.Get(req.para,'/car/owner') then
				web.PutResult('issameperson',1);
			else
				web.PutResult('issameperson',0);
			end

			web.PutResult('flag','');
			tm1 = web.NewTimeout(20000);
			repeat
				web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
										$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
										$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
										$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
										$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
										$scope.CustomerInfoDto.zipCode='100000';\r\n\
										$scope.CustomerInfoDto.nation=external.get_result('nation');\r\n\
										$scope.CustomerInfoDto.issuedAt=external.get_result('issuedAt');\r\n\
										$scope.CustomerInfoDto.effectedDate=external.get_result('effectedDate');\r\n\
										$scope.CustomerInfoDto.expiredDate=external.get_result('expiredDate');\r\n\
										if (external.get_result('issameperson') == 0){\r\n\
											$scope.CustomerInfoDto.intrest='9';\r\n\
											}\r\n\
										$scope.$apply();\r\n\
										document.getElementById('baocun').click();\r\n\
										external.put_result('flag','1');\r\n\
										"); 
				sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm1))

			if  web.GetResult("flag") == nil then
				sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
				req:complete(req.para);
				return false;
			end

			tm1 = web.NewTimeout(10000);
			web.PutResult('flag','');
			repeat
				web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
										var temp = $scope.CustomerInfo1.name;\r\n\
										var temp1 = external.get_result('name');\r\n\
										if (temp.indexOf(temp1) != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										"); 
				sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
				web.Wait(1000);
				flag = web.GetResult("flag");
				if web.GetResult("flag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1)); 
			

			if json.Get(req.para,'/insured/name') ~= json.Get(req.para,'/insured person/name') then

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementById('care_insured').click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("�����������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementsByClassName('more')[1].click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("������뱻������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);
				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "document.getElementsByName('PeopleInput')[0].getElementsByTagName('button')[1].click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("ѡ�񱻱��˿ͻ�������......\r\n");
					web.Wait(500);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("ѡ�񱻱��˿ͻ�����ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
					req:complete(req.para);
					return false;
				end



				web.PutResult('name','');
				web.PutResult('idNo','');
				web.PutResult('mailAddress','');
				web.PutResult('cellPhoneNo','');
				web.PutResult('nation','');
				web.PutResult('issuedAt','');
				web.PutResult('effectedDate','');
				web.PutResult('expiredDate','');

				web.PutResult('name',json.Get(req.para,'/insured person/name'));
				web.PutResult('idNo',json.Get(req.para,'/insured person/id_no'));
				web.PutResult('mailAddress',json.Get(req.para,'/insured person/address'));
				web.PutResult('cellPhoneNo',json.Get(req.para,'/insured person/phone'));
				web.PutResult('nation',json.Get(req.para,'/insured person/ethnicity'));
				web.PutResult('issuedAt',json.Get(req.para,'/insured person/authority'));
				web.PutResult('effectedDate',json.Get(req.para,'/insured person/periodOfValidity'));
				web.PutResult('expiredDate',json.Get(req.para,'/insured person/periodOfValidity'));


				effectedDate = web.GetResult('effectedDate');
				expiredDate =  web.GetResult('effectedDate');
				effectedDate = string.match(effectedDate,"%d+-%d+-%d+");
				expiredDate = string.match(expiredDate,"~%d+-%d+-%d+");
				expiredDate = string.match(expiredDate,"%d+-%d+-%d+");
				web.PutResult('effectedDate',effectedDate);
				web.PutResult('expiredDate',expiredDate);





				if web.GetResult('idNo') == nil then
					web.PutResult('idNo','111111111111111111');
				end

				if web.GetResult('mailAddress') == nil then
					web.PutResult('mailAddress','11111111111');
				end

				if web.GetResult('cellPhoneNo') == nil then
					web.PutResult('cellPhoneNo','88888888888');
				end

				if web.GetResult('nation') == nil then
					web.PutResult('nation','��');
				end

				if web.GetResult('issuedAt') == nil then
					web.PutResult('issuedAt','������');
				end

				if json.Get(req.para,'/insured person/name') == json.Get(req.para,'/car/owner') then
					web.PutResult('issameperson',1);
				else
					web.PutResult('issameperson',0);
				end

				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
											$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
											$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
											$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
											$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
											$scope.CustomerInfoDto.zipCode='100000';\r\n\
											$scope.CustomerInfoDto.nation=external.get_result('nation');\r\n\
											$scope.CustomerInfoDto.issuedAt=external.get_result('issuedAt');\r\n\
											$scope.CustomerInfoDto.effectedDate=external.get_result('effectedDate');\r\n\
											$scope.CustomerInfoDto.expiredDate=external.get_result('expiredDate');\r\n\
											if (external.get_result('issameperson') == 0){\r\n\
												$scope.CustomerInfoDto.intrest='9';\r\n\
												}\r\n\
											$scope.$apply();\r\n\
											document.getElementById('baocun').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
					web.Wait(200);
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
					req:complete(req.para);
					return false;
				end
				web.Wait(5000);
				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "var temp = document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[1].value;\r\n\
											var temp1 = external.get_result('name');\r\n\
											if (temp.indexOf(temp1) != -1){\r\n\
											external.put_result('flag','1');\r\n\
											}\r\n\
											"); 
					sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
					web.Wait(1000);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 
			end

			if json.Get(req.para,'/insured/name') ~= json.Get(req.para,'/car/owner/name') then

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementById('care_owner').click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("���������Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);

				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "document.getElementsByClassName('more')[2].click();\r\n\
						external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("������복����Ϣ��......\r\n");
					web.Wait(100);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 

				web.Wait(1000);
				



				web.PutResult('name','');
				web.PutResult('idNo','');
				web.PutResult('mailAddress','');
				web.PutResult('cellPhoneNo','');

				web.PutResult('name',json.Get(req.para,'/car/owner/name'));
				web.PutResult('idNo',json.Get(req.para,'/car/owner/id_no'));
				web.PutResult('mailAddress',json.Get(req.para,'/car/owner/address'));
				web.PutResult('cellPhoneNo',json.Get(req.para,'/car/owner/phone'));

				if web.GetResult('idNo') == nil then
					web.PutResult('idNo','111111111111111111');
				end

				if web.GetResult('mailAddress') == nil then
					web.PutResult('mailAddress','11111111111');
				end

				if web.GetResult('cellPhoneNo') == nil then
					web.PutResult('cellPhoneNo','88888888888');
				end

				web.PutResult('flag','');
				tm1 = web.NewTimeout(20000);
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('customerName')).scope();\r\n\
											$scope.CustomerInfoDto.name=external.get_result('name');\r\n\
											$scope.CustomerInfoDto.idNo=external.get_result('idNo');\r\n\
											$scope.CustomerInfoDto.mailAddress=external.get_result('mailAddress');\r\n\
											$scope.CustomerInfoDto.cellPhoneNo=external.get_result('cellPhoneNo');\r\n\
											$scope.CustomerInfoDto.zipCode='100000';\r\n\
											$scope.$apply();\r\n\
											document.getElementById('baocun').click();\r\n\
											external.put_result('flag','1');\r\n\
											"); 
					sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
					web.Wait(200);
				until(web.IsTimeout(tm1))

				if  web.GetResult("flag") == nil then
					sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
					req:complete(req.para);
					return false;
				end
				web.Wait(5000);
				tm1 = web.NewTimeout(10000);
				web.PutResult('flag','');
				repeat
					web.ExecuteScript(page, "var $scope = angular.element(document.getElementsByClassName('input-big   form-sys-out-unedit prosalName ng-pristine ng-untouched ng-valid ng-not-empty')[0]).scope();\r\n\
											var temp = $scope.CustomerInfo2.name;\r\n\
											var temp1 = external.get_result('name');\r\n\
											if (temp.indexOf(temp1) != -1){\r\n\
											external.put_result('flag','1');\r\n\
											}\r\n\
											"); 
					sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
					web.Wait(1000);
					flag = web.GetResult("flag");
					if web.GetResult("flag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1)); 
			end
		end



		
		web.ExecuteScript(page, "document.getElementsByClassName('more')[3].click();");
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page, "document.getElementsByClassName('more')[3].click();\r\n\
									document.getElementById('businesscode_BEJ000844').click()\r\n\
									document.getElementsByClassName('modal-footer move-header')[4].getElementsByTagName('button')[0].click();\r\n\
									external.put_result('flag','1');\r\n\
									"); 
			sys.DBGPrint("ѡ��������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡ������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ������ʧ��');
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
			sys.DBGPrint("ƽ̨������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡƽ̨����ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ƽ̨����ʧ��');
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
			--��ǿ�մ����ж�
			web.PutResult('ownererror','');
			web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
									if (temp.indexOf('ͬ���͵�����') != -1){\r\n\
									external.put_result('qiangerror',temp);\r\n\
									}\r\n\
									else if (temp.indexOf('ʹ������') != -1){\r\n\
										var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
										$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
										$scope.$apply();\r\n\
										document.getElementById('queryPlateRequest').click();\r\n\
									}\r\n\
									else if (temp.indexOf('��������') != -1){\r\n\
										external.put_result('ownererror','1');\r\n\
									}\r\n\
									else if(temp.indexOf('����') != -1){\r\n\
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
					sys.DBGPrint("ѡ��ͻ�������......\r\n");
					web.Wait(500);
					tempflag = web.GetResult("tempflag");
					if web.GetResult("tempflag") ~= nil then
						break;
					end
				until(web.IsTimeout(tm1))

				if  web.GetResult("tempflag") == nil then
					sys.DBGPrint("ѡ��ͻ�����ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
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
					sys.DBGPrint("�ظ������û���Ϣ��......\r\n");
					tempflag = web.GetResult("tempflag");
					if web.GetResult("tempflag") ~= nil then
						break;
					end
			web.Wait(200);
				until(web.IsTimeout(tm1))

				if  web.GetResult("tempflag") == nil then
					sys.DBGPrint("�ظ������û���Ϣʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'�ظ������û���Ϣʧ��');
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
			sys.DBGPrint("ƽ̨������......\r\n");
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
			sys.DBGPrint("ƽ̨����ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ƽ̨����ʧ��');
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
				sys.DBGPrint("��ȡ��������ʧ��ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��ʧ��');
				req:complete(req.para);
				return false;
			end
		elseif web.GetResult('chesun_buji')	== nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
								") then
				sys.DBGPrint("ȡ��������ʧ�ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��������ʧ�ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		end


		if web.GetResult('sanzhe') == nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
									document.getElementById('kindCode_A600').click();\r\n\
									") then
				sys.DBGPrint("ȡ��������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��');
				req:complete(req.para);
				return false;
			end
		elseif web.GetResult('sanzhe_buji')	== nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
											document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
								") then
				sys.DBGPrint("ȡ�������ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ�������ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		else
			if not web.ExecuteScript(page, "document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
								") then
				sys.DBGPrint("¼�����߱���ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'¼�����߱���ʧ��');
				req:complete(req.para);
				return false;
			end
		end


		if web.GetResult('siji') == nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
									document.getElementById('kindCode_A701').click();\r\n\
									") then
				sys.DBGPrint("ȡ��˾����ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��˾����ʧ��');
				req:complete(req.para);
				return false;
			end
		elseif web.GetResult('siji_buji')	== nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
				document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
								") then
				sys.DBGPrint("ȡ��˾���ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��˾���ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		else
			if not web.ExecuteScript(page, "document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
								") then
				sys.DBGPrint("¼��˾���ձ���ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'¼��˾���ձ���ʧ��');
				req:complete(req.para);
				return false;
			end
		end

		if web.GetResult('chengke') == nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
									document.getElementById('kindCode_A702').click();\r\n\
									") then
				sys.DBGPrint("ȡ���˿���ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ���˿���ʧ��');
				req:complete(req.para);
				return false;
			end
		elseif web.GetResult('chengke_buji')	== nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
				document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
								") then
				sys.DBGPrint("ȡ���˿��ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ���˿��ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		else
			if not web.ExecuteScript(page, "document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
								") then
				sys.DBGPrint("¼��˿��ձ���ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'¼��˿��ձ���ʧ��');
				req:complete(req.para);
				return false;
			end
		end


		if web.GetResult('daoqiang') == nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
									document.getElementById('kindCode_A500').click();\r\n\
									") then
				sys.DBGPrint("ȡ��������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��');
				req:complete(req.para);
				return false;
			end
		elseif web.GetResult('daoqiang_buji')	== nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
								") then
				sys.DBGPrint("ȡ�������ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ȡ�������ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		end

		if web.GetResult('boli') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A231').click();\r\n\
				if (external.get_result('boli_baoe').indexOf('����') != -1 || external.get_result('boli_baoe').indexOf('��������') != -1)\r\n\
						document.getElementById('Coverage_A231').value='1';\r\n\
						else if (external.get_result('boli_baoe').indexOf('����') != -1 || external.get_result('boli_baoe').indexOf('���ڲ���') != -1)\r\n\
							document.getElementById('Coverage_A231').value='2';\r\n\
									") then
				sys.DBGPrint("ѡ������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ������ʧ��');
				req:complete(req.para);
				return false;
			end
		end

		if web.GetResult('huahen') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A210').click();\r\n\
				document.getElementById('Coverage_A210').value=external.get_result('huahen_baoe');\r\n\
									") then
				sys.DBGPrint("ѡ�񻮺���ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ�񻮺���ʧ��');
				req:complete(req.para);
				return false;
			end
			if web.GetResult('huahen_buji') ~= nil then 
				if not web.ExecuteScript(page, "document.getElementById('kindCode_A971').click();\r\n\
									") then
					sys.DBGPrint("ѡ�񻮺��ղ�������ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ�񻮺��ղ�������ʧ��');
					req:complete(req.para);
					return false;
				end
			end

		end



		if web.GetResult('ziran') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A310').click();\r\n\
									") then
				sys.DBGPrint("ѡ����ȼ��ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ����ȼ��ʧ��');
				req:complete(req.para);
				return false;
			end
			if web.GetResult('ziran_buji') ~= nil then 
				if not web.ExecuteScript(page, "document.getElementById('kindCode_A970').click();\r\n\
									") then
					sys.DBGPrint("ѡ����ȼ�ղ�������ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ����ȼ�ղ�������ʧ��');
					req:complete(req.para);
					return false;
				end
			end
		end

		if web.GetResult('sheshui') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A290').click();\r\n\
									") then
				sys.DBGPrint("ѡ����ˮ��ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ����ˮ��ʧ��');
				req:complete(req.para);
				return false;
			end
			if web.GetResult('sheshui_buji') ~= nil then 
				if not web.ExecuteScript(page, "document.getElementById('kindCode_A972').click();\r\n\
									") then
					sys.DBGPrint("ѡ����ˮ�ղ�������ʧ��\r\n");
					web.ClosePage(page);
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ����ˮ�ղ�������ʧ��');
					req:complete(req.para);
					return false;
				end
			end
		end

		if web.GetResult('sanfang') ~= nil or web.GetResult('zhiding') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('showKindList_span').click();\r\n\
									") then
				sys.DBGPrint("�����ʾ���ְ�ťʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'�����ʾ���ְ�ťʧ��');
				req:complete(req.para);
				return false;
			end
		end

		if web.GetResult('sanfang') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A250').click();\r\n\
									") then
				sys.DBGPrint("ѡ�����������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ�����������ʧ��');
				req:complete(req.para);
				return false;
			end
		end



		if web.GetResult('zhiding') ~= nil then
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A252').click();\r\n\
				document.getElementById('Coverage_A252').value=external.get_result('zhiding_baoe');\r\n\
									") then
				sys.DBGPrint("ѡ��ָ����������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ָ����������ʧ��');
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
			sys.DBGPrint("ѡ����ϵ����......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡ����ϵ��ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ����ϵ��ʧ��');
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
			sys.DBGPrint("���Ѽ�������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(500);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("���Ѽ���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'���Ѽ���ʧ��');
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

		web.ExecuteScript(page, "document.getElementsByClassName('btn btn-noicon btn-primary btn-large btn-display btn-proposal-save ng-binding')[0].disabled=false;\r\n\
			document.getElementsByClassName('btn btn-noicon btn-primary btn-large btn-display btn-proposal-save ng-binding')[0].click();\r\n\
						"); 

		web.PutResult('shangNumber','');
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.Wait(100);
			web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
										if (temp.indexOf('�ݴ�ɹ�') != -1)\r\n\
											external.put_result('flag','1');\r\n\
											var reg=/[A-Z0-9]/g;\r\n\
											temp = temp.match(reg,'').join('');\r\n\
											external.put_result('shangNumber',temp);\r\n\
										")
			sys.DBGPrint("��ȡ�ݴ汣����......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("��ȡ�ݴ汣��ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��ȡ�ݴ汣��ʧ��');
			req:complete(req.para);
			return false;
		end

		local shangNumber = web.GetResult('shangNumber');
		req.para = json.Set(req.para,'/insurance/shangNumber',shangNumber);
		req.para = json.Set(req.para,'/insurance/complete',1);

		local ret = req.para;
		sys.DBGPrint('�ݴ汣���ɹ���'.."�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000)..'\r\n');
		ret = json.Set(ret,'/error',0);
		sys.DBGPrint(ret);
		req:complete(ret);
		web.ClosePage(page);
		
		return true;
	end









	web.PutResult('flag','');
	tm1 = web.NewTimeout(30000);
	repeat
		web.ExecuteScript(page,"document.getElementById('side_menu_12').click();\r\n\
			");
		web.ExecuteScript(page,"document.getElementById('licenseNo').value;\r\n\
			var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('Ͷ��') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("����Ͷ������ҳ����......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("����Ͷ������ҳ��ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		sys.DBGPrint("����Ͷ������ҳ��ʧ�ܣ�\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'����Ͷ������ҳ��ʧ�ܣ�!');
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
					sys.DBGPrint("ѡ��Ͷ������ʧ�ܣ�\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��Ͷ������ʧ�ܣ�');
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
					sys.DBGPrint("ѡ��Ͷ������ʧ�ܣ�\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'ѡ��Ͷ������ʧ�ܣ�');
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
	pos, _ = string.find(licenseNo, "��");
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
		web.Wait(150);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("���복����Ϣʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'���복����Ϣʧ��!');
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
		sys.DBGPrint("ѡ������......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("ѡ���ͳɹ�"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("ѡ����ʧ��\r\n");
		req:complete("{\"error\":-4,\"msg\":\"ѡ����ʧ��\"}");
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
		sys.DBGPrint("���Ͳ�ѯ��......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("���Ͳ�ѯʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'���Ͳ�ѯʧ��');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].innerHTML;\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("�ȴ���ѯ����......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("��ѯ����ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'��ѯ����ʧ��');
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
		sys.DBGPrint("ѡ������......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("ѡ����ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ѡ����ʧ��');
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
										if (temp.indexOf('��Ӫҵ��ҵ') != -1)\r\n\
											external.put_result('flag','1');\r\n\
										")
			sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
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
			sys.DBGPrint("ѡ��ʹ��������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡ��ʹ������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ��ʹ������ʧ��');
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
			sys.DBGPrint("ѡ��ʹ��������......\r\n");
			flag = web.GetResult("flag");
			if web.GetResult("flag") ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm1))

		if  web.GetResult("flag") == nil then
			sys.DBGPrint("ѡ��ʹ������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ��ʹ������ʧ��');
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
		sys.DBGPrint("ѡ��ͻ�������......\r\n");
		web.Wait(500);
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("ѡ��ͻ�����ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
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
		sys.DBGPrint("��д�ͻ���Ϣ��......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("��д�ͻ���Ϣʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'��д�ͻ���Ϣʧ��');
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
		sys.DBGPrint("�ȴ���ҳ��Ӧ��......\r\n");
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
								document.getElementById('businesscode_BEJ000844').click()\r\n\
								document.getElementsByClassName('modal-footer move-header')[4].getElementsByTagName('button')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("ѡ��������......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("ѡ������ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ѡ������ʧ��');
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
		sys.DBGPrint("ƽ̨������......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("ѡƽ̨����ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ƽ̨����ʧ��');
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
		--��ǿ�մ����ж�
		web.PutResult('ownererror','');
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								if (temp.indexOf('ͬ���͵�����') != -1){\r\n\
								external.put_result('qiangerror',temp);\r\n\
								}\r\n\
								else if (temp.indexOf('ʹ������') != -1){\r\n\
									var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									document.getElementById('queryPlateRequest').click();\r\n\
								}\r\n\
								else if (temp.indexOf('��������') != -1){\r\n\
									external.put_result('ownererror','1');\r\n\
								}\r\n\
								else if(temp.indexOf('����') != -1){\r\n\
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
				sys.DBGPrint("ѡ��ͻ�������......\r\n");
				web.Wait(500);
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("ѡ��ͻ�����ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ��ͻ�����ʧ��');
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
				sys.DBGPrint("�ظ������û���Ϣ��......\r\n");
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
				web.Wait(200);
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("�ظ������û���Ϣʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'�ظ������û���Ϣʧ��');
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
		sys.DBGPrint("ѡ���Զ���������......\r\n");
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
		sys.DBGPrint("ѡ���Զ�������ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ѡ���Զ�������ʧ��');
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
			sys.DBGPrint("��ȡ��������ʧ��ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��ʧ��');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chesun_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
							") then
			sys.DBGPrint("ȡ��������ʧ�ղ�������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��������ʧ�ղ�������ʧ��');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('sanzhe') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
								document.getElementById('kindCode_A600').click();\r\n\
								") then
			sys.DBGPrint("ȡ��������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('sanzhe_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
										document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("ȡ�������ղ�������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ�������ղ�������ʧ��');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("¼�����߱���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¼�����߱���ʧ��');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('siji') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
								document.getElementById('kindCode_A701').click();\r\n\
								") then
			sys.DBGPrint("ȡ��˾����ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��˾����ʧ��');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('siji_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
			document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("ȡ��˾���ղ�������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��˾���ղ�������ʧ��');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("¼��˾���ձ���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¼��˾���ձ���ʧ��');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('chengke') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
								document.getElementById('kindCode_A702').click();\r\n\
								") then
			sys.DBGPrint("ȡ���˿���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ���˿���ʧ��');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chengke_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
			document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("ȡ���˿��ղ�������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ���˿��ղ�������ʧ��');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("¼��˿��ձ���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¼��˿��ձ���ʧ��');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('daoqiang') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
								document.getElementById('kindCode_A500').click();\r\n\
								") then
			sys.DBGPrint("ȡ��������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ��������ʧ��');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('daoqiang_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
							") then
			sys.DBGPrint("ȡ�������ղ�������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ȡ�������ղ�������ʧ��');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('boli') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A231').click();\r\n\
			if (external.get_result('boli_baoe').indexOf('����') != -1 || external.get_result('boli_baoe').indexOf('��������') != -1)\r\n\
					document.getElementById('Coverage_A231').value='1';\r\n\
					else if (external.get_result('boli_baoe').indexOf('����') != -1 || external.get_result('boli_baoe').indexOf('���ڲ���') != -1)\r\n\
						document.getElementById('Coverage_A231').value='2';\r\n\
								") then
			sys.DBGPrint("ѡ������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ������ʧ��');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('huahen') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A210').click();\r\n\
			document.getElementById('Coverage_A210').value=external.get_result('huahen_baoe');\r\n\
								") then
			sys.DBGPrint("ѡ�񻮺���ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ�񻮺���ʧ��');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('huahen_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A971').click();\r\n\
								") then
				sys.DBGPrint("ѡ�񻮺��ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ�񻮺��ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		end

	end



	if web.GetResult('ziran') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A310').click();\r\n\
								") then
			sys.DBGPrint("ѡ����ȼ��ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ����ȼ��ʧ��');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('ziran_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A970').click();\r\n\
								") then
				sys.DBGPrint("ѡ����ȼ�ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ����ȼ�ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sheshui') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A290').click();\r\n\
								") then
			sys.DBGPrint("ѡ����ˮ��ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ����ˮ��ʧ��');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('sheshui_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A972').click();\r\n\
								") then
				sys.DBGPrint("ѡ����ˮ�ղ�������ʧ��\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'ѡ����ˮ�ղ�������ʧ��');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sanfang') ~= nil or web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('showKindList_span').click();\r\n\
								") then
			sys.DBGPrint("�����ʾ���ְ�ťʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'�����ʾ���ְ�ťʧ��');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('sanfang') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A250').click();\r\n\
								") then
			sys.DBGPrint("ѡ�����������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ�����������ʧ��');
			req:complete(req.para);
			return false;
		end
	end



	if web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A252').click();\r\n\
			document.getElementById('Coverage_A252').value=external.get_result('zhiding_baoe');\r\n\
								") then
			sys.DBGPrint("ѡ��ָ����������ʧ��\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'ѡ��ָ����������ʧ��');
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
		sys.DBGPrint("ѡ����ϵ����......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("ѡ����ϵ��ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'ѡ����ϵ��ʧ��');
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
		sys.DBGPrint("���Ѽ�������......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(500);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("���Ѽ���ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'���Ѽ���ʧ��');
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
		web.ExecuteScript(page, "document.getElementById('submitCommtion').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("�ύ�˱���......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("�ύ�˱�ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'�ύ�˱�ʧ��');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(20000);
	repeat
		web.ExecuteScript(page, "var temp = document.getElementsByClassName('lobibox-body-text-wrapper')[0].innerHTML;\r\n\
								if (temp.indexOf('�Զ��˱�ͨ��') != -1){\r\n\
									var reg=/[A-Z0-9]/g;\r\n\
									temp = temp.match(reg,'').join('');\r\n\
									external.put_result('shangNumber',temp);\r\n\
									external.put_result('flag','1');\r\n\
									document.getElementsByClassName('lobibox-btn lobibox-btn-default')[0].click();\r\n\
								}\r\n\
								else if(temp.indexOf('ת�˹�') != -1){\r\n\
									var reg=/[A-Z0-9]/g;\r\n\
									temp = temp.match(reg,'').join('');\r\n\
									external.put_result('shangNumber',temp);\r\n\
									external.put_result('flag','2');\r\n\
									document.getElementsByClassName('lobibox-btn lobibox-btn-default')[0].click();\r\n\
									}\r\n\
								"); 
		sys.DBGPrint("�ȴ��˱����......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(200);
	until(web.IsTimeout(tm1))


	if  web.GetResult("flag") == nil then
		sys.DBGPrint("�ȴ��˱����ʧ��\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'�ȴ��˱����ʧ��');
		req:complete(req.para);
		return false;
	end

	if web.GetResult('flag') == '2' then
		local shangNumber = web.GetResult('shangNumber');
		req.para = json.Set(req.para,'/insurance/shangNumber',shangNumber);
		req.para = json.Set(req.para,'/insurance/complete',0);

		local ret = req.para;
		sys.DBGPrint('ת�˹��˱���'.."�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000)..'\r\n');
		ret = json.Set(ret,'/error',0);
		sys.DBGPrint(ret);
		req:complete(ret);
		web.ClosePage(page);
		return true;
	else
		local shangNumber = web.GetResult('shangNumber');
		req.para = json.Set(req.para,'/insurance/shangNumber',shangNumber);
		req.para = json.Set(req.para,'/insurance/complete',1);

		local ret = req.para;

		sys.DBGPrint('�Զ��˱��ɹ���'.."�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000)..'\r\n');
		ret = json.Set(ret,'/error',0);
		sys.DBGPrint(ret);
		
		
		
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page,"document.getElementById('side_menu_10').click();\r\n\
				");
			web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
									if (temp.indexOf('ǩ��') != -1)\r\n\
									{\r\n\
										external.put_result('flag','1');\r\n\
									}\r\n\
				");
			sys.DBGPrint("����ǩ������ҳ����......\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("����ǩ������ҳ��ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			sys.DBGPrint("����ǩ������ҳ��ʧ�ܣ�\r\n");
			web.ClosePage(page);
			return false;
		end

		web.PutResult('shangNumber',json.Get(req.para,'/insurance/shangNumber'));
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page,"var $scope = angular.element(document.getElementsByTagName('input')[1]).scope();\r\n\
									$scope.ProductionInVo.documentNo=external.get_result('shangNumber');\r\n\
									$scope.$apply();\r\n\
									var index = 0;\r\n\
									while(true){\r\n\
										var temp = document.getElementsByTagName('button')[index].innerHTML;\r\n\
										if (temp.indexOf('��ѯ') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
				")
			sys.DBGPrint("���뵥��.....\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("���뵥�ųɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(500);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("���뵥��ʧ�ܣ�\r\n");
			return false;
		end
		


		local tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page, "document.getElementById('checkDocumentNo').click();\r\n\
									external.put_result('flag','1');\r\n\
			") 	
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));


		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܲ�ѯ����Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page,"var index = 0;\r\n\
									while(true){\r\n\
										var temp = document.getElementsByTagName('button')[index].innerHTML;\r\n\
										if (temp.indexOf('����') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
				")
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));

		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܳ��ظ�Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page,"var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
										if (temp.indexOf('���سɹ�') != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
				")
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));

		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܳ��ظ�Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end
		sys.DBGPrint("���ظ�Ͷ�����ųɹ���\r\n");
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page,"document.getElementById('side_menu_10').click();\r\n\
				");
			web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
									if (temp.indexOf('ǩ��') != -1)\r\n\
									{\r\n\
										external.put_result('flag','1');\r\n\
									}\r\n\
				");
			sys.DBGPrint("����ǩ������ҳ����......\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("����ǩ������ҳ��ɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(100);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			sys.DBGPrint("����ǩ������ҳ��ʧ�ܣ�\r\n");
			web.ClosePage(page);
			return false;
		end

		web.PutResult('shangNumber',json.Get(req.para,'/insurance/shangNumber'));
		web.PutResult('flag','');
		tm1 = web.NewTimeout(20000);
		repeat
			web.ExecuteScript(page,"var $scope = angular.element(document.getElementsByTagName('input')[1]).scope();\r\n\
									$scope.ProductionInVo.documentNo=external.get_result('shangNumber');\r\n\
									$scope.$apply();\r\n\
									var index = 0;\r\n\
									while(true){\r\n\
										var temp = document.getElementsByTagName('button')[index].innerHTML;\r\n\
										if (temp.indexOf('��ѯ') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
				")
			sys.DBGPrint("���뵥��.....\r\n");
			flag = web.GetResult("flag");
			if flag == '1' then
				sys.DBGPrint("���뵥�ųɹ���"..((web.GetTickCount()-startTime)/1000).."\r\n");
				break;
			end
			web.Wait(500);
		until(web.IsTimeout(tm1))

		if  flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("���뵥��ʧ�ܣ�\r\n");
			return false;
		end
		


		local tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page, "document.getElementById('checkDocumentNo').click();\r\n\
									external.put_result('flag','1');\r\n\
			") 	
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));


		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܲ�ѯ����Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page,"var index = 0;\r\n\
									while(true){\r\n\
										var temp = document.getElementsByTagName('button')[index].innerHTML;\r\n\
										if (temp.indexOf('ɾ��') != -1){\r\n\
										document.getElementsByTagName('button')[index].click();\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
										index++;\r\n\
										}\r\n\
				")
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));

		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܵ��ɾ����Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page,"document.getElementsByClassName('lobibox-btn lobibox-btn-default')[0].click();\r\n\
				external.put_result('flag','1');\r\n\
				")
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));

		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ�ܵ��ɾ����Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		tm11 = web.NewTimeout(20000);
		web.PutResult('flag','');
		repeat 
			web.ExecuteScript(page,"var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
										if (temp.indexOf('ɾ���ɹ�') != -1){\r\n\
										external.put_result('flag','1');\r\n\
										}\r\n\
				")
			if web.GetResult('flag') ~= nil then
				break;
			end
			web.Wait(200);
		until(web.IsTimeout(tm11));

		if web.GetResult('flag') == nil then
			sys.DBGPrint("δ��ɾ����Ͷ�����ţ�\r\n");
			web.ClosePage(page);
			return false;
		end

		req:complete(ret);
		sys.DBGPrint("ɾ����Ͷ�����ųɹ���\r\n");
		web.ClosePage(page);
		return true;
	end
end

--���庯��������������ʱ���Զ����ô˺���
function main()	
	local req;
	sys.DBGPrint("�ű���ʼִ�С���\r\n");
	web.OnShowMessage("OnDialog");

	while web.IsRunning() do
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--�鳵��
			elseif (req.type == 1) then
				--����ʷ����
			elseif (req.type == 2) then
				--�Զ�����
			elseif (req.type == 3) then
				--�Զ��˱�
				startTime = web.GetTickCount();
				auto_submit(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("�ܺ�ʱ��"..((endTime-startTime)/1000).."\r\n");
			else
				--δ֪����������
				req:complete("{\"error\":-1,\"msg\":\"δ֪����\"}");
			end
		end
		web.Wait(10);
	end


	sys.DBGPrint("�ű��˳�\r\n");
end
