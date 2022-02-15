//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Dlg_Version.h"
#include "Define.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormVersion *FormVersion;
//---------------------------------------------------------------------------
__fastcall TFormVersion::TFormVersion(TComponent* Owner)
	: TForm(Owner)
{
	lb_Version->Caption = PROGRAM_VERSION;
	lb_UpdateDate->Caption = PROGRAM_UPDATE_DATE;
}
//---------------------------------------------------------------------------
