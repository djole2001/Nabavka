unit formDobavljaci_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, formMain_u,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.Bind.Controls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Bind.Navigator;

type
  TformDobavljaci = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    StringGrid1: TStringGrid;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Button3: TButton;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    BindNavigator1: TBindNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

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

procedure TformDobavljaci.Button3Click(Sender: TObject);
var
  imeDob :  String;
  adresaDob : String;

begin
imeDob := Edit1.Text;
adresaDob := Edit2.Text;

with FDQuery2 do
  begin

      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO DOBAVLJAC(ImeFirme,Adresa) VALUES ("'+ imeDob +'","'+ adresaDob +'")' ;
      ExecSQL;
      StringGrid1.Refresh;

  end;



end;




end.
