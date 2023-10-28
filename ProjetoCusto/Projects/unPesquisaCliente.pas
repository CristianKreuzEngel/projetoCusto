unit unPesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TformPesquisaCliente = class(TForm)
    DBGrid1: TDBGrid;
    qryPesquisaCliente: TFDQuery;
    dsPesquisarClientes: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPesquisaCliente: TformPesquisaCliente;

implementation

{$R *.dfm}

uses unConnection;

procedure TformPesquisaCliente.DBGrid1DblClick(Sender: TObject);
begin
    close;
end;

procedure TformPesquisaCliente.FormShow(Sender: TObject);
begin
   qryPesquisaCliente.Close;
   qryPesquisaCliente.Open;
end;

end.
