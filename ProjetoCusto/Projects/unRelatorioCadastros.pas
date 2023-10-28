unit unRelatorioCadastros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformRelatorioCadastro = class(TForm)
    qryRelatorios: TFDQuery;
    dtRelatorio: TDataSource;
    RLReport1: TRLReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorioCadastro: TformRelatorioCadastro;

implementation

{$R *.dfm}

uses unConnection;

end.
