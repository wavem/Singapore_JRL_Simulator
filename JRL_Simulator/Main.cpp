//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "libxl_functions.h"
#include "common_functions.h"
#include "Dlg_Version.h"
#include <ws2tcpip.h> //#include <ws2ipdef.h> 는 ws2tcpip.h 에 자동으로 포함되며 직접 사용하면 안된다.
//#include <tlhelp32.h>
//#include <stdio.h>
//#include <shlwapi.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cxClasses"
#pragma link "cxControls"
#pragma link "cxGraphics"
#pragma link "cxLookAndFeelPainters"
#pragma link "cxLookAndFeels"
#pragma link "dxBar"
#pragma link "dxRibbon"
#pragma link "dxRibbonCustomizationForm"
#pragma link "dxRibbonSkins"
#pragma link "dxSkinBlack"
#pragma link "dxSkinBlue"
#pragma link "dxSkinBlueprint"
#pragma link "dxSkinCaramel"
#pragma link "dxSkinCoffee"
#pragma link "dxSkinDarkRoom"
#pragma link "dxSkinDarkSide"
#pragma link "dxSkinDevExpressDarkStyle"
#pragma link "dxSkinDevExpressStyle"
#pragma link "dxSkinFoggy"
#pragma link "dxSkinGlassOceans"
#pragma link "dxSkinHighContrast"
#pragma link "dxSkiniMaginary"
#pragma link "dxSkinLilian"
#pragma link "dxSkinLiquidSky"
#pragma link "dxSkinLondonLiquidSky"
#pragma link "dxSkinMcSkin"
#pragma link "dxSkinMetropolis"
#pragma link "dxSkinMetropolisDark"
#pragma link "dxSkinMoneyTwins"
#pragma link "dxSkinOffice2007Black"
#pragma link "dxSkinOffice2007Blue"
#pragma link "dxSkinOffice2007Green"
#pragma link "dxSkinOffice2007Pink"
#pragma link "dxSkinOffice2007Silver"
#pragma link "dxSkinOffice2010Black"
#pragma link "dxSkinOffice2010Blue"
#pragma link "dxSkinOffice2010Silver"
#pragma link "dxSkinOffice2013DarkGray"
#pragma link "dxSkinOffice2013LightGray"
#pragma link "dxSkinOffice2013White"
#pragma link "dxSkinPumpkin"
#pragma link "dxSkinsCore"
#pragma link "dxSkinsDefaultPainters"
#pragma link "dxSkinsdxBarPainter"
#pragma link "dxSkinsdxRibbonPainter"
#pragma link "dxSkinSeven"
#pragma link "dxSkinSevenClassic"
#pragma link "dxSkinSharp"
#pragma link "dxSkinSharpPlus"
#pragma link "dxSkinSilver"
#pragma link "dxSkinSpringTime"
#pragma link "dxSkinStardust"
#pragma link "dxSkinSummer2008"
#pragma link "dxSkinTheAsphaltWorld"
#pragma link "dxSkinValentine"
#pragma link "dxSkinVisualStudio2013Blue"
#pragma link "dxSkinVisualStudio2013Dark"
#pragma link "dxSkinVisualStudio2013Light"
#pragma link "dxSkinVS2010"
#pragma link "dxSkinWhiteprint"
#pragma link "dxSkinXmas2008Blue"
#pragma link "AdvMemo"
#pragma resource "*.dfm"
#pragma link "libxl.lib"
TFormMain *FormMain;
//---------------------------------------------------------------------------
__fastcall TFormMain::TFormMain(TComponent* Owner)
	: TForm(Owner)
{
	InitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	ExitProgram();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExitProgram() {


	// Socket Clean Up
	WSACleanup();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::InitProgram() {

	// Common
    UnicodeString tempStr = L"";

	// Default Notebook Page Setting
    Notebook_Main->PageIndex = 0;




	// Init Variables...
	m_sock_MCast = INVALID_SOCKET;
	m_MCastThread = NULL;
	//m_LocalIPstr = "";
    m_LocalIPstr = "192.168.0.132";
	m_ServerIPstr = "";
	m_ServerPort = 0;
	m_LocalPort = 0;
	memset(m_SendBuf, 0, MCAST_SEND_BUF_SIZE);
	memset(m_RecvBuf, 0, MCAST_RECV_BUF_SIZE);
	//m_SendProtocolSize = 0;
	//m_RecvProtocolSize = 0;
	//m_bIsBigEndian = false;
	//m_bIsOnLogFile = false;
	//m_bIsOnBinaryFile = false;
	//m_bIsSigned = false;
	//m_fp_Log = NULL;


    // Init Grids


    // Socket Init
    WSADATA data;
	WORD version;
	int ret = 0;

	version = MAKEWORD(2, 2);
	ret = WSAStartup(version, &data);
	if(ret != 0) {
		ret = WSAGetLastError();
		if(ret == WSANOTINITIALISED) {
			tempStr.sprintf(L"Socket not initialised (error code : %d)", ret);
			PrintMsg(tempStr);
		} else {
			tempStr.sprintf(L"Socket error (error code : %d)", ret);
			PrintMsg(tempStr);
		}
	} else {
		PrintMsg(L"Socket init success");
	}




    // Config File Init Routine
	if(InitConfigExcelFile() == false) {
    	return;
    } else {
    	PrintMsg(L"Config File Init Complete");
    }


    // Create Socket

    if(CreateMCastSocket() == false) {

    	return;
    } else {
        PrintMsg(L"Multicast Socket Complete");
    }


    // Create Multicast Socket Thread



	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitConfigExcelFile() {

	m_Book = xlCreateXMLBook();
    if(m_Book) {
    	m_Book->setKey(L"준호 양", L"windows-2d20200d03c0ed046aba6867a7n0m2j0");
        if(m_Book->load(L"Config\\Config.xlsx")) {
            // Load Real-Time Protocol List & Printout on the Grid
            //LoadRealTimeProtocolList();

            PrintMsg(L"Load Complete");
		} else {
			PrintMsg(L"Fail to Load Excel File");
            return false;
		}
    } else {
    	PrintMsg(L"Fail to Create XML BOOK");
        return false;
    }

	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Line = memo->Lines->Add(_str);
	memo->SetCursor(0, t_Line);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintData(UnicodeString _str) {
	int t_Line = memo_Data->Lines->Add(_str);
	memo_Data->SetCursor(0, t_Line);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MainButtonClick(TObject *Sender)
{
	TdxBarLargeButton* p_Btn = (TdxBarLargeButton*)Sender;
    int t_Tag = p_Btn->Tag;
    Notebook_Main->PageIndex = t_Tag;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintThreadLogMessage(TMessage &_msg) {
	unsigned int t_wParam = _msg.WParam;
	int t_lParam = _msg.LParam;

	UnicodeString tempStr = L"";
	UnicodeString *p = NULL;
	p = (UnicodeString*)t_wParam;
	tempStr = *p;
	PrintMsg(tempStr);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MainBtn_VersionClick(TObject *Sender)
{
	TFormVersion *p_dlg = new TFormVersion(NULL);
    p_dlg->ShowModal();
    delete p_dlg;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::CreateMCastSocket() {

	// Pre return
	if(m_sock_MCast != INVALID_SOCKET) {
		PrintMsg(L"Socket exists already");
		return false;
	}

	// Common
	UnicodeString tempStr = L"";
	AnsiString t_AnsiStr = "";
	unsigned short t_Port = 0;
	struct sockaddr_in t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));

	// Create Socket
	m_sock_MCast = socket(AF_INET, SOCK_DGRAM, IPPROTO_IP);
	if(m_sock_MCast == INVALID_SOCKET) {
		PrintMsg(L"Fail to create socket");
		return false;
	}

	// Input Comm Information
	t_sockaddr_in.sin_family = AF_INET;
    t_sockaddr_in.sin_addr.s_addr = htonl(INADDR_ANY);
    t_sockaddr_in.sin_port = htons(MULTICAST_PORT);

	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_sock_MCast, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to set socket option (REUSE)");
		return false;
	}

	// Get Recv Buffer Size
	int t_recvBufferSize = 0;
	int t_optSize = sizeof(t_recvBufferSize);
	if(getsockopt(m_sock_MCast, SOL_SOCKET, SO_RCVBUF, (char*)&t_recvBufferSize, &t_optSize) == SOCKET_ERROR) {
		PrintMsg(L"Fail to get socket recv buffer size");
	} else {
		tempStr.sprintf(L"Recv Buffer Size : %d", t_recvBufferSize);
		PrintMsg(tempStr);
	}

    // Bind
	if(bind(m_sock_MCast, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in)) < 0) {
		PrintMsg(L"Bind error");
		return false;
	}
	tempStr = L"Bind Local IP : ";
	tempStr += inet_ntoa(t_sockaddr_in.sin_addr);
	PrintMsg(tempStr);

	// Join to Multicast Group
    struct ip_mreq t_ip_mreq;
	ZeroMemory(&t_ip_mreq, sizeof(t_ip_mreq));
	t_ip_mreq.imr_multiaddr.s_addr = inet_addr(MULTICAST_IP);
    //t_ip_mreq.imr_interface.s_addr = inet_addr(LOCAL_IP); // LOCAL 넣어주지 않아도 됨.
    t_ip_mreq.imr_interface.s_addr = htonl(INADDR_ANY);
	if(setsockopt(m_sock_MCast, IPPROTO_IP, IP_ADD_MEMBERSHIP, (char *) &t_ip_mreq, sizeof(t_ip_mreq)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to join multicast group");
		return false;
	}

	return true;
}
//---------------------------------------------------------------------------


void __fastcall TFormMain::MainBtn_TestClick(TObject *Sender)
{
	if(m_sock_MCast == INVALID_SOCKET) {
    	PrintMsg(L"INVALID_SOCKET");
        return;
    }

    // Send Routine

	// Common
	UnicodeString t_Str = L"";
	int t_SendSize = 0;

	struct sockaddr_in	t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));
	t_sockaddr_in.sin_family = AF_INET;
	//t_sockaddr_in.sin_addr.s_addr = inet_addr(m_ServerIPstr.c_str());
    //t_sockaddr_in.sin_addr.s_addr = inet_addr("192.168.0.132");
    t_sockaddr_in.sin_addr.s_addr = inet_addr(LOCAL_IP);
	t_sockaddr_in.sin_port = htons(14759);

	t_SendSize = sendto(m_sock_MCast, m_SendBuf, 100, 0, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in));
	t_Str.sprintf(L"[SEND] Size : %04d", t_SendSize);
	t_Str += L" (Target IP : ";
	t_Str += L"192.168.0.132";
	t_Str += L", Port : ";
	t_Str += L"14759";
	t_Str += L")";
	PrintMsg(t_Str);

	//return t_SendSize;
    return;
}
//---------------------------------------------------------------------------

