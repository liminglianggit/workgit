--?a??��?2a��?��?��y��?��?����?��?�¨�?o?��1��?LUA??��??��??????���¡ꡧ��?����??��?����?a��y��?

--��???��D3?��?��?2?��??�̨�3��?��?��???3?o��o?��???��??��?����?o?��?��?2?��aDT???��??��???��a?��?Y����?��?��??����DT???��??��??��?��?����?��??��
--��?��??��3?3��??2��?��?a1?
support_inquire_car = true;
--��?��??��3?������������̣�2��?��
support_query_insurance_history = true;
--��?��??��3?��??������??
support_auto_quote = true;
--��?��??��3?��??��o?����
support_auto_submit = false;
--��t???��IP��??���ꡧ�̡�����??1???��?��3��??��?TD��VPN������??a��?����???anil��?��??��D����a����???a???a1?��?��?��??D??��?��??����??������??1???��?��3��?
web_server_ip_address = nil;
--�̡�?��?��?�¨�??������??DD��?1�����??3����y??(��??�̡�??��?��1~10????)
suggest_work_threads_num = 1;
--����??1???����D��
insurer_type = "libao";
--��?��???��?���?��
show_window = true;
--�̡�?��??��?��?��?????3??���?D?��??����?��?��??������?��??��??������??��???????��?
global_name = "��?��|";
--��???3?��������??(�̣�??��oo��??)
global_timeout = 10000
--����??1????����?��???
global_region = "����??";

--[[
--3��??D??��
--  ??P1CH37
--{"error":0,"msg":"3��1|", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"D?D��??3��",
--"owner":{"name":"?a�䨮?a"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--??QJ97V6
--{"error":0,"msg":"3��1|", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"D?D��??3��",
--"owner":{"name":"��?????"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}
--?��DLE963
--??o?D??��
--A0145
--Tbv71wdC8
json.Get(req.para,"/car/plate_no")
--??QN0W53
external.get_result('LicenseNo'
    enforceCarShipTax
    enforcePremium
A911 3��?e2???
A912 ��y??2???
A921 �̨�?��2???
A928 ???��2???
A923 3??��

A310 ��?��? A310
A290 ��??? A972
A231 2�ꨢ�� 
A210 ??o? A971
--??N5GH06
--]]


--???��?����?��?2?��y3�ꨢ??����?
MB_OK = 0;
MB_OKCANCEL = 1;
MB_ABORTRETRYIGNORE = 2;
MB_YESNOCANCEL = 3;
MB_YESNO = 4;
MB_RETRYCANCEL = 5;
MB_CANCELTRYCONTINUE = 6;
--???��?����?3??��1?3�ꨢ??����?
IDOK = 1;
IDCANCEL = 2;
IDABORT = 3;
IDRETRY = 4;
IDIGNORE = 5;
IDYES = 6;
IDNO = 7;
IDTRYAGAIN = 10;
IDCONTINUE = 11;
--?��?��??����D��3�ꨢ??����?
VCT_ALPHANUMBER_4 = 1004;			-- 4??����??��y��?
VCT_ALPHANUMBER_5 = 1005;			-- 5??����??��y��?
VCT_ALPHANUMBER_6 = 1006;			-- 6??����??��y��?
VCT_CHINESE_2 = 2002;					-- 2??��??D??
VCT_CHINESE_4 = 2004;					-- 4??��??D??
VCT_ALPHA_4 = 3004;						-- 4??��?����??
VCT_ALPHA_5 = 3005;						-- 5??��?����??
VCT_ALPHA_6 = 3006;						-- 6??��?����??
VCT_NUMBER_4 = 4004;					-- 4??��?��y��?
VCT_NUMBER_5 = 4005;					-- 5??��?��y��?

--3��??D??��
--??P1CH37 
--{"error":0,"msg":"3��1|", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"D?D��??3��",
--"owner":{"name":"?a�䨮?a"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--??QJ97V6
--{"error":0,"msg":"3��1|", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"D?D��??3��",
--"owner":{"name":"��?????"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}

--??o?D??��
--A0145
--Tbv71wdC8


--??QN0W53

--??N5GH06
--??Q58K82


--?��??jsono����y��D����
--json.Valid(s)				 ?D?��??3?��?s2?��y��?��?��?��DD���?JSON��?��?��?
--json.Get(s, k)			 ����??json��?s��?k?����|��??�̡ꡧ��?��?��?��?D?��?����??��??��?����?����D����?��?��?��?��?��?'/'?��'\\'��???��?��?��a��?3?json��?s�ꡧ???��?a��o"{'abc':{'a':'1', 'b':'2', 'c':'3'},'d':'4'}"��?��?�̨���????��'abc'??��?����?��'b'��??�̡�??��D��?ajget(s, "/abc/b")?��
--json.Set(s, k, v)		 ����??json��?s��?k?����|��??��?av��?2��???��1?��?��?��?��?��?��?����???��
--json.Size(s, k)			 ?D??json��?s��?k?����|��??a????��y��?��a?��s[k]��?��y��������D��?��

--?��???�̨�3o����y��D����
--sys.DBGPrint(fmt,...)			��?3?�̡¨�?D??���?2?��yo��Co����y��?printf��???��?fmt��???��?��?��?��?(o��printf��???��??��?����?%d?��%c?��%u?��%o?��%f?��%p?��%s�̨��̨�)��?o��???����?2??��

--?��??����??o����y��D����
--web.GetTickCount()   ����??�̡�?��?�̨�3����??�ꡧ�䨮?a?����????��?��?-������?����??��?��?o��???a�̣�??��?
--web.GetUserName()		 ����??�̡�?�㨮?������???����??1???��?��3��?��??��??
--web.GetPassword()		 ����??�̡�?�㨮?������???����??1???��?��3��??��??
--web.GetRequest()	 	 ����??�̡�?��???��?����D?��??��????��???��
------???��???���㨹o?��???3��?��
--------id			 ����D���ꡧC???����?��?������?��?
--------type     ����D���ꡧ??D����?��?0 - 2��3��??��?1 - 2��������������̣���?2 - ��??������??��?3 - ��??��o?����?��
--------para		 ����D���ꡧ��?��?��?��?��???��?��?��?��?2?��y��?��?1?��?2��3��?????����??��?a??2?��y��?3��??��?��?1?��????����??��?a??2?��y��?��?��?��?JSON��??��
--------complete(result) ����D���ꡧo����y��?��?����3���̡�?��???��?��
--web.IsRunning()			 ����??�̡�?��D��?a?����?��??��??DD��?����??
--web.Exit(reason)		 ��?3?�̡�?���???��??��DD?��?3�ꡧreason?����?2???3?��?��??��??3?��?��?��?3??-������?��?��?��?
--web.NewPage()				 D??����3??��?2�顤��???�������?��3?????��
--web.GetPageCount()	 ??��?��3??��y��?
--web.GetPageAt(no)		 ??��?D��o?��?no��?��3?????��
--web.GetPageTitle(p)  ??��?��3?????��p��?������a�ꡧ?��3?��?��3???��?����?
--web.GetPageURL(p)		 ??��?��3?????��p��?URL�ꡧ?��3?��?��3???��?����?
--web.FindPageByTitle(partten)	2��?����3??������a?��??������a��?��?��?��?��3?????��2�顤��??��?pattern?D?���㨹o?����??��?�ꡧ?,*��?
--web.FindPageByURL(partten)	  2��?����3??URL?��??URL��?��?��?��?��3?????��2�顤��??��?pattern?D?���㨹o?����??��?�ꡧ?,*��?
--web.Navigate(p, url) ?��???����?��3?????��p��?��?o?��?url???����?��??����?3��1|����??true��?��??������??false
--web.ClosePage(p)		 1?��?��3?????��p???����?���?��
--web.ExecuteScript(p, sc[, async])	?��???����?��3?????��p��??��DDjs??��??��js??��?��??����Y?��sc��?��?��?��??��async����??��?����o���䨲��������2??��DD��?��??����?2??��ꡧ?��3?��?��3???��?����????��?��?��DD2??��3?����2?��?
--web.GetLastAsyncResult(page)	2��?��???���?o����?��??����3?????��p��??��DD��?js??��?2�����¨�?��?����3����?��??�䨪��3������??nil��?��??������???��DD��??��1?�ꡧ??D����y��?��?2??a��?������?3��1|?��
--web.PutResult(k,v)	 ?���̡�?��?��?3??�ꡧ?��??��3??��???��?��?��?v��?����?k?��??��?��??��?3o��js?��DD?��?3??��?external.put_result(k,v)��??1o����y��?��???��?��??����?��?����?����???��???��?��?��Y��y?Y
--web.GetResult(k)		 ?���̡�?��?��?3??�ꡧ?��??��3??��???��?k?��??��?����?��?��?��??�̡�?��??��?3o��js?��DD?��?3??��?external.get_result(k)��??1o����y��?��???��?��??����?��?����?����???��???��?��?��Y��y?Y
--web.IsDocumentCompleted(p)	?D??��3?????��p��?��???�̦�??��?����3���ꡧ?��3?��?��3???��?����?
--web.IsNavigateError(p)	?D??��3?????��p��?o?��?��?3?�䨪
--web.OnShowMessage(func)	����??�̡�?��?��?3??��?��3???��?���̡�3?��??t��???�̡�o����y��?func?����?����??��???�̡�o����y�ꡧ��?1??anil?����?????�̡¡�??��
-------???��?���̡�3?��??t??�̡�o����y?-D����?��ofunction ShowMessageCallback(p, caption, message, type)  ??�̡�o����y����??��??��1?��?���??���?����?����?��ID�ꡧ?��???��???��?����?3??��1?3�ꨢ??����??����?��?
-------??�̡�o����y??DD?��?3o��?y3��?��DD����3��2??����?��????��?3??????��?��?1?��ao��?��3��D��????����????��1��?web.PutResulto��web.GetResult?��
--web.Wait(ms)			 	 �̨���ymso��??o��?��D??��DDo��D?�䨲??
--web.IsElementExist(p,name)	?D?��???����3??��?��?��?��??��name?����?��?DOM??�̦�???��?��name��?JS?D��?o??����?��????��???����?��DD�쨮????��?��?��3??��?????����????��??��?','?��';'��????��
--web.GetNewPage(page,min_ms)	??��?��?D?���?����?��3??�ꡧ��?1?page2??anil��????��?a??D?��3??��?D?��?page��?������3??��?��??��?����?��?��?��a��3??��?��??��?����?���?������???���̡�?�㨺��???��min_mso��????o��?��
--web.IsTimeout(t)		 ?D??3?����?��t��?��?3?����
--web.NewTimeout(ms)	 ���?��mso��??o��3?������?3?����?��
--web.Refresh(p)			 ?��D?��3?????��p
--web.GetCarModeCode(plateno)	2��?��???��3��??o?��?plateno��?3�̨�?��?��e�䨲??�ꡧ��??anil?��������??��2����?��?
--web.IsVPNConnected() ?D??VPN��?��?��??-��??����?��?
--web.RecognizeVerificationCode(url, type)	��?��e?��?��??��?url��??��?��??��??����?type��??��?��??����D��(VCT_XXXX)?�ꡤ��??������?��?IDo����?��e?��1?��?��?
----------------------------------- id, code = web.RecognizeVerificationCode("https://icore-pts.pingan.com.cn/ebusiness/auto/rand-code-imgage.do", VCT_ALPHANUMBER_4);
----------------------------------- ����??��?id��?1?��?D?�����̨�������?��??��������??�䨺?��e3?�����??a??id��??��?����?�䨪?���䨲??��?
--web.ReportVerCodeError(id)	����??�䨪?����?��eD??���?id��?web.ReportVerCodeError����??��?�̨���????��1??��o����y����??�䨪?���䨲??��?0������?3��1|?��
--web.OnCreateDialog(func)	����??�̡�?��?��?3??��?��3???��?�����?����??t��???�̡�o����y��?func?����?����??��???�̡�o����y�ꡧ��?1??anil?����?????�̡¡�?
-------???��?�����?����??t??�̡�o����y?-D����?��ofunction CreateDialogCallback(p, hwnd, caption, message, type)
-------??�̡�o����y??DD?��?3o��?y3��?��DD����3��2??����?��????��?3??????��?��?1?��ao��?��3��D��????����????��1��?web.PutResulto��web.GetResult?��
--web.SetDlgItemText(hDlg, id, text)	����?????��???��?����????��???tid��???��??����Y?atext
--web.EndDialog(hDlg, ret)	???1???��?��
--web.OnShowDialogHtml(func)	����??�̡�?��?��?3??��?��3???��?��??��?��???�̡�o����y��?func?����?����??��???�̡�o����y�ꡧ��?1??anil?����?????�̡¡�?
-------???��?����?��3??��???�̡�o����y?-D����?��ofunction ShowDialogHtmlCallback(p, url, name, flags)
-------����??��?��??��D���̡�3?��?���䨬?��?true������??��D����?false������?2??��D��?��
-------??�̡�o����y??DD?��?3o��?y3��?��DD����3��2??����?��????��?3??????��?��?1?��ao��?��3��D��????����????��1��?web.PutResulto��web.GetResult?��
--web.GetVPNLoginInfo(type, no)	??��?D��o?��?no����??1???����D����?type��??t�̨���?��?VPN?��?��D??���?no������?��??��??��?��?�̨�????��?0������?�̨���????�ꨨ?3��1|?��
-------����???t�̨���?����??��?VPN?��?��o��?��??��?��??������??nil?�ꨤy��?��ousr,pwd = web.GetVPNLoginInfo('renbao',0)  ?a??�䨲???����???��?�̡�?���????��?��?D
-------�̨���???����??��?VPN��???D??���??t�̨�VPN?��?��o��?��???��
--web.GetHtmlDialog()		??��?�̡�?��̡�3?��?HTML???��?��???��?��

--��????ao����y2?��?
function OnShowDialogHtml(page, url, name, flags)
	return false;	-- ???1?����D���?����?��3�̡�3?
end

--???1?�̨�3???��?����?��y
function OnCreateDialog(page, hwnd, caption, message, type)
	sys.DBGPrint("����??���?��[%s]\r\n", caption);
	if (string.lower(caption) == "user-pin verification") then
		sys.DBGPrint("��?PIN���?����?��?��?��??����?D���?\r\n");
		web.SetDlgItemText(hwnd, 1000, "jnluzhen");
		web.EndDialog(hwnd, IDOK);
	end
end
--???1?�̨�3�̡�3??��
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("????��??�̨�3???��?��[%s, dwType=%d]��?????����???��D?��?%s\r\n", caption, type,message);
	type = type % 16;
	global_message = message;
	if string.find(message,'��?���ꨢ?��?����D����?????') ~= nil then
		jiaoqiang_flag = 1;
	end
	pos,_=string.find(message,"��?��??��??");
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

--�̨���y��3???��??������?
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
			sys.DBGPrint("��3???��??3?������?\r\n");		
			break;
		end
		web.Wait(50);
	end
	return false;
end

--�̨���y��3??��??3?????��?��??������?
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
			sys.DBGPrint("��?o?����㨹��?\r\n");
			return false;
		end
		if(web.IsTimeout(tm)) then
			sys.DBGPrint("�̨���y???��'"..objName.."'?��??������?3?������?\r\n");
			break;
		end
		web.Wait(50);
	end
	return false;
end

--�̨���y��3?????����?��???�̦�??��?������?
function WaitForDocumentCompleted(page, ms)
	local title, pos;
	if not __WaitForDocumentCompleted(page, ms or global_timeout) then
		return false;
	end
	title = web.GetPageTitle(page);
	if title ~= nil then
		pos, _ = string.find(title, "?�診���䨪?��");
		if pos ~= nil then
			if not WaitForObjectLoaded(page, "document.getElementById(\"overridelink\")") then
				sys.DBGPrint("�̨���y?�診���䨪?����3?????��?��??������?3?������?\r\n");
				return false;
			end
			if (not web.ExecuteScript(page, "document.getElementById(\"overridelink\").click();")) then
				sys.DBGPrint("o????�診���䨪?��??��??��DD�䨪?����?\r\n");
				return false;
			end
			if not WaitForDocumentCompleted(page, ms or global_timeout) then
				sys.DBGPrint("�̨���y?�診���䨪?��o��D?��3???��??3?������?\r\n");
				return false;
			end
		end
	else
	  sys.DBGPrint("??��?D??��??��3??������a����㨹��?\r\n");
	end
	return true;
end


--�̨���yD?��3??���?��
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
			sys.DBGPrint("�̨���yD?��3??�䨰?a3?������?\r\n");
			break;
		end
		web.Wait(10);
	end
	return nil;
end

--��???
function login(page,url)
	local user, password, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "��??��???��?��???a??";
	end
	if not web.Navigate(page, url) then
		return false, "?T������?o?��?��?��|������3";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "��?o?����㨹";
	end
	--web.Wait(5000);
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("�̨���y??��?title��???��?o����?\r\n");
		if title then
		
			pos = nil;
			pos, _ = string.find(title, "Motor");
			if pos == nil then
				pos, _ = string.find(title, "Welcome");
				if pos == nil then
					pos, _ = string.find(title, "https://lm.libertymutual.com.cn");
					if pos == nil then
						return false, "?T������?��e��?������a["..title.."]";
					end
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	sys.DBGPrint(title);
	if title == nil then
		return false, "��???����㨹��?";
	end
	web.PutResult("username", user);
	web.PutResult("password", password);
	repeat
		web.ExecuteScript(page, "document.getElementById('userDisplay').focus();\r\n\
										document.getElementById('userDisplay').click();\r\n\
										document.getElementById('userDisplay').value='A0145';\r\n\
										document.getElementById('passwordDisplay').focus();\r\n\
										document.getElementById('passwordDisplay').click();\r\n\
										document.getElementById('passwordDisplay').value='Tbv71wdC8';\r\n\
										document.getElementsByClassName('new-btn')[0].click();\r\n\
									");
		web.Wait(500);
		title = web.GetPageTitle(page);
		pos, _ = string.find(title, "Welcome");
		if pos ~= nil then
			break;
		end
	until(false)
	return true, "3��1|";
end





--2��3��??
function inquire_car(req)
	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("����??2��?��3��??[%s]��????����?\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??����3??����㨹��?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"���?����3??����㨹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��???����???��1?[%s]��?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��???����3����?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?��?��3��') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??��?������3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��?������33��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��?������3����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��?������3����㨹��?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??�̣�') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??��???�̣�1��������3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��???�̣�1��������3??3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��???�̣�1��������3??����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��???�̣�1��������3??����㨹��?\"}");
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	repeat
		web.ExecuteScript(page,"var $scope = angular.element(document.getElementsByTagName('input')[1]).scope();\r\n\
								$scope.ProductionInVo.plateNo=external.get_result('LicenseNo');\r\n\
								$scope.$apply();\r\n\
								document.getElementsByTagName('button')[7].click();\r\n\
								external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("��?��?3��??o?.....\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("��?��?3��??o?3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("��?��?3��??o?����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"��?��?3��??o?����㨹��?\"}");
		return false;
	end


	local tm11 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "document.getElementsByClassName('ng-binding footable-visible')[8].innerHTML;\r\n\
								var index = 1;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('ng-binding ng-scope')[index].innerHTML;\r\n\
									if (temp.indexOf('����3��') != -1){\r\n\
										document.getElementsByTagName('a')[2+index].click();\r\n\
										external.put_result('flag','1');\r\n\
									}\r\n\
									index++;\r\n\
								}\r\n\
		") 	
		if web.GetResult('flag') ~= nil then
			break;
		end
	until(web.IsTimeout(tm11));


	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("?��?��2��?����???3�̦�?��?����̣�o?��?\r\n");
		req:complete("{\"error\":-3,\"msg\":\"?��?��2��?����???3�̦�?��?����̣�o?��?\"}");
		return false;
	end

	WaitForDocumentCompleted(page);

	web.PutResult("plate_no",'');
	web.PutResult("vehicle_type",'');
	web.PutResult("use_character",'');
	web.PutResult("vin",'');
	web.PutResult("engine_no",'');
	web.PutResult("register_date",'');
	web.PutResult("purchase_price",'');
	web.PutResult("model",'');
	web.PutResult("seats",'');
	web.PutResult("license_type",'');
	web.PutResult("displacement",'');
	web.PutResult("ownership_code",'');
	web.PutResult("kind_code",'');
	web.PutResult("name",'');
	web.PutResult("id_no",'');



	local plate_no = web.GetResult("plate_no");
	local vehicle_type = web.GetResult("vehicle_type");
	local use_character = web.GetResult("use_character");
	local model = web.GetResult("model");
	local vin = web.GetResult("vin");
	local engine_no = web.GetResult("engine_no");
	local register_date = web.GetResult("register_date");
	local purchase_price = web.GetResult("purchase_price");
	local seats = web.GetResult("seats");
	local license_type = web.GetResult("license_type");
	local displacement = web.GetResult("displacement");
	local ownership_code = web.GetResult("ownership_code");
	local kind_code = web.GetResult("kind_code");
	local name = web.GetResult("name");
	local id_no = web.GetResult("id_no");
	tm2 = web.NewTimeout(20000);
	repeat
		web.Wait(2000);
		web.ExecuteScript(page, "var register_date = document.getElementsByClassName('describe-block ng-binding')[17].innerHTML;\r\n\
								var plate_no = document.getElementsByClassName('describe-block ng-binding')[19].innerHTML;\r\n\
								var vin = document.getElementsByClassName('describe-block ng-binding')[20].innerHTML;\r\n\
								var engine_no = document.getElementsByClassName('describe-block ng-binding')[21].innerHTML;\r\n\
								var purchase_price = document.getElementsByClassName('describe-block ng-binding')[23].innerHTML;\r\n\
								var displacement = document.getElementsByClassName('describe-block ng-binding')[29].innerHTML;\r\n\
								var seats = document.getElementsByClassName('describe-block ng-binding')[27].innerHTML;\r\n\
								var model = document.getElementsByClassName('describe-block ng-binding')[28].innerHTML;\r\n\
								var name = document.getElementsByClassName('describe-block ng-binding')[64].innerHTML;\r\n\
								var id_no = document.getElementsByClassName('describe-block ng-binding')[66].innerHTML;\r\n\
								var kind_code = document.getElementsByClassName('describe-block ng-binding')[25].innerHTML;\r\n\
								var vehicle_type = document.getElementsByClassName('describe-block ng-binding')[25].innerHTML;\r\n\
								var ownership_code = document.getElementsByClassName('describe-block ng-binding')[9].innerHTML;\r\n\
								var license_type = document.getElementsByClassName('describe-block ng-binding')[24].innerHTML;\r\n\
								var reg=/[A-Z0-9]/g;\r\n\
								id_no = id_no.match(reg,'').join('');\r\n\
								if (ownership_code.indexOf('��?') != -1){\r\n\
									external.put_result('ownership_code','1');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('ownership_code','0');\r\n\
								}\r\n\
								if (kind_code.indexOf('?��3��') != -1){\r\n\
									external.put_result('kind_code','K');\r\n\
									external.put_result('use_character','110');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('kind_code','H');\r\n\
									external.put_result('use_character','120');\r\n\
								}\r\n\
								if (license_type.indexOf('D?D��??3��') != -1){\r\n\
									external.put_result('license_type','02');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('license_type','01');\r\n\
								}\r\n\
								if (engine_no != '' && plate_no != '' && vin != ''){\r\n\
									external.put_result('register_date',register_date);\r\n\
									external.put_result('plate_no',plate_no);\r\n\
									external.put_result('vin',vin);\r\n\
									external.put_result('engine_no',engine_no);\r\n\
									external.put_result('purchase_price',purchase_price);\r\n\
									external.put_result('displacement',displacement);\r\n\
									external.put_result('seats',seats);\r\n\
									external.put_result('model',model);\r\n\
									external.put_result('name',name);\r\n\
									external.put_result('id_no',id_no);\r\n\
								}\r\n\
							")



		plate_no = web.GetResult("plate_no");
		vehicle_type = web.GetResult("vehicle_type");
		use_character = web.GetResult("use_character");
		model = web.GetResult("model");
		vin = web.GetResult("vin");
		engine_no = web.GetResult("engine_no");
		register_date = web.GetResult("register_date");
		purchase_price = web.GetResult("purchase_price");
		seats = web.GetResult("seats");
		license_type = web.GetResult("license_type");
		displacement = web.GetResult("displacement");
		ownership_code = web.GetResult("ownership_code");
		kind_code = web.GetResult("kind_code");
		name = web.GetResult("name");
		id_no = web.GetResult("id_no");
		sys.DBGPrint("��?��y?Y...��o\r\n");
		if engine_no ~= nil and plate_no ~= nil and vin ~= nil and register_date ~= nil then
			sys.DBGPrint("��?��y?Y3��1|��?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("�̨���y����̣�2��?��3?������?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"�̨���y����̣�2��?��3?������?\"}");
			return false;
	end

	web.PutResult('flag','');
	ret = "{\"error\":0,\"msg\":\"3��1|\", \"car\":{";
	if plate_no ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"plate_no\":\""..plate_no.."\"";
	end
	if vehicle_type ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"vehicle_type\":\""..vehicle_type.."\"";
	end
	if use_character ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"use_character\":\""..use_character.."\"";
	end
	if model ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"model\":\""..model.."\"";
	end
	if vin ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"vin\":\""..vin.."\"";
	end
	if engine_no ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"engine_no\":\""..engine_no.."\"";
	end
	if name ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"owner\":{\"name\":\""..name.."\"";
		if id_no ~= nil then
			ret = ret..",\"id_no\":\""..id_no.."\"";
		end
		ret = ret.."}";
	end

	if register_date ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"register_date\":\""..register_date.."\"";
	end
	if purchase_price ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"purchase_price\":\""..string.gsub(purchase_price,',','').."\"";
	end
	if seats ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"seats\":\""..seats.."\"";
	end
	if license_type ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"license_type\":\""..license_type.."\"";
	end
	if displacement ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"displacement\":\""..displacement.."\"";
	end

	if kind_code ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"kind_code\":\""..kind_code.."\"";
	end
	if ownership_code ~= nil then
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.GetResult('flag','1');
		if ownership_code == '1' then 
			ret = ret.."\"ownership_code\":"..1;
		else
			ret = ret.."\"ownership_code\":"..0;
		end
	end
	ret = ret.."}";
	ret = ret.."}";
	web.ClosePage(page);
	sys.DBGPrint(ret);
	req:complete(ret);
	return true;
end



function query_insurance_history(req)
	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("����??2��?��������������̣�[%s]��????����?\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??����3??����㨹��?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"���?����3??����㨹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��???����???��1?[%s]��?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��???����3����?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?��?��3��') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??��?������3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��?������33��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��?������3����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��?������3����㨹��?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??�̣�') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??��???�̣�1��������3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��???�̣�1��������3??3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��???�̣�1��������3??����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��???�̣�1��������3??����㨹��?\"}");
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	web.PutResult('LicenseNo',json.Get(req.para,"/car/plate_no"));
	repeat
		web.ExecuteScript(page,"var $scope = angular.element(document.getElementsByTagName('input')[1]).scope();\r\n\
								$scope.ProductionInVo.plateNo=external.get_result('LicenseNo');\r\n\
								$scope.$apply();\r\n\
								document.getElementsByTagName('button')[7].click();\r\n\
								external.put_result('flag','1');\r\n\
			")
		sys.DBGPrint("��?��?3��??o?.....\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("��?��?3��??o?3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("��?��?3��??o?����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"��?��?3��??o?����㨹��?\"}");
		return false;
	end


	local tm11 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "document.getElementsByClassName('ng-binding footable-visible')[8].innerHTML;\r\n\
								var index = 1;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('ng-binding ng-scope')[index].innerHTML;\r\n\
									if (temp.indexOf('����3��') != -1){\r\n\
										document.getElementsByTagName('a')[2+index].click();\r\n\
										external.put_result('flag','1');\r\n\
									}\r\n\
									index++;\r\n\
								}\r\n\
		") 	
		if web.GetResult('flag') ~= nil then
			break;
		end
	until(web.IsTimeout(tm11));


	if web.GetResult('flag') == nil then
		web.ClosePage(page);
		sys.DBGPrint("?��?��2��?����???3�̦�?��?����̣�o?��?\r\n");
		req:complete("{\"error\":-3,\"msg\":\"?��?��2��?����???3�̦�?��?����̣�o?��?\"}");
		return false;
	end

	WaitForDocumentCompleted(page);

	web.PutResult("plate_no",'');
	web.PutResult("vehicle_type",'');
	web.PutResult("use_character",'');
	web.PutResult("vin",'');
	web.PutResult("engine_no",'');
	web.PutResult("register_date",'');
	web.PutResult("purchase_price",'');
	web.PutResult("model",'');
	web.PutResult("seats",'');
	web.PutResult("license_type",'');
	web.PutResult("displacement",'');
	web.PutResult("ownership_code",'');
	web.PutResult("kind_code",'');
	web.PutResult("name",'');
	web.PutResult("id_no",'');



	local plate_no = web.GetResult("plate_no");
	local vehicle_type = web.GetResult("vehicle_type");
	local use_character = web.GetResult("use_character");
	local model = web.GetResult("model");
	local vin = web.GetResult("vin");
	local engine_no = web.GetResult("engine_no");
	local register_date = web.GetResult("register_date");
	local purchase_price = web.GetResult("purchase_price");
	local seats = web.GetResult("seats");
	local license_type = web.GetResult("license_type");
	local displacement = web.GetResult("displacement");
	local ownership_code = web.GetResult("ownership_code");
	local kind_code = web.GetResult("kind_code");
	local name = web.GetResult("name");
	local id_no = web.GetResult("id_no");
	tm2 = web.NewTimeout(20000);
	repeat
		web.Wait(50);
		web.ExecuteScript(page, "var register_date = document.getElementsByClassName('describe-block ng-binding')[17].innerHTML;\r\n\
								var plate_no = document.getElementsByClassName('describe-block ng-binding')[19].innerHTML;\r\n\
								var vin = document.getElementsByClassName('describe-block ng-binding')[20].innerHTML;\r\n\
								var engine_no = document.getElementsByClassName('describe-block ng-binding')[21].innerHTML;\r\n\
								var purchase_price = document.getElementsByClassName('describe-block ng-binding')[23].innerHTML;\r\n\
								var displacement = document.getElementsByClassName('describe-block ng-binding')[29].innerHTML;\r\n\
								var seats = document.getElementsByClassName('describe-block ng-binding')[27].innerHTML;\r\n\
								var model = document.getElementsByClassName('describe-block ng-binding')[28].innerHTML;\r\n\
								var name = document.getElementsByClassName('describe-block ng-binding')[64].innerHTML;\r\n\
								var id_no = document.getElementsByClassName('describe-block ng-binding')[66].innerHTML;\r\n\
								var kind_code = document.getElementsByClassName('describe-block ng-binding')[25].innerHTML;\r\n\
								var vehicle_type = document.getElementsByClassName('describe-block ng-binding')[25].innerHTML;\r\n\
								var ownership_code = document.getElementsByClassName('describe-block ng-binding')[9].innerHTML;\r\n\
								var license_type = document.getElementsByClassName('describe-block ng-binding')[24].innerHTML;\r\n\
								var reg=/[A-Z0-9]/g;\r\n\
								id_no = id_no.match(reg,'').join('');\r\n\
								if (ownership_code.indexOf('��?') != -1){\r\n\
									external.put_result('ownership_code','1');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('ownership_code','0');\r\n\
								}\r\n\
								if (kind_code.indexOf('?��3��') != -1){\r\n\
									external.put_result('kind_code','K');\r\n\
									external.put_result('use_character','110');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('kind_code','H');\r\n\
									external.put_result('use_character','120');\r\n\
								}\r\n\
								if (license_type.indexOf('D?D��??3��') != -1){\r\n\
									external.put_result('license_type','02');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('license_type','01');\r\n\
								}\r\n\
								if (engine_no != '' && plate_no != '' && vin != ''){\r\n\
									external.put_result('register_date',register_date);\r\n\
									external.put_result('plate_no',plate_no);\r\n\
									external.put_result('vin',vin);\r\n\
									external.put_result('engine_no',engine_no);\r\n\
									external.put_result('purchase_price',purchase_price);\r\n\
									external.put_result('displacement',displacement);\r\n\
									external.put_result('seats',seats);\r\n\
									external.put_result('model',model);\r\n\
									external.put_result('name',name);\r\n\
									external.put_result('id_no',id_no);\r\n\
								}\r\n\
							")

		plate_no = web.GetResult("plate_no");
		vehicle_type = web.GetResult("vehicle_type");
		use_character = web.GetResult("use_character");
		model = web.GetResult("model");
		vin = web.GetResult("vin");
		engine_no = web.GetResult("engine_no");
		register_date = web.GetResult("register_date");
		purchase_price = web.GetResult("purchase_price");
		seats = web.GetResult("seats");
		license_type = web.GetResult("license_type");
		displacement = web.GetResult("displacement");
		ownership_code = web.GetResult("ownership_code");
		kind_code = web.GetResult("kind_code");
		name = web.GetResult("name");
		id_no = web.GetResult("id_no");
		sys.DBGPrint("��?��y?Y...��o\r\n");
		if engine_no ~= nil and plate_no ~= nil and vin ~= nil and register_date ~= nil then
			sys.DBGPrint("��?��y?Y3��1|��?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("�̨���y3�̨�?2��?��3?������?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"�̨���y3�̨�?2��?��3?������?\"}");
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
	local StartDate = web.GetResult("StartDate");
	local EndDate = web.GetResult("EndDate");
	local PremiumCount = web.GetResult("PremiumCount");
	local PolicyNo = web.GetResult("PolicyNo");

	local enforceStartDate = web.GetResult('enforceStartDate');
	local enforceEndDate = web.GetResult('enforceEndDate');
	local enforcePolicyNo = web.GetResult('enforcePolicyNo');
	local enforcePremium = web.GetResult('enforcePremium');


	
	local tm3 = web.NewTimeout(10000);
	--��?��������??D??��
	web.PutResult('flag','');
	repeat
		web.Wait(100);
		web.ExecuteScript(page, "var index = 0;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].innerHTML;\r\n\
									if(temp.indexOf('��������??����̣�o?') != -1){\r\n\
										external.put_result('PolicyNo',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('??????����̣�o?') != -1){\r\n\
										external.put_result('enforcePolicyNo',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('��������???e���ꨨ??��') != -1){\r\n\
										external.put_result('StartDate',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('???????e���ꨨ??��') != -1){\r\n\
										external.put_result('enforceStartDate',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									index++;\r\n\
								}\r\n\
							")
		web.ExecuteScript(page, "var index = 0\r\n\
								while(true){\r\n\
									var len = document.getElementsByTagName('tr')[index].getElementsByTagName('td').length;\r\n\
									if (len == 0){\r\n\
										index++;\r\n\
										continue;\r\n\
										}\r\n\
									var insure_type = document.getElementsByTagName('tr')[index].getElementsByTagName('td')[1].innerHTML;\r\n\
										if (insure_type.indexOf('3�̨�??e����??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('chesun',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('��?��??e����??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('ziran',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('�̨���y??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sanzhe',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???��') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('siji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('3??��') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('chengke',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('�̨�?��') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('daoqiang',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('����?��?����????e����??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sheshui',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('??o?') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('huahen',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('�̨���y��?') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sanfang',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('2�ꨢ��') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('boli',document.getElementsByTagName('tr')[index].getElementsByTagName('label')[0].innerHTML);\r\n\
										else if (insure_type.indexOf('3�̨�??e����??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('chesun_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('�̨���y??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('sanzhe_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???��') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('siji_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('3??��') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('chengke_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('�̨�?��') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('daoqiang_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('����?��?����????e����??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('sheshui_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('��?��??e����??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('ziran_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('??o?') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('huahen_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???��') != -1)\r\n\
											external.put_result('zhiding',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
									index++;\r\n\
								}\r\n\
					")
		web.ExecuteScript(page, "external.put_result('PremiumCount',document.getElementsByClassName('table table-striped table-bordered table-style2')[6].getElementsByTagName('td')[1].innerHTML);\r\n\
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
		sys.DBGPrint("?y?����?��������??����̣���y?Y��???��?o����?\r\n");

		if web.GetResult('chesun') ~= nil then
			sys.DBGPrint("��?��y?Y3��1|��?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm3));

	if web.GetResult('flag') == nil then
			web.ClosePage(page);
			sys.DBGPrint("�̨���y����̣�2��?��3?������?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"�̨���y����̣�2��?��3?����\"}");
			return false;
	end
	--flag ?D??��?��?D����a?��?oo?
	web.PutResult('flag','');
	ret = "{\"error\":0,\"msg\":\"3��1|\", \"car\":{";
	if plate_no ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"plate_no\":\""..plate_no.."\"";
	end
	if vehicle_type ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"vehicle_type\":\""..vehicle_type.."\"";
	end
	if use_character ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"use_character\":\""..use_character.."\"";
	end
	if model ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"model\":\""..model.."\"";
	end
	if vin ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"vin\":\""..vin.."\"";
	end
	if engine_no ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"engine_no\":\""..engine_no.."\"";
	end
	if name ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"owner\":{\"name\":\""..name.."\"";
		if id_no ~= nil then
			ret = ret..",\"id_no\":\""..id_no.."\"";
		end
		ret = ret.."}";
	end

	if register_date ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"register_date\":\""..register_date.."\"";
	end
	if purchase_price ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"purchase_price\":\""..string.gsub(purchase_price,',','').."\"";
	end
	if seats ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"seats\":\""..seats.."\"";
	end
	if license_type ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"license_type\":\""..license_type.."\"";
	end
	if displacement ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"displacement\":\""..displacement.."\"";
	end

	if kind_code ~= nil then 
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.PutResult('flag','1');
		ret = ret.."\"kind_code\":\""..kind_code.."\"";
	end
	if ownership_code ~= nil then
		if web.GetResult('flag') ~= nil then 
			ret = ret..",";
		end
		web.GetResult('flag','1');
		if ownership_code == '1' then 
			ret = ret.."\"ownership_code\":"..1;
		else
			ret = ret.."\"ownership_code\":"..0;
		end
	end

	ret = ret..",\"hisInsurances\": [ ";
	--??��?3�̦�?????��y��???2?��??��D����a��?��??D??��?��??��?��??????
	--?��?D??��?��??a2????a?a
	--?D??��?��?�㨬������������??
	local flag = 0;
	if web.GetResult('StartDate') ~= nil then
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
			huahen = string.gsub(huahen, ',', '');
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
			chengke = tostring((chengke + 0) / (web.GetResult('seats') - 1));
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
		ret = ret..",\"comDes\":\"��?��|����??��D?T1???\"";
		ret = ret..",\"isComm\":\"1\"";
		if web.GetResult('PolicyNo') ~= nil then
			ret = ret..",\"insuranceId\":\""..web.GetResult('PolicyNo').."\"";
		end
		if web.GetResult('StartDate') ~= nil then
			local date = string.match(web.GetResult('StartDate'), "%d+-%d+-%d+");
			ret = ret..",\"insuredStartDate\":\""..date.."\"";
		end
		if web.GetResult('StartDate') ~= nil then
			local date = string.match(web.GetResult('StartDate'), "?�� %d+-%d+-%d+");
			date = string.match(date, "%d+-%d+-%d+");
			ret = ret..",\"insuredEndDate\":\""..date.."\"";
		end
		if web.GetResult('PremiumCount') ~= nil then
			PremiumCount = string.gsub(web.GetResult('PremiumCount'), ',', '');
			PremiumCount = string.match(PremiumCount, "%d+.%d+");
			ret = ret..",\"price\":\""..PremiumCount.."\"}";
		end
	end
	--?D??��?��?�㨬����??????
	if web.GetResult('enforcePolicyNo') ~= nil then
		if flag > 0 then
			ret = ret..",";
		end
		ret = ret.."{\"comDes\":\"��?��|����??��D?T1???\"";
		ret = ret..",\"isComm\":\"0\"";
		if web.GetResult('enforcePolicyNo') ~= nil then
			ret = ret..",\"insuranceId\":\""..web.GetResult('enforcePolicyNo').."\"";
		end
		if web.GetResult('enforceStartDate') ~= nil then
			local date = string.match(web.GetResult('enforceStartDate'), "%d+-%d+-%d+");
			ret = ret..",\"insuredStartDate\":\""..date.."\"";
		end
		if web.GetResult('enforceStartDate') ~= nil then
			local date = string.match(web.GetResult('enforceStartDate'), "?�� %d+-%d+-%d+");
			date = string.match(date, "%d+-%d+-%d+");
			ret = ret..",\"insuredEndDate\":\""..date.."\"}";
		end
	end
	ret = ret.."] }";
	--������������̣�D??��?��1�訪��3��
	ret = ret.."}";
	--����json��??��1�訪��3��
	sys.DBGPrint(ret);
	web.ClosePage(page);
	req:complete(ret);
	return true;
end

--��??������??
function  auto_quote(req)

	
	if json.Get(req.para,'/insurance/chengke') ~= nil then
		local temp = json.Get(req.para,'/insurance/chengke/unit') + 0;
		if temp > 200000 then
			sys.DBGPrint("3??��??����??3?3??T??��?��???����???a20������?\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'3??��??����??3?3??T??��?��???����???a20������?');
			req:complete(req.para);
			return false;
		end
	end

	if json.Get(req.para,'/insurance/siji') ~= nil then
		local temp = json.Get(req.para,'/insurance/siji/baoe') + 0;
		if temp > 200000 then
			sys.DBGPrint("???��??����??3?3??T??��?��???����???a20������?\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'???��??����??3?3??T??��?��???����???a20������?');
			req:complete(req.para);
			return false;
		end
	end

	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("����??����??[%s]��????����?\r\n",json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para..'\r\n');
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??����3??����㨹��?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"���?����3??����㨹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("��???����???��1?[%s]��?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("��???����3����?����o?������o"..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?��?��3��') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??��?������3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��?������33��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��?������3����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��?������3����㨹��?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??�̣�') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??��???�̣�1��������3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��???�̣�1��������3??3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��???�̣�1��������3??����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��???�̣�1��������3??����㨹��?\"}");
		return false;
	end


	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementById('side_menu_12').click();\r\n\
			");
		web.ExecuteScript(page,"document.getElementById('licenseNo').value;\r\n\
			var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('��?����') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??��?��?�������??��3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??��?��?�������??��3??3��1|��?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??��?��?�������??��3??����㨹��?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??��?��?�������??��3??����㨹��?\"}");
		return false;
	end


	WaitForDocumentCompleted(page);


	if json.Get(req.para,"/insurance/jiaoqiang") == '1' then
		web.PutResult('StartDate','');
		web.PutResult('EndDate','');

		if web.GetResult('StartDate') ~= nil and web.GetResult('EndDate') ~= nil then
			web.PutResult('StartDate',json.Get(req.para,'/insurance/qiangDateStart'));
			web.PutResult('EndDate',json.Get(req.para,'/insurance/qiangDateEnd'));
			if not web.ExecuteScript(page, "document.getElementById('MTPL1').value.value=external.get_result('StartDate');\r\n\
											document.getElementById('MTPL2').value.value=external.get_result('EndDate');\r\n\
				") then
					web.ClosePage(page);
					sys.DBGPrint("????��?���ꨨ??������㨹��?\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'????��?���ꨨ??������㨹��?');
					req:complete(req.para);
					return false;
			end
		end

	end

	if json.Get(req.para,"/insurance/shang") == '1' then
		web.PutResult('StartDate','');
		web.PutResult('EndDate','');
		if web.GetResult('StartDate') ~= nil and web.GetResult('EndDate') ~= nil then
			web.PutResult('StartDate',json.Get(req.para,'/insurance/qiangDateStart'));
			web.PutResult('EndDate',json.Get(req.para,'/insurance/qiangDateEnd'));
			if not web.ExecuteScript(page, "document.getElementById('startDate1').value.value=external.get_result('StartDate');\r\n\
											document.getElementById('startDate').value.value=external.get_result('EndDate');\r\n\
				") then
					web.ClosePage(page);
					sys.DBGPrint("????��?���ꨨ??������㨹��?\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'????��?���ꨨ??������㨹��?');
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


--$scope.PrpTitemCarDTO.channelAdjustValue;\r\n\
--$scope.PrpTitemCarDTO.autonomyAdjustValue='';\r\n\
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
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
		sys.DBGPrint("��?��?3�̨�?D??�騺��㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'��?��?3�̨�?D??�騺��㨹!');
		req:complete(req.para);
		return false;
	end


	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
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
		sys.DBGPrint("????3��D��?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("????3��D��3��1|"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("????3��D������㨹\r\n");
		req:complete("{\"error\":-4,\"msg\":\"????3��D������㨹\"}");
		return false;
	end
	--web.Wait(100000);


	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('btn btn-topbtn btn-primary w60 fl-r  btn-display')[1].click();\r\n\
								"); 
		web.ExecuteScript(page, "if (document.getElementsByClassName('btn btn-topbtn btn-primary w60 fl-r  btn-display')[1].disabled == true)\r\n\
									external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("3��D��2��?��?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("3��D��2��?������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'3��D��2��?������㨹');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].innerHTML;\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("�̨���y2��?��3��D��......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("2��?��3��D������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'2��?��3��D������㨹');
		req:complete(req.para);
		return false;
	end


	web.Wait(1000);

	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].getElementsByTagName('input')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("????3��D��?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????3��D������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????3��D������㨹');
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
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									if ((document.getElementById('useNature')[0].value).indexOf('8A') != -1)\r\n\
										external.put_result('flag','1');\r\n\
									")
		sys.DBGPrint("????3��D��?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????3��D������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????3��D������㨹');
		req:complete(req.para);
		return false;
	end



--[[
	web.ExecuteScript(page, "document.getElementsByClassName('more')[0].click();\r\n\
									")

	--web.Wait(1000);
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementById('rad1').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("?????��?�쨤��D��?D......\r\n");
		web.Wait(500);
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("?????��?�쨤��D������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'?????��?�쨤��D������㨹');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
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
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("��?D��?��?��D??��?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("��?D��?��?��D??�騺��㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'��?D��?��?��D??�騺��㨹');
		req:complete(req.para);
		return false;
	end
]]
	web.Wait(1000);
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('more')[3].click();\r\n\
								document.getElementById('businesscode_BJ00474').click()\r\n\
								document.getElementsByClassName('modal-footer move-header')[4].getElementsByTagName('button')[0].click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("?????t�̨�?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("?????t�̨�����㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'?????t�̨�����㨹');
		req:complete(req.para);
		return false;
	end
	
	web.Wait(1000);
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementById('queryPlateRequest').click();\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("??����???��?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????����???������㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'??����???������㨹');
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
		--??????�䨪?��?D??
		web.PutResult('ownererror','');
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								if (temp.indexOf('��?����D����?????') != -1){\r\n\
									external.put_result('qiangerror',temp);\r\n\
								}\r\n\
								else if (temp.indexOf('��1��?D??��') != -1){\r\n\
									var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									document.getElementById('queryPlateRequest').click();\r\n\
								}\r\n\
								else if (temp.indexOf('3��?��??3?') != -1){\r\n\
									external.put_result('ownererror','1');\r\n\
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
				sys.DBGPrint("?????��?�쨤��D��?D......\r\n");
				web.Wait(500);
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("?????��?�쨤��D������㨹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'?????��?�쨤��D������㨹');
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
				sys.DBGPrint("???�䨬?D��?��?��D??��?D......\r\n");
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("???�䨬?D��?��?��D??�騺��㨹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'???�䨬?D��?��?��D??�騺��㨹');
				req:complete(req.para);
				return false;
			end
			web.Wait(1000);
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
		sys.DBGPrint("????��??����??????D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(500);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								external.put_result('flag',temp);\r\n\
								"); 
		sys.DBGPrint("????��??����?????����㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????��??����?????����㨹'..web.GetResult('flag'));
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
			sys.DBGPrint("���ꨨ???3�̨�??e����??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???3�̨�??e����??����㨹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chesun_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
							") then
			sys.DBGPrint("��???3�̨�??e����??2????a?a����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???3�̨�??e����??2????a?a����㨹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('sanzhe') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
								document.getElementById('kindCode_A600').click();\r\n\
								") then
			sys.DBGPrint("��???��y????����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???��y????����㨹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('sanzhe_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
										document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("��???��y????2????a?a����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???��y????2????a?a����㨹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("??��?��y??����??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??��?��y??����??����㨹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('siji') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
								document.getElementById('kindCode_A701').click();\r\n\
								") then
			sys.DBGPrint("��??????��??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��??????��??����㨹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('siji_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
			document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("��??????��??2????a?a����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��??????��??2????a?a����㨹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("??��????��??����??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??��????��??����??����㨹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('chengke') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
								document.getElementById('kindCode_A702').click();\r\n\
								") then
			sys.DBGPrint("��???3??��??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???3??��??����㨹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chengke_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
			document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("��???3??��??2????a?a����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???3??��??2????a?a����㨹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("??��?3??��??����??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??��?3??��??����??����㨹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('daoqiang') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
								document.getElementById('kindCode_A500').click();\r\n\
								") then
			sys.DBGPrint("��???�̨�?��??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???��y????����㨹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('daoqiang_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
							") then
			sys.DBGPrint("��???�̨�?��??2????a?a����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��???�̨�?��??2????a?a����㨹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('boli') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A231').click();\r\n\
			if (external.get_result('boli_baoe').indexOf('1��2��') != -1 || external.get_result('boli_baoe').indexOf('1��2��2�ꨢ��') != -1)\r\n\
					document.getElementById('Coverage_A231').value='1';\r\n\
					else if (external.get_result('boli_baoe').indexOf('???��') != -1 || external.get_result('boli_baoe').indexOf('???��2�ꨢ��') != -1)\r\n\
						document.getElementById('Coverage_A231').value='2';\r\n\
								") then
			sys.DBGPrint("????2�ꨢ��??����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????2�ꨢ��??����㨹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('huahen') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A210').click();\r\n\
			document.getElementById('Coverage_A210').value=external.get_result('huahen_baoe');\r\n\
								") then
			sys.DBGPrint("??????o???����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??????o???����㨹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('huahen_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A971').click();\r\n\
								") then
				sys.DBGPrint("??????o???2????a?a����㨹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'??????o???2????a?a����㨹');
				req:complete(req.para);
				return false;
			end
		end

	end



	if web.GetResult('ziran') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A310').click();\r\n\
								") then
			sys.DBGPrint("????��?��???����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????��?��???����㨹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('ziran_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A970').click();\r\n\
								") then
				sys.DBGPrint("????��?��???2????a?a����㨹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'????��?��???2????a?a����㨹');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sheshui') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A290').click();\r\n\
								") then
			sys.DBGPrint("????��?????����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????��?????����㨹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('sheshui_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A972').click();\r\n\
								") then
				sys.DBGPrint("????��?????2????a?a����㨹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'????��?????2????a?a����㨹');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sanfang') ~= nil or web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('showKindList_span').click();\r\n\
								") then
			sys.DBGPrint("��??��??��?????���?������㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'��??��??��?????���?������㨹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('sanfang') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A250').click();\r\n\
								") then
			sys.DBGPrint("????�̨���y��?????����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????�̨���y��?????����㨹');
			req:complete(req.para);
			return false;
		end
	end



	if web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A252').click();\r\n\
			document.getElementById('Coverage_A252').value=external.get_result('zhiding_baoe');\r\n\
								") then
			sys.DBGPrint("???????��DT����3��????����㨹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'???????��DT����3��????����㨹');
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
		sys.DBGPrint("????����???�̨�y?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????����???�̨�y����㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????����???�̨�y����㨹');
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
		sys.DBGPrint("���ꡤ??????D?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("���ꡤ?????����㨹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'���ꡤ?????����㨹');
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
			external.put_result('tax',ddocument.getElementsByClassName('ks_c1 hidden-xs')[2].getElementsByTagName('span')[0].innerHTML);\r\n\
						"); 
		local qiangPrice = web.GetResult('qiang');
		local tax = web.GetResult('tax');
		tax = string.gsub(tax,',','');
		tax = string.match(tax,'%d+.%d+');
		qiangPrice = string.gsub(qiangPrice,',','');
		qiangPrice = string.match(qiangPrice,'%d+.%d+');
		req.para = json.Set(req.para,'/insurance/qiangPrice',zhiding);
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
	ret = req.para;
	sys.DBGPrint('���ꡤ?????3��1|��?'.."����o?������o"..((web.GetTickCount()-startTime)/1000)..'\r\n');
	ret = json.Set(ret,'/error',0);
	sys.DBGPrint(ret);
	web.ClosePage(page);
	req:complete(ret);
	return true;

end

--?�¨�?o����y��??��?�¨�???DD����?����??���̡¨�?��?o����y
function main()	
	local req;
	sys.DBGPrint("??��??a��??��DD?-?-\r\n");
	web.OnShowMessage("OnDialog");
	while web.IsRunning() do
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--2��3��??
				startTime = web.GetTickCount();
				inquire_car(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("����o?������o"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 1) then
				--2��������������̣�
				startTime = web.GetTickCount();
				query_insurance_history(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("����o?������o"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 2) then
				--��??������??
				startTime = web.GetTickCount();
				auto_quote(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("����o?������o"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 3) then
				--��??��o?����
				req:complete("{\"error\":-1,\"msg\":\"2??��3?��??��o?����\"}");
			else
				--?��?a��????������D��
				req:complete("{\"error\":-1,\"msg\":\"?��?a???��\"}");
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("??��?��?3?\r\n");
end
