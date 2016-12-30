#define _CRT_SECURE_NO_WARNINGS
// RunRobotTese.cpp : ���� DLL Ӧ�ó������ڵ㡣
//

#include "stdafx.h"
#include "RunRobotTese.h"
#include <windows.h>
#include <stdlib.h>
#include <tchar.h>
#include <fstream>
#include <iostream>
#include <time.h>
#include <atlbase.h>
#include <atlconv.h>
#include <vector>
#include <map>
#include <atlstr.h>
#include "json.h"
#ifdef _MANAGED
#pragma managed(push, off)
#endif
using namespace std;
//����ִ��ʱ�䣬���ʱ��
long CurrentTime = GetTickCount();
int Interval = 0;
int Run = 0;


#ifdef _MANAGED
#pragma managed(pop)
#endif
void CombineRescure(vector<int> &str, vector<int>::iterator pStr, vector<int> &result, int count, Json::Value &root, map<int, string> &insuranceType, 
	Json::Value &Date, ofstream &data, ofstream &error,IRobot *&lpRobot,int &Succeed,int &Error,HANDLE &robot,int flag);
void Combine(vector<int> str, vector<int> &result, int n);
extern "C"
VOID _stdcall  RunRobotTest(IRobot * lpRobot)               
{
	
	int Succeed = 0;
	int Error = 0;
	char FileName[128] = { 0 };
	char Region[128] = { 0 };
	char UserName[128] = { 0 };
	char Password[128] = { 0 };
	char RunTime[24] = { 0 };
	char IntervalTime[24] = { 0 };
	time_t Begin;
	Begin = time(NULL);
	int flag = 0;
	ifstream init;
	init.open(_T("testsetup.ini"));
	char temp[128] = { 0 };
	while(init)
	{
		init.getline(temp,128);
		if (!init)
		{
			init.close();
			break;
		}
		if (strcmp(temp,"[RobotName]") == 0)
		{
			init.getline(FileName,128);
		}
		if (strcmp(temp,"[Region]") == 0)
		{
			init.getline(Region,128);
		}
		if (strcmp(temp,"[UserName]") == 0)
		{
			init.getline(UserName,128);
		}
		if (strcmp(temp,"[Password]") == 0)
		{
			init.getline(Password,128);
		}
		if (strcmp(temp,"[ִ��ʱ��]") == 0)
		{
			init.getline(RunTime,128);
			Run = atoi(RunTime);
		}
		if (strcmp(temp,"[���ʱ��]") == 0)
		{
			init.getline(IntervalTime,128);
			Interval = atoi(IntervalTime);
		}
		if (strcmp(temp,"[TestType]") == 0)
		{
			init.getline(temp,128);
			if (strcmp(temp,"����") == 0)
			{
				flag = 1;
			}
			else if (strcmp(temp,"��ʷ����") == 0)
			{
				flag = 2;
			}
			else if (strcmp(temp,"����") == 0)
			{
				flag = 3;
			}
			else if (strcmp(temp,"�˱�") == 0)
			{
				flag = 4;
			}
		}

	}
	init.close();
	LPCTSTR lpsz = _T(FileName);
	HANDLE robot;
	robot = lpRobot->Load(lpsz,_T(Region));
	if (robot == NULL)
	{
		MessageBox(NULL, "�����˼���ʧ�ܣ�����ļ��Ƿ�����Լ������ļ��Ƿ���ȷ��","debug", MB_OK);
		return;
	}
	DWORD a = lpRobot->GetServerAddress(robot);
	char buf[128] = { 0 };
	sprintf(buf,"%d",a);
	MessageBox(NULL, buf,"debug", MB_OK);
	if (!lpRobot->IsAccessable(robot))
	{
		MessageBox(NULL, "vpnδ��¼!","debug", MB_OK);
	}
	MessageBox(NULL, "���õ�¼����!","debug", MB_OK);
	if ( !lpRobot->Login(robot,_T(UserName),_T(Password),NULL))
	{
		MessageBox(NULL, "��¼ʧ��!","debug", MB_OK);
		return;
	}
	LPCTSTR name =lpRobot->GetInsurerType(robot);
	char comname[128] = { 0 };
	strcpy(comname,name);
	MessageBox(NULL,comname,"���Թ�˾",MB_OK);
	if (flag == 1)
	{
		if (lpRobot->SupportInquireCar(robot))
		{
			ifstream file;
			file.open("Info.txt");
			ofstream data;
			data.open("InquireCarData.txt",ios::app);
			ofstream error;
			error.open("InquireCarError.txt",ios::app);
			while(file)
			{
				//json��ƴ��
				time_t SingleBegin;
				SingleBegin = time(NULL);
				Json::Value root;
				Json::Value car;
				Json::FastWriter writer;
				Json::Reader reader;
				Json::Value jsonresult;
				char str[1024] = { 0 };
				file.getline(str,1024);
				if (!file)
				{
					data << "��������ִ����ϡ�"<< endl << "ִ��ʱ��Ϊ��" << time(NULL) - Begin << "��" << endl;
					data << "ִ�������ܸ�����"  << Succeed+Error << endl;
					data << "�ɹ����������" << Succeed << endl;
					data << "ʧ�����������" << Error << endl;
					data << "ִ�������ƽ��ʱ��Ϊ��" << (time(NULL)-Begin)/((Succeed+Error)+0.0) << "��" << endl;
					data << "ִ������ɹ���Ϊ��" << (Succeed+0.0)/(Succeed+Error) << endl;
					data.close();
					file.close();
					error.close();
					break;
				}
				car["plate_no"] = str;
				root["car"] = car;
				char json[4096] = { 0 };
				strcpy(json,writer.write(root).c_str());
				BSTR result = lpRobot->InquireCar(robot,_T(json));
				if (result == NULL)
				{
					data << json << endl << "���ؽ��Ϊ�գ�" << endl;
					error << json << endl << "���ؽ��Ϊ�գ�" << endl;
					continue;
				}
				USES_CONVERSION;
				reader.parse(W2T(result),jsonresult);
				if (jsonresult.isMember("error") && jsonresult["error"] != 0)
				{
					Error++;
					error << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" <<time(NULL) - SingleBegin << "�룡" << endl << endl ;
					data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" <<time(NULL) - SingleBegin << "�룡" << endl << endl ;
				}
				else
				{
					Succeed++;
					data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" <<time(NULL) - SingleBegin << "�룡" << endl << endl ;
				}
			}
		}
		else
			MessageBox(NULL,"�����˲�֧�ֲ�ѯ���ƣ����޸������ļ����߻����˽ű���","Error",MB_OK);
	}
	else if (flag == 2)
	{
		if (lpRobot->SupportQueryHistoryInsurance(robot))
		{

			ifstream file;
			file.open("Info.txt");
			ofstream data;
			data.open("HistoryInsuranceData.txt",ios::app);
			ofstream error;
			error.open("HistoryInsuranceError.txt",ios::app);
			while(file)
			{
				
				//�ַ���ƴ��
				
				time_t SingleBegin;
				SingleBegin = time(NULL);
				Json::Reader reader;
				Json::Value jsonresult;
				Json::Value root;
				Json::Value car;
				Json::FastWriter writer;
				char *pos = NULL;
				char str[1024] = { 0 };
				file.getline(str,1024);
				if (!file)
				{
					data << "��������ִ����ϡ�"<< endl << "ִ��ʱ��Ϊ��" << time(NULL) - Begin << "��" << endl;
					data << "ִ�������ܸ�����"  << Succeed+Error << endl;
					data << "�ɹ����������" << Succeed << endl;
					data << "ʧ�����������" << Error << endl;
					data << "ִ�������ƽ��ʱ��Ϊ��" << (time(NULL)-Begin)/((Succeed+Error)+0.00) << "��" << endl;
					data << "ִ������ɹ���Ϊ��" << (Succeed+0.0)/(Succeed+Error) << endl;
					file.close();
					data.close();
					error.close();
					pos = NULL;
					break;
				}
				car["plate_no"] = str;
				root["car"] = car;
				char json[4096] = { 0 };
				strcpy(json,writer.write(root).c_str());
				USES_CONVERSION;

				
				BSTR result = lpRobot->QueryHistoryInsurance(robot,_T(json));
				reader.parse(W2T(result),jsonresult);
				if (jsonresult.isMember("error") && jsonresult["error"] != 0)
				{
					Error++;
					data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
					error << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
				}
				else
				{
					Succeed++;
					data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
				}
				
			}
		}
		else
			MessageBox(NULL,"�����˲�֧�ֲ�ѯ��ʷ���������޸������ļ����߻����˽ű���","Error",MB_OK);
	}
	if (flag == 3)
	{
		
		if (lpRobot->SupportAutoQuote(robot))
		{
			ifstream file;
			file.open("AutoQuoteInfo.txt");
			ofstream data;
			data.open("AutoQuoteData.txt",ios::app);
			ofstream error;
			error.open("AutoQuoteError.txt",ios::app);
			srand((unsigned int)time(NULL));
			int jiaoqiangFlag = 0;
			while(file)
			{
				Json::Value root;
				Json::Value car;
				Json::Value owner;
				Json::Value insurance;
				Json::Value jsonresult;
				Json::Value hisInsurance;
				Json::FastWriter writer;
				Json::Reader reader;
				Json::Value Date;
				vector<int> indexOfInsurance;
				map<int, string> insuranceType;
				vector<int> result;
				unsigned int index = 0;
				char str[4096] = { 0 };
				char json[4096] = { 0 };
				file.getline(str,4096);
				if (!file)
				{
					
					data << "��������ִ����ϡ�" << endl << "ִ��ʱ��Ϊ��" << time(NULL) - Begin << "��" << endl;
					data << "ִ�������ܸ�����" << Succeed + Error << endl;
					data << "�ɹ����������" << Succeed << endl;
					data << "ʧ�����������" << Error << endl;
					data << "ִ�������ƽ��ʱ��Ϊ��" << (time(NULL) - Begin) / ((Succeed + Error) + 0.00) << "��" << endl;
					data << "ִ������ɹ���Ϊ��" << (Succeed + 0.0) / (Succeed + Error) << endl;
					file.close();
					data.close();
					error.close();
					break;
				}
				USES_CONVERSION;
				reader.parse(str, root);
				if (root["car"].isMember("hisInsurances"))
				{
					hisInsurance =  root["car"]["hisInsurances"];
					Json::Value::UInt a = 0;
					while (a < hisInsurance.size())
					{
						
						int year, month, day;
						if (strcmp( hisInsurance[a]["isComm"].asCString(),"1") == 0)
						{
							tm tm_;
							time_t t_;
							tm tm_1;
							time_t t_1;
							char buf[128] = { 0 };
							strcpy(buf, hisInsurance[a]["insuredEndDate"].asCString());
							sscanf(buf, "%d-%d-%d", &year, &month, &day);
							tm_.tm_year = year - 1900;
							tm_.tm_mon = month - 1;
							tm_.tm_mday = day + 1;
							tm_.tm_hour = 0;
							tm_.tm_min = 0;
							tm_.tm_sec = 0;
							tm_.tm_isdst = -1;
							t_ = mktime(&tm_);
							tm_ = *localtime(&t_);
							strftime(buf, 64, "%Y-%m-%d", &tm_);
							if (t_-time(NULL) > 7776000 || t_-time(NULL) < 86400)
							{
								t_ = time(NULL)+86400;
								tm_ = *localtime(&t_);
								strftime(buf, 64, "%Y-%m-%d", &tm_);
								Date["shangDateStart"] = buf;
								sscanf(buf, "%d-%d-%d", &year, &month, &day);
								tm_1.tm_year = year - 1900;
								tm_1.tm_mon = month + 11;
								tm_1.tm_mday = day - 1;
								tm_1.tm_hour = 0;
								tm_1.tm_min = 0;
								tm_1.tm_sec = 0;
								tm_1.tm_isdst = -1;
								t_1 = mktime(&tm_1);
								tm_1 = *localtime(&t_1);
								strftime(buf, 64, "%Y-%m-%d", &tm_1);
								Date["shangDateEnd"] = buf;
							}
							else
							{
								Date["shangDateStart"] = buf;
								strcpy(buf, hisInsurance[a]["insuredEndDate"].asCString());
								sscanf(buf, "%d-%d-%d", &year, &month, &day);
								tm_1.tm_year = year - 1900;
								tm_1.tm_mon = month + 11;
								tm_1.tm_mday = day ;
								tm_1.tm_hour = 0;
								tm_1.tm_min = 0;
								tm_1.tm_sec = 0;
								tm_1.tm_isdst = -1;
								t_1 = mktime(&tm_1);
								tm_1 = *localtime(&t_1);
								strftime(buf, 64, "%Y-%m-%d", &tm_1);
								Date["shangDateEnd"] = buf;
							}
						}
						if (strcmp(hisInsurance[a]["isComm"].asCString(), "0") == 0)
						{
							
							tm tm_;
							time_t t_;
							tm tm_1;
							time_t t_1;
							char buf[128] = { 0 };
							strcpy(buf, hisInsurance[a]["insuredEndDate"].asCString());
							sscanf(buf, "%d-%d-%d", &year, &month, &day);
							tm_.tm_year = year - 1900;
							tm_.tm_mon = month - 1;
							tm_.tm_mday = day + 1;
							tm_.tm_hour = 0;
							tm_.tm_min = 0;
							tm_.tm_sec = 0;
							tm_.tm_isdst = -1;
							t_ = mktime(&tm_);
							tm_ = *localtime(&t_);
							strftime(buf, 64, "%Y-%m-%d", &tm_);
							if (t_-time(NULL) > 7776000 || t_-time(NULL) < 86400)
							{
								jiaoqiangFlag = 1;
								t_ = time(NULL)+86400;
								tm_ = *localtime(&t_);
								strftime(buf, 64, "%Y-%m-%d", &tm_);
								Date["qiangDateStart"] = buf;
								sscanf(buf, "%d-%d-%d", &year, &month, &day);
								tm_1.tm_year = year - 1900;
								tm_1.tm_mon = month + 11;
								tm_1.tm_mday = day - 1;
								tm_1.tm_hour = 0;
								tm_1.tm_min = 0;
								tm_1.tm_sec = 0;
								tm_1.tm_isdst = -1;
								t_1 = mktime(&tm_1);
								tm_1 = *localtime(&t_1);
								strftime(buf, 64, "%Y-%m-%d", &tm_1);
								Date["qiangDateEnd"] = buf;
							}
							else
							{
								Date["qiangDateStart"] = buf;
								strcpy(buf, hisInsurance[a]["insuredEndDate"].asCString());
								sscanf(buf, "%d-%d-%d", &year, &month, &day);
								tm_1.tm_year = year - 1900;
								tm_1.tm_mon = month + 11;
								tm_1.tm_mday = day ;
								tm_1.tm_hour = 0;
								tm_1.tm_min = 0;
								tm_1.tm_sec = 0;
								tm_1.tm_isdst = -1;
								t_1 = mktime(&tm_1);
								tm_1 = *localtime(&t_1);
								strftime(buf, 64, "%Y-%m-%d", &tm_1);
								Date["qiangDateEnd"] = buf;
							}
						}
						a++;
					}
				}
				else
				{
					int year = 0,month = 0,day = 0;
					tm tm_;
					time_t t_;
					tm tm_1;
					time_t t_1;
					char buf[128] = { 0 };
					t_ = time(NULL)+86400;
					tm_ = *localtime(&t_);
					strftime(buf, 64, "%Y-%m-%d", &tm_);
					Date["qiangDateStart"] = buf;
					Date["shangDateStart"] = buf;
					sscanf(buf, "%d-%d-%d", &year, &month, &day);
					tm_1.tm_year = year - 1900;
					tm_1.tm_mon = month + 11;
					tm_1.tm_mday = day - 1;
					tm_1.tm_hour = 0;
					tm_1.tm_min = 0;
					tm_1.tm_sec = 0;
					tm_1.tm_isdst = -1;
					t_1 = mktime(&tm_1);
					tm_1 = *localtime(&t_1);
					strftime(buf, 64, "%Y-%m-%d", &tm_1);
					Date["qiangDateEnd"] = buf;
					Date["shangDateEnd"] = buf;
				}
				//MessageBox(NULL, "debug", Date["shangDateEnd"].asCString(), MB_OK);
				
				//MessageBox(NULL, "debug", itoa(hisInsurance.size(),b,10), MB_OK);
				//MessageBox(NULL, "debug",hisInsurance[a]["insuredStartDate"].asCString() , MB_OK);
				
				file.getline(str,4096);
				char *pos = strtok(str," ");
				if (strcmp("��ǿ",pos) == 0)
				{
					
					indexOfInsurance.push_back(index);
					insuranceType[index] = "��ǿ";
					index++;
					pos = strtok(NULL," ");
				}
				if (pos == '\0')
				{
					insurance["jiaoqiang"] = "1";
					insurance["qiangDateStart"] = Date["qiangDateStart"];
					insurance["qiangDateEnd"] = Date["qiangDateEnd"];
					root["insurance"] = insurance;
					strcpy(json, writer.write(root).c_str());
					time_t SingleBegin;
					SingleBegin = time(NULL);
					BSTR result = lpRobot->AutoQuote(robot,_T(json));
					reader.parse(W2T(result),jsonresult);
					if (jsonresult.isMember("error") && jsonresult["error"] != 0)
					{
						Error++;
						data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
						error << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
						
					}
					else
					{
						Succeed++;
						data << json << W2T(result) << endl <<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl ;
					}
					continue;
				}
				while (pos != '\0')
				{
					if (strcmp("��ǿ",pos) == 0 && jiaoqiangFlag == 1)
					{
						pos = strtok(NULL," ");
						continue;
					}
					indexOfInsurance.push_back(index);
					insuranceType[index] = pos;
					if (strcmp("����", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "���𲻼�";

					}
					else if (strcmp("˾��", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "˾������";
					}
					else if (strcmp("�˿�", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "�˿Ͳ���";
					}
					else if (strcmp("����", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "���߲���";
					}
					else if (strcmp("����", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "��������";
					}
					else if (strcmp("��ȼ", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "��ȼ����";
					}
					else if (strcmp("��ˮ", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "��ˮ����";
					}
					else if (strcmp("����", pos) == 0)
					{
						index++;
						indexOfInsurance.push_back(index);
						insuranceType[index] = "���۲���";
						
					}
					pos = strtok(NULL ," ");
					index++;
				}
				index = 1;				
				while (index <= indexOfInsurance.size())
				{
					
					CombineRescure(indexOfInsurance, indexOfInsurance.begin(), result,index,root,insuranceType,Date,data,error,lpRobot,Succeed,Error,robot,flag); 
					result.clear();
					index++;
				}
			
			}
		}
		else
			MessageBox(NULL,"�����˲�֧���Զ����ۣ����޸������ļ����߻����˽ű���","Error",MB_OK);
	}
	if (flag == 4)
	{
		if (lpRobot->SupportAutoSubmit(robot))
		{
			ifstream file;
			file.open("AutoSubmitInfo.txt");
			ofstream data;
			data.open("AutoSubmitData.txt",ios::app);
			ofstream error;
			error.open("AutoSubmitError.txt",ios::app);
			srand((unsigned int)time(NULL));
			int jiaoqiangFlag = 0;
			while(file)
			{
				Json::Value root;
				Json::Value car;
				Json::Value owner;
				Json::Value insurance;
				Json::Value jsonresult;
				Json::Value hisInsurance;
				Json::FastWriter writer;
				Json::Reader reader;
				Json::Value Date;
				vector<int> indexOfInsurance;
				map<int, string> insuranceType;
				vector<int> result;
				unsigned int index = 0;
				char str[4096] = { 0 };
				char json[4096] = { 0 };
				file.getline(str,4096);
				if (!file)
				{
					
					data << "��������ִ����ϡ�" << endl << "ִ��ʱ��Ϊ��" << time(NULL) - Begin << "��" << endl;
					data << "ִ�������ܸ�����" << Succeed + Error << endl;
					data << "�ɹ����������" << Succeed << endl;
					data << "ʧ�����������" << Error << endl;
					data << "ִ�������ƽ��ʱ��Ϊ��" << (time(NULL) - Begin) / ((Succeed + Error) + 0.00) << "��" << endl;
					data << "ִ������ɹ���Ϊ��" << (Succeed + 0.0) / (Succeed + Error) << endl;
					file.close();
					data.close();
					error.close();
					break;
				}
				USES_CONVERSION;
				BSTR missonresult = NULL;
				missonresult = lpRobot->AutoSubmit(robot, _T(str));
			}
		}
		else
		{
			MessageBox(NULL,"��֧�ֺ˱�����鿴�����˻������ļ���","Error",MB_OK);
		}
	}
	return ;
	
}

void CombineRescure(vector<int> &str, vector<int>::iterator pStr, vector<int> &result, int count,Json::Value &root,map<int,string> &insuranceType,
	Json::Value &Date, ofstream &data, ofstream &error, IRobot *&lpRobot, int &Succeed, int &Error, HANDLE &robot,int flag)
{
	if (count == 0)
	{
		if (GetTickCount() - CurrentTime > Run * 60000)
		{
			SYSTEMTIME st;//����ϵͳʱ��ṹ��Ķ���
			GetLocalTime(&st);//����GetLocalTime��õ�ǰʱ�䣬�������ڽṹ��st��
			int year,month,day,hour,minute,second;//����int�ͱ��������������õĵ�ǰʱ���������
			//���ݽṹ���еĸ��������������Լ���Ҫ���꣬�£��գ�ʱ���֣���
			year = st.wYear;
			month = st.wMonth;
			day = st.wDay;
			hour = st.wHour;
			minute = st.wMinute;
			second = st.wSecond;
			//�����ַ�������str����MFC��Ҳ����ʹ�ÿؼ���������������str�������ȽϷ���
			CString str;
			//�����ַ��ĸ�ʽ������format����ʽ���õ���ʱ�䣬�γ����磺2011��8��7��8��39��50��ĸ�ʽ
			str.Format("%d��%d��%d��%dʱ%d��%d��",year,month,day,hour,minute,second);
			data << str << "������ʱ�䣬���ʱ��Ϊ" << Interval << "����" << endl << endl;
			Sleep(Interval * 60000);
			CurrentTime = GetTickCount();
		}
		Json::Value insurance;
		Json::Value chesun;
		Json::Value daoqiang;
		Json::Value sheshui;
		Json::Value zhiding;
		Json::Value huahen;
		Json::Value siji;
		Json::Value chengke;
		Json::Value boli;
		Json::Value sangfang;
		Json::Value ziran;
		Json::Value sanzhe;
		Json::FastWriter writer;

		Json::Reader reader;
		Json::Value jsonresult;
		unsigned int i = 0;
		int shangFlag = 0;
		int bujiFlag = 0;
		while (i < result.size())
		{
			if (insuranceType[result[i]] == "��ǿ")
			{
				insurance["jiaoqiang"] = "1";
				if (Date.isMember("qiangDateStart"))
				{
					insurance["qiangDateStart"] = Date["qiangDateStart"];
					insurance["qiangDateEnd"] = Date["qiangDateEnd"];
				}
				else
				{
					insurance["qiangDateStart"] = Date["shangDateStart"];
					insurance["qiangDateEnd"] = Date["shangDateEnd"];
				}
			}
			else if (insuranceType[result[i]] == "����")
			{
				chesun["price"] = "";
				
				insurance["chesun"] = chesun;
				shangFlag = 1;
			}
			else if (insuranceType[result[i]] == "����")
			{
				sanzhe["price"] = "";
				int i = rand() % 14;
				switch (i)
				{
				case 0:
					sanzhe["baoe"] = "50000";
					break;
				case 1:
					sanzhe["baoe"] = "100000";
					break;
				case 2:
					sanzhe["baoe"] = "150000";
					break;
				case 3:
					sanzhe["baoe"] = "200000";
					break;
				case 4:
					sanzhe["baoe"] = "300000";
					break;
				case 5:
					sanzhe["baoe"] = "500000";
					break;
				case 6:
					sanzhe["baoe"] = "1000000";
					break;
				case 7:
					sanzhe["baoe"] = "1500000";
					break;
				case 8:
					sanzhe["baoe"] = "2000000";
					break;
				case 9:
					sanzhe["baoe"] = "2500000";
					break;
				case 10:
					sanzhe["baoe"] = "3000000";
					break;
				case 11:
					sanzhe["baoe"] = "3500000";
					break;
				case 12:
					sanzhe["baoe"] = "4000000";
					break;
				case 13:
					sanzhe["baoe"] = "4500000";
					break;
				default:
					break;
				}
				sanzhe["baoe"] = "100000";
				insurance["sanzhe"] = sanzhe;
				shangFlag = 1;
			}
			else if (insuranceType[result[i]] == "����")
			{
				daoqiang["price"] = "";
				insurance["daoqiang"] = daoqiang;
				shangFlag = 1;
			}
			else if (insuranceType[result[i]] == "˾��")
			{
				siji["price"] = "";
				int i = rand() % 11;
				switch (i)
				{
				case 0:
					siji["baoe"] = "10000";
					break;
				case 1:
					siji["baoe"] = "20000";
					break;
				case 2:
					siji["baoe"] = "30000";
					break;
				case 3:
					siji["baoe"] = "40000";
					break;
				case 4:
					siji["baoe"] = "50000";
					break;
				case 5:
					siji["baoe"] = "60000";
					break;
				case 6:
					siji["baoe"] = "70000";
					break;
				case 7:
					siji["baoe"] = "80000";
					break;
				case 8:
					siji["baoe"] = "90000";
					break;
				case 9:
					siji["baoe"] = "100000";
					break;
				case 10:
					siji["baoe"] = "200000";
					break;
				default:
					break;
				}
				insurance["siji"] = siji;
				shangFlag = 1;
			}
			else if (insuranceType[result[i]] == "�˿�")
			{
				chengke["price"] = "";
				
				int i = rand() % 11;
				switch (i)
				{
				case 0:
					chengke["unit"] = "10000";
					break;
				case 1:
					chengke["unit"] = "20000";
					break;
				case 2:
					chengke["unit"] = "30000";
					break;
				case 3:
					chengke["unit"] = "40000";
					break;
				case 4:
					chengke["unit"] = "50000";
					break;
				case 5:
					chengke["unit"] = "60000";
					break;
				case 6:
					chengke["unit"] = "70000";
					break;
				case 7:
					chengke["unit"] = "80000";
					break;
				case 8:
					chengke["unit"] = "90000";
					break;
				case 9:
					chengke["unit"] = "100000";
					break;
				case 10:
					chengke["unit"] = "200000";
					break;
				default:
					break;
				}
				
				insurance["chengke"] = chengke;
				shangFlag = 1;
			}
			else if (insuranceType[result[i]] == "��ȼ")
			{
				if (insurance.isMember("chesun"))
				{
					ziran["price"] = "";
					insurance["ziran"] = ziran;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "����")
			{
				if (insurance.isMember("chesun"))
				{
					huahen["price"] = "";
					int i = rand() % 4;
					switch (i)
					{
					case 0:
						huahen["baoe"] = "2000";
						break;
					case 1:
						huahen["baoe"] = "5000";
						break;
					case 2:
						huahen["baoe"] = "10000";
						break;
					case 3:
						huahen["baoe"] = "20000";
						break;
					
					default:
						break;
					}
					insurance["huahen"] = huahen;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "����")
			{
				if (insurance.isMember("chesun"))
				{
					sangfang["price"] = "";
					insurance["sanfang"] = sangfang;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "ָ��")
			{
				if (insurance.isMember("chesun"))
				{
					zhiding["price"] = "";
					char str[128] = { 0 };
					strcpy(str,root["car"]["vin"].asCString());
					if (str[0] == 'L')
					{
						int i = rand() % 5;
						if (i == 0)
						{
							zhiding["baoe"] = "0.10";
						}
						else if (i == 1)
						{
							zhiding["baoe"] = "0.15";
						}
						else if (i == 2)
						{
							zhiding["baoe"] = "0.20";
						}
						else if (i == 3)
						{
							zhiding["baoe"] = "0.25";
						}
						else if (i == 4)
						{
							zhiding["baoe"] = "0.30";
						}
					}
					else
					{
						int i = rand() % 10;
						if (i == 0)
						{
							zhiding["baoe"] = "0.15";
						}
						else if (i == 1)
						{
							zhiding["baoe"] = "0.20";
						}
						else if (i == 2)
						{
							zhiding["baoe"] = "0.25";
						}
						else if (i == 3)
						{
							zhiding["baoe"] = "0.30";
						}
						else if (i == 4)
						{
							zhiding["baoe"] = "0.35";
						}
						else if (i == 5)
						{
							zhiding["baoe"] = "0.40";
						}
						else if (i == 6)
						{
							zhiding["baoe"] = "0.45";
						}
						else if (i == 7)
						{
							zhiding["baoe"] = "0.50";
						}
						else if (i == 8)
						{
							zhiding["baoe"] = "0.55";
						}
						else if (i == 9)
						{
							zhiding["baoe"] = "0.60";
						}
					}
					zhiding["baoe"] = "0.20";
					insurance["zhiding"] = zhiding;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "��ˮ")
			{
				if (insurance.isMember("chesun"))
				{
					sheshui["price"] = "";
					insurance["sheshui"] = sheshui;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "����")
			{
				if (insurance.isMember("chesun"))
				{
					boli["price"] = "";
					int i = rand() % 2;
					switch (i)
					{
					case 0:
						boli["baoe"] = "��������";
						break;
					case 1:
						boli["baoe"] = "���ڲ���";
						break;
					
					default:
						break;
					}
					insurance["boli"] = boli;
					shangFlag = 1;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "���𲻼�")
			{
				if (insurance.isMember("chesun"))
				{
					chesun["buji"] = "1";
					insurance["chesun"] = chesun;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "���߲���")
			{
				if (insurance.isMember("sanzhe"))
				{
					//sanzhe["buji"] = "1";
					//sanzhe["price"] = "1";
					//insurance["sanzhe"] = sanzhe;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "˾������")
			{
				if (insurance.isMember("siji"))
				{
					siji["buji"] = "1";
					insurance["siji"] = siji;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "�˿Ͳ���")
			{
				if (insurance.isMember("chengke"))
				{
					chengke["buji"] = "1";
					insurance["chengke"] = chengke;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "��������")
			{
				if (insurance.isMember("boli"))
				{
					daoqiang["buji"] = "1";
					insurance["daoqiang"] = daoqiang;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "���۲���")
			{
				if (insurance.isMember("huahen"))
				{
					huahen["buji"] = "1";
					insurance["huahen"] = huahen;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "��ˮ����")
			{
				if (insurance.isMember("sheshui"))
				{
					sheshui["buji"] = "1";
					insurance["sheshui"] = sheshui;
				}
				else
					bujiFlag = 1;
			}
			else if (insuranceType[result[i]] == "��ȼ����")
			{
				if (insurance.isMember("ziran"))
				{
					ziran["buji"] = "1";
					insurance["ziran"] = ziran;
				}
				else
					bujiFlag = 1;
			}
			if (shangFlag == 1)
			{
				insurance["shang"] = "1";
				if (Date.isMember("shangDateStart"))
				{
					insurance["shangDateStart"] = Date["shangDateStart"];
					insurance["shangDateEnd"] = Date["shangDateEnd"];
				}
				else
				{
					insurance["shangDateStart"] = Date["qiangDateStart"];
					insurance["shangDateEnd"] = Date["qiangDateEnd"];
				}
			}
			i++;
		}
		if (!insurance.isMember("shang"))
			return;
		if (bujiFlag == 1)
			return;
		
		if (flag == 4)
		{
			insurance["autoCancel"] = 1;
			//insurance["shangNumber"] = "9805021100160000199000";
		}
		
		root["insurance"] = insurance;
		char json[4096] = { 0 };
		strcpy(json, writer.write(root).c_str());
		time_t SingleBegin;
		SingleBegin = time(NULL);
		BSTR missonresult = NULL;
		if (flag == 3)
			missonresult = lpRobot->AutoQuote(robot, _T(json));
		else if (flag == 4)
		{
			missonresult = lpRobot->AutoSubmit(robot, _T(json));
			return;
		}
		USES_CONVERSION;
		reader.parse(W2T(missonresult), jsonresult);


		SYSTEMTIME st;//����ϵͳʱ��ṹ��Ķ���
		GetLocalTime(&st);//����GetLocalTime��õ�ǰʱ�䣬�������ڽṹ��st��
		int year,month,day,hour,minute,second;//����int�ͱ��������������õĵ�ǰʱ���������
		//���ݽṹ���еĸ��������������Լ���Ҫ���꣬�£��գ�ʱ���֣���
		year = st.wYear;
		month = st.wMonth;
		day = st.wDay;
		hour = st.wHour;
		minute = st.wMinute;
		second = st.wSecond;
		//�����ַ�������str����MFC��Ҳ����ʹ�ÿؼ���������������str�������ȽϷ���
		CString str;
		//�����ַ��ĸ�ʽ������format����ʽ���õ���ʱ�䣬�γ����磺2011��8��7��8��39��50��ĸ�ʽ
		str.Format("%d��%d��%d��%dʱ%d��%d��",year,month,day,hour,minute,second);


		data << str << endl;
		data << "���۳���Ϊ��" << root["car"]["plate_no"].asCString() << endl;
		data << "����Ͷ��������Ϊ��" << endl;
		if (insurance.isMember("jiaoqiang"))
		{
			data << "��ǿ��";
			data << endl;
		}
		if (insurance.isMember("chesun"))
		{
			data << "������";
			if (chesun.isMember("buji"))
				data << "����������" ;
			data << endl;
		}
		if (insurance.isMember("daoqiang"))
		{
			data << "������";
			if (daoqiang.isMember("buji"))
				data << "����������";
			data << endl;
		}
		if (insurance.isMember("chengke"))
		{
			data << "�˿��գ�";
			if (chengke.isMember("buji"))
				data << "�������⣬" ;
			data << " ,����Ϊ��" << chengke["unit"].asCString() << endl;
		}
		if (insurance.isMember("siji"))
		{
			data << "˾���գ�";
			if (siji.isMember("buji"))
				data << "�������⣬" ;
			data  << " ,����Ϊ��" << siji["baoe"].asCString() << endl;
		}
		if (insurance.isMember("huahen"))
		{
			data << "������";
			if (huahen.isMember("buji"))
				data << ",��������";
			data  << ",����Ϊ��" << huahen["baoe"].asCString() << endl;
		}
		if (insurance.isMember("boli"))
		{
			data << "�����գ�����Ϊ��" << boli["baoe"].asCString() << endl ;
		}
		if (insurance.isMember("sanzhe"))
		{
			data << "�����գ�";
			if (sanzhe.isMember("buji"))
				data << "�������⣬";
			data << ",����Ϊ��" << sanzhe["baoe"].asCString() << endl ;
		}
		if (insurance.isMember("sheshui"))
		{
			data << "��ˮ��";
			if (sheshui.isMember("buji"))
				data << "����������" ;
			data <<endl;
		}
		if (insurance.isMember("sanfang"))
		{
			data << "�޷��ҵ���������Լ��" ;
			data <<endl;
		}
		if (insurance.isMember("zhiding"))
		{
			data << "ָ�������������գ�����Ϊ��" << zhiding["baoe"].asCString()  ;
			data <<endl;
		}
		if (insurance.isMember("ziran"))
		{
			data << "��ȼ��";
			if (ziran.isMember("buji"))
				data << "����������";
			data << endl;
		}
		if (jsonresult.isMember("error") && jsonresult["error"] != 0)
		{
			Error++;
			error << str << endl;
			error << "���۳���Ϊ��" << root["car"]["plate_no"].asCString() << endl;
			error << "����Ͷ��������Ϊ��" << endl;
			if (insurance.isMember("jiaoqiang"))
			{
				error << "��ǿ��";
				error << endl;
			}
			if (insurance.isMember("chesun"))
			{
				error << "������";
				if (chesun.isMember("buji"))
					error << "����������";
				error << endl;
			}
			if (insurance.isMember("daoqiang"))
			{
				error << "������";
				if (daoqiang.isMember("buji"))
					error << "����������";
				error << endl;
			}
			if (insurance.isMember("chengke"))
			{
				error << "�˿��գ�";
				if (chengke.isMember("buji"))
					error << "�������⣬";
				error << "����Ϊ��" << chengke["unit"];
			}
			if (insurance.isMember("siji"))
			{
				error << "˾���գ�";
				if (siji.isMember("buji"))
					error << "�������⣬";
				error << "����Ϊ��" << siji["baoe"];
			}
			if (insurance.isMember("huahen"))
			{
				error << "������";
				if (huahen.isMember("buji"))
					error << "�������⣬";
				error << "����Ϊ��" << huahen["baoe"];
			}
			if (insurance.isMember("boli"))
			{
				error << "�����գ�����Ϊ��" << boli["baoe"];
			}
			if (insurance.isMember("sanzhe"))
			{
				error << "�����գ�";
				if (sanzhe.isMember("buji"))
					error << "�������⣬";
				error << "����Ϊ��" << sanzhe["baoe"];
			}
			if (insurance.isMember("sheshui"))
			{
				error << "��ˮ��";
				if (sheshui.isMember("buji"))
					error << "����������" << endl;
			}
			if (insurance.isMember("sanfang"))
				error << "�޷��ҵ���������Լ��" << endl;
			if (insurance.isMember("zhiding"))
				error << "ָ��������������" << endl;
			if (insurance.isMember("ziran"))
			{
				error << "��ȼ��";
				if (ziran.isMember("buji"))
					error << "����������";
				error << endl;
			}
			data   << "��������ִ��ʧ�ܣ�����ԭ��" << jsonresult["msg"].asCString() << endl << "ִ�е�" << Succeed+Error << "������"<<"ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl;
			error  << "��������ִ��ʧ�ܣ�����ԭ��" << jsonresult["msg"].asCString() << endl << "ִ�е�" << Succeed+Error << "������"<< "ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl;
		}
		else
		{
			Succeed++;
			data   << "ִ�е�" << Succeed+Error << "������ɹ���" << "ִ�б�������������ʱ��Ϊ��" << time(NULL) - SingleBegin << "�룡" << endl << endl;
			
		}
		return;
	}
	if (pStr != str.end())
	{
		result.push_back(*pStr);
		CombineRescure(str, pStr + 1, result, count - 1,root,insuranceType,Date,data,error,lpRobot,Succeed,Error,robot,flag);
		result.erase(result.end() - 1);
		CombineRescure(str, pStr + 1, result, count,root,insuranceType,Date,data,error,lpRobot,Succeed,Error,robot,flag);
	}
}