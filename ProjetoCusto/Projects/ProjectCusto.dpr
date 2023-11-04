program ProjectCusto;

uses
  Vcl.Forms,
  unPrincipal in 'unPrincipal.pas' {fmMainMenu},
  unConnection in 'unConnection.pas' {DataModule1: TDataModule},
  unCaixa in 'unCaixa.pas' {formMovimentos},
  unCadastroNota in 'unCadastroNota.pas' {formCadastroNotaP},
  unMenuMovimento in 'unMenuMovimento.pas' {formMenuRelatorioMovi},
  unCadastroClient in 'unCadastroClient.pas' {formCadastroCliente},
  unCadastroFornecedor in 'unCadastroFornecedor.pas' {formCadastroFornecedor},
  unPesquisaCliente in 'unPesquisaCliente.pas' {formPesquisaCliente},
  unRelatorioNotas in 'unRelatorioNotas.pas' {formRelatorioNota},
  unRelatorioCadastros in 'unRelatorioCadastros.pas' {formRelatorioCadastro},
  unMenuRelatorioCadastro in 'unMenuRelatorioCadastro.pas' {formMenuRelatorio},
  unRelatorioVendas in 'unRelatorioVendas.pas' {formRelatorioVendas},
  unRelatorioFornecedor in 'unRelatorioFornecedor.pas' {formRelatorioFornecedor},
  unRelatorioCompras in 'unRelatorioCompras.pas' {formRelatorioCompras},
  unRelatorioSemanal in 'unRelatorioSemanal.pas' {formRelatorioSemanal},
  unRelatorioNotaF in 'unRelatorioNotaF.pas' {formRelatorioNotas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMainMenu, fmMainMenu);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformMovimentos, formMovimentos);
  Application.CreateForm(TformCadastroNotaP, formCadastroNotaP);
  Application.CreateForm(TformMenuRelatorioMovi, formMenuRelatorioMovi);
  Application.CreateForm(TformCadastroCliente, formCadastroCliente);
  Application.CreateForm(TformCadastroFornecedor, formCadastroFornecedor);
  Application.CreateForm(TformPesquisaCliente, formPesquisaCliente);
  Application.CreateForm(TformRelatorioNota, formRelatorioNota);
  Application.CreateForm(TformRelatorioCadastro, formRelatorioCadastro);
  Application.CreateForm(TformMenuRelatorio, formMenuRelatorio);
  Application.CreateForm(TformRelatorioVendas, formRelatorioVendas);
  Application.CreateForm(TformRelatorioFornecedor, formRelatorioFornecedor);
  Application.CreateForm(TformRelatorioCompras, formRelatorioCompras);
  Application.CreateForm(TformRelatorioSemanal, formRelatorioSemanal);
  Application.CreateForm(TformRelatorioNotas, formRelatorioNotas);
  Application.Run;
end.
