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
  TForm4 = class(TForm)
    btnGerar: TButton;
    cbTipoRel: TComboBox;
    cbOrdenar: TComboBox;
    dtHoje: TDateTimePicker;
    dtOntem: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses unRelatorioCompras, unRelatorioVendas;

procedure TForm4.btnGerarClick(Sender: TObject);
begin
  if (cbTipoRel.ItemIndex = 0) then
  begin
    // formRelatorioVendas.queryVendas.Close;
    // formRelatorioVendas.queryVendas.SQL.Text := 'Select * from movimentacao' +
    // ' where data_movimentacao >= :dtOntem' +
    // ' and data_movimentacao <= :dataHoje' +
    // ' order by data_movimentacao asc';
    //
    // formRelatorioVendas.queryVendas.ParamByName('dtOntem').Value :=
    // dtOntem.DateTime;
    // formRelatorioVendas.queryVendas.ParamByName('dataHoje').Value :=
    // dtHoje.DateTime;
    // formRelatorioVendas.queryVendas.Open;
  end;
  if (cbTipoRel.ItemIndex = 1) then
  begin
    // formRelatorioVendas.queryVendas.Close;
    // formRelatorioVendas.queryVendas.SQL.Text := 'Select * from movimentacao' +
    // ' where data_movimentacao >= :dtOntem' +
    // ' and data_movimentacao <= :dataHoje' +
    // ' order by data_movimentacao asc';
    //
    // formRelatorioVendas.queryVendas.ParamByName('dtOntem').Value :=
    // dtOntem.DateTime;
    // formRelatorioVendas.queryVendas.ParamByName('dataHoje').Value :=
    // dtHoje.DateTime;
    // formRelatorioVendas.queryVendas.Open;
  end;

  if (cbTipoRel.ItemIndex = 2) then
  begin
    // formRelatorioVendas.queryVendas.Close;
    // formRelatorioVendas.queryVendas.SQL.Text := 'Select * from movimentacao' +
    // ' where data_movimentacao >= :dtOntem' +
    // ' and data_movimentacao <= :dataHoje' +
    // ' order by data_movimentacao asc';
    //
    // formRelatorioVendas.queryVendas.ParamByName('dtOntem').Value :=
    // dtOntem.DateTime;
    // formRelatorioVendas.queryVendas.ParamByName('dataHoje').Value :=
    // dtHoje.DateTime;
    // formRelatorioVendas.queryVendas.Open;
    formRelatorioVendas.RLReport1.Preview;
  end;
  if (cbTipoRel.ItemIndex = 3) then
  begin
    // formRelatorioVendas.queryVendas.Close;
    // formRelatorioVendas.queryVendas.SQL.Text := 'Select * from movimentacao' +
    // ' where data_movimentacao >= :dtOntem' +
    // ' and data_movimentacao <= :dataHoje' +
    // ' order by data_movimentacao asc';
    //
    // formRelatorioVendas.queryVendas.ParamByName('dtOntem').Value :=
    // dtOntem.DateTime;
    // formRelatorioVendas.queryVendas.ParamByName('dataHoje').Value :=
    // dtHoje.DateTime;
    // formRelatorioVendas.queryVendas.Open;
    formRelatorioCompras.RLReport1.Preview;
  end;
end;

end.
