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
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
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
