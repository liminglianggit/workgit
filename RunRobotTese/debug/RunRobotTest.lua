--����ǲ�������������˵�����ʹ��LUA�ű����ƿ��������Ա����˱�Ϊ����

--�����г���ȫ����ϵͳ���������ƺͺ��嶼��Ԥ������ˣ���Ҫ�޸����ǣ�ֻҪ����ʵ�����ȥ�޸����ǵ�ֵ�Ϳ����ˡ�
--�Ƿ�֧�ֳ��Ʋ�ѯ����
support_inquire_car = true;
--�Ƿ�֧����ʷ������ѯ
support_query_insurance_history = true;
--�Ƿ�֧���Զ�����
support_auto_quote = true;
--�Ƿ�֧���Զ��˱�
support_auto_submit = false;
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
			sys.DBGPrint("����ʧ�ܣ�\r\n");
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
	user = "A0145";
	password = "Tbv71wdC8";
	if user == nil or password == nil then
		return false, "�û���������Ϊ��";
	end
	if not web.Navigate(page, url) then
		return false, "�޷�������������ҳ";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "����ʧ��";
	end
	WaitForObjectLoaded(page, "document.getElementsByTagName('title')[0]");--�˷���������
	
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("�ȴ���ȡtitle�����Ժ�\r\n");
		if title then
		--�жϵ�½�����ĸ�����
			pos = nil;
			pos, _ = string.find(title, "��������");
			if pos == nil then
				pos, _ = string.find(title, "�б�����ϵͳ");
				if pos == nil then
					pos, _= string.find(title,"�ո�����ϵͳ");
					if pos == nil then
						return false, "�޷�ʶ��ı���["..title.."]";
					else
						return true,"�ɹ�";
					end
				else
					return true,"�ɹ�";
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	if title == nil then
		return false, "�޷���ȡ����";
	end
	web.PutResult("username", user);
	web.PutResult("password", password);
	--���������Ҫ��д��repeat
	if (not web.ExecuteScript(page, "document.getElementById('usernameDisplay').value=external.get_result('username');\r\n\
								document.getElementById('passwordDisplay').value=external.get_result('password');\r\n\
								document.getElementsByName('loginSubmitButton')[0].click();\r\n\
								")) then
		return false, "ִ�е�¼�ű�ʧ�ܣ�";
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


--�鳵��
function inquire_car(req)
	local page, err, ret, desk, engine, cls, model, vin, num, tm;
	sys.DBGPrint("���ֲ�ѯ����[%s]������\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("�½�ҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-2,\"msg\":\"����ҳ��ʧ��\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��¼���ؽ��[%s]��\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��½��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("����б�����ϵͳҳ���У�\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("����б�����ϵͳҳ��ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("����б�����ϵͳҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-4,\"msg\":\"����б�����ϵͳҳ��ʧ��!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[3].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("���Ͷ������\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���Ͷ������ʧ��\"}");
			return false;
	end

	sys.DBGPrint("������Ͷ�����棬�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");

	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('LicenseNo')[0];");
	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('buttonSubmit')[0];");
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value = external.get_result('LicenseNo');\r\n\
		fraInterface.document.getElementsByName('buttonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("���복�ƺ�ʧ�ܣ�\r\n");
			req:complete("{\"error\":-6,\"msg\":\"���복�ƺ�ʧ��\"}");
			return false;
	end
	sys.DBGPrint("���복�ƺųɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");

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
		sys.DBGPrint("δ�ܲ�ѯ���ó���Ͷ�����ţ�\r\n");
		req:complete("{\"error\":-7,\"msg\":\"δ�ܲ�ѯ���ó���Ͷ�����ţ�\"}");
		return false;
	end

	sys.DBGPrint("���Ͷ�����ţ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	WaitForDocumentCompleted(page);--�������Է�©�飩
	sys.DBGPrint("ҳ�������ϣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	--��ȡ���ƺ�	web.PutResult("plateno", req.para);
	--ȡ������Ϣ
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
								if (InsuredNature.indexOf('��') != -1){\r\n\
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
		--������Ϣ�ڵڶ�ҳ����Ҫ�Ƚ���ڶ�ҳ�����õ�
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
								
		sys.DBGPrint("����ȡ���ݣ����Ժ�\r\n");
		--����鵽����ɹ�����Ŀ
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
			sys.DBGPrint("ȡ���ݳɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("�ȴ����Ʋ�ѯ��ʱ��\r\n");
			req:complete("{\"error\":-9,\"msg\":\"�ȴ����Ʋ�ѯ��ʱ\"}");
			return false;
	end

	ret = "{\"error\":0,\"msg\":\"�ɹ�\", \"car\":{";
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
	--car�����Ϣ�ӹ����
	--�鳵����Ϣ�ӹ����
	ret = ret.."}";
	--��json���ӹ����
	web.ClosePage(page);
	req:complete(ret);
	return true;
end



function query_insurance_history(req)
	local page, err, ret, desk;
	sys.DBGPrint("���ֲ�ѯ��ʷ����[%s]������\r\n", json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("�½�ҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-2,\"msg\":\"����ҳ��ʧ��\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��¼���ؽ��[%s]��\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��½��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("����б�����ϵͳҳ���У�\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("����б�����ϵͳҳ��ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("����б�����ϵͳҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-4,\"msg\":\"����б�����ϵͳҳ��ʧ��!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[3].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("���Ͷ������ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���Ͷ������ʧ��\"}");
			return false;
	end

	sys.DBGPrint("������Ͷ�����棬�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");

	WaitForObjectLoaded(page, "fraInterface.document.getElementsByName('LicenseNo')[0];");
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value = external.get_result('LicenseNo');\r\n\
		fraInterface.document.getElementsByName('buttonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("���복�ƺ�ʧ�ܣ�\r\n");
			req:complete("{\"error\":-6,\"msg\":\"���복�ƺ�ʧ��\"}");
			return false;
	end
	sys.DBGPrint("���복�ƺųɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");

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
		sys.DBGPrint("δ�ܲ�ѯ���ó���Ͷ�����ţ�\r\n");
		req:complete("{\"error\":-7,\"msg\":\"δ�ܲ�ѯ���ó���Ͷ�����ţ�\"}");
		return false;
	end

	sys.DBGPrint("���Ͷ�����ţ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	WaitForDocumentCompleted(page);--�������Է�©�飩
	sys.DBGPrint("ҳ�������ϣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	--��ȡ���ƺ�	web.PutResult("plateno", req.para);
	--ȡ������Ϣ
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

	sys.DBGPrint("����ȡ��������Ϣ.....".."\r\n");
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
									if (InsuredNature.indexOf('��') != -1){\r\n\
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
			--������Ϣ�ڵڶ�ҳ����Ҫ�Ƚ���ڶ�ҳ�����õ�
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
		sys.DBGPrint("����ȡ���ݣ����Ժ�\r\n");
		--����鵽����ɹ�����Ŀ
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
			sys.DBGPrint("ȡ������Ϣ�ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm10));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("��ȡ������Ϣʧ�ܣ�\r\n");
		req:complete("{\"error\":-8,\"msg\":\"��ȡ������Ϣʧ�ܣ�\"}");
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
	--������Ϣ�ڵڶ�ҳ����Ҫ�Ƚ���ڶ�ҳ�����õ�
	--sys.DBGPrint("����ȡ��ҵ�ձ������ݣ����Ժ�"..web.GetResult("temp_flag").."\r\n");
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

	--�ж��û�Ͷ����Ʒ	1Ϊ��ҵ�ͽ�ǿ	2Ϊ��ҵ		3Ϊ��ǿ
	web.PutResult("PolicyFlagName","");
	web.ExecuteScript(page,"var PolicyFlagName = fraInterface.document.getElementsByName('PolicyFlagName')[0].value;\r\n\
							if (PolicyFlagName.indexOf('��ҵ') != -1 && PolicyFlagName.indexOf('��ǿ') != -1){\r\n\
								external.put_result('PolicyFlagName','1');\r\n\
							}\r\n\
							else if (PolicyFlagName.indexOf('��ҵ') != -1){\r\n\
								external.put_result('PolicyFlagName','2');\r\n\
							}\r\n\
							else{\r\n\
								external.put_result('PolicyFlagName','3');\r\n\
							}\r\n\
		");							
	PolicyFlag = web.GetResult("PolicyFlagName");
	--ȡ��ǿ����Ϣ
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
		sys.DBGPrint("����ȡ��ǿ�ձ������ݣ����Ժ�\r\n");
		if StartDate ~= nil  and EndDate ~= nil then
				sys.DBGPrint("ȡ���ݳɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
				web.PutResult("flag","1");
		end
		if PolicyFlag == '1' then
			if not web.ExecuteScript(page,"history.go(-1);") then 
				web.ClosePage(page);
				sys.DBGPrint("������һҳʧ�ܣ�\r\n");
				req:complete("{\"error\":-8,\"msg\":\"������һҳʧ��\"}");
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
	--ȡ��ҵ����Ϣ
	if PolicyFlag == '1' or PolicyFlag == '2' then
		repeat
			web.Wait(1);
			--��ȡ����/������/����
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
			--�жϳ��������������
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByName('Amount')[index].value;\r\n\
										if (temp != '0.00'){\r\n\
											var insure_type = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
											if (insure_type.indexOf('������ʧ��') != -1)\r\n\
												external.put_result('chesun',temp);\r\n\
											else if (insure_type.indexOf('��ȼ��ʧ��') != -1)\r\n\
												external.put_result('ziran',temp);\r\n\
											else if (insure_type.indexOf('������') != -1)\r\n\
												external.put_result('sanzhe',temp);\r\n\
											else if (insure_type.indexOf('˾��') != -1)\r\n\
												external.put_result('siji',temp);\r\n\
											else if (insure_type.indexOf('�˿�') != -1)\r\n\
												external.put_result('chengke',temp);\r\n\
											else if (insure_type.indexOf('����') != -1)\r\n\
												external.put_result('daoqiang',temp);\r\n\
											else if (insure_type.indexOf('��������ˮ��ʧ��') != -1)\r\n\
												external.put_result('sheshui',temp);\r\n\
											else if (insure_type.indexOf('����') != -1)\r\n\
												external.put_result('huahen',temp);\r\n\
											else if (insure_type.indexOf('������') != -1)\r\n\
												external.put_result('sanfang',temp);\r\n\
										}\r\n\
										index++;\r\n\
									}\r\n\
									external.put_result('temp_flag',index);\r\n\
						")
			--�ж��Ƿ��в�����
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
											var boli = fraInterface.document.getElementsByName('Model')[index].value;\r\n\
											if (boli.indexOf('����') != -1){\r\n\
												external.put_result('boli',boli);\r\n\
												break;\r\n\
												}\r\n\
											index++;\r\n\
									}\r\n\
						")
			--�ж��Ƿ�Ϊ��������
			web.ExecuteScript(page, "var index = 1\r\n\
									while(true){\r\n\
										var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
											if (temp.indexOf('��������ʧ') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('chesun_buji',temp);\r\n\
											else if (temp.indexOf('������') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('sanzhe_buji',temp);\r\n\
											else if (temp.indexOf('˾��') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('siji_buji',temp);\r\n\
											else if (temp.indexOf('�˿�') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('chengke_buji',temp);\r\n\
											else if (temp.indexOf('����') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('daoqiang_buji',temp);\r\n\
											else if (temp.indexOf('��������ˮ��ʧ��') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('sheshui_buji',temp);\r\n\
											else if (temp.indexOf('��ȼ��ʧ��') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('ziran_buji',temp);\r\n\
											else if (temp.indexOf('����') != -1 && temp.indexOf('����') != -1)\r\n\
												external.put_result('huahen_buji',temp);\r\n\
											else if (insure_type.indexOf('ָ��') != -1)\r\n\
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
			--������Ϣ�ڵڶ�ҳ����Ҫ�Ƚ���ڶ�ҳ�����õ�
			--sys.DBGPrint("����ȡ��ҵ�ձ������ݣ����Ժ�"..web.GetResult("temp_flag").."\r\n");
			sys.DBGPrint("����ȡ��ҵ�ձ������ݣ����Ժ�\r\n");
			--����鵽����ɹ�����Ŀ
			StartDate = web.GetResult("StartDate");
			EndDate = web.GetResult("EndDate");
			PremiumCount = web.GetResult("PremiumCount");
			PolicyNo = web.GetResult("PolicyNo");

			
			--���г˿���ʱ����Ҫ���²���ÿλ�˿��յ�ֵ
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
				sys.DBGPrint("ȡ���ݳɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
				web.PutResult("flag","1");
				break;
			end
		until (web.IsTimeout(tm2));
	end
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("�ȴ�������ѯ��ʱ��\r\n");
			req:complete("{\"error\":-9,\"msg\":\"�ȴ�������ѯ��ʱ\"}");
			return false;
	end
	--flag �ж��Ƿ���Ҫ�Ӷ���
	local flag = 0;
	ret = "{\"error\":0,\"msg\":\"�ɹ�\", \"car\":{";
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
	--ÿ������������������һ����Ҫһ���ж��Ƿ���ɸ�����
	--���ж��Ƿ�Ϊ��������
	--�ж��Ƿ������ҵ��
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
		ret = ret..",\"comDes\":\"�����������޹�˾\"";
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
	--�ж��Ƿ����ǿ��
	if PolicyFlag == '1' or PolicyFlag == '3' then
		if flag > 0 then
			ret = ret..",";
		end
		ret = ret.."{\"comDes\":\"�����������޹�˾\"";
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
	--��ʷ������Ϣ�ӹ����
	ret = ret.."}";
	--��json���ӹ����
	web.ClosePage(page);
	req:complete(ret);
	return true;
end

--�Զ�����
function  auto_quote(req)
	-- body
	--�ж��Ƿ���Ͷ����ǿ��
	jiaoqiang_flag = 0;
	global_message = nil;
	sys.DBGPrint("�����Զ�����[%s]������\r\n", json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para);
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("�½�ҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-2,\"msg\":\"����ҳ��ʧ��\"}");
		return false;
	end
	ret, err = login(page,"https://cs.libertymutual.com.cn/prpall");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��¼���ؽ��[%s]��\r\n", err);
		req:complete("{\"error\":-3,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��½��ɣ��ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByName('RiskCodeSelect')[0].value='0502';\r\n\
			document.getElementsByName('RiskCode')[0].value='0502';\r\n\
			document.getElementsByTagName('button')[0].click();\r\n\
			external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("����б�����ϵͳҳ���У�\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("����б�����ϵͳҳ��ɹ����ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("����б�����ϵͳҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-4,\"msg\":\"����б�����ϵͳҳ��ʧ��!\"}");
		return false;
	end
	
	WaitForObjectLoaded(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0];");
	if not web.ExecuteScript(page, "fraMenu.document.frames[0].document.getElementsByTagName('td')[0].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('td')[2].click();\r\n\
		fraMenu.document.frames[0].document.getElementsByTagName('a')[1].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("���Ͷ��¼�����ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���Ͷ��¼�����ʧ��\"}");
			return false;
	end

	WaitForDocumentCompleted(page);
	--ѡ��Ͷ����ҵ�ջ��߽�ǿ��

	if json.Get(req.para,"/insurance/jiaoqiang") == '1' and json.Get(req.para,"/insurance/shang") == '1' then 
		sys.DBGPrint("ѡ����ҵ�պͽ�ǿ��!\r\n");
	elseif json.Get(req.para,"/insurance/jiaoqiang") == "1" then
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('ProductTypeMTPL')[0].click();\r\n\
								") then
			web.ClosePage(page);
			sys.DBGPrint("ѡ��ǿ��ʧ��\r\n");
			req:complete("{\"error\":-5,\"msg\":\"ѡ��ǿ��ʧ��\"}");
			return false;
		end
	else
		if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('ProductTypeMOTOR')[0].click();\r\n\
									") then
				web.ClosePage(page);
				sys.DBGPrint("ѡ����ҵ��ʧ��\r\n");
				req:complete("{\"error\":-5,\"msg\":\"ѡ����ҵ��ʧ��\"}");
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
			sys.DBGPrint("ҵ���ϵ��������ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"�Զ�����ʧ�ܣ�������������ԭ���£������ԣ�\"}");
			return false;
	end
	web.Wait(1500);

	web.PutResult('CarKindName','');
	if json.Get('/car/vehicle_type') ~= nil then
		web.PutResult('CarKindName',json.Get('/car/vehicle_type'));
	end
	if web.GetResult('CarKindName') == nil then
		sys.DBGPrint('δ�ܻ�ȡ�������࣬ʹ��Ĭ��ֵ��\r\n');
		 web.PutResult('CarKindName','�ͳ�');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CarKindName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].click();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].value=external.get_result('CarKindName');\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('CarKindName')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("��������¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"��������¼��ʧ�ܣ�\"}");
			return false;
	end
	web.Wait(1500);

	web.PutResult('LicenseKindName','');
	if json.Get('/car/license_type') ~= nil then
		web.PutResult('LicenseKindName',json.Get('/car/license_type'));
	end
	if web.GetResult('LicenseKindName') == nil then
		sys.DBGPrint('δ�ܻ�ȡ�������࣬ʹ��Ĭ��ֵ��\r\n');
		 web.PutResult('LicenseKindName','С����������');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseKindName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].click();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].value=external.get_result('LicenseKindName');\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('LicenseKindName')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("��������¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"��������¼��ʧ�ܣ�\"}");
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
		sys.DBGPrint('δ�ܻ�ȡ����ʹ�����ʣ�ʹ��Ĭ��ֵ��\r\n');
		web.PutResult('UseNatureName','��ͥ��������');
	end
	if web.GetResult('UseNatureCode') == nil then
		sys.DBGPrint('δ�ܻ�ȡ����ʹ�����ʴ��룬ʹ��Ĭ��ֵ��\r\n');
		 web.PutResult('UseNatureCode','8A');
	end
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('UseNatureName')[0].focus();\r\n\
									fraInterface.document.getElementsByName('UseNatureName')[0].click();\r\n\
									fraInterface.document.getElementsByName('UseNatureName')[0].value=external.get_result('UseNatureName');\r\n\
									fraInterface.document.getElementsByName('UseNatureCode')[0].value=external.get_result('UseNatureCode');\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("����ʹ������¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"����ʹ������¼��ʧ��\"}");
			return false;
	end
	if json.Get(req.para,"/insurance/jiaoqiang") == "1" then
		web.PutResult('FuelTypeName','����');
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
			sys.DBGPrint("����ȼ������¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"����ȼ������¼��ʧ��\"}");
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
			sys.DBGPrint("���ܺ�/VIN¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���ܺ�/VIN¼��ʧ�ܣ�\"}");
			return false;
	end
	
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('AccordingEngineNo')[0].focus();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].click();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].value=external.get_result('AccordingEngineNo');\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].onchange();\r\n\
									fraInterface.document.getElementsByName('AccordingEngineNo')[0].onblur();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("��������¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"��������¼��ʧ�ܣ�\"}");
			return false;
	end

	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('LicenseNo')[0].value=external.get_result('LicenseNo');\r\n\
									fraInterface.document.getElementsByName('SeatCount')[0].value=external.get_result('SeatCount');\r\n\
									fraInterface.document.getElementsByName('EnrollDate')[0].value=external.get_result('EnrollDate');\r\n\
									fraInterface.document.getElementsByName('AccordingMainCarOwner')[0].value=external.get_result('AccordingMainCarOwner');\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("������λ�������ڳ���¼��ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"������λ�������ڳ���¼��ʧ�ܣ�\"}");
			return false;
	end

	if not web.ExecuteScript(page, "fraInterface.document.getElementById('tableB').click();\r\n\
									fraInterface.document.getElementsByName('buttonAddCustomer1')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("�����ӱ�������Ϣʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"�����ӱ�������Ϣʧ�ܣ�\"}");
			return false;
	end

	local new_page = nil;
	local tm5 = web.NewTimeout(5000);
	web.PutResult('flag','');
	repeat
			new_page = web.GetPageAt(1);
			sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
			sys.DBGPrint('��һ�λ�ȡҳ��\r\n');
			if web.GetPageURL(new_page)=='https://cs.libertymutual.com.cn/prpall/common/pub/CustomerFrame.jsp?EditType=I&Language=C' then
				web.PutResult('flag','1');
				break;
			end
			new_page = web.GetPageAt(0);
			sys.DBGPrint(web.GetPageURL(new_page)..'\r\n');
			sys.DBGPrint('�ڶ��λ�ȡҳ��\r\n');
			if web.GetPageURL(new_page)=='https://cs.libertymutual.com.cn/prpall/common/pub/CustomerFrame.jsp?EditType=I&Language=C' then
				web.PutResult('flag','1');
				break;
			end
	until(web.IsTimeout(tm5));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("��ȡ��������Ϣҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-5,\"msg\":\"��ȡ��������Ϣҳ��ʧ�ܣ�\"}");
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
	web.PutResult('prpDcustomerIdvAddressCName','������');

	if web.GetResult('prpDcustomerIdvIdentifyNumber') == nil then
		sys.DBGPrint('δ�ܻ�ȡ����ID��ʹ��Ĭ��ֵ��\r\n');
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
			sys.DBGPrint("���뱻������Ϣʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���뱻������Ϣʧ��\"}");
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
			sys.DBGPrint("���뱻������Ϣʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"���뱻������Ϣʧ��\"}");
			return false;
	end
	
	if web.GetResult('prpDcustomerIdvSex') == '��' then
		web.ExecuteScript(new_page,"inputFrame.document.getElementById('xMale').click();")
	else
		web.ExecuteScript(new_page,"inputFrame.document.getElementById('xWoman').click();")
	end
	--]]
	if not web.ExecuteScript(new_page, "inputFrame.document.getElementsByName('UnitButtonSubmit')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("������汻������Ϣʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"������汻������Ϣʧ�ܣ�\"}");
			return false;
	end

	local new_page = nil;
	if not web.ExecuteScript(page, "fraInterface.document.getElementById('tableA').click();\r\n\
		fraInterface.document.getElementsByName('vinnoquery')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("������ܺŲ�ѯʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"������ܺŲ�ѯʧ�ܣ�\"}");
			return false;
	end


	local tm7 = web.NewTimeout(5000);
	web.PutResult('flag','');
	local vinUrl = 'https://cs.libertymutual.com.cn/prpall/0501/common/tb/UIProposalModelCodeList.jsp?VPNNo='..json.Get(req.para,'/car/vin')..'&LicenseNo='..json.Get(req.para,'/car/plate_no');
	repeat
			new_page = web.GetPageAt(1);
			if web.GetPageURL(new_page)==vinUrl then
				web.PutResult('flag','1');
				sys.DBGPrint('��ȡ��ȡ���ܺ�ҳ��\r\n');
				break;
			end
			new_page = web.GetPageAt(0);
			if web.GetPageURL(new_page)==vinUrl then
				web.PutResult('flag','1');
				sys.DBGPrint('��ȡ��ȡ���ܺ�ҳ��\r\n');
				break;
			end
	until(web.IsTimeout(tm7));
	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("��ȡѡ�񳵼ܺ�ҳ��ʧ�ܣ�\r\n");
		req:complete("{\"error\":-5,\"msg\":\"��ȡѡ�񳵼ܺ�ҳ��ʧ�ܣ�\"}");
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
			sys.DBGPrint("ѡ�񳵼ܺ�ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"ѡ�񳵼ܺ�ʧ��\"}");
			return false;
									
	end
	new_page = nil;
	--�Ƿ�Ͷ������
	--��ʼ��
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
	--�Ƿ񲻼�����
	
	web.PutResult('chesun_buji','');
	web.PutResult('sanzhe_buji','');
	web.PutResult('siji_buji','');
	web.PutResult('chengke_buji','');
	web.PutResult('daoqiang_buji','');
	web.PutResult('ziran_buji','');
	web.PutResult('sheshui_buji','');
	web.PutResult('huahen_buji','');
	--����
	
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

	--�Ƿ񲻼�����

	--����
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
	--������Ϣ¼��
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
					pos,_=string.find(global_message,'A702���ܵ���');
					if pos ~= nil then
						global_message = nil;
						web.ClosePage(page);
						sys.DBGPrint("�˿��ղ��ܵ���¼�룬����ѡ��˾����!\r\n");
						req:complete("{\"error\":-5,\"msg\":\"�˿��ղ��ܵ���¼�룬����ѡ��˾����!\"}");
						return false;	
					end
				end
				until(web.GetResult('flag') == nil)
			end
			
			num = num + 1;
			web.PutResult('insure_code','');
		until(num > 5);
	end
	--���ո����ղ�������¼��
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

	--����¼��
	
	if web.GetResult('sanzhe') ~= nil then
		web.ExecuteScript(page,"var index = 1;\r\n\
								while(true){\r\n\
									var temp = fraInterface.document.getElementsByName('KindName')[index].value;\r\n\
									if (temp.indexOf('����') != -1){\r\n\
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
									if (temp.indexOf('˾��') != -1){\r\n\
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
									if (temp.indexOf('�˿�') != -1){\r\n\
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
									if (temp.indexOf('����') != -1){\r\n\
										if (external.get_result('boli_baoe') == '����' || external.get_result('boli_baoe') == '��������'){\r\n\
											fraInterface.document.getElementsByName('Model')[index].value=1;\r\n\
											fraInterface.document.getElementsByName('Model')[index].onchange();\r\n\
										}\r\n\
										else if(external.get_result('boli_baoe') == '����' || external.get_result('boli_baoe') == '���ڲ���'){\r\n\
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
									if (temp.indexOf('����') != -1 && temp.indexOf('����') == -1){\r\n\
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
									if (temp.indexOf('ָ��') != -1 ){\r\n\
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
			sys.DBGPrint("������Ͳ�ѯʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"������Ͳ�ѯʧ�ܣ�\"}");
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
		pos,_=string.find(global_message,'ƽ̨�����ɹ�');
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
		sys.DBGPrint("ѡ������\r\n");
		if web.GetResult('flag') ~= nil then 
			break;
		end
		if jiaoqiang_flag == 1 then
			web.ClosePage(page);
			sys.DBGPrint("��ǿ���쳣���ó���Ͷ��ͬ���͵�����!\r\n");
			req:complete("{\"error\":-10,\"msg\":\"��ǿ���쳣���ó����ڱ���˾��������˾Ͷ��ͬ�������֣������ظ�Ͷ����\"}");
			return false;
		end
	until(web.IsTimeout(tm1));

	if jiaoqiang_flag == 1 then
		web.ClosePage(page);
		sys.DBGPrint("��ǿ���쳣���ó���Ͷ��ͬ���͵�����!\r\n");
		req:complete("{\"error\":-10,\"msg\":\"��ǿ���쳣���ó����ڱ���˾��������˾Ͷ��ͬ�������֣������ظ�Ͷ����\"}");
		return false;
	end

	if web.GetResult('flag') == nil then 
		web.ClosePage(page);
		sys.DBGPrint("����ʧ�ܣ���������������ϣ������ԣ�\r\n");
		req:complete("{\"error\":-5,\"msg\":\"����ʧ�ܣ���������������ϣ������ԣ�\"}");
		return false;
	end


	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('CIQueryDemandSubmit')[0].click();\r\n\
			") then 
		web.ClosePage(page);
		sys.DBGPrint("�ڶ���ƽ̨����ʧ�ܣ�\r\n");
		req:complete("{\"error\":-5,\"msg\":\"�ڶ���ƽ̨����ʧ�ܣ�\"}");
		return false;
	end
	local tm4 = web.NewTimeout(10000);
	repeat
		if global_message ~= nil then
			pos,_=string.find(global_message,'ƽ̨�����ɹ�');
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
			sys.DBGPrint("�ڶ���ѡ����ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"ѡ����ʧ�ܣ�\"}");
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
				sys.DBGPrint("ѡ��Ͷ������ʧ�ܣ�\r\n");
				req:complete("{\"error\":-5,\"msg\":\"ѡ��Ͷ������ʧ�ܣ�\"}");
				return false;
		end
	end
	
	web.Wait(1000);
	if not web.ExecuteScript(page, "fraInterface.document.getElementsByName('buttonCaculate')[0].click();\r\n\
		") then
			web.ClosePage(page);
			sys.DBGPrint("������Ѽ���ʧ�ܣ�\r\n");
			req:complete("{\"error\":-5,\"msg\":\"������Ѽ���ʧ�ܣ�\"}");
			return false;
	end

	if global_message ~= nil then
		pos,_=string.find(global_message,'��ѡ��A701������');
		if pos ~= nil then
			global_message = nil;
			web.ClosePage(page);
			sys.DBGPrint("˾���ձ�����⳥�޶��߱���Ϊ20��\r\n");
			req:complete("{\"error\":-7,\"msg\":\"˾���ձ�����⳥�޶��߱���Ϊ20��\"}");
			return false;
		end
		pos,_=string.find(global_message,'��ѡ��A702������');
		if pos ~= nil then
			global_message = nil;
			web.ClosePage(page);
			sys.DBGPrint("�˿��ձ�����⳥�޶��߱���Ϊ20��\r\n");
			req:complete("{\"error\":-7,\"msg\":\"�˿��ձ�����⳥�޶��߱���Ϊ20��\"}");
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
	
	
	--����
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
									if (temp.indexOf('��������ʧ') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('chesun_buji_baofei',value);\r\n\
									else if (temp.indexOf('������') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('sanzhe_buji_baofei',value);\r\n\
									else if (temp.indexOf('˾��') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('siji_buji_baofei',value);\r\n\
									else if (temp.indexOf('�˿�') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('chengke_buji_baofei',value);\r\n\
									else if (temp.indexOf('����') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('daoqiang_buji_baofei',value);\r\n\
									else if (temp.indexOf('��������ˮ��ʧ��') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('sheshui_buji_baofei',value);\r\n\
									else if (temp.indexOf('��ȼ��ʧ��') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('ziran_buji_baofei',value);\r\n\
									else if (temp.indexOf('����') != -1 && temp.indexOf('����') != -1)\r\n\
										external.put_result('huahen_buji_baofei',value);\r\n\
									else if (temp.indexOf('������') != -1 )\r\n\
										external.put_result('sanzhe_baofei',value);\r\n\
									else if (temp.indexOf('˾��') != -1 )\r\n\
										external.put_result('siji_baofei',value);\r\n\
									else if (temp.indexOf('�˿�') != -1 )\r\n\
										external.put_result('chengke_baofei',value);\r\n\
									else if (temp.indexOf('����') != -1 )\r\n\
										external.put_result('daoqiang_baofei',value);\r\n\
									else if (temp.indexOf('��������ˮ��ʧ��') != -1 )\r\n\
										external.put_result('sheshui_baofei',value);\r\n\
									else if (temp.indexOf('��ȼ��ʧ��') != -1 )\r\n\
										external.put_result('ziran_baofei',value);\r\n\
									else if (temp.indexOf('����') != -1 )\r\n\
										external.put_result('huahen_baofei',value);\r\n\
									else if (temp.indexOf('������ʧ') != -1 )\r\n\
										external.put_result('chesun_baofei',value);\r\n\
									else if (temp.indexOf('����') != -1 )\r\n\
										external.put_result('boli_baofei',value);\r\n\
									else if (temp.indexOf('ָ��') != -1 )\r\n\
										external.put_result('zhiding_baofei',value);\r\n\
									else if (temp.indexOf('��������Լ') != -1 )\r\n\
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
		sys.DBGPrint('���Ѽ���ɹ���'.."�ܺ�ʱ��"..((web.GetTickCount()-startTime)/1000)..'\r\n');
		sys.DBGPrint(ret);
		web.ClosePage(page);
		req:complete(ret);
		return true;
	end
	web.ClosePage(page);
	sys.DBGPrint("���Ѽ���ʧ��\r\n");
	req:complete("{\"error\":-8,\"msg\":\"���Ѽ���ʧ�ܣ�������������ԭ���£������ԣ�\"}");
	return false;

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
				startTime = web.GetTickCount();
				inquire_car(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("�ܺ�ʱ��"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 1) then
				--����ʷ����
				startTime = web.GetTickCount();
				query_insurance_history(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("�ܺ�ʱ��"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 2) then
				--�Զ�����
				startTime = web.GetTickCount();
				auto_quote(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("�ܺ�ʱ��"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 3) then
				--�Զ��˱�
				req:complete("{\"error\":-1,\"msg\":\"��֧���Զ��˱�\"}");
			else
				--δ֪����������
				req:complete("{\"error\":-1,\"msg\":\"δ֪����\"}");
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("�ű��˳�\r\n");
end
