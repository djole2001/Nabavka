unit frmNalog_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, formMain_u, Vcl.StdCtrls;

type
  TfrmNalog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNalog: TfrmNalog;

implementation

{$R *.dfm}

procedure TfrmNalog.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmNalog.Button2Click(Sender: TObject);
begin
  formMain.Show;
  frmNalog.Hide;
end;

end.
