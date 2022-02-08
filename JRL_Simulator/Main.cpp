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
#pragma link "AdvEdit"
#pragma link "AdvGlassButton"
#pragma resource "*.dfm"
#pragma link "libxl.lib"
//#pragma link "Ws2_32.lib"
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
    m_bIsInitComplete = false;
	m_sock_MCast = INVALID_SOCKET;
	m_MCastThread = NULL;
    m_LocalIPstr = "";
	m_MCastIPstr = "";
	m_MCastPort = 0;
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



    // Config File Init Routine
	if(InitConfigExcelFile() == false) {
    	return;
    } else {
    	PrintMsg(L"Config File Init Complete");
    }

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

    m_bIsInitComplete = true;
	PrintMsg(L"Init Complete");
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::InitConfigExcelFile() {

	m_Book = xlCreateXMLBook();
    if(m_Book) {
    	m_Book->setKey(L"준호 양", L"windows-2d20200d03c0ed046aba6867a7n0m2j0");
        if(m_Book->load(L"Config\\Config_Simulator.xlsx")) {
            // Load Real-Time Protocol List & Printout on the Grid
            if(LoadRealTimeProtocolList()) {
            	PrintMsg(L"Protocol List Init Complete");
            } else {
            	return false;
            }

            // Load Send Buffer Information
            if(LoadSendBufferInto()) {
            	PrintMsg(L"Send Buffer Init Complete");
            } else {
            	return false;
            }
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

bool __fastcall TFormMain::LoadRealTimeProtocolList() {




	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadSendBufferInto() {




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

/*
	// Set Socket Option : REUSE
	int t_opt_reuse = 1;
	if(setsockopt(m_sock_MCast, SOL_SOCKET, SO_REUSEADDR,(char *)&t_opt_reuse, sizeof(t_opt_reuse)) == SOCKET_ERROR) {
		PrintMsg(L"Fail to set socket option (REUSE)");
		return false;
	}
*/

	// Get Recv Buffer Size
	int t_recvBufferSize = 0;
	int t_optSize = sizeof(t_recvBufferSize);
	if(getsockopt(m_sock_MCast, SOL_SOCKET, SO_RCVBUF, (char*)&t_recvBufferSize, &t_optSize) == SOCKET_ERROR) {
		PrintMsg(L"Fail to get socket recv buffer size");
	} else {
		tempStr.sprintf(L"Recv Buffer Size : %d", t_recvBufferSize);
		PrintMsg(tempStr);
	}

	// Setting Multicast TTL
    int ttl = 2;
    if(setsockopt(m_sock_MCast, IPPROTO_IP, IP_MULTICAST_TTL, (char*)&ttl, sizeof(ttl)) == SOCKET_ERROR) {
    	PrintMsg(L"Multicast TTL Option Error");
        return false;
    }

/*
    // Disable loopback so you do not receive your own datagrams.
    char loopch=0;
    if (setsockopt(m_sock_MCast, IPPROTO_IP, IP_MULTICAST_LOOP, (char *)&loopch, sizeof(loopch)) < 0) {
    	PrintMsg("ERROR : IP_MULTICAST_LOOP:");
        return false;
    }
*/

    // Setting NIC
    IN_ADDR t_LocalAddr;
    t_LocalAddr.s_addr = inet_addr(m_LocalIPstr.c_str());
    if(setsockopt(m_sock_MCast, IPPROTO_IP, IP_MULTICAST_IF, (char*)&t_LocalAddr, sizeof(t_LocalAddr)) == SOCKET_ERROR) {
    	PrintMsg(L"Multicast Interface Error");
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

	// Common
	UnicodeString t_Str = L"";
	int t_SendSize = 0;

    // Send Routine
	struct sockaddr_in	t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));
	t_sockaddr_in.sin_family = AF_INET;
    t_sockaddr_in.sin_addr.s_addr = inet_addr(m_MCastIPstr.c_str());
	t_sockaddr_in.sin_port = htons(m_MCastPort);

	t_SendSize = sendto(m_sock_MCast, m_SendBuf, MCAST_SEND_BUF_SIZE, 0, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in));
	t_Str.sprintf(L"[SEND] Size : %04d", t_SendSize);
	t_Str += L" (Target IP : ";
	t_Str += m_MCastIPstr;
	t_Str += L", Port : ";
	t_Str += m_MCastPort;
	t_Str += L")";
	PrintMsg(t_Str);

    return;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::btn_Create_SocketClick(TObject *Sender)
{
	// Pre-Return
	if(m_bIsInitComplete == false) {
        PrintMsg(L"Program Init Failed...");
        return;
    }

    // Extract Network Information
	ExtractCommInformation();

    // Create Socket
    if(CreateMCastSocket() == false) {

    	return;
    } else {
        PrintMsg(L"Multicast Socket Complete");
    }

    // Create Multicast Socket Thread
    // Routine Here


    Notebook_Main->PageIndex = 1; // Protocol List Page
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ExtractCommInformation() {

	// Common
	struct sockaddr_in t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));

	// Extract User Input Information
	m_MCastPort = (unsigned short)ed_MCast_Port->IntValue;

	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b1 = (BYTE)ed_Local_IP_1->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b2 = (BYTE)ed_Local_IP_2->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b3 = (BYTE)ed_Local_IP_3->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b4 = (BYTE)ed_Local_IP_4->IntValue;
	m_LocalIPstr = inet_ntoa(t_sockaddr_in.sin_addr);

	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b1 = (BYTE)ed_MCast_IP_1->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b2 = (BYTE)ed_MCast_IP_2->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b3 = (BYTE)ed_MCast_IP_3->IntValue;
	t_sockaddr_in.sin_addr.S_un.S_un_b.s_b4 = (BYTE)ed_MCast_IP_4->IntValue;
	m_MCastIPstr = inet_ntoa(t_sockaddr_in.sin_addr);
}
//---------------------------------------------------------------------------

int __fastcall TFormMain::SendPacket() {

	// Pre-Return
    if(m_sock_MCast == INVALID_SOCKET) {
    	PrintMsg(L"INVALID_SOCKET");
        return -1;
    }

	// Common
	UnicodeString t_Str = L"";
	int t_SendSize = 0;

    // Send Routine
	struct sockaddr_in	t_sockaddr_in;
	memset(&t_sockaddr_in, 0, sizeof(t_sockaddr_in));
	t_sockaddr_in.sin_family = AF_INET;
    t_sockaddr_in.sin_addr.s_addr = inet_addr(m_MCastIPstr.c_str());
	t_sockaddr_in.sin_port = htons(m_MCastPort);

	t_SendSize = sendto(m_sock_MCast, m_SendBuf, MCAST_SEND_BUF_SIZE, 0, (struct sockaddr*)&t_sockaddr_in, sizeof(t_sockaddr_in));
	t_Str.sprintf(L"[SEND] Size : %04d", t_SendSize);
	t_Str += L" (Target IP : ";
	t_Str += m_MCastIPstr;
	t_Str += L", Port : ";
	t_Str += m_MCastPort;
	t_Str += L")";
	PrintMsg(t_Str);

    return t_SendSize;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::tm_SenderTimer(TObject *Sender)
{
	// Pre-Return & Disabled This Timer
    if(m_sock_MCast == INVALID_SOCKET) {
    	PrintMsg(L"INVALID_SOCKET");
        TTimer *p_Timer = (TTimer*)Sender;
        p_Timer->Enabled = false;
        return;
    }

    SendPacket();
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::MainBtn_Test_2Click(TObject *Sender)
{
	tm_Sender->Enabled = !tm_Sender->Enabled;
}
//---------------------------------------------------------------------------

