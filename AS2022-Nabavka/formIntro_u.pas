unit formIntro_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TformIntro = class(TForm)
    Image1: TImage;
    edtUser: TEdit;
    edtPassword: TEdit;
    Login: TButton;
    Cancel: TButton;
    procedure LoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NewString : integer;
  end;

var
  formIntro: TformIntro;
  sUser, sPass, sPass1 : string;

implementation

{$R *.dfm}

procedure TformIntro.LoginClick(Sender: TObject);
begin
sPass := edtPassword.Text;
sPass1 := 'password';
if edtUser.Text = '' then
begin
  ShowMessage('Unesite ispravno korisnicko ime');
end;
if edtPassword.Text = '' then
begin
  ShowMessage('Unesite ispravni password');
end;
if sPass = sPass1 then
begin
  NewString := 1;
  close;
end
else
begin
  ShowMessage('Password koji ste uneli nije tacan');
end;
end;

end.
