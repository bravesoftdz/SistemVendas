unit U_GerarParcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_lancamentos, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, RxLookup;

type
  TF_gerarparcelas = class(TF_lancamento)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_gerarparcelas: TF_gerarparcelas;

implementation

{$R *.dfm}

end.
