unit formMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, formIntro_u;

type
  TformMain = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;
  iNew : integer;

implementation

{$R *.dfm}

procedure TformMain.FormShow(Sender: TObject);
begin
formIntro := TformIntro.Create(self);
formIntro.ShowModal;
iNew := formIntro.NewString;
if iNew = 0 then
begin
  Application.Terminate;
end;
end;

end.
