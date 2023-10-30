program ProjectCusto;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {fmMainMenu},
  unConnection in 'unConnection.pas' {DataModule1: TDataModule},
  unCaixa in 'unCaixa.pas' {formMovimentos},
  unCadastroNota in 'unCadastroNota.pas' {formCadastroNotaP},
  unTest in 'unTest.pas' {Form4},
  unCadastroClient in 'unCadastroClient.pas' {formCadastroCliente},
  unCadastroFornecedor in 'unCadastroFornecedor.pas' {formCadastroFornecedor},
  unPesquisaCliente in 'unPesquisaCliente.pas' {formPesquisaCliente},
  unRelatorioNotas in 'unRelatorioNotas.pas' {formRelatorioNota},
  unRelatorioCadastros in 'unRelatorioCadastros.pas' {formRelatorioCadastro},
  unMenuRelatorioCadastro in 'unMenuRelatorioCadastro.pas' {formMenuRelatorio},
  unRelatorioVendas in 'unRelatorioVendas.pas' {formRelatorioVendas},
  unRelatorioFornecedor in 'unRelatorioFornecedor.pas' {formRelatorioFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformMovimentos, formMovimentos);
  Application.CreateForm(TformCadastroNotaP, formCadastroNotaP);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TformCadastroCliente, formCadastroCliente);
  Application.CreateForm(TformCadastroFornecedor, formCadastroFornecedor);
  Application.CreateForm(TformPesquisaCliente, formPesquisaCliente);
  Application.CreateForm(TformRelatorioNota, formRelatorioNota);
  Application.CreateForm(TformRelatorioCadastro, formRelatorioCadastro);
  Application.CreateForm(TformMenuRelatorio, formMenuRelatorio);
  Application.CreateForm(TformRelatorioVendas, formRelatorioVendas);
  Application.CreateForm(TformRelatorioFornecedor, formRelatorioFornecedor);
  Application.Run;
end.
