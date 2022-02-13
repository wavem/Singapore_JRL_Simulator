//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include "Define.h"
#include "libxl.h"
#include "MulticastSocketThread.h"
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include "cxClasses.hpp"
#include "cxControls.hpp"
#include "cxGraphics.hpp"
#include "cxLookAndFeelPainters.hpp"
#include "cxLookAndFeels.hpp"
#include "dxBar.hpp"
#include "dxRibbon.hpp"
#include "dxRibbonCustomizationForm.hpp"
#include "dxRibbonSkins.hpp"
#include "dxSkinBlack.hpp"
#include "dxSkinBlue.hpp"
#include "dxSkinBlueprint.hpp"
#include "dxSkinCaramel.hpp"
#include "dxSkinCoffee.hpp"
#include "dxSkinDarkRoom.hpp"
#include "dxSkinDarkSide.hpp"
#include "dxSkinDevExpressDarkStyle.hpp"
#include "dxSkinDevExpressStyle.hpp"
#include "dxSkinFoggy.hpp"
#include "dxSkinGlassOceans.hpp"
#include "dxSkinHighContrast.hpp"
#include "dxSkiniMaginary.hpp"
#include "dxSkinLilian.hpp"
#include "dxSkinLiquidSky.hpp"
#include "dxSkinLondonLiquidSky.hpp"
#include "dxSkinMcSkin.hpp"
#include "dxSkinMetropolis.hpp"
#include "dxSkinMetropolisDark.hpp"
#include "dxSkinMoneyTwins.hpp"
#include "dxSkinOffice2007Black.hpp"
#include "dxSkinOffice2007Blue.hpp"
#include "dxSkinOffice2007Green.hpp"
#include "dxSkinOffice2007Pink.hpp"
#include "dxSkinOffice2007Silver.hpp"
#include "dxSkinOffice2010Black.hpp"
#include "dxSkinOffice2010Blue.hpp"
#include "dxSkinOffice2010Silver.hpp"
#include "dxSkinOffice2013DarkGray.hpp"
#include "dxSkinOffice2013LightGray.hpp"
#include "dxSkinOffice2013White.hpp"
#include "dxSkinPumpkin.hpp"
#include "dxSkinsCore.hpp"
#include "dxSkinsDefaultPainters.hpp"
#include "dxSkinsdxBarPainter.hpp"
#include "dxSkinsdxRibbonPainter.hpp"
#include "dxSkinSeven.hpp"
#include "dxSkinSevenClassic.hpp"
#include "dxSkinSharp.hpp"
#include "dxSkinSharpPlus.hpp"
#include "dxSkinSilver.hpp"
#include "dxSkinSpringTime.hpp"
#include "dxSkinStardust.hpp"
#include "dxSkinSummer2008.hpp"
#include "dxSkinTheAsphaltWorld.hpp"
#include "dxSkinValentine.hpp"
#include "dxSkinVisualStudio2013Blue.hpp"
#include "dxSkinVisualStudio2013Dark.hpp"
#include "dxSkinVisualStudio2013Light.hpp"
#include "dxSkinVS2010.hpp"
#include "dxSkinWhiteprint.hpp"
#include "dxSkinXmas2008Blue.hpp"
#include "AdvMemo.hpp"
#include "AdvEdit.hpp"
#include "AdvGlassButton.hpp"
#include "AdvGrid.hpp"
#include "AdvObj.hpp"
#include "BaseGrid.hpp"
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class CMCastSocketThread;
class TFormMain : public TForm
{
__published:	// IDE-managed Components
	TPanel *___pnBase;
	TdxRibbonTab *Menu;
	TdxRibbon *MainRibbonMenu;
	TdxBarManager *BarMgr;
	TdxBar *BarMgrBar1;
	TdxBarLargeButton *MainBtn_Connection;
	TdxBarLargeButton *MainBtn_Protocol;
	TdxBarLargeButton *MainBtn_Setting;
	TdxBarLargeButton *MainBtn_Version;
	TdxBarLargeButton *MainBtn_Test;
	TAdvMemo *memo;
	TNotebook *Notebook_Main;
	TPanel *__pnBase_00_Connection;
	TdxBarLargeButton *MainBtn_Generator;
	TPanel *__pnBase_01_Protocol;
	TPanel *__pnBase_02_Setting;
	TPanel *__pnBase_03_Generator;
	TTimer *tm_Sender;
	TLabel *lb_Title_Local_IP;
	TLabel *lb_Title_Multicast_IP;
	TLabel *lb_Title_Multicast_Port;
	TAdvEdit *ed_MCast_Port;
	TAdvEdit *ed_MCast_IP_1;
	TAdvEdit *ed_Local_IP_1;
	TAdvEdit *ed_Local_IP_2;
	TAdvEdit *ed_Local_IP_3;
	TAdvEdit *ed_Local_IP_4;
	TAdvEdit *ed_MCast_IP_4;
	TAdvEdit *ed_MCast_IP_3;
	TAdvEdit *ed_MCast_IP_2;
	TAdvGlassButton *btn_Create_Socket;
	TdxBarLargeButton *MainBtn_Test_2;
	TAdvStringGrid *grid_SignalList;
	void __fastcall MainButtonClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall MainBtn_VersionClick(TObject *Sender);
	void __fastcall MainBtn_TestClick(TObject *Sender);
	void __fastcall btn_Create_SocketClick(TObject *Sender);
	void __fastcall tm_SenderTimer(TObject *Sender);
	void __fastcall MainBtn_Test_2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFormMain(TComponent* Owner);

public: // Basic Member
	bool m_bIsInitComplete;

public: // Basic Functions
	void __fastcall InitProgram();
    void __fastcall ExitProgram();
    void __fastcall PrintMsg(UnicodeString _str);

public: // Libxl
	libxl::Book* m_Book;
	bool __fastcall InitConfigExcelFile();

public: // UI Func
	void __fastcall ExtractCommInformation();

public: // SOCKET
	SOCKET m_sock_MCast;
	bool __fastcall CreateMCastSocket();
	bool __fastcall CreateMCastThread();
	CMCastSocketThread* m_MCastThread;
	AnsiString m_LocalIPstr;
	AnsiString m_MCastIPstr;
	unsigned short m_MCastPort;
	BYTE m_SendBuf[MCAST_SEND_BUF_SIZE];
	BYTE m_RecvBuf[MCAST_RECV_BUF_SIZE];
	int __fastcall SendPacket();

public: // libxl
	bool __fastcall LoadRealTimeProtocolList();
    bool __fastcall LoadSendBufferInto();




public: // User Message Handler
	void __fastcall PrintThreadLogMessage(TMessage &_msg);


BEGIN_MESSAGE_MAP
	MESSAGE_HANDLER(MSG_LOG_FROM_THREAD, TMessage, PrintThreadLogMessage)
END_MESSAGE_MAP(TForm)
};
//---------------------------------------------------------------------------
extern PACKAGE TFormMain *FormMain;
//---------------------------------------------------------------------------
#endif
