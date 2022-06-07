unit formIntro_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Unit1;

type
  TformIntro = class(TForm)
    Image1: TImage;
    edtUser: TEdit;
    edtPassword: TEdit;
    Login: TButton;
    Cancel: TButton;
    procedure LoginClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
  Uses formMain_u;

{$R *.dfm}

procedure TformIntro.CancelClick(Sender: TObject);
begin
Application.Terminate;
end;
procedure TformIntro.FormCreate(Sender: TObject);
begin
with  DataModule1.FDQuery1 do
  begin
    Close;
    sql.Clear;
    sql.Text := 'select username, password from KORISNIK';
    open;
  end;
end;

procedure TformIntro.LoginClick(Sender: TObject);
begin
if (edtUser.Text='') and (edtPassword.Text='') then
  MessageDlg('Invalid username or password!',mtError, [mbOK], 0);

    var UsernameTemp :string;
    var PasswordTemp :string;
    var check := False;

  DataModule1.FDQuery1.First;
  while not DataModule1.FDQuery1.Eof do
   begin
     UsernameTemp :=DataModule1.FDQuery1['username'];
     PasswordTemp :=DataModule1.FDQuery1['password'];

     if edtUser.Text = UsernameTemp then
     begin
         if edtPassword.Text = PasswordTemp then
       begin
         formMain.Show;
         Self.Hide;
         check := True;
       end;
     end;

       DataModule1.FDQuery1.Next;
   end;

  if not Check then
  ShowMessage('Pogrešno korisničko ime ili šifra.');

end;

end.
