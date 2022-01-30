//---------------------------------------------------------------------------

#ifndef Dlg_VersionH
#define Dlg_VersionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormVersion : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
private:	// User declarations
public:		// User declarations
	__fastcall TFormVersion(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormVersion *FormVersion;
//---------------------------------------------------------------------------
#endif
