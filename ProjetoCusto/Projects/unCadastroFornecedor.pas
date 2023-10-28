unit unCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TformCadastroFornecedor = class(TForm)
    dbCodigoFornecedor: TDBEdit;
    dbCNPJ: TDBEdit;
    dbRazaoSocial: TDBEdit;
    dbNomeFantasia: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qryFornecedor: TFDQuery;
    dsFornecedor: TDataSource;
    DBGrid1: TDBGrid;
    btnNovo: TImage;
    Label6: TLabel;
    btnSalvar: TImage;
    Label7: TLabel;
    btnCancelar: TImage;
    Label8: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryFornecedorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroFornecedor: TformCadastroFornecedor;

implementation

{$R *.dfm}

uses unConnection;

procedure TformCadastroFornecedor.btnCancelarClick(Sender: TObject);
begin
  qryFornecedor.Cancel;
end;

procedure TformCadastroFornecedor.btnNovoClick(Sender: TObject);
begin
    qryFornecedor.Insert;
    dbCNPJ.Enabled := true;
    dbRazaoSocial.Enabled := true;
    dbNomeFantasia.Enabled := true;
end;

procedure TformCadastroFornecedor.btnSalvarClick(Sender: TObject);
begin
  qryFornecedor.Post;
end;

procedure TformCadastroFornecedor.qryFornecedorNewRecord(DataSet: TDataSet);
begin
qryFornecedor.FieldByName('ID_FORNECEDOR').Value := 0;
end;

end.
