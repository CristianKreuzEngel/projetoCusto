unit unCadastroClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, unConnection, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.Grids,
  Vcl.DBGrids;

type
  TformCadastroCliente = class(TForm)
    dsCadastroCliente: TDataSource;
    qryCadastroCliente: TFDQuery;
    pnBackground: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnNovo: TImage;
    btnSalvar: TImage;
    btnCancelar: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtNome: TDBEdit;
    edtDataNascimento: TDBEdit;
    edtCPF: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure qryCadastroClienteNewRecord(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroCliente: TformCadastroCliente;

implementation

{$R *.dfm}

procedure TformCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  qryCadastroCliente.Cancel;
end;

procedure TformCadastroCliente.btnNovoClick(Sender: TObject);
begin
  qryCadastroCliente.Insert;
end;

procedure TformCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  qryCadastroCliente.Post;
end;

procedure TformCadastroCliente.qryCadastroClienteNewRecord(DataSet: TDataSet);
begin
     qryCadastroCliente.FieldByName('ID_CLIENTE').Value := 0;
end;

end.
