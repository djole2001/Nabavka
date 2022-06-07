unit frmNalog_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, formMain_u, Vcl.StdCtrls, Vcl.Grids, Unit1,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.Bind.Controls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Bind.Navigator;

type
  TfrmNalog = class(TForm)
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button3: TButton;
    BindNavigator1: TBindNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

procedure TfrmNalog.Button3Click(Sender: TObject);

var NazivArtikla, Cena, Kolicina: String;
begin

NazivArtikla := Edit1.Text;
Cena := Edit2.Text;
Kolicina := Edit3.Text;

with DataModule1.FDQuery2 do
  begin

      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO ARTIKLI_ZA_NABAVKU(NazivArtikla, Cena, Kolicina) VALUES ("'+ NazivArtikla +'","'+ Cena +'", "'+ Kolicina + '")' ;
      ExecSQL;
      StringGrid1.Refresh;

  end;


  end;


end.
