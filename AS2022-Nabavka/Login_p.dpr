program Login_p;

uses
  Vcl.Forms,
  formMain_u in 'formMain_u.pas' {formMain},
  formIntro_u in 'formIntro_u.pas' {formIntro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
