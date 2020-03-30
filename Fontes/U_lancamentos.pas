unit U_lancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TF_lancamento = class(TForm)
    Panel1: TPanel;
    dbg_listarlancamentos: TDBGrid;
    SQL_listarancamentos: TFDQuery;
    ds_listarlancamentos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_lancamento: TF_lancamento;

implementation

uses
  u_DM;

{$R *.dfm}

procedure TF_lancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_lancamento := nil;
end;

end.
