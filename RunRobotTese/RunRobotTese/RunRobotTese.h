#pragma once
#include <comutil.h>
// 下列 ifdef 块是创建使从 DLL 导出更简单的
// 宏的标准方法。此 DLL 中的所有文件都是用命令行上定义的 RUNROBOTTESE_EXPORTS
// 符号编译的。在使用此 DLL 的
// 任何其他项目上不应定义此符号。这样，源文件中包含此文件的任何其他项目都会将
// RUNROBOTTESE_API 函数视为是从 DLL 导入的，而此 DLL 则将用此宏定义的
// 符号视为是被导出的。
#ifdef RUNROBOTTESE_EXPORTS
#define RUNROBOTTESE_API __declspec(dllexport)
#else
#define RUNROBOTTESE_API __declspec(dllimport)
#endif

/*
// 此类是从 RunRobotTese.dll 导出的
class RUNROBOTTESE_API CRunRobotTese {
public:
	CRunRobotTese(void);
	// TODO: 在此添加您的方法。
};

*/

/************************************************************************/
/* 使用此功能需要在Setup.ini的[System]节开启RunTest选项（设置为1）      */
/* 此功能会在浏览器界面按下F4按钮后弹出打开文件对话框，此时通过选择编写 */
/* 好的测试DLL文件载入进浏览器，然后启动测试线程调用DLL中的RunRobotTest */
/* 函数进行测试工作。RunRobotTest函数可通过传入的IRobot对象指针载入使用 */
/* 自己希望测试的机器人进行测试，并获取测试结果。						*/
/************************************************************************/

class  IRobot
{
public:
	enum Status
	{
		ROBOT_STATUS_INQUIRECAR_OK = 1,			// 查车牌状态正常
		ROBOT_STATUS_HISTORYINSURANCE_OK = 2,	// 历史保单状态正常
		ROBOT_STATUS_QUOTE_OK = 4,				// 报价/核保状态正常
	};
	// 判断浏览器应用主体程序是否正在退出，当返回TRUE时需要立即结束RunRobotTestFunc函数的执行并返回，否则可能会强制结束。
	 virtual BOOL IsAppShuttingDown() = 0 ;
	// 载入指定路径下的机器人
	 virtual HANDLE Load(LPCTSTR szPath,LPCTSTR szRegion) = 0;
	 //登录保险公司系统。载入后必须优先做登录，成功后才能做其它操作。
	 virtual BOOL Login(HANDLE hRobot, LPCTSTR szUser, LPCTSTR szPassword, LPCTSTR szManager) = 0;
	// 卸载机器人
	 virtual void Close(HANDLE hRobot)  = 0 ;
	// 获取机器人类型名
	 virtual LPCTSTR GetInsurerType(HANDLE hRobot) = 0 ;
	// 获取机器人VPN服务器地址；
	 virtual DWORD GetServerAddress(HANDLE hRobot)  = 0 ;
	// 判断机器人是否支持查询历史保单
	 virtual BOOL SupportQueryHistoryInsurance(HANDLE hRobot) = 0 ;
	// 判断机器人是否支持查询车牌
	 virtual BOOL SupportInquireCar(HANDLE hRobot) = 0 ;
	// 判断机器人是否支持自动报价
	 virtual BOOL SupportAutoQuote(HANDLE hRobot) = 0 ;
	// 判断机器人是否支持自动核保
	 virtual BOOL SupportAutoSubmit(HANDLE hRobot) = 0 ;
	// 查询历史保单（返回的结果用SysFreeString释放）
	 virtual BSTR QueryHistoryInsurance(HANDLE hRobot, LPCTSTR szCarJson) = 0 ;
	// 查询车牌（返回的结果用SysFreeString释放）
	 virtual BSTR InquireCar(HANDLE hRobot, LPCTSTR szPlatNo) = 0 ;
	// 自动报价（返回的结果用SysFreeString释放）
	 virtual BSTR AutoQuote(HANDLE hRobot, LPCTSTR szInputJson) = 0 ;
	// 自动核保（返回的结果用SysFreeString释放）
	 virtual BSTR AutoSubmit(HANDLE hRobot, LPCTSTR szInputJson) = 0 ;
	// 判断机器人的VPN是否连接
	 virtual BOOL IsAccessable(HANDLE hRobot) = 0 ;
	// 获取机器人内部状态（由Status状态值里的零个或多个构成）
	 virtual DWORD GetStatus(HANDLE hRobot) = 0 ;
	// 显示/隐藏机器人的浏览器窗口
	 virtual void ShowWindows(HANDLE hRobot, BOOL bShow) = 0 ;
	// 判断浏览器的机器人窗口是否可见
	 virtual BOOL IsWindowsVisible(HANDLE hRobot) = 0 ;
};

// 测试DLL中的入口函数，调用后即启动该测试过程，并在过程结束后返回。
// 注意：返回后lpRobot接口会失效。
//extern "C" VOID RunRobotTest (IRobot * lpRobot);
typedef VOID (_stdcall * RunRobotTestFunc)(IRobot * lpRobot);

// 启动机器人测试的入口函数名
#define RUN_ROBOT_TEST_FUNCTION_NAME			"RunRobotTest"


