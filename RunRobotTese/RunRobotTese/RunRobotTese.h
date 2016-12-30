#pragma once
#include <comutil.h>
// ���� ifdef ���Ǵ���ʹ�� DLL �������򵥵�
// ��ı�׼�������� DLL �е������ļ��������������϶���� RUNROBOTTESE_EXPORTS
// ���ű���ġ���ʹ�ô� DLL ��
// �κ�������Ŀ�ϲ�Ӧ����˷��š�������Դ�ļ��а������ļ����κ�������Ŀ���Ὣ
// RUNROBOTTESE_API ������Ϊ�Ǵ� DLL ����ģ����� DLL ���ô˺궨���
// ������Ϊ�Ǳ������ġ�
#ifdef RUNROBOTTESE_EXPORTS
#define RUNROBOTTESE_API __declspec(dllexport)
#else
#define RUNROBOTTESE_API __declspec(dllimport)
#endif

/*
// �����Ǵ� RunRobotTese.dll ������
class RUNROBOTTESE_API CRunRobotTese {
public:
	CRunRobotTese(void);
	// TODO: �ڴ�������ķ�����
};

*/

/************************************************************************/
/* ʹ�ô˹�����Ҫ��Setup.ini��[System]�ڿ���RunTestѡ�����Ϊ1��      */
/* �˹��ܻ�����������水��F4��ť�󵯳����ļ��Ի��򣬴�ʱͨ��ѡ���д */
/* �õĲ���DLL�ļ�������������Ȼ�����������̵߳���DLL�е�RunRobotTest */
/* �������в��Թ�����RunRobotTest������ͨ�������IRobot����ָ������ʹ�� */
/* �Լ�ϣ�����ԵĻ����˽��в��ԣ�����ȡ���Խ����						*/
/************************************************************************/

class  IRobot
{
public:
	enum Status
	{
		ROBOT_STATUS_INQUIRECAR_OK = 1,			// �鳵��״̬����
		ROBOT_STATUS_HISTORYINSURANCE_OK = 2,	// ��ʷ����״̬����
		ROBOT_STATUS_QUOTE_OK = 4,				// ����/�˱�״̬����
	};
	// �ж������Ӧ����������Ƿ������˳���������TRUEʱ��Ҫ��������RunRobotTestFunc������ִ�в����أ�������ܻ�ǿ�ƽ�����
	 virtual BOOL IsAppShuttingDown() = 0 ;
	// ����ָ��·���µĻ�����
	 virtual HANDLE Load(LPCTSTR szPath,LPCTSTR szRegion) = 0;
	 //��¼���չ�˾ϵͳ������������������¼���ɹ������������������
	 virtual BOOL Login(HANDLE hRobot, LPCTSTR szUser, LPCTSTR szPassword, LPCTSTR szManager) = 0;
	// ж�ػ�����
	 virtual void Close(HANDLE hRobot)  = 0 ;
	// ��ȡ������������
	 virtual LPCTSTR GetInsurerType(HANDLE hRobot) = 0 ;
	// ��ȡ������VPN��������ַ��
	 virtual DWORD GetServerAddress(HANDLE hRobot)  = 0 ;
	// �жϻ������Ƿ�֧�ֲ�ѯ��ʷ����
	 virtual BOOL SupportQueryHistoryInsurance(HANDLE hRobot) = 0 ;
	// �жϻ������Ƿ�֧�ֲ�ѯ����
	 virtual BOOL SupportInquireCar(HANDLE hRobot) = 0 ;
	// �жϻ������Ƿ�֧���Զ�����
	 virtual BOOL SupportAutoQuote(HANDLE hRobot) = 0 ;
	// �жϻ������Ƿ�֧���Զ��˱�
	 virtual BOOL SupportAutoSubmit(HANDLE hRobot) = 0 ;
	// ��ѯ��ʷ���������صĽ����SysFreeString�ͷţ�
	 virtual BSTR QueryHistoryInsurance(HANDLE hRobot, LPCTSTR szCarJson) = 0 ;
	// ��ѯ���ƣ����صĽ����SysFreeString�ͷţ�
	 virtual BSTR InquireCar(HANDLE hRobot, LPCTSTR szPlatNo) = 0 ;
	// �Զ����ۣ����صĽ����SysFreeString�ͷţ�
	 virtual BSTR AutoQuote(HANDLE hRobot, LPCTSTR szInputJson) = 0 ;
	// �Զ��˱������صĽ����SysFreeString�ͷţ�
	 virtual BSTR AutoSubmit(HANDLE hRobot, LPCTSTR szInputJson) = 0 ;
	// �жϻ����˵�VPN�Ƿ�����
	 virtual BOOL IsAccessable(HANDLE hRobot) = 0 ;
	// ��ȡ�������ڲ�״̬����Status״ֵ̬�������������ɣ�
	 virtual DWORD GetStatus(HANDLE hRobot) = 0 ;
	// ��ʾ/���ػ����˵����������
	 virtual void ShowWindows(HANDLE hRobot, BOOL bShow) = 0 ;
	// �ж�������Ļ����˴����Ƿ�ɼ�
	 virtual BOOL IsWindowsVisible(HANDLE hRobot) = 0 ;
};

// ����DLL�е���ں��������ú������ò��Թ��̣����ڹ��̽����󷵻ء�
// ע�⣺���غ�lpRobot�ӿڻ�ʧЧ��
//extern "C" VOID RunRobotTest (IRobot * lpRobot);
typedef VOID (_stdcall * RunRobotTestFunc)(IRobot * lpRobot);

// ���������˲��Ե���ں�����
#define RUN_ROBOT_TEST_FUNCTION_NAME			"RunRobotTest"


