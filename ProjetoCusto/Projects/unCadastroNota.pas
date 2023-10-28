unit unCadastroNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, unConnection, FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, unPesquisaCliente, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TformCadastroNotaP = class(TForm)
    pnBackground: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNmrNota: TDBEdit;
    edtCodcliente: TDBEdit;
    edtName: TDBEdit;
    edtCpf: TDBEdit;
    dtCadastroNota: TDataSource;
    qryCadastroNota: TFDQuery;
    btnPesquisar: TButton;
    btnNovo: TImage;
    Label6: TLabel;
    btnCancelar: TImage;
    btnSalvar: TImage;
    Label8: TLabel;
    Label7: TLabel;
    edtValorNota: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    qryInsertMovimento: TFDQuery;
    Label11: TLabel;
    edtDesc: TDBEdit;
    edtTipo: TDBComboBox;
    Label12: TLabel;
    dtMovimentacao: TDateTimePicker;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qryCadastroNotaNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadastroNotaP: TformCadastroNotaP;

implementation

{$R *.dfm}

procedure TformCadastroNotaP.btnCancelarClick(Sender: TObject);
begin
  edtNmrNota.Enabled := false;
  edtValorNota.Enabled := false;
  dtMovimentacao.Enabled := false;
  edtTipo.Enabled := false;
  edtDesc.Enabled := false;
  btnPesquisar.Visible := false;
  btnSalvar.Enabled := false;
  btnCancelar.Enabled := false;
  qryCadastroNota.Cancel;
end;

procedure TformCadastroNotaP.btnNovoClick(Sender: TObject);
begin
  edtNmrNota.Enabled := true;
  edtValorNota.Enabled := true;
  dtMovimentacao.Enabled := true;
  edtTipo.Enabled := true;
  edtDesc.Enabled := true;
  btnPesquisar.Visible := true;
  btnSalvar.Enabled := true;
  btnCancelar.Enabled := true;
  qryCadastroNota.Insert;
end;

procedure TformCadastroNotaP.btnPesquisarClick(Sender: TObject);
begin
  formPesquisaCliente.ShowModal;
  edtName.Text := formPesquisaCliente.qryPesquisaCliente.FieldByName
    ('NOME_CLIENTE').Value;
  edtCodcliente.Text := formPesquisaCliente.qryPesquisaCliente.FieldByName
    ('ID_CLIENTE').Value;
  edtCpf.Text := formPesquisaCliente.qryPesquisaCliente.FieldByName
    ('CPF_CLIENTE').Value;

end;

procedure TformCadastroNotaP.btnSalvarClick(Sender: TObject);
begin


    qryCadastroNota.FieldByName('VENCIMENTO_NF').AsDateTime :=
    dtMovimentacao.DateTime;
    qryCadastroNota.Post;
  edtNmrNota.Enabled := false;
  edtName.Enabled := false;
  btnPesquisar.Visible := false;

  qryInsertMovimento.Open;
  qryInsertMovimento.Insert;
  qryInsertMovimento.FieldByName('ID').Value := 0;
  qryInsertMovimento.FieldByName('data_movimentacao').Value := date;
  qryInsertMovimento.FieldByName('desc').Value :=
    qryCadastroNota.FieldByName('DESCRICAO').Value;
  qryInsertMovimento.FieldByName('TIPO').Value :=
    qryCadastroNota.FieldByName('TIPO_NF').Value;
  qryInsertMovimento.FieldByName('VALOR').Value :=
    qryCadastroNota.FieldByName('VALOR_NF').Value;
  qryInsertMovimento.FieldByName('ID_NOTA').Value := qryCadastroNota.FieldByName('ID_NOTA').Value;
  qryInsertMovimento.Post;
end;

procedure TformCadastroNotaP.FormShow(Sender: TObject);
begin
    dtMovimentacao.DateTime := date;
end;

procedure TformCadastroNotaP.qryCadastroNotaNewRecord(DataSet: TDataSet);
begin
      qryCadastroNota.FieldByName('ID_nota').Value := DataModule1.GerarNovoCodigo('GN_NOTA');
      qryCadastroNota.FieldByName('DATA_EMISSAO').Value := date;
end;

end.
