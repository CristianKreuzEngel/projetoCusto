unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfmMainMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Nota1: TMenuItem;
    LanamentoDirio1: TMenuItem;
    Notaspromissrias1: TMenuItem;
    Fornecedor1: TMenuItem;
    Relatrios1: TMenuItem;
    Movimentoporperiodo1: TMenuItem;
    Relatrioclientes1: TMenuItem;
    RelatrioFornecedores1: TMenuItem;
    imgMovimentacao: TImage;
    lbMovimento: TLabel;
    imgCadastro: TImage;
    lbCadastro: TLabel;
    imgRelatorio: TImage;
    lbRelatorio: TLabel;
    pnOption: TPanel;
    cadastrarCliente: TImage;
    lbOption1: TLabel;
    imgCadastroFornecedor: TImage;
    lbOption2: TLabel;
    imgMovimento: TImage;
    imgMovimentoNota: TImage;
    RelatorioCliente: TImage;
    imgRelatorioNota: TImage;
    procedure Clientes1Click(Sender: TObject);
    procedure Notaspromissrias1Click(Sender: TObject);
    procedure cadastrarClienteClick(Sender: TObject);
    procedure imgMovimentacaoClick(Sender: TObject);
    procedure imgCadastroClick(Sender: TObject);
    procedure imgRelatorioClick(Sender: TObject);
    procedure imgCadastroFornecedorClick(Sender: TObject);
    procedure imgMovimentoClick(Sender: TObject);
    procedure imgMovimentoNotaClick(Sender: TObject);
    procedure imgRelatorioNotaClick(Sender: TObject);
    procedure RelatorioClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMainMenu: TfmMainMenu;

implementation

{$R *.dfm}

uses unCadastroClient, unCadastroNota, unCadastroFornecedor, unCaixa,
  unConnection, unPesquisaCliente, unRelatorioCadastros, unRelatorioNotas, unMenuRelatorioCadastro,
  unMenuMovimento;

procedure TfmMainMenu.Clientes1Click(Sender: TObject);
begin
    formCadastroCliente.showModal;
end;

procedure TfmMainMenu.imgCadastroClick(Sender: TObject);
begin
      //Mostarndo op��es
      pnOption.Visible := true;
      cadastrarCliente.Visible := true;
      lbOption1.Caption := 'CADASTRAR CLIENTE';
      imgCadastroFornecedor.Visible := true;
      lbOption2.Caption := 'CADASTRAR FORNECEDOR';

      //Desabilitando outras op��es
      imgMovimentoNota.Visible:= false;
      imgMovimento.Visible:= false;
      imgRelatorioNota.Visible := false;
      RelatorioCliente.Visible := false;
end;

procedure TfmMainMenu.imgCadastroFornecedorClick(Sender: TObject);
begin
  formCadastroFornecedor.ShowModal;
end;

procedure TfmMainMenu.imgMovimentacaoClick(Sender: TObject);
begin
    //Mostarndo op��es
    pnOption.Visible:= true;
    imgMovimentoNota.Visible:= true;
    lbOption1.Caption := 'MOVIMENTO CAIXA';
    imgMovimento.Visible:= true;
    lbOption2.Caption := 'MOVIMENTO NOTAS';

    //Desabilitando  outras op��es
    imgCadastroFornecedor.Visible:= false;
    cadastrarCliente.Visible := false;
    imgRelatorioNota.Visible := false;
    RelatorioCliente.Visible := false;
end;

procedure TfmMainMenu.imgMovimentoClick(Sender: TObject);
begin
  formMovimentos.ShowModal;
end;

procedure TfmMainMenu.imgMovimentoNotaClick(Sender: TObject);
begin
    formCadastroNotaP.showModal;
end;

procedure TfmMainMenu.imgRelatorioClick(Sender: TObject);
begin
    //Mostarando op��es
    pnOption.Visible:= true;
    RelatorioCliente.Visible := true;
    lbOption1.Caption := 'RELAT�RIO CADASTRO';
    imgRelatorioNota.Visible := true;
    lbOption2.Caption := 'RELAT�RIO NOTAS';

    //Desabilitando op��es
    imgMovimentoNota.Visible:= false;
    imgMovimento.Visible:= false;
    imgCadastroFornecedor.Visible:= false;
    cadastrarCliente.Visible := false;
end;

procedure TfmMainMenu.imgRelatorioNotaClick(Sender: TObject);
begin
  formMenuRelatorioMovi.ShowModal;
end;

procedure TfmMainMenu.cadastrarClienteClick(Sender: TObject);
begin
   formCadastroCliente.showModal;
end;

procedure TfmMainMenu.Notaspromissrias1Click(Sender: TObject);
begin
     formCadastroNotaP.showModal;
end;

procedure TfmMainMenu.RelatorioClienteClick(Sender: TObject);
begin
  formMenuRelatorio.ShowModal;
end;

end.
