unit unConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQueryNovoCodigo: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }
  public
    function GerarNovoCodigo(Generator: String): Integer;
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
  Lcaminho: String;
begin
  Lcaminho := ExtractFilePath(ParamStr(0))

end;

function TDataModule1.GerarNovoCodigo(Generator: String): Integer;
begin
  FDQueryNovoCodigo.Close;
  FDQueryNovoCodigo.SQL.Text := 'SELECT GEN_ID( ' + Generator +
    ', 1 ) AS CODIGO FROM RDB$DATABASE;';
  FDQueryNovoCodigo.Open;

  Result := FDQueryNovoCodigo.FieldByName('CODIGO').AsInteger;
  FDQueryNovoCodigo.Close;
end;

end.
