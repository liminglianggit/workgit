--?a??¨º?2a¨º?¨®?¨¤y¡ê?¨®?¨¤¡ä?¦Ì?¡Â¨¨?o?¨º1¨®?LUA??¡À??¡§??????¨¢¡Â¡ê¡§¨°?¡À¡À??¨¨?¡À¡ê?a¨¤y¡ê?

--¨°???¨¢D3?¦Ì?¨¨?2?¨º??¦Ì¨ª3¡À?¨¢?¡ê???3?o¨ªo?¨°???¨°??¡è?¡§¨°?o?¨¢?¡ê?2?¨°aDT???¨¹??¡ê???¨°a?¨´?Y¨º¦Ì?¨º?¨¦??¨¨£¤DT???¨¹??¦Ì??¦Ì?¨ª?¨¦¨°?¨¢??¡ê
--¨º?¡¤??¡ì3?3¦Ì??2¨¦?¡¥?a1?
support_inquire_car = true;
--¨º?¡¤??¡ì3?¨¤¨²¨º¡¤¡À¡ê¦Ì£¤2¨¦?¡¥
support_query_insurance_history = true;
--¨º?¡¤??¡ì3?¡Á??¡¥¡À¡§??
support_auto_quote = true;
--¨º?¡¤??¡ì3?¡Á??¡¥o?¡À¡ê
support_auto_submit = false;
--¡¤t???¡ÂIP¦Ì??¡¤¡ê¡§¦Ì¡À¡À¡ê??1???¨ª?¨°3¡¤??¨º?TD¨¨VPN¨º¡À¡ê??a¨¤?¨¦¨¨???anil¡ê?¡¤??¨°D¨¨¨°a¨¦¨¨???a???a1?¡ê?¨®?¨°??D??¨º?¡¤??¨¹¡¤??¨º¡À¡ê??1???¨ª?¨°3¡ê?
web_server_ip_address = nil;
--¦Ì¡À?¡ã?¨²?¡Â¨¨??¡§¨°¨¦??DD¦Ì?1¡è¡Á¡Â??3¨¬¨ºy??(¨¨??¦Ì¡¤??¡ì?¨²1~10????)
suggest_work_threads_num = 1;
--¡À¡ê??1???¨¤¨¤D¨ª
insurer_type = "libao";
--¨º?¡¤???¨º?¡ä¡ã?¨²
show_window = true;
--¦Ì¡À?¡ã??¡À?¦Ì?¨¨?????3??¡ê¡À?D?¨º??¡§¨°?¦Ì?¡ê??¡¥¨¤¨¤?¡Â??¨®??¨¹¨¤¡ä??¡¤???????¡À?
global_name = "¨¤?¡À|";
--¨¨???3?¨º¡À¨º¡À??(¦Ì£¤??¡êoo¨¢??)
global_timeout = 10000
--¡À¡ê??1????¨´¨º?¦Ì???
global_region = "¡À¡À??";

--[[
--3¦Ì??D??¡é
--  ??P1CH37
--{"error":0,"msg":"3¨¦1|", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"D?D¨ª??3¦Ì",
--"owner":{"name":"?a¡ä¨®?a"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--??QJ97V6
--{"error":0,"msg":"3¨¦1|", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"D?D¨ª??3¦Ì",
--"owner":{"name":"¨¤?????"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}
--?¨¦DLE963
--??o?D??¡é
--A0145
--Tbv71wdC8
json.Get(req.para,"/car/plate_no")
--??QN0W53
external.get_result('LicenseNo'
    enforceCarShipTax
    enforcePremium
A911 3¦Ì?e2???
A912 ¨¨y??2???
A921 ¦Ì¨¢?¨¤2???
A928 ???¨²2???
A923 3??¨ª

A310 ¡Á?¨¨? A310
A290 ¨¦??? A972
A231 2¡ê¨¢¡ì 
A210 ??o? A971
--??N5GH06
--]]


--???¡ã?¨°¨º?¨¨?2?¨ºy3¡ê¨¢??¡§¨°?
MB_OK = 0;
MB_OKCANCEL = 1;
MB_ABORTRETRYIGNORE = 2;
MB_YESNOCANCEL = 3;
MB_YESNO = 4;
MB_RETRYCANCEL = 5;
MB_CANCELTRYCONTINUE = 6;
--???¡ã?¨°¨º?3??¨¢1?3¡ê¨¢??¡§¨°?
IDOK = 1;
IDCANCEL = 2;
IDABORT = 3;
IDRETRY = 4;
IDIGNORE = 5;
IDYES = 6;
IDNO = 7;
IDTRYAGAIN = 10;
IDCONTINUE = 11;
--?¨¦?¡è??¨¤¨¤D¨ª3¡ê¨¢??¡§¨°?
VCT_ALPHANUMBER_4 = 1004;			-- 4??¨®¡é??¨ºy¡Á?
VCT_ALPHANUMBER_5 = 1005;			-- 5??¨®¡é??¨ºy¡Á?
VCT_ALPHANUMBER_6 = 1006;			-- 6??¨®¡é??¨ºy¡Á?
VCT_CHINESE_2 = 2002;					-- 2??¡ä??D??
VCT_CHINESE_4 = 2004;					-- 4??¡ä??D??
VCT_ALPHA_4 = 3004;						-- 4??¡ä?¨®¡é??
VCT_ALPHA_5 = 3005;						-- 5??¡ä?¨®¡é??
VCT_ALPHA_6 = 3006;						-- 6??¡ä?¨®¡é??
VCT_NUMBER_4 = 4004;					-- 4??¡ä?¨ºy¡Á?
VCT_NUMBER_5 = 4005;					-- 5??¡ä?¨ºy¡Á?

--3¦Ì??D??¡é
--??P1CH37 
--{"error":0,"msg":"3¨¦1|", "car":{"engine_no":"346076","vin":"LSVE369F0B2454373","model":"D?D¨ª??3¦Ì",
--"owner":{"name":"?a¡ä¨®?a"}},"insurance":{"shang":"1","shangDateStart":"2016-10-13","shangDateEnd":"2017-10-12"}}

--??QJ97V6
--{"error":0,"msg":"3¨¦1|", "car":{"engine_no":"021665","vin":"LFV3A28E063004314","model":"D?D¨ª??3¦Ì",
--"owner":{"name":"¨¤?????"}},"insurance":{"shang":"1","shangDateStart":"2016-10-25","shangDateEnd":"2017-10-24"}}

--??o?D??¡é
--A0145
--Tbv71wdC8


--??QN0W53

--??N5GH06
--??Q58K82


--?¨²??jsono¡¥¨ºy¨¢D¡À¨ª
--json.Valid(s)				 ?D?¡§??3?¦Ì?s2?¨ºy¨º?¡¤?¨º?¨®DD¡ì¦Ì?JSON¡Á?¡¤?¡ä?
--json.Get(s, k)			 ¡¤¦Ì??json¡ä?s¨¤?k?¨¹¡ä|¦Ì??¦Ì¡ê¡§¨°?¡Á?¡¤?¡ä?D?¨º?¡¤¦Ì??¡ê??¡ê?¨¹¦Ì?¨¤¨¤D¨ª¨º?¡Á?¡¤?¡ä?¡ê?¨®?'/'?¨°'\\'¡¤???¡ê?¨¨?¨°a¨¨?3?json¡ä?s¡ê¡§???¦Ì?a¡êo"{'abc':{'a':'1', 'b':'2', 'c':'3'},'d':'4'}"¡ê?¨¤?¦Ì¨²¨°????¨¹'abc'??¦Ì?¡Á¨®?¨¹'b'¦Ì??¦Ì¡ê??¨¦D¡ä?ajget(s, "/abc/b")?¡ê
--json.Set(s, k, v)		 ¨¦¨¨??json¡ä?s¨¤?k?¨¹¡ä|¦Ì??¦Ì?av¡ê?2¡é???¨¢1?¨°?¡Á?¡¤?¡ä?¡¤?¨º?¡¤¦Ì???¡ê
--json.Size(s, k)			 ?D??json¡ä?s¨¤?k?¨¹¡ä|¦Ì??a????¨ºy¡ê?¨°a?¨®s[k]¨º?¨ºy¡Á¨¦¨¤¨¤D¨ª?¡ê

--?¨²???¦Ì¨ª3o¡¥¨ºy¨¢D¡À¨ª
--sys.DBGPrint(fmt,...)			¨º?3?¦Ì¡Â¨º?D??¡é¡ê?2?¨ºyo¨ªCo¡¥¨ºy¦Ì?printf¨°???¡ê?fmt¨º???¨º?¡Á?¡¤?¡ä?(o¨ªprintf¨°???¡ê??¨¦?¨®¨º?%d?¡é%c?¡é%u?¡é%o?¡é%f?¡é%p?¡é%s¦Ì¨¨¦Ì¨¨)¡ê?o¨®???¨®¡À?2??¡ê

--?¨²??¨°¦Ì??o¡¥¨ºy¨¢D¡À¨ª
--web.GetTickCount()   ¡¤¦Ì??¦Ì¡À?¡ã?¦Ì¨ª3¨º¡À??¡ê¡§¡ä¨®?a?¨²¦Ì????¡ã?¨´?-¨¤¨²¦Ì?¨º¡À??¡ê?¨°?o¨¢???a¦Ì£¤??¡ê?
--web.GetUserName()		 ¡¤¦Ì??¦Ì¡À?¡ã¨®?¨®¨²¦Ì???¡À¡ê??1???¨ª?¨°3¦Ì?¨®??¡ì??
--web.GetPassword()		 ¡¤¦Ì??¦Ì¡À?¡ã¨®?¨®¨²¦Ì???¡À¡ê??1???¨ª?¨°3¦Ì??¨¹??
--web.GetRequest()	 	 ¡¤¦Ì??¦Ì¡À?¡ã???¨®?¨®¨¢D?¡ã??¦Ì????¨®???¨®
------???¨®???¨®¡ã¨¹o?¨°???3¨¦?¡À
--------id			 ¨¤¨¤D¨ª¡ê¡§C???¨®¡ê?¡ê?¡À¨º¨º?¡¤?
--------type     ¨¤¨¤D¨ª¡ê¡§??D¨ª¡ê?¡ê?0 - 2¨¦3¦Ì??¡ê?1 - 2¨¦¨¤¨²¨º¡¤¡À¡ê¦Ì£¤¡ê?2 - ¡Á??¡¥¡À¡§??¡ê?3 - ¡Á??¡¥o?¡À¡ê?¡ê
--------para		 ¨¤¨¤D¨ª¡ê¡§¡Á?¡¤?¡ä?¡ê?¡ê???¨º?¨º?¨¨?¦Ì?2?¨ºy¡ê?¨¨?1?¨º?2¨¦3¦Ì?????¨®¡ê??¨°?a??2?¨ºy¨º?3¦Ì??¡ê?¨¨?1?¨º????¨¹¦Ì??¨°?a??2?¨ºy¨º?¨º?¨¨?¦Ì?JSON¡ä??¡ê
--------complete(result) ¨¤¨¤D¨ª¡ê¡§o¡¥¨ºy¡ê?¡ê?¨ª¨º3¨¦¦Ì¡À?¡ã???¨®?¡ê
--web.IsRunning()			 ¡¤¦Ì??¦Ì¡À?¡ãD¨¦?a?¨²¨º?¡¤??¨²??DD¦Ì?¡À¨º??
--web.Exit(reason)		 ¨ª?3?¦Ì¡À?¡ã¦Ì???¡À??¡äDD?¡¤?3¡ê¡§reason?¨¦¨°?2???3?¡ê?¡¤??¨°??3?¦Ì?¨º?¨ª?3??-¨°¨°¡Á?¡¤?¡ä?¡ê?
--web.NewPage()				 D??¡§¨°3??¡ê?2¡é¡¤¦Ì???¡§¨¢¡é¦Ì?¨°3?????¨®
--web.GetPageCount()	 ??¨¨?¨°3??¨ºy¨¢?
--web.GetPageAt(no)		 ??¨¨?D¨°o?¨º?no¦Ì?¨°3?????¨®
--web.GetPageTitle(p)  ??¨¨?¨°3?????¨®p¦Ì?¡À¨º¨¬a¡ê¡§?¡ì3?¨ª?¨°3???¡ã?¨°¡ê?
--web.GetPageURL(p)		 ??¨¨?¨°3?????¨®p¦Ì?URL¡ê¡§?¡ì3?¨ª?¨°3???¡ã?¨°¡ê?
--web.FindPageByTitle(partten)	2¨¦?¨°¨°3??¡À¨º¨¬a?£¤??¡À¨º¨¬a¡Á?¡¤?¡ä?¦Ì?¨°3?????¨®2¡é¡¤¦Ì??¡ê?pattern?D?¨¦¡ã¨¹o?¨ª¡§??¡¤?¡ê¡§?,*¡ê?
--web.FindPageByURL(partten)	  2¨¦?¨°¨°3??URL?£¤??URL¡Á?¡¤?¡ä?¦Ì?¨°3?????¨®2¡é¡¤¦Ì??¡ê?pattern?D?¨¦¡ã¨¹o?¨ª¡§??¡¤?¡ê¡§?,*¡ê?
--web.Navigate(p, url) ?¨²???¡§¦Ì?¨°3?????¨®p¨¤?¦Ì?o?¦Ì?url???¡§¦Ì?¨ª??¡¤¡ê?3¨¦1|¡¤¦Ì??true¡ê?¡¤??¨°¡¤¦Ì??false
--web.ClosePage(p)		 1?¡À?¨°3?????¨®p???¡§¦Ì?¡ä¡ã?¨²
--web.ExecuteScript(p, sc[, async])	?¨²???¡§¦Ì?¨°3?????¨®p¨¤??¡äDDjs??¡À??¡êjs??¡À?¦Ì??¨²¨¨Y?¨²sc¡Á?¡¤?¡ä?¨¤??¡êasync¨¦¨¨??¦Ì?¨º¡Ào¨°¡ä¨²¡À¨ª¨°¨¬2??¡äDD¡ê?¡¤??¨°¨ª?2??¡ê¡ê¡§?¡ì3?¨ª?¨°3???¡ã?¨°¡ê????¡ã?¨°?¡äDD2??¡ì3?¨°¨¬2?¡ê?
--web.GetLastAsyncResult(page)	2¨¦?¡¥???¡ã¡Á?o¨®¨°?¡ä??¨²¨°3?????¨®p¨¤??¡äDD¦Ì?js??¡À?2¨´¡Á¡Â¨º?¡¤?¨ª¨º3¨¦¡ê?¨¨??¡ä¨ª¨º3¨¦¡¤¦Ì??nil¡ê?¡¤??¨°¡¤¦Ì???¡äDD¦Ì??¨¢1?¡ê¡§??D¨ª¨ºy¡ê?¡ê?2??a¨¢?¡À¨ª¨º?3¨¦1|?¡ê
--web.PutResult(k,v)	 ?¨²¦Ì¡À?¡ã?¡¤?3??¡ê¡§?¨¦??¨°3??¡ê???¡Á?¡¤?¡ä?v¡ä?¡ä¡é¦Ì?k?¨¹??¡ê?¡ä??¡¤?3o¨ªjs?¡äDD?¡¤?3??¦Ì?external.put_result(k,v)¨¤??1o¡¥¨ºy¨º?¨°???¦Ì?¡ê??¨¦¨°?¨®?¨¤¡ä?¨²¨¢???¨®???¨¤?¡ä?¦ÌY¨ºy?Y
--web.GetResult(k)		 ?¨²¦Ì¡À?¡ã?¡¤?3??¡ê¡§?¨¦??¨°3??¡ê???¨¨?k?¨¹??¡ä?¡ä¡é¦Ì?¡Á?¡¤?¡ä??¦Ì¡ê?¡ä??¡¤?3o¨ªjs?¡äDD?¡¤?3??¦Ì?external.get_result(k)¨¤??1o¡¥¨ºy¨º?¨°???¦Ì?¡ê??¨¦¨°?¨®?¨¤¡ä?¨²¨¢???¨®???¨¤?¡ä?¦ÌY¨ºy?Y
--web.IsDocumentCompleted(p)	?D??¨°3?????¨®p¨¤?¦Ì???¦Ì¦Ì??¨¨?¨ª¨º3¨¦¡ê¡§?¡ì3?¨ª?¨°3???¡ã?¨°¡ê?
--web.IsNavigateError(p)	?D??¨°3?????¨®p¦Ì?o?¨º?¡¤?3?¡ä¨ª
--web.OnShowMessage(func)	¨¦¨¨??¦Ì¡À?¡ã?¡¤?3??¨ª?¨°3???¡ã?¨°¦Ì¡¥3?¨º??t¦Ì???¦Ì¡Âo¡¥¨ºy¡ê?func?¨ª¨º?¨¦¨¨??¦Ì???¦Ì¡Âo¡¥¨ºy¡ê¡§¨¨?1??anil?¨°¨¨?????¦Ì¡Â¡ê??¡ê
-------???¡ã?¨°¦Ì¡¥3?¨º??t??¦Ì¡Âo¡¥¨ºy?-D¨ª¨º?¡êofunction ShowMessageCallback(p, caption, message, type)  ??¦Ì¡Âo¡¥¨ºy¡¤¦Ì??¦Ì??¨¢1?¨º?¡ã¡ä??¡ã¡ä?£¤¦Ì?¡Á¨º?¡äID¡ê¡§?¨º???¡ã???¡ã?¨°¨º?3??¨¢1?3¡ê¨¢??¡À¦Ì??¡§¨°?¡ê?
-------??¦Ì¡Âo¡¥¨ºy??DD?¡¤?3o¨ª?y3¡ê?¡äDD¨¢¡Â3¨¬2??¨²¨ª?¨°????¡¤?3??????¡ê?¨¨?1?¨°ao¨ª?¡Â3¨¬D¨°????¨ª¡§????¨º1¨®?web.PutResulto¨ªweb.GetResult?¡ê
--web.Wait(ms)			 	 ¦Ì¨¨¡äymso¨¢??o¨®?¨¬D??¡äDDo¨®D?¡ä¨²??
--web.IsElementExist(p,name)	?D?¡§???¡§¨°3??¨¤?¨º?¡¤?¡ä??¨²name?¨¨¨º?¦Ì?DOM??¦Ì¦Ì???¨®?¡êname¨º?JS?D¨¨?o??¨¦¨®?¦Ì????¨°???¨®¦Ì?¨®DD¡ì¨®????¡ê?¨¦?¡ì3??¨¤?????¨®¡ê????¨®??¨®?','?¨°';'¡¤????¡ê
--web.GetNewPage(page,min_ms)	??¨¨?¡Á?D?¡ä¡ä?¡§¦Ì?¨°3??¡ê¡§¨¨?1?page2??anil¡ê????¡ä?a??D?¨°3??¡À?D?¨º?page¦Ì?¡Á¨®¨°3??¡ê?¡¤??¨°?¨¦¨°?¨º?¨¨?¨°a¨°3??¡ê?¡ê??¨°?¨²¡Á?¡ä¡ä?¡§¨º¡À???¨²¦Ì¡À?¡ã¨º¡À???¡ãmin_mso¨¢????o¨®?¡ê
--web.IsTimeout(t)		 ?D??3?¨º¡À?¡Ât¨º?¡¤?3?¨º¡À
--web.NewTimeout(ms)	 ¡ä¡ä?¡§mso¨¢??o¨®3?¨º¡À¦Ì?3?¨º¡À?¡Â
--web.Refresh(p)			 ?¡éD?¨°3?????¨®p
--web.GetCarModeCode(plateno)	2¨¦?¡¥???¡§3¦Ì??o?¨º?plateno¦Ì?3¦Ì¨¢?¨º?¡Àe¡ä¨²??¡ê¡§¨¨??anil?¨°¡À¨ª¨º??¡ä2¨¦¦Ì?¡ê?
--web.IsVPNConnected() ?D??VPN¨º?¡¤?¨°??-¨¢??¨®¨¦?¨¢?
--web.RecognizeVerificationCode(url, type)	¨º?¡Àe?¨¦?¡è??¡ê?url¨º??¨¦?¡è??¨ª??¡¤¡ê?type¨º??¨¦?¡è??¨¤¨¤D¨ª(VCT_XXXX)?¡ê¡¤¦Ì??¡À¨º¨º?¡¤?IDo¨ª¨º?¡Àe?¨¢1?¡ê?¨¨?
----------------------------------- id, code = web.RecognizeVerificationCode("https://icore-pts.pingan.com.cn/ebusiness/auto/rand-code-imgage.do", VCT_ALPHANUMBER_4);
----------------------------------- ¡¤¦Ì??¦Ì?id¨¨?1?¨º?D?¨®¨²¦Ì¨¨¨®¨²¨¢?¦Ì??¨°¡À¨ª¨º??¡ä¨º?¡Àe3?¨¤¡ä¡ê??a??id¦Ì??¦Ì?¨ª¨º?¡ä¨ª?¨®¡ä¨²??¡ê?
--web.ReportVerCodeError(id)	¡À¡§??¡ä¨ª?¨®¨º?¡ÀeD??¡é¡ê?id¨º?web.ReportVerCodeError¡¤¦Ì??¦Ì?¦Ì¨²¨°????¨¢1??¡êo¡¥¨ºy¡¤¦Ì??¡ä¨ª?¨®¡ä¨²??¡ê?0¡À¨ª¨º?3¨¦1|?¡ê
--web.OnCreateDialog(func)	¨¦¨¨??¦Ì¡À?¡ã?¡¤?3??¨ª?¨°3???¡ã?¨°¡ä¡ä?¡§¨º??t¦Ì???¦Ì¡Âo¡¥¨ºy¡ê?func?¨ª¨º?¨¦¨¨??¦Ì???¦Ì¡Âo¡¥¨ºy¡ê¡§¨¨?1??anil?¨°¨¨?????¦Ì¡Â¡ê?
-------???¡ã?¨°¡ä¡ä?¡§¨º??t??¦Ì¡Âo¡¥¨ºy?-D¨ª¨º?¡êofunction CreateDialogCallback(p, hwnd, caption, message, type)
-------??¦Ì¡Âo¡¥¨ºy??DD?¡¤?3o¨ª?y3¡ê?¡äDD¨¢¡Â3¨¬2??¨²¨ª?¨°????¡¤?3??????¡ê?¨¨?1?¨°ao¨ª?¡Â3¨¬D¨°????¨ª¡§????¨º1¨®?web.PutResulto¨ªweb.GetResult?¡ê
--web.SetDlgItemText(hDlg, id, text)	¨¦¨¨?????¡§???¡ã?¨°¨¤????¡§???tid¦Ì???¡À??¨²¨¨Y?atext
--web.EndDialog(hDlg, ret)	???1???¡ã?¨°
--web.OnShowDialogHtml(func)	¨¦¨¨??¦Ì¡À?¡ã?¡¤?3??¨ª?¨°3???¡ã?¨°??¨º?¦Ì???¦Ì¡Âo¡¥¨ºy¡ê?func?¨ª¨º?¨¦¨¨??¦Ì???¦Ì¡Âo¡¥¨ºy¡ê¡§¨¨?1??anil?¨°¨¨?????¦Ì¡Â¡ê?
-------???¡ã?¨°¨ª?¨°3??¨º???¦Ì¡Âo¡¥¨ºy?-D¨ª¨º?¡êofunction ShowDialogHtmlCallback(p, url, name, flags)
-------¡¤¦Ì??¨º?¡¤??¨ºD¨ª¦Ì¡¥3?¦Ì?¡Á¡ä¨¬?¡ê?true¡À¨ª¨º??¨ºD¨ª¡ê?false¡À¨ª¨º?2??¨ºD¨ª?¡ê
-------??¦Ì¡Âo¡¥¨ºy??DD?¡¤?3o¨ª?y3¡ê?¡äDD¨¢¡Â3¨¬2??¨²¨ª?¨°????¡¤?3??????¡ê?¨¨?1?¨°ao¨ª?¡Â3¨¬D¨°????¨ª¡§????¨º1¨®?web.PutResulto¨ªweb.GetResult?¡ê
--web.GetVPNLoginInfo(type, no)	??¨¨?D¨°o?¨º?no¡À¡ê??1???¨¤¨¤D¨ª¨º?type¦Ì??t¦Ì¨¤¨¤?¦Ì?VPN?¨º?¡ìD??¡é¡ê?no¡À¨ª¨º?¨º??£¤??¦Ì?¦Ì?¦Ì¨²????¡ê?0¡À¨ª¨º?¦Ì¨²¨°????¡ê¨¨?3¨¦1|?¨°
-------¡¤¦Ì???t¦Ì¨¤¨¤?¨¦¨¨??¦Ì?VPN?¨º?¡ìo¨ª?¨¹??¡ê?¡¤??¨°¡¤¦Ì??nil?¡ê¨¤y¨¨?¡êousr,pwd = web.GetVPNLoginInfo('renbao',0)  ?a??¡ä¨²???¨ª¨º???¨¨?¦Ì¡À?¡ã¦Ì????¨º?¡ì?D
-------¦Ì¨²¨°???¨¦¨¨??¨¢?VPN¦Ì???D??¡é¦Ì??t¦Ì¨¤VPN?¨º?¡ìo¨ª?¨¹???¡ê
--web.GetHtmlDialog()		??¨¨?¦Ì¡À?¡ã¦Ì¡¥3?¦Ì?HTML???¡ã?¨°???¨®?¡ê

--¨°????ao¡¥¨ºy2?¡¤?
function OnShowDialogHtml(page, url, name, flags)
	return false;	-- ???1?¨´¨®D¡ä¡ã?¨²¨ª?¨°3¦Ì¡¥3?
end

--???1?¦Ì¨ª3???¡ã?¨°¨º?¨¤y
function OnCreateDialog(page, hwnd, caption, message, type)
	sys.DBGPrint("¡¤¡é??¡ä¡ã?¨²[%s]\r\n", caption);
	if (string.lower(caption) == "user-pin verification") then
		sys.DBGPrint("¨º?PIN¡ä¡ã?¨²¡ê?¡Á?¡À?¡Á??¡¥¨¬?D¡ä¡ê?\r\n");
		web.SetDlgItemText(hwnd, 1000, "jnluzhen");
		web.EndDialog(hwnd, IDOK);
	end
end
--???1?¦Ì¨ª3¦Ì¡¥3??¨°
function OnDialog(page, caption, message, type)
	local pos;
	sys.DBGPrint("????¦Ì??¦Ì¨ª3???¡ã?¨°[%s, dwType=%d]¡ê?????¡¤¦Ì???¨¬D?¡ê?%s\r\n", caption, type,message);
	type = type % 16;
	global_message = message;
	if string.find(message,'¨ª?¡À¡ê¨¢?¨ª?¨¤¨¤D¨ª¦Ì?????') ~= nil then
		jiaoqiang_flag = 1;
	end
	pos,_=string.find(message,"¨º?¡¤??¡ä??");
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

--¦Ì¨¨¡äy¨°3???¨®??¨ª¨º¡À?
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
			sys.DBGPrint("¨°3???¨®??3?¨º¡À¡ê?\r\n");		
			break;
		end
		web.Wait(50);
	end
	return false;
end

--¦Ì¨¨¡äy¨°3??¦Ì??3?????¨®?¨®??¨ª¨º¡À?
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
			sys.DBGPrint("¦Ì?o?¨º¡ì¡ã¨¹¡ê?\r\n");
			return false;
		end
		if(web.IsTimeout(tm)) then
			sys.DBGPrint("¦Ì¨¨¡äy???¨®'"..objName.."'?¨®??¨ª¨º¡À?3?¨º¡À¡ê?\r\n");
			break;
		end
		web.Wait(50);
	end
	return false;
end

--¦Ì¨¨¡äy¨°3?????¨®¨¤?¦Ì???¦Ì¦Ì??¨¨?¨ª¨º¡À?
function WaitForDocumentCompleted(page, ms)
	local title, pos;
	if not __WaitForDocumentCompleted(page, ms or global_timeout) then
		return false;
	end
	title = web.GetPageTitle(page);
	if title ~= nil then
		pos, _ = string.find(title, "?¡è¨º¨¦¡ä¨ª?¨®");
		if pos ~= nil then
			if not WaitForObjectLoaded(page, "document.getElementById(\"overridelink\")") then
				sys.DBGPrint("¦Ì¨¨¡äy?¡è¨º¨¦¡ä¨ª?¨®¨°3?????¨®?¨®??¨ª¨º¡À?3?¨º¡À¡ê?\r\n");
				return false;
			end
			if (not web.ExecuteScript(page, "document.getElementById(\"overridelink\").click();")) then
				sys.DBGPrint("o????¡è¨º¨¦¡ä¨ª?¨®??¡À??¡äDD¡ä¨ª?¨®¡ê?\r\n");
				return false;
			end
			if not WaitForDocumentCompleted(page, ms or global_timeout) then
				sys.DBGPrint("¦Ì¨¨¡äy?¡è¨º¨¦¡ä¨ª?¨®o¨®D?¨°3???¨®??3?¨º¡À¡ê?\r\n");
				return false;
			end
		end
	else
	  sys.DBGPrint("??¨¨?D??¨®??¨°3??¡À¨º¨¬a¨º¡ì¡ã¨¹¡ê?\r\n");
	end
	return true;
end


--¦Ì¨¨¡äyD?¨°3??¡ä¡ä?¡§
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
			sys.DBGPrint("¦Ì¨¨¡äyD?¨°3??¡ä¨°?a3?¨º¡À¡ê?\r\n");
			break;
		end
		web.Wait(10);
	end
	return nil;
end

--¦Ì???
function login(page,url)
	local user, password, url1, pos, ret, error, title;
	user = web.GetUserName();
	password = web.GetPassword();
	if user == nil or password == nil then
		return false, "¨®??¡ì???¨°?¨¹???a??";
	end
	if not web.Navigate(page, url) then
		return false, "?T¡¤¡§¦Ì?o?¦Ì?¨¤?¡À|¨º¡Á¨°3";
	end
	if not WaitForDocumentCompleted(page, 20000) then
		return false, "¦Ì?o?¨º¡ì¡ã¨¹";
	end
	--web.Wait(5000);
	tm02 = web.NewTimeout(30000);
	title = nil;
	repeat
		web.Wait(100);
		title = web.GetPageTitle(page);
		sys.DBGPrint("¦Ì¨¨¡äy??¨¨?title¡ê???¨¦?o¨®¡ê?\r\n");
		if title then
		
			pos = nil;
			pos, _ = string.find(title, "Motor");
			if pos == nil then
				pos, _ = string.find(title, "Welcome");
				if pos == nil then
					pos, _ = string.find(title, "https://lm.libertymutual.com.cn");
					if pos == nil then
						return false, "?T¡¤¡§¨º?¡Àe¦Ì?¡À¨º¨¬a["..title.."]";
					end
				end
			end
			break;
		end
	until (web.IsTimeout(tm02))
	sys.DBGPrint(title);
	if title == nil then
		return false, "¦Ì???¨º¡ì¡ã¨¹¡ê?";
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
	return true, "3¨¦1|";
end





--2¨¦3¦Ì??
function inquire_car(req)
	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("¡¤¡é??2¨¦?¡¥3¦Ì??[%s]¦Ì????¨®¡ê?\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??¡§¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"¡ä¡ä?¡§¨°3??¨º¡ì¡ã¨¹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("¦Ì???¡¤¦Ì???¨¢1?[%s]¡ê?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("¦Ì???¨ª¨º3¨¦¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
	tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?¨²?¡¥3¦Ì') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??¨¨?¨º¡Á¨°3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨?¨º¡Á¨°33¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??¦Ì£¤') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\"}");
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
		sys.DBGPrint("¨º?¨¨?3¦Ì??o?.....\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("¨º?¨¨?3¦Ì??o?3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("¨º?¨¨?3¦Ì??o?¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"¨º?¨¨?3¦Ì??o?¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end


	local tm11 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "document.getElementsByClassName('ng-binding footable-visible')[8].innerHTML;\r\n\
								var index = 1;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('ng-binding ng-scope')[index].innerHTML;\r\n\
									if (temp.indexOf('¨ª¨º3¨¦') != -1){\r\n\
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
		sys.DBGPrint("?¡ä?¨¹2¨¦?¡¥¦Ì???3¦Ì¦Ì?¨ª?¡À¡ê¦Ì£¤o?¡ê?\r\n");
		req:complete("{\"error\":-3,\"msg\":\"?¡ä?¨¹2¨¦?¡¥¦Ì???3¦Ì¦Ì?¨ª?¡À¡ê¦Ì£¤o?¡ê?\"}");
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
								if (ownership_code.indexOf('¡¤?') != -1){\r\n\
									external.put_result('ownership_code','1');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('ownership_code','0');\r\n\
								}\r\n\
								if (kind_code.indexOf('?¨ª3¦Ì') != -1){\r\n\
									external.put_result('kind_code','K');\r\n\
									external.put_result('use_character','110');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('kind_code','H');\r\n\
									external.put_result('use_character','120');\r\n\
								}\r\n\
								if (license_type.indexOf('D?D¨ª??3¦Ì') != -1){\r\n\
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
		sys.DBGPrint("¨¨?¨ºy?Y...¡êo\r\n");
		if engine_no ~= nil and plate_no ~= nil and vin ~= nil and register_date ~= nil then
			sys.DBGPrint("¨¨?¨ºy?Y3¨¦1|¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("¦Ì¨¨¡äy¡À¡ê¦Ì£¤2¨¦?¡¥3?¨º¡À¡ê?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"¦Ì¨¨¡äy¡À¡ê¦Ì£¤2¨¦?¡¥3?¨º¡À¡ê?\"}");
			return false;
	end

	web.PutResult('flag','');
	ret = "{\"error\":0,\"msg\":\"3¨¦1|\", \"car\":{";
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
	sys.DBGPrint("¡¤¡é??2¨¦?¡¥¨¤¨²¨º¡¤¡À¡ê¦Ì£¤[%s]¦Ì????¨®¡ê?\r\n",json.Get(req.para,"/car/plate_no"));
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??¡§¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"¡ä¡ä?¡§¨°3??¨º¡ì¡ã¨¹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("¦Ì???¡¤¦Ì???¨¢1?[%s]¡ê?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("¦Ì???¨ª¨º3¨¦¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?¨²?¡¥3¦Ì') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??¨¨?¨º¡Á¨°3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨?¨º¡Á¨°33¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??¦Ì£¤') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\"}");
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
		sys.DBGPrint("¨º?¨¨?3¦Ì??o?.....\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("¨º?¨¨?3¦Ì??o?3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("¨º?¨¨?3¦Ì??o?¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"¨º?¨¨?3¦Ì??o?¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end


	local tm11 = web.NewTimeout(10000);
	web.PutResult('flag','');
	repeat 
		web.ExecuteScript(page, "document.getElementsByClassName('ng-binding footable-visible')[8].innerHTML;\r\n\
								var index = 1;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('ng-binding ng-scope')[index].innerHTML;\r\n\
									if (temp.indexOf('¨ª¨º3¨¦') != -1){\r\n\
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
		sys.DBGPrint("?¡ä?¨¹2¨¦?¡¥¦Ì???3¦Ì¦Ì?¨ª?¡À¡ê¦Ì£¤o?¡ê?\r\n");
		req:complete("{\"error\":-3,\"msg\":\"?¡ä?¨¹2¨¦?¡¥¦Ì???3¦Ì¦Ì?¨ª?¡À¡ê¦Ì£¤o?¡ê?\"}");
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
								if (ownership_code.indexOf('¡¤?') != -1){\r\n\
									external.put_result('ownership_code','1');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('ownership_code','0');\r\n\
								}\r\n\
								if (kind_code.indexOf('?¨ª3¦Ì') != -1){\r\n\
									external.put_result('kind_code','K');\r\n\
									external.put_result('use_character','110');\r\n\
								}\r\n\
								else{\r\n\
									external.put_result('kind_code','H');\r\n\
									external.put_result('use_character','120');\r\n\
								}\r\n\
								if (license_type.indexOf('D?D¨ª??3¦Ì') != -1){\r\n\
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
		sys.DBGPrint("¨¨?¨ºy?Y...¡êo\r\n");
		if engine_no ~= nil and plate_no ~= nil and vin ~= nil and register_date ~= nil then
			sys.DBGPrint("¨¨?¨ºy?Y3¨¦1|¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm2));
	flag = web.GetResult("flag");
	if flag == nil then
			web.ClosePage(page);
			sys.DBGPrint("¦Ì¨¨¡äy3¦Ì¨¢?2¨¦?¡¥3?¨º¡À¡ê?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"¦Ì¨¨¡äy3¦Ì¨¢?2¨¦?¡¥3?¨º¡À¡ê?\"}");
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
	--¨¨?¨¦¨¬¨°¦Ì??D??¡é
	web.PutResult('flag','');
	repeat
		web.Wait(100);
		web.ExecuteScript(page, "var index = 0;\r\n\
								while(true){\r\n\
									var temp = document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].innerHTML;\r\n\
									if(temp.indexOf('¨¦¨¬¨°¦Ì??¡À¡ê¦Ì£¤o?') != -1){\r\n\
										external.put_result('PolicyNo',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('??????¡À¡ê¦Ì£¤o?') != -1){\r\n\
										external.put_result('enforcePolicyNo',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('¨¦¨¬¨°¦Ì???e¡À¡ê¨¨??¨²') != -1){\r\n\
										external.put_result('StartDate',document.getElementsByClassName('control-group col-xs-12 col-md-6')[index].getElementsByTagName('p')[0].innerHTML);\r\n\
									}\r\n\
									else if(temp.indexOf('???????e¡À¡ê¨¨??¨²') != -1){\r\n\
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
										if (insure_type.indexOf('3¦Ì¨¢??e¨º¡ì??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('chesun',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¡Á?¨¨??e¨º¡ì??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('ziran',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¦Ì¨²¨¨y??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sanzhe',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???¨²') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('siji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('3??¨ª') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('chengke',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¦Ì¨¢?¨¤') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('daoqiang',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¡¤¡é?¡¥?¨²¨¦????e¨º¡ì??') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sheshui',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('??o?') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('huahen',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¦Ì¨²¨¨y¡¤?') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('sanfang',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('2¡ê¨¢¡ì') != -1 && insure_type.indexOf('2???') == -1)\r\n\
											external.put_result('boli',document.getElementsByTagName('tr')[index].getElementsByTagName('label')[0].innerHTML);\r\n\
										else if (insure_type.indexOf('3¦Ì¨¢??e¨º¡ì??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('chesun_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¦Ì¨²¨¨y??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('sanzhe_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???¨²') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('siji_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('3??¨ª') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('chengke_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¦Ì¨¢?¨¤') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('daoqiang_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¡¤¡é?¡¥?¨²¨¦????e¨º¡ì??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('sheshui_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('¡Á?¨¨??e¨º¡ì??') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('ziran_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('??o?') != -1 && insure_type.indexOf('2???') != -1)\r\n\
											external.put_result('huahen_buji',document.getElementsByTagName('tr')[index].getElementsByClassName('ng-binding')[2].innerHTML);\r\n\
										else if (insure_type.indexOf('???¡§') != -1)\r\n\
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
		sys.DBGPrint("?y?¨²¨¨?¨¦¨¬¨°¦Ì??¡À¡ê¦Ì£¤¨ºy?Y¡ê???¨¦?o¨®¡ê?\r\n");

		if web.GetResult('chesun') ~= nil then
			sys.DBGPrint("¨¨?¨ºy?Y3¨¦1|¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
			web.PutResult("flag","1");
			break;
		end
	until (web.IsTimeout(tm3));

	if web.GetResult('flag') == nil then
			web.ClosePage(page);
			sys.DBGPrint("¦Ì¨¨¡äy¡À¡ê¦Ì£¤2¨¦?¡¥3?¨º¡À¡ê?\r\n");
			req:complete("{\"error\":-9,\"msg\":\"¦Ì¨¨¡äy¡À¡ê¦Ì£¤2¨¦?¡¥3?¨º¡À\"}");
			return false;
	end
	--flag ?D??¨º?¡¤?D¨¨¨°a?¨®?oo?
	web.PutResult('flag','');
	ret = "{\"error\":0,\"msg\":\"3¨¦1|\", \"car\":{";
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
	--??¨¢?3¦Ì¦Ì?????¨ºy¨¢???2?¨°??¨´D¨¨¨°a¨°?¡ä??D??¨º?¡¤??¨¦?¨¦??????
	--?¨´?D??¨º?¡¤??a2????a?a
	--?D??¨º?¡¤?¡ã¨¬¨¤¨ª¨¦¨¬¨°¦Ì??
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
		ret = ret..",\"comDes\":\"¨¤?¡À|¡À¡ê??¨®D?T1???\"";
		ret = ret..",\"isComm\":\"1\"";
		if web.GetResult('PolicyNo') ~= nil then
			ret = ret..",\"insuranceId\":\""..web.GetResult('PolicyNo').."\"";
		end
		if web.GetResult('StartDate') ~= nil then
			local date = string.match(web.GetResult('StartDate'), "%d+-%d+-%d+");
			ret = ret..",\"insuredStartDate\":\""..date.."\"";
		end
		if web.GetResult('StartDate') ~= nil then
			local date = string.match(web.GetResult('StartDate'), "?¨¢ %d+-%d+-%d+");
			date = string.match(date, "%d+-%d+-%d+");
			ret = ret..",\"insuredEndDate\":\""..date.."\"";
		end
		if web.GetResult('PremiumCount') ~= nil then
			PremiumCount = string.gsub(web.GetResult('PremiumCount'), ',', '');
			PremiumCount = string.match(PremiumCount, "%d+.%d+");
			ret = ret..",\"price\":\""..PremiumCount.."\"}";
		end
	end
	--?D??¨º?¡¤?¡ã¨¬¨¤¨ª??????
	if web.GetResult('enforcePolicyNo') ~= nil then
		if flag > 0 then
			ret = ret..",";
		end
		ret = ret.."{\"comDes\":\"¨¤?¡À|¡À¡ê??¨®D?T1???\"";
		ret = ret..",\"isComm\":\"0\"";
		if web.GetResult('enforcePolicyNo') ~= nil then
			ret = ret..",\"insuranceId\":\""..web.GetResult('enforcePolicyNo').."\"";
		end
		if web.GetResult('enforceStartDate') ~= nil then
			local date = string.match(web.GetResult('enforceStartDate'), "%d+-%d+-%d+");
			ret = ret..",\"insuredStartDate\":\""..date.."\"";
		end
		if web.GetResult('enforceStartDate') ~= nil then
			local date = string.match(web.GetResult('enforceStartDate'), "?¨¢ %d+-%d+-%d+");
			date = string.match(date, "%d+-%d+-%d+");
			ret = ret..",\"insuredEndDate\":\""..date.."\"}";
		end
	end
	ret = ret.."] }";
	--¨¤¨²¨º¡¤¡À¡ê¦Ì£¤D??¡é?¨®1¡è¨ª¨º3¨¦
	ret = ret.."}";
	--¡Á¨¹json¡ä??¨®1¡è¨ª¨º3¨¦
	sys.DBGPrint(ret);
	web.ClosePage(page);
	req:complete(ret);
	return true;
end

--¡Á??¡¥¡À¡§??
function  auto_quote(req)

	
	if json.Get(req.para,'/insurance/chengke') ~= nil then
		local temp = json.Get(req.para,'/insurance/chengke/unit') + 0;
		if temp > 200000 then
			sys.DBGPrint("3??¨ª??¡À¡ê??3?3??T??¡ê?¡Á???¡À¡ê???a20¨ª¨°¡ê?\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'3??¨ª??¡À¡ê??3?3??T??¡ê?¡Á???¡À¡ê???a20¨ª¨°¡ê?');
			req:complete(req.para);
			return false;
		end
	end

	if json.Get(req.para,'/insurance/siji') ~= nil then
		local temp = json.Get(req.para,'/insurance/siji/baoe') + 0;
		if temp > 200000 then
			sys.DBGPrint("???¨²??¡À¡ê??3?3??T??¡ê?¡Á???¡À¡ê???a20¨ª¨°¡ê?\r\n");
			req.para = json.Set(req.para,"/error",-3);
			req.para = json.Set(req.para,"/msg",'???¨²??¡À¡ê??3?3??T??¡ê?¡Á???¡À¡ê???a20¨ª¨°¡ê?');
			req:complete(req.para);
			return false;
		end
	end

	local page, err, ret, desk, engine, cls, model, vin, num, tm ,flag;
	sys.DBGPrint("¡¤¡é??¡À¡§??[%s]¦Ì????¨®¡ê?\r\n",json.Get(req.para,"/car/plate_no"));
	sys.DBGPrint(req.para..'\r\n');
	page = web.NewPage();
	if (page == nil) then
		sys.DBGPrint("D??¡§¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-2,\"msg\":\"¡ä¡ä?¡§¨°3??¨º¡ì¡ã¨¹\"}");
		return false;
	end
	ret, err = login(page," https://lm.libertymutual.com.cn");
	if not ret then
		web.ClosePage(page);
		sys.DBGPrint("¦Ì???¡¤¦Ì???¨¢1?[%s]¡ê?\r\n", err);
		req:complete("{\"error\":-2,\"msg\":\""..err.."\"}");
		return false;
	end	
	sys.DBGPrint("¦Ì???¨ª¨º3¨¦¡ê?¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000).."\r\n");
	local tm1 = web.NewTimeout(10000);
	web.PutResult("flag","");
	repeat
		web.Wait(100);
		web.ExecuteScript(page,"document.getElementsByClassName('btn btn-operation btn-display ng-binding')[0].click();\r\n\
			")
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('?¨²?¡¥3¦Ì') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			")
		sys.DBGPrint("??¨¨?¨º¡Á¨°3?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨?¨º¡Á¨°33¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨?¨º¡Á¨°3¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end
	
	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementsByClassName('ng-binding ng-scope')[0].click();\r\n\
			");
		web.ExecuteScript(page,"var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('??¦Ì£¤') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨???¦Ì£¤1¨¹¨¤¨ª¨°3??¨º¡ì¡ã¨¹¡ê?\"}");
		return false;
	end


	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page,"document.getElementById('side_menu_12').click();\r\n\
			");
		web.ExecuteScript(page,"document.getElementById('licenseNo').value;\r\n\
			var temp = document.getElementsByClassName('ng-binding ng-scope')[0].innerHTML;\r\n\
								if (temp.indexOf('¨ª?¡À¡ê') != -1)\r\n\
								{\r\n\
									external.put_result('flag','1');\r\n\
								}\r\n\
			");
		sys.DBGPrint("??¨¨?¨ª?¡À¡ê¡À¡§??¨°3???D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("??¨¨?¨ª?¡À¡ê¡À¡§??¨°3??3¨¦1|¡ê?"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("??¨¨?¨ª?¡À¡ê¡À¡§??¨°3??¨º¡ì¡ã¨¹¡ê?\r\n");
		req:complete("{\"error\":-4,\"msg\":\"??¨¨?¨ª?¡À¡ê¡À¡§??¨°3??¨º¡ì¡ã¨¹¡ê?\"}");
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
					sys.DBGPrint("????¨ª?¡À¡ê¨¨??¨²¨º¡ì¡ã¨¹¡ê?\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'????¨ª?¡À¡ê¨¨??¨²¨º¡ì¡ã¨¹¡ê?');
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
					sys.DBGPrint("????¨ª?¡À¡ê¨¨??¨²¨º¡ì¡ã¨¹¡ê?\r\n");
					req.para = json.Set(req.para,"/error",-5);
					req.para = json.Set(req.para,"/msg",'????¨ª?¡À¡ê¨¨??¨²¨º¡ì¡ã¨¹¡ê?');
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
		sys.DBGPrint("¨º?¨¨?3¦Ì¨¢?D??¡é¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'¨º?¨¨?3¦Ì¨¢?D??¡é¨º¡ì¡ã¨¹!');
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
		sys.DBGPrint("????3¦ÌD¨ª?D......\r\n");
		flag = web.GetResult("flag");
		if flag == '1' then
			sys.DBGPrint("????3¦ÌD¨ª3¨¦1|"..((web.GetTickCount()-startTime)/1000).."\r\n");
			break;
		end
		
	until(web.IsTimeout(tm1))

	if  flag == nil then
		web.ClosePage(page);
		sys.DBGPrint("????3¦ÌD¨ª¨º¡ì¡ã¨¹\r\n");
		req:complete("{\"error\":-4,\"msg\":\"????3¦ÌD¨ª¨º¡ì¡ã¨¹\"}");
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
		sys.DBGPrint("3¦ÌD¨ª2¨¦?¡¥?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("3¦ÌD¨ª2¨¦?¡¥¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'3¦ÌD¨ª2¨¦?¡¥¨º¡ì¡ã¨¹');
		req:complete(req.para);
		return false;
	end

	web.PutResult('flag','');
	tm1 = web.NewTimeout(10000);
	repeat
		web.ExecuteScript(page, "document.getElementsByClassName('widget widget-table ng-scope')[0].innerHTML;\r\n\
								external.put_result('flag','1');\r\n\
								"); 
		sys.DBGPrint("¦Ì¨¨¡äy2¨¦?¡¥3¦ÌD¨ª......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(50);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("2¨¦?¡¥3¦ÌD¨ª¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'2¨¦?¡¥3¦ÌD¨ª¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("????3¦ÌD¨ª?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????3¦ÌD¨ª¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????3¦ÌD¨ª¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("????3¦ÌD¨ª?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????3¦ÌD¨ª¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????3¦ÌD¨ª¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("?????¨ª?¡ì¨¤¨¤D¨ª?D......\r\n");
		web.Wait(500);
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("?????¨ª?¡ì¨¤¨¤D¨ª¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'?????¨ª?¡ì¨¤¨¤D¨ª¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("¨¬?D¡ä?¨ª?¡ìD??¡é?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("¨¬?D¡ä?¨ª?¡ìD??¡é¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'¨¬?D¡ä?¨ª?¡ìD??¡é¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("?????t¦Ì¨¤?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("?????t¦Ì¨¤¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'?????t¦Ì¨¤¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("??¨¬¡§???£¤?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????¨¬¡§???£¤¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'??¨¬¡§???£¤¨º¡ì¡ã¨¹');
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
		--??????¡ä¨ª?¨®?D??
		web.PutResult('ownererror','');
		web.ExecuteScript(page, "var temp = document.getElementById('alertMessageOP').innerHTML;\r\n\
								if (temp.indexOf('¨ª?¨¤¨¤D¨ª¦Ì?????') != -1){\r\n\
									external.put_result('qiangerror',temp);\r\n\
								}\r\n\
								else if (temp.indexOf('¨º1¨®?D??¨º') != -1){\r\n\
									var $scope = angular.element(document.getElementById('carOwner')).scope();\r\n\
									$scope.PrpTitemCarDTO.useNatureCode='8A';\r\n\
									$scope.$apply();\r\n\
									document.getElementById('queryPlateRequest').click();\r\n\
								}\r\n\
								else if (temp.indexOf('3¦Ì?¡Â??3?') != -1){\r\n\
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
				sys.DBGPrint("?????¨ª?¡ì¨¤¨¤D¨ª?D......\r\n");
				web.Wait(500);
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("?????¨ª?¡ì¨¤¨¤D¨ª¨º¡ì¡ã¨¹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'?????¨ª?¡ì¨¤¨¤D¨ª¨º¡ì¡ã¨¹');
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
				sys.DBGPrint("???¡ä¨¬?D¡ä?¨ª?¡ìD??¡é?D......\r\n");
				tempflag = web.GetResult("tempflag");
				if web.GetResult("tempflag") ~= nil then
					break;
				end
			until(web.IsTimeout(tm1))

			if  web.GetResult("tempflag") == nil then
				sys.DBGPrint("???¡ä¨¬?D¡ä?¨ª?¡ìD??¡é¨º¡ì¡ã¨¹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'???¡ä¨¬?D¡ä?¨ª?¡ìD??¡é¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("????¡Á??¡§¨°??????D......\r\n");
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
		sys.DBGPrint("????¡Á??¡§¨°?????¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????¡Á??¡§¨°?????¨º¡ì¡ã¨¹'..web.GetResult('flag'));
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
			sys.DBGPrint("¡À¡ê¨¨???3¦Ì¨¢??e¨º¡ì??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???3¦Ì¨¢??e¨º¡ì??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chesun_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A911').click();\r\n\
							") then
			sys.DBGPrint("¨¨???3¦Ì¨¢??e¨º¡ì??2????a?a¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???3¦Ì¨¢??e¨º¡ì??2????a?a¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('sanzhe') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
								document.getElementById('kindCode_A600').click();\r\n\
								") then
			sys.DBGPrint("¨¨???¨¨y????¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???¨¨y????¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('sanzhe_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A912').click();\r\n\
										document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("¨¨???¨¨y????2????a?a¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???¨¨y????2????a?a¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A600').value=external.get_result('sanzhe_baoe');\r\n\
							") then
			sys.DBGPrint("??¨¨?¨¨y??¡À¡ê??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??¨¨?¨¨y??¡À¡ê??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('siji') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
								document.getElementById('kindCode_A701').click();\r\n\
								") then
			sys.DBGPrint("¨¨??????¨²??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨??????¨²??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('siji_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A928').click();\r\n\
			document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("¨¨??????¨²??2????a?a¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨??????¨²??2????a?a¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A701').value=external.get_result('siji_baoe');\r\n\
							") then
			sys.DBGPrint("??¨¨????¨²??¡À¡ê??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??¨¨????¨²??¡À¡ê??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('chengke') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
								document.getElementById('kindCode_A702').click();\r\n\
								") then
			sys.DBGPrint("¨¨???3??¨ª??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???3??¨ª??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('chengke_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A929').click();\r\n\
			document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("¨¨???3??¨ª??2????a?a¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???3??¨ª??2????a?a¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	else
		if not web.ExecuteScript(page, "document.getElementById('Coverage_A702').value=external.get_result('chengke_baoe');\r\n\
							") then
			sys.DBGPrint("??¨¨?3??¨ª??¡À¡ê??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??¨¨?3??¨ª??¡À¡ê??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end


	if web.GetResult('daoqiang') == nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
								document.getElementById('kindCode_A500').click();\r\n\
								") then
			sys.DBGPrint("¨¨???¦Ì¨¢?¨¤??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???¨¨y????¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	elseif web.GetResult('daoqiang_buji')	== nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A921').click();\r\n\
							") then
			sys.DBGPrint("¨¨???¦Ì¨¢?¨¤??2????a?a¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¨¨???¦Ì¨¢?¨¤??2????a?a¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('boli') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A231').click();\r\n\
			if (external.get_result('boli_baoe').indexOf('1¨²2¨²') != -1 || external.get_result('boli_baoe').indexOf('1¨²2¨²2¡ê¨¢¡ì') != -1)\r\n\
					document.getElementById('Coverage_A231').value='1';\r\n\
					else if (external.get_result('boli_baoe').indexOf('???¨²') != -1 || external.get_result('boli_baoe').indexOf('???¨²2¡ê¨¢¡ì') != -1)\r\n\
						document.getElementById('Coverage_A231').value='2';\r\n\
								") then
			sys.DBGPrint("????2¡ê¨¢¡ì??¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????2¡ê¨¢¡ì??¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('huahen') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A210').click();\r\n\
			document.getElementById('Coverage_A210').value=external.get_result('huahen_baoe');\r\n\
								") then
			sys.DBGPrint("??????o???¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'??????o???¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('huahen_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A971').click();\r\n\
								") then
				sys.DBGPrint("??????o???2????a?a¨º¡ì¡ã¨¹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'??????o???2????a?a¨º¡ì¡ã¨¹');
				req:complete(req.para);
				return false;
			end
		end

	end



	if web.GetResult('ziran') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A310').click();\r\n\
								") then
			sys.DBGPrint("????¡Á?¨¨???¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????¡Á?¨¨???¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('ziran_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A970').click();\r\n\
								") then
				sys.DBGPrint("????¡Á?¨¨???2????a?a¨º¡ì¡ã¨¹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'????¡Á?¨¨???2????a?a¨º¡ì¡ã¨¹');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sheshui') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A290').click();\r\n\
								") then
			sys.DBGPrint("????¨¦?????¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????¨¦?????¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
		if web.GetResult('sheshui_buji') ~= nil then 
			if not web.ExecuteScript(page, "document.getElementById('kindCode_A972').click();\r\n\
								") then
				sys.DBGPrint("????¨¦?????2????a?a¨º¡ì¡ã¨¹\r\n");
				web.ClosePage(page);
				req.para = json.Set(req.para,"/error",-5);
				req.para = json.Set(req.para,"/msg",'????¨¦?????2????a?a¨º¡ì¡ã¨¹');
				req:complete(req.para);
				return false;
			end
		end
	end

	if web.GetResult('sanfang') ~= nil or web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('showKindList_span').click();\r\n\
								") then
			sys.DBGPrint("¦Ì??¡Â??¨º?????¡ã¡ä?£¤¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'¦Ì??¡Â??¨º?????¡ã¡ä?£¤¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end

	if web.GetResult('sanfang') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A250').click();\r\n\
								") then
			sys.DBGPrint("????¦Ì¨²¨¨y¡¤?????¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'????¦Ì¨²¨¨y¡¤?????¨º¡ì¡ã¨¹');
			req:complete(req.para);
			return false;
		end
	end



	if web.GetResult('zhiding') ~= nil then
		if not web.ExecuteScript(page, "document.getElementById('kindCode_A252').click();\r\n\
			document.getElementById('Coverage_A252').value=external.get_result('zhiding_baoe');\r\n\
								") then
			sys.DBGPrint("???????¡§DT¨¤¨ª3¡ì????¨º¡ì¡ã¨¹\r\n");
			web.ClosePage(page);
			req.para = json.Set(req.para,"/error",-5);
			req.para = json.Set(req.para,"/msg",'???????¡§DT¨¤¨ª3¡ì????¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("????¡À¡ê???¦Ì¨ºy?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("????¡À¡ê???¦Ì¨ºy¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'????¡À¡ê???¦Ì¨ºy¨º¡ì¡ã¨¹');
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
		sys.DBGPrint("¡À¡ê¡¤??????D?D......\r\n");
		flag = web.GetResult("flag");
		if web.GetResult("flag") ~= nil then
			break;
		end
		web.Wait(100);
	until(web.IsTimeout(tm1))

	if  web.GetResult("flag") == nil then
		sys.DBGPrint("¡À¡ê¡¤?????¨º¡ì¡ã¨¹\r\n");
		web.ClosePage(page);
		req.para = json.Set(req.para,"/error",-5);
		req.para = json.Set(req.para,"/msg",'¡À¡ê¡¤?????¨º¡ì¡ã¨¹');
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
	sys.DBGPrint('¡À¡ê¡¤?????3¨¦1|¡ê?'.."¡Á¨¹o?¨º¡À¡êo"..((web.GetTickCount()-startTime)/1000)..'\r\n');
	ret = json.Set(ret,'/error',0);
	sys.DBGPrint(ret);
	web.ClosePage(page);
	req:complete(ret);
	return true;

end

--?¡Â¨¬?o¡¥¨ºy¡ê??¨²?¡Â¨¨???DD¨º¡À?¨¢¡Á??¡¥¦Ì¡Â¨®?¡ä?o¡¥¨ºy
function main()	
	local req;
	sys.DBGPrint("??¡À??a¨º??¡äDD?-?-\r\n");
	web.OnShowMessage("OnDialog");
	while web.IsRunning() do
		req = web.GetRequest();
		if (req ~= nil) then
			if (req.type == 0) then
				--2¨¦3¦Ì??
				startTime = web.GetTickCount();
				inquire_car(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("¡Á¨¹o?¨º¡À¡êo"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 1) then
				--2¨¦¨¤¨²¨º¡¤¡À¡ê¦Ì£¤
				startTime = web.GetTickCount();
				query_insurance_history(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("¡Á¨¹o?¨º¡À¡êo"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 2) then
				--¡Á??¡¥¡À¡§??
				startTime = web.GetTickCount();
				auto_quote(req);
				endTime = web.GetTickCount();
				sys.DBGPrint("¡Á¨¹o?¨º¡À¡êo"..((endTime-startTime)/1000).."\r\n");
			elseif (req.type == 3) then
				--¡Á??¡¥o?¡À¡ê
				req:complete("{\"error\":-1,\"msg\":\"2??¡ì3?¡Á??¡¥o?¡À¡ê\"}");
			else
				--?¡ä?a¦Ì????¨®¨¤¨¤D¨ª
				req:complete("{\"error\":-1,\"msg\":\"?¡ä?a???¨®\"}");
			end
		end
		web.Wait(10);
	end
	sys.DBGPrint("??¡À?¨ª?3?\r\n");
end
