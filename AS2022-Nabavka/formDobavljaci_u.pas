unit formDobavljaci_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, formMain_u;

type
  TformDobavljaci = class(TForm)
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
  formDobavljaci: TformDobavljaci;

implementation

{$R *.dfm}

procedure TformDobavljaci.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformDobavljaci.Button2Click(Sender: TObject);
begin
  formMain.Show;
  Self.Hide;

end;

end.
