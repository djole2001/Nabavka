program Login_p;

uses
  Vcl.Forms,
  formMain_u in 'formMain_u.pas' {formMain},
  formIntro_u in 'formIntro_u.pas' {formIntro},
  frmNalog_u in 'frmNalog_u.pas' {frmNalog},
  formDobavljaci_u in 'formDobavljaci_u.pas' {formDobavljaci},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformIntro, formIntro);
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TfrmNalog, frmNalog);
  Application.CreateForm(TformDobavljaci, formDobavljaci);
  Application.Run;
end.
