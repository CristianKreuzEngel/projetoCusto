unit unMenuMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, unConnection, Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls;

type
  TformMenuRelatorioMovi = class(TForm)
    btnGerar: TButton;
    cbTipoRel: TComboBox;
    dtHoje: TDateTimePicker;
    dtOntem: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbOrdenar2: TComboBox;
    procedure btnGerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTipoRelChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMenuRelatorioMovi: TformMenuRelatorioMovi;

implementation

{$R *.dfm}

uses unRelatorioCompras, unRelatorioVendas, unRelatorioSemanal,
  unRelatorioNotas, unCaixa;

procedure TformMenuRelatorioMovi.btnGerarClick(Sender: TObject);
begin

  if (cbTipoRel.ItemIndex = 0) then
  begin

    formRelatorioSemanal.qryMovimento.Close;
    formRelatorioSemanal.qryMovimento.SQL.Text := 'Select * from movimentacao' +
      ' where data_movimentacao >= :dtOntem' +
      ' and data_movimentacao <= :dataHoje' + ' order by data_movimentacao asc';
    formRelatorioSemanal.qryMovimento.ParamByName('dtOntem').Value :=
      dtOntem.DateTime;
    formRelatorioSemanal.qryMovimento.ParamByName('dataHoje').Value :=
      dtHoje.DateTime;
    formRelatorioSemanal.qryMovimento.Open;
    formRelatorioSemanal.RLReport1.Preview;
  end;
  if (cbTipoRel.ItemIndex = 1) then
  begin
    formRelatorioSemanal.qryMovimento.Close;
    formRelatorioSemanal.qryMovimento.SQL.Text := 'Select * from movimentacao' +
      ' where data_movimentacao >= :dtOntem' +
      ' and data_movimentacao <= :dataHoje' + ' order by data_movimentacao asc';
      formRelatorioSemanal.qryMovimento.ParamByName('dtOntem').Value :=
      dtOntem.DateTime;
    formRelatorioSemanal.qryMovimento.ParamByName('dataHoje').Value :=
      dtHoje.DateTime;
    formRelatorioSemanal.qryMovimento.Open;
    formRelatorioSemanal.RLReport1.Preview;
  end;

  if (cbTipoRel.ItemIndex = 2) then
  begin
    if (cbOrdenar2.ItemIndex = 0) then
    begin
      formRelatorioVendas.qryVendas.Close;
      formRelatorioVendas.qryVendas.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('E') +
        ' order by id asc';

      formRelatorioVendas.qryVendas.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioVendas.qryVendas.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioVendas.qryVendas.Open;
      formRelatorioVendas.RLReport1.Preview;
    end;
    if (cbOrdenar2.ItemIndex = 1) then
    begin
      formRelatorioVendas.qryVendas.Close;
      formRelatorioVendas.qryVendas.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('E') +
        ' order by id_nota asc';

      formRelatorioVendas.qryVendas.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioVendas.qryVendas.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioVendas.qryVendas.Open;
      formRelatorioVendas.RLReport1.Preview;
    end;
    if (cbOrdenar2.ItemIndex = 2) then
    begin
      formRelatorioVendas.qryVendas.Close;
      formRelatorioVendas.qryVendas.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('E') +
        ' order by data_movimentacao asc';

      formRelatorioVendas.qryVendas.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioVendas.qryVendas.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioVendas.qryVendas.Open;
      formRelatorioVendas.RLReport1.Preview;
    end;
  end;
  if (cbTipoRel.ItemIndex = 3) then
  begin
    if (cbOrdenar2.ItemIndex = 0) then
    begin
      formRelatorioCompras.qryCompras.Close;
      formRelatorioCompras.qryCompras.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('S') +
        ' order by id asc';

      formRelatorioCompras.qryCompras.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioCompras.qryCompras.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioCompras.qryCompras.Open;
      formRelatorioCompras.RLReport1.Preview;
    end;
    if (cbOrdenar2.ItemIndex = 1) then
    begin
      formRelatorioCompras.qryCompras.Close;
      formRelatorioCompras.qryCompras.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('S') +
        ' order by id_nota asc';

      formRelatorioCompras.qryCompras.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioCompras.qryCompras.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioCompras.qryCompras.Open;
      formRelatorioCompras.RLReport1.Preview;
    end;
    if (cbOrdenar2.ItemIndex = 2) then
    begin
      formRelatorioCompras.qryCompras.Close;
      formRelatorioCompras.qryCompras.SQL.Text := 'Select * from movimentacao' +
        ' where data_movimentacao >= :dtOntem' +
        ' and data_movimentacao <= :dataHoje' + ' and tipo= ' + QuotedStr('S') +
        ' order by data_movimentacao asc';

      formRelatorioCompras.qryCompras.ParamByName('dtOntem').Value :=
        dtOntem.DateTime;
      formRelatorioCompras.qryCompras.ParamByName('dataHoje').Value :=
        dtHoje.DateTime;
      formRelatorioCompras.qryCompras.Open;
      formRelatorioCompras.RLReport1.Preview;
    end;
  end;
end;

procedure TformMenuRelatorioMovi.cbTipoRelChange(Sender: TObject);
begin
  if (cbTipoRel.ItemIndex = 0) then
  begin
    dtOntem.DateTime := date - 1;
    dtHoje.DateTime := date;
    dtOntem.Visible := false;
    dtHoje.Visible := false;
    Label2.Visible := false;
    Label4.Visible := false;
  end
  else
  begin
    dtOntem.Visible := true;
    dtHoje.Visible := true;
    Label2.Visible := true;
    Label4.Visible := true;
  end;
end;

procedure TformMenuRelatorioMovi.FormShow(Sender: TObject);
begin
  dtOntem.DateTime := date - 1;
  dtHoje.DateTime := date;
end;

end.
