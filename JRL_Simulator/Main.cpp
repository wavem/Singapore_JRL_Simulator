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
#include "Dlg_DataInputEdit.h"
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
#pragma link "AdvGrid"
#pragma link "AdvObj"
#pragma link "BaseGrid"
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

    m_RTimeSelectedCar = L"";
    m_RTimeSelectedDevice = L"";
    m_RTimeByteOffset = 0;
    m_RtimeByteSize = 0;

    m_ClickedRow = 0;
	m_ClickedCol = 0;
    m_ClickedX = 0;
	m_ClickedY = 0;
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
            if(LoadSendBufferInfo()) {
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

	// Common
    UnicodeString tempStr = L"";
    libxl::Sheet* t_sheet = NULL;
    int t_row = 4; // USER DEFINE
    int t_col = 1; // USER DEFINE
    int t_LastRow = 0;
    int t_RowLimit = 0;

    // Clear Routine
    grid_SignalList->ClearNormalCells();

    // Get Sheet
    t_sheet = getSheetByName(m_Book, L"RT_Protocol_List");
    t_LastRow = t_sheet->lastFilledRow();
    t_RowLimit = t_LastRow - t_row;

    // Set Grid Row Count
    grid_SignalList->RowCount = t_RowLimit + 1;

    // Read Contents from the Sheet
    if(t_sheet) {
    	for(int i = 0 ; i < t_RowLimit ; i++) {
        	for(int j = 0 ; j < 3 ; j++) {
            	tempStr = getCellValue(t_sheet, t_row, t_col);
                grid_SignalList->Cells[j][i + 1] = tempStr;
                t_col++;
            }
            t_row++;
            t_col = 1; // USER DEFINE
        }

    } else {
    	PrintMsg(L"Fail to load RT_Protocol_List sheet");
		return false;
    }

	return true;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadSendBufferInfo() {




	// 찾는 형식으로 가자.
    // 현재 왼쪽 Grid 에서 Protocol 선택 시,
    // 현재 선택된 차량과 프로토콜 명을 기억하도록 하자.
    // 그리고 그 녀석의 이름으로 Map Sheet 에서 Byte Index 위치와 크기를 알아내도록 하자.











	return true;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::PrintMsg(UnicodeString _str) {
	int t_Line = memo->Lines->Add(_str);
	memo->SetCursor(0, t_Line);
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

void __fastcall TFormMain::grid_SignalListGetAlignment(TObject *Sender, int ARow,
          int ACol, TAlignment &HAlign, TVAlignment &VAlign)
{
	HAlign = taCenter;
	VAlign = vtaCenter;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_SignalListClickCell(TObject *Sender, int ARow, int ACol)
{
	// Common
    TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
    UnicodeString tempStr = L"";

	// Pre-Return
    tempStr = p_grid->Cells[ACol][ARow];
    if(tempStr == L"") return;
    if(ARow == 0) return;

    // Reset Cell Colors
    for(int row = 1 ; row < p_grid->RowCount ; row++) {
    	p_grid->Colors[0][row] = 0x3C3C3C;
        p_grid->Colors[1][row] = 0x3C3C3C;
        p_grid->Colors[2][row] = 0x3C3C3C;
    }

    // Set Cell Color
    p_grid->Colors[ACol][ARow] = 0x207DBB;

    // Load Protocol
    LoadRealTimeProtocolContents(ARow, ACol);

    // Test Code (Random Generation)
	//SetRandomValueIntoProtocolGrid();

    DisplayBufferDataIntoGrid(0);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::LoadRealTimeProtocolContents(int _row, int _col) {

	// Common
    UnicodeString tempStr = L"";
    UnicodeString t_SheetName = L"";
    int t_RowCount = grid_Protocol->RowCount;
    libxl::Sheet* t_sheet = NULL;
    t_sheet = getSheetByName(m_Book, L"RT_Protocol_List");
    if(t_sheet == NULL) {
    	PrintMsg(L"Cannot open RT_Protocol_List sheet");
        return;
    }

    // Get Target Sheet Name
    t_SheetName = getCellValue(t_sheet, _row + 3, _col + 6);
    tempStr.sprintf(L"Target : %s", t_SheetName.c_str());
    PrintMsg(tempStr);
    if(t_SheetName == NULL) {
    	PrintMsg(L"There is no sheet info");
        return;
    }

    // Get Target Sheet
    t_sheet = getSheetByName(m_Book, t_SheetName);
    if(t_sheet == NULL) {
    	tempStr.sprintf(L"There is no sheet (%s)", t_SheetName.c_str());
        PrintMsg(tempStr);
        grid_Protocol->ClearNormalCells();
    	grid_Protocol->RowCount = 2;
        return;
    }

    // Load Protocol Routine
    int t_LastRow = t_sheet->lastFilledRow();
    int t_DefaultRowCnt = 5; // UESR DEFINE
    int t_ColIdx = 2; // EXCEL COL INDEX START
    int t_RowIdx = 5; // EXCEL ROW INDEX START
    int t_GridRow = 1;
    int t_GridCol = 1;
    bool t_bIsMerged = false;
    int t_MergedRowIdx_S = 0; // S==START
    int t_MergedRowIdx_E = 0; // E==END
    int t_MergedColIdx_S = 0; // S==START
    int t_MergedColIdx_E = 0; // E==END
    int t_V_gap = 0; // Vertical Gap
    int t_H_gap = 0; // Horizontal Gap
    int t_TotalByteCount = t_LastRow - t_DefaultRowCnt;
    int t_ByteIdx = 0;

    // Clear Protocol Grid
    grid_Protocol->ClearNormalCells();
    grid_Protocol->RowCount = 2;
    grid_Protocol->RowCount = t_TotalByteCount + 1;

    // Print Byte Index
    for(int i = 0 ; i < grid_Protocol->RowCount ; i++) {
        grid_Protocol->Cells[0][i + 1] = i;
    }

    // Merge Routine
    while(t_ByteIdx < t_TotalByteCount) {
    	t_GridCol = 1;
    	for(int i = 0 ; i < 8 ; i++) {
        	tempStr = getCellValue(t_sheet, t_RowIdx, t_ColIdx + i);
            grid_Protocol->Cells[t_GridCol][t_GridRow] = tempStr;

        	t_bIsMerged = t_sheet->getMerge(t_RowIdx, t_ColIdx + i, &t_MergedRowIdx_S, &t_MergedRowIdx_E, &t_MergedColIdx_S, &t_MergedColIdx_E);
            if(t_bIsMerged) {
            	t_H_gap = t_MergedColIdx_E - t_MergedColIdx_S + 1; // +1 is essential
				t_V_gap = t_MergedRowIdx_E - t_MergedRowIdx_S;
				grid_Protocol->MergeCells(t_GridCol, t_GridRow, t_H_gap, t_V_gap + 1);
				i += (t_H_gap - 1);
				t_ByteIdx += t_V_gap;
				t_GridRow += t_V_gap;
                t_GridCol += (t_H_gap - 1);
            }
            t_GridCol++;
        }

        t_RowIdx++;
        t_ByteIdx++;
        t_GridRow++;
    }

    // Save Selection Info
    m_RTimeSelectedCar = grid_SignalList->Cells[_col][0];
    m_RTimeSelectedDevice = grid_SignalList->Cells[_col][_row];

	if(LoadSendBufferOffset()) {
    	//PrintMsg(L"Load Byte Offset Complete");
    } else {
    	PrintMsg(L"Can't Load Byte Offset and Size");
    }
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_ProtocolGetAlignment(TObject *Sender, int ARow, int ACol,
          TAlignment &HAlign, TVAlignment &VAlign)
{
	HAlign = taCenter;
	VAlign = vtaCenter;
}
//---------------------------------------------------------------------------

bool __fastcall TFormMain::LoadSendBufferOffset() {

	// Common
    UnicodeString tempStr = L"";

    // Get Map Sheet Pointer
    libxl::Sheet* t_sheet = NULL;
    t_sheet = getSheetByName(m_Book, L"Map");
    if(t_sheet == NULL) {
    	PrintMsg(L"Cannot open Map sheet");
        return false;
    }

    // Find ByteOffset Routine
    UnicodeString t_CarStr = L"";
    UnicodeString t_ProtocolStr = L"";
    int t_ByteOffset = -1;
    int t_ProtocolSize = -1;

    for(int row = 3 ; t_sheet->lastFilledRow() ; row++) {
    	t_CarStr      = getCellValue(t_sheet, row, 4);
    	t_ProtocolStr = getCellValue(t_sheet, row, 5);

        if(t_CarStr == m_RTimeSelectedCar && t_ProtocolStr == m_RTimeSelectedDevice) {
        	m_RTimeByteOffset   = getCellValueI(t_sheet, row, 1);
            m_RtimeByteSize = getCellValueI(t_sheet, row, 2);

            tempStr.sprintf(L"Byte Offset : %d, Protocol Size : %d", m_RTimeByteOffset, m_RtimeByteSize);
            PrintMsg(tempStr);
            return true;
        }
    }


    m_RTimeByteOffset = -1;
    m_RtimeByteSize = 0;
    return false;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_ProtocolClickCell(TObject *Sender, int ARow, int ACol)
{
	m_ClickedRow = ARow;
	m_ClickedCol = ACol;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_ProtocolDblClickCell(TObject *Sender, int ARow, int ACol)
{
	// Pre-Return
	if(ARow == 0 || ACol == 0) return;

	// Common
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
	int t_Tag = p_grid->Tag;
	int t_Row = m_ClickedRow;
	int t_Col = m_ClickedCol;
	BYTE* t_pBuffer = NULL;

	// If the cell is not merged : return
	if(p_grid->IsMergedCell(t_Col, t_Row) == false) return;

	// Routine Here...

	// Determine Send or Recv Protocol
	//if(t_Tag == SEND_PROTOCOL_TYPE) {
		t_pBuffer = (m_SendBuf + m_RTimeByteOffset);
	//} else if(t_Tag == RECV_PROTOCOL_TYPE) {
	//	t_pBuffer = m_RecvBuf;
	//} else return;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

	t_point = p_grid->CellSpan(t_Col, t_Row);
	t_Span_X = t_point.x;
	t_Span_Y = t_point.y;

	// Create Data Input Dialog
	TFormDataInputEdit* p_dlg = new TFormDataInputEdit(t_pBuffer, t_Row - 1, t_Span_Y + 1, 8 - t_Col, t_Span_X + 1, t_Tag);
	p_dlg->ShowModal();
	delete p_dlg;

	DisplayBufferDataIntoGrid(t_Tag);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_ProtocolMouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y)
{
	m_ClickedX = X;
	m_ClickedY = Y;
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::grid_ProtocolRightClickCell(TObject *Sender, int ARow,
          int ACol)
{
	// Pre Return
	if(ARow <= 0 || ACol <= 0) return;

	// Common
	TAdvStringGrid* p_grid = (TAdvStringGrid*)Sender;
	int t_Tag = p_grid->Tag;
	DWORD t_dword = 0; // Parameter For Func : SendMessage().
	WORD t_Lword = m_ClickedX; // X
	WORD t_Hword = m_ClickedY; // Y
	t_dword = t_Hword;
	t_dword = (t_dword << 16) | t_Lword;
	SendMessage(p_grid->Handle, WM_LBUTTONDOWN, MK_LBUTTON, t_dword);

	// HB Test Routine Start
	//if(m_bProtocolGridCtrlKeyDown) {
	//	CheckandRunORStopHB(m_ClickedRow, m_ClickedCol);
	//	return;
	//}
	// HB Test Routine END

	// Real Processing...
	DWORD t_Option = 0;

	// Declare & Init Variables
	//bool t_bTurnOn = false;
	//if(p_grid->Colors[m_ClickedCol][m_ClickedRow] == clLime) {
	//	t_bTurnOn = false;
	//} else {
	//	t_bTurnOn = true;
	//}

	//DoTestDeviceProtocol(p_grid, m_ClickedRow, m_ClickedCol, t_bTurnOn, t_Option);
	SendMessage(p_grid->Handle, WM_LBUTTONUP, MK_LBUTTON, t_dword); // Release Mouse Clicked Status (2019-05-13 mjw)
	ToggleBufferData(p_grid, m_ClickedRow, m_ClickedCol);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::ToggleBufferData(TAdvStringGrid* _pGrid, int _Row, int _Col) {

	// Common
	UnicodeString tempStr = L"";
	TAdvStringGrid* p_grid = _pGrid;
	int t_Tag = p_grid->Tag;
	int t_DataSize = 0;
	BYTE* t_pBuffer = NULL;
	BYTE t_Byte = 0;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

	//if(t_Tag == SEND_PROTOCOL_TYPE) {
	//	t_DataSize = m_SendProtocolSize;
		t_pBuffer = (m_SendBuf + m_RTimeByteOffset);
	//} else if(t_Tag == RECV_PROTOCOL_TYPE) {
	//	t_DataSize = m_RecvProtocolSize;
	//	t_pBuffer = m_RecvBuf;
	//}

	// Check Merge
	if(p_grid->IsMergedCell(_Col, _Row)) {
		t_point = p_grid->CellSpan(_Col, _Row);
		t_Span_X = t_point.x;
		t_Span_Y = t_point.y;

		if(t_Span_Y >0) { // More than 1 Byte Merge
			switch(t_Span_Y) {
				case 1: // 2 BTYE
					if(t_pBuffer[_Row - 1] == 0 && t_pBuffer[_Row - 1 + 1] == 0) {
						memset(&(t_pBuffer[_Row - 1]), 0xFF, 2);
					} else {
						memset(&(t_pBuffer[_Row - 1]), 0x00, 2);
					}
					break;

				case 3: // 4 BYTE
					if(t_pBuffer[_Row - 1] == 0 && t_pBuffer[_Row - 1 + 1] == 0 && t_pBuffer[_Row - 1 + 2] == 0 && t_pBuffer[_Row - 1 + 3] == 0) {
						memset(&(t_pBuffer[_Row - 1]), 0xFF, 4);
					} else {
						memset(&(t_pBuffer[_Row - 1]), 0x00, 4);
					}
					break;

				default:
					break;
			}
		} else {
			switch(t_Span_X) {
				default:
					break;

				case 7: // 8 Bit (1 BYTE)
					if(t_pBuffer[_Row - 1] == 0) {
						t_pBuffer[_Row - 1] = 0xFF;
					} else {
						t_pBuffer[_Row - 1] = 0x00;
					}
					break;

				case 6: // 7 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x7F << (2 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x7F << (2 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x7F << (2 - _Col));
					}
					break;

				case 5: // 6 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x3F << (3 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x3F << (3 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x3F << (3 - _Col));
					}
					break;

				case 4: // 5 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x1F << (4 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x1F << (4 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x1F << (4 - _Col));
					}
					break;

				case 3: // 4 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x0F << (5 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x0F << (5 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x0F << (5 - _Col));
					}
					break;

				case 2: // 3 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x07 << (6 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x07 << (6 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x07 << (6 - _Col));
					}
					break;

				case 1: // 2 Bit
					t_Byte = (t_pBuffer[_Row - 1] & (0x03 << (7 - _Col)));
					if(t_Byte == 0) {
						t_pBuffer[_Row - 1] |= (0x03 << (7 - _Col));
					} else {
						t_pBuffer[_Row - 1] &= ~(0x03 << (7 - _Col));
					}
					break;
			}
		}
	} else {
		t_pBuffer[_Row - 1] = _BitToggle(t_pBuffer[_Row - 1], 8 - _Col);
	}

	// Display Routine
	DisplayBufferDataIntoGrid(t_Tag);
}
//---------------------------------------------------------------------------

void __fastcall TFormMain::DisplayBufferDataIntoGrid(int _type) {

	// Common
	UnicodeString tempStr = L"";
	UnicodeString t_FinalStr = L"";
	TAdvStringGrid* p_grid = NULL;
	int t_DataSize = 0;
	int t_GridRow = 1;
	int t_GridCol = 1;
	BYTE* t_pBuffer = NULL;
	BYTE t_Byte = 0;

	// Cell Merge Variables
	TPoint t_point;
	int t_Span_X = 0;
	int t_Span_Y = 0;

    p_grid = grid_Protocol;
    t_DataSize = m_RtimeByteSize;
    t_pBuffer = (m_SendBuf + m_RTimeByteOffset);

    /*
	if(_type == SEND_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Send;
		t_DataSize = m_SendProtocolSize;
		t_pBuffer = m_SendBuf;
	} else if(_type == RECV_PROTOCOL_TYPE) {
		p_grid = grid_Protocol_Recv;
		t_DataSize = m_RecvProtocolSize;
		t_pBuffer = m_RecvBuf;
	}
    */

	// Memory Allocate
	BYTE* t_Buffer = new BYTE[t_DataSize];
	memcpy(t_Buffer, t_pBuffer, t_DataSize);

	while(t_GridRow <= t_DataSize) {
		// Check Cell is Merged
		if(p_grid->IsMergedCell(t_GridCol, t_GridRow)) {
			t_point = p_grid->CellSpan(t_GridCol, t_GridRow);
			t_Span_X = t_point.x;
			t_Span_Y = t_point.y;

			if(t_Span_Y > 0) { // More than 1 Byte Merge
				switch(t_Span_Y) {
					case 1: // 2 BTYE
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0 && t_Buffer[t_GridRow - 1 + 1] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);

						//if(m_bIsSigned) {
							tempStr.sprintf(L"\n%02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow + 1 - 1]);
						//} else {
						//	tempStr.sprintf(L"\n%02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow + 1 - 1]);
						//}
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow += 2;
						continue;
						break;

					case 3:
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0 && t_Buffer[t_GridRow - 1 + 1] == 0 && t_Buffer[t_GridRow - 1 + 2] == 0 && t_Buffer[t_GridRow - 1 + 3] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X%02X %02X%02X", t_Buffer[t_GridRow - 1], t_Buffer[t_GridRow - 1 + 1], t_Buffer[t_GridRow - 1 + 2], t_Buffer[t_GridRow - 1 + 3]);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow += 4;
						continue;
						break;

					default:
						break;
				}
			} else { // Less than 1 Byte Merge
				switch(t_Span_X) {
					default:
						break;

					case 7: // (8 Bit : 1 Byte)
						// Color Setting
						if(t_Buffer[t_GridRow - 1] == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Buffer[t_GridRow - 1]);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridRow++;
						continue;
						break;

					case 6: // 7 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (2 - t_GridCol)) & 0x7F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 6;
						break;

					case 5: // 6 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (3 - t_GridCol)) & 0x3F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 5;
						break;

					case 4: // 5 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (4 - t_GridCol)) & 0x1F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%02X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 4;
						break;

					case 3: // 4 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (5 - t_GridCol)) & 0x0F);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 3;
						break;

					case 2: // 3 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (6 - t_GridCol)) & 0x07);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 2;
						break;

					case 1: // 2 Bit
						// Color Setting
						t_Byte = ((t_Buffer[t_GridRow - 1] >> (7 - t_GridCol)) & 0x03);
						if(t_Byte == 0) {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
						} else {
							p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
						}

						// Value Setting
						t_FinalStr = ExtractOriginSignalName(p_grid->Cells[t_GridCol][t_GridRow]);
						tempStr.sprintf(L"\n%X", t_Byte);
						t_FinalStr += tempStr;
						p_grid->Cells[t_GridCol][t_GridRow] = t_FinalStr;
						t_GridCol += 1;
						break;
				}
			}
		} else {
			if(_BitCheck(t_Buffer[t_GridRow - 1], 8 - t_GridCol)) {
				p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_ON;
			} else {
				p_grid->Colors[t_GridCol][t_GridRow] = COLOR_GRID_SIGNAL_OFF;
			}
		}

		if(++t_GridCol >= 9) {
			t_GridCol = 1;
			t_GridRow++;
		}
	}

	// Release Allocated Memory
	delete t_Buffer;
}
//---------------------------------------------------------------------------

UnicodeString TFormMain::ExtractOriginSignalName(UnicodeString _str) {
	UnicodeString t_FinalStr = _str;
	for(int i = 0 ; i < _str.Length() ; i++) {
		if(_str.IsDelimiter(L"\n", i)) {
			t_FinalStr = _str.SubString(0, i - 1);
			break;
		}
	}
	return t_FinalStr;
}
//---------------------------------------------------------------------------


