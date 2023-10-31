unit unRelatorioNotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformRelatorioNota = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLGroup1: TRLGroup;
    DataSource1: TDataSource;
    qryMovimentacao: TFDQuery;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand6: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRelatorioNota: TformRelatorioNota;

implementation

{$R *.dfm}

uses unConnection;

end.
