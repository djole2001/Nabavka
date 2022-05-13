unit formMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, formIntro_u, Vcl.StdCtrls;

type
  TformMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;
  iNew : integer;

implementation
Uses frmNalog_u, formDobavljaci_u;


{$R *.dfm}

procedure TformMain.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformMain.Button2Click(Sender: TObject);
begin
  frmNalog.Show;
  formMain.Hide;
end;

procedure TformMain.Button3Click(Sender: TObject);
begin
  formDobavljaci.Show;
  Self.Hide;
end;

procedure TformMain.FormShow(Sender: TObject);
begin


//formIntro := TformIntro.Create(self);
//formIntro.ShowModal;
//iNew := formIntro.NewString;
//if iNew = 0 then
//begin
//  Application.Terminate;
//end;
end;

end.
