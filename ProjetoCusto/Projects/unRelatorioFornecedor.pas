unit unRelatorioFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformRelatorioFornecedor = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    qryFornecedores: TFDQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorioFornecedor: TformRelatorioFornecedor;

implementation

{$R *.dfm}

uses unConnection;

end.
