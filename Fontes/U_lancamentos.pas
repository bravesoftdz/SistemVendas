unit U_lancamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.Buttons,
  RxLookup;

type
  TF_lancamento = class(TForm)
    Panel1: TPanel;
    dbg_listarlancamentos: TDBGrid;
    SQL_ListarLancamentos: TFDQuery;
    ds_listarlancamentos: TDataSource;
    SQL_ListarLancamentosped_id: TIntegerField;
    SQL_ListarLancamentosped_codigo: TStringField;
    SQL_ListarLancamentosped_cliente: TIntegerField;
    SQL_ListarLancamentosped_usuario: TIntegerField;
    SQL_ListarLancamentosped_forma_pag: TIntegerField;
    SQL_ListarLancamentosped_fechado: TStringField;
    SQL_ListarLancamentosped_faturado: TStringField;
    SQL_ListarLancamentositen_id: TIntegerField;
    SQL_ListarLancamentositen_produto: TIntegerField;
    SQL_ListarLancamentositen_qtd: TIntegerField;
    SQL_ListarLancamentositen_pedido: TStringField;
    SQL_ListarLancamentositen_preco: TFloatField;
    SQL_ListarLancamentositen_preco_prazo: TFloatField;
    SQL_ListarLancamentospro_id: TIntegerField;
    SQL_ListarLancamentospro_nome: TStringField;
    SQL_ListarLancamentospro_barra: TStringField;
    SQL_ListarLancamentospro_ref: TStringField;
    SQL_ListarLancamentospro_custo: TFloatField;
    SQL_ListarLancamentospro_preco: TFloatField;
    SQL_ListarLancamentospro_preco_prazo: TFloatField;
    SQL_ListarLancamentospro_estoque: TIntegerField;
    SQL_ListarLancamentoscli_id: TIntegerField;
    SQL_ListarLancamentoscli_nome: TStringField;
    SQL_ListarLancamentoscli_endereco: TStringField;
    SQL_ListarLancamentoscli_numero: TStringField;
    SQL_ListarLancamentoscli_bairro: TStringField;
    SQL_ListarLancamentoscli_cidade: TStringField;
    SQL_ListarLancamentoscli_fone: TStringField;
    SQL_ListarLancamentoscli_celular: TStringField;
    SQL_ListarLancamentoscli_rg: TStringField;
    SQL_ListarLancamentoscli_cnpj_cpf: TStringField;
    SQL_ListarLancamentoscli_profissao: TStringField;
    SQL_ListarLancamentoscli_data_nasc: TDateField;
    SQL_ListarLancamentosforma_id: TIntegerField;
    SQL_ListarLancamentosforma_nome: TStringField;
    SQL_ListarLancamentosuser_id: TIntegerField;
    SQL_ListarLancamentosuser_nome: TStringField;
    SQL_ListarLancamentosuser_nome_completo: TStringField;
    SQL_ListarLancamentosuser_senha: TStringField;
    edt_valorprazo_lancamento: TCurrencyEdit;
    edt_valoravista_lancamento: TCurrencyEdit;
    lbl_totalvistalanc: TLabel;
    lbl_totalprazolanc: TLabel;
    SQL_ListarLancamentosped_subtotal: TFloatField;
    SQL_ListarLancamentosped_subtotalprazo: TFloatField;
    SQL_lanc: TFDQuery;
    btn_imprimerecibo: TSpeedButton;
    SQL_listarlancamento_relat: TFDQuery;
    ds_listarlancamento_relat: TDataSource;
    SQL_listarlancamento_relatped_id: TFDAutoIncField;
    SQL_listarlancamento_relatped_codigo: TStringField;
    SQL_listarlancamento_relatped_cliente: TIntegerField;
    SQL_listarlancamento_relatped_usuario: TIntegerField;
    SQL_listarlancamento_relatped_forma_pag: TIntegerField;
    SQL_listarlancamento_relatped_fechado: TStringField;
    SQL_listarlancamento_relatped_faturado: TStringField;
    SQL_listarlancamento_relatped_subtotal: TFloatField;
    SQL_listarlancamento_relatped_subtotalprazo: TFloatField;
    SQL_listarlancamento_relatiten_id: TIntegerField;
    SQL_listarlancamento_relatiten_produto: TIntegerField;
    SQL_listarlancamento_relatiten_qtd: TIntegerField;
    SQL_listarlancamento_relatiten_pedido: TStringField;
    SQL_listarlancamento_relatiten_preco: TFloatField;
    SQL_listarlancamento_relatiten_preco_prazo: TFloatField;
    SQL_listarlancamento_relatpro_id: TIntegerField;
    SQL_listarlancamento_relatpro_nome: TStringField;
    SQL_listarlancamento_relatpro_barra: TStringField;
    SQL_listarlancamento_relatpro_ref: TStringField;
    SQL_listarlancamento_relatpro_custo: TFloatField;
    SQL_listarlancamento_relatpro_preco: TFloatField;
    SQL_listarlancamento_relatpro_preco_prazo: TFloatField;
    SQL_listarlancamento_relatpro_estoque: TIntegerField;
    SQL_listarlancamento_relatcli_id: TIntegerField;
    SQL_listarlancamento_relatcli_nome: TStringField;
    SQL_listarlancamento_relatcli_endereco: TStringField;
    SQL_listarlancamento_relatcli_numero: TStringField;
    SQL_listarlancamento_relatcli_bairro: TStringField;
    SQL_listarlancamento_relatcli_cidade: TStringField;
    SQL_listarlancamento_relatcli_fone: TStringField;
    SQL_listarlancamento_relatcli_celular: TStringField;
    SQL_listarlancamento_relatcli_rg: TStringField;
    SQL_listarlancamento_relatcli_cnpj_cpf: TStringField;
    SQL_listarlancamento_relatcli_profissao: TStringField;
    SQL_listarlancamento_relatcli_data_nasc: TDateField;
    SQL_listarlancamento_relatforma_id: TIntegerField;
    SQL_listarlancamento_relatforma_nome: TStringField;
    SQL_listarlancamento_relatuser_id: TIntegerField;
    SQL_listarlancamento_relatuser_nome: TStringField;
    SQL_listarlancamento_relatuser_nome_completo: TStringField;
    SQL_listarlancamento_relatuser_senha: TStringField;
    btn_listaritensdopedido_lanc: TSpeedButton;
    dbg_listarItensPedido: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Panel5: TPanel;
    edt_buscarClientelanc: TEdit;
    edt_buscarCodVendalanc: TEdit;
    lbl_buscarclientelanc: TLabel;
    lbl_buscarcodvendalanc: TLabel;
    btn_mostrarTodoslanc: TBitBtn;
    lk_formapaglanc: TRxDBLookupCombo;
    lbl_formapaglanc: TLabel;
    btn_fecharpedido: TBitBtn;
    TB_faturarpedido: TFDTable;
    TB_faturarpedidoped_id: TFDAutoIncField;
    TB_faturarpedidoped_codigo: TStringField;
    TB_faturarpedidoped_cliente: TIntegerField;
    TB_faturarpedidoped_usuario: TIntegerField;
    TB_faturarpedidoped_forma_pag: TIntegerField;
    TB_faturarpedidoped_fechado: TStringField;
    TB_faturarpedidoped_faturado: TStringField;
    TB_faturarpedidoped_subtotal: TFloatField;
    TB_faturarpedidoped_subtotalprazo: TFloatField;
    SQL_ListarLancamentosped_date: TDateTimeField;
    TB_faturarpedidoped_date: TDateTimeField;
    SQL_listarlancamento_relatped_date: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure procedureMostrarPedido;
    procedure dbg_listarlancamentosCellClick(Column: TColumn);
    procedure btn_imprimereciboClick(Sender: TObject);
    procedure btn_listaritensdopedido_lancClick(Sender: TObject);
    procedure edt_buscarClientelancKeyPress(Sender: TObject; var Key: Char);
    procedure edt_buscarCodVendalancKeyPress(Sender: TObject; var Key: Char);
    procedure btn_mostrarTodoslancClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_fecharpedidoClick(Sender: TObject);

  private
    { Private declarations }

  var total_vista, total_prazo : Double;
  var codigo_venda : string;

  public
    { Public declarations }
  end;

var
  F_lancamento: TF_lancamento;

implementation

uses
  u_DM, U_pdv;

{$R *.dfm}


procedure TF_lancamento.procedureMostrarPedido;
begin
  //mostrar pedido selecionado
  {total_vista := 0;
  total_prazo := 0;}
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  with SQL_lanc do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   SQL.Add('group by ped_codigo');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;

   {SQL_listarancamentos.First;

   while not SQL_listarancamentos.Eof do
   begin
     total_vista := total_vista + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotal.Value;
     total_prazo := total_prazo + F_PDV.SQL_listar_pedidos_dbglan�amentosubTotalPrazo.Value;
     SQL_listarancamentos.Next;
   end; }

   edt_valoravista_lancamento.Value := SQL_ListarLancamentosped_subtotal.Value;
   edt_valorprazo_lancamento.Value := SQL_ListarLancamentosped_subtotalprazo.Value;

  {  with SQL_listarancamentos do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos ');
   Open;


   end;}
   btn_listaritensdopedido_lanc.Click;
end;

procedure TF_lancamento.btn_imprimereciboClick(Sender: TObject);
begin
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar o pedido em lan�amentos para filtrar atual
  with SQL_listarlancamento_relat do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;
  dm.Report_reciboPedidoLancamento.PrintReport;
end;

procedure TF_lancamento.btn_fecharpedidoClick(Sender: TObject);
begin
  if lk_formapaglanc.Text = '' then
    begin
      ShowMessage('Escolha a forma de Pagamento');
      lk_formapaglanc.SetFocus;
      Exit
    end;

  if SQL_ListarLancamentosped_faturado.Value = 'SIM' then
    begin
      ShowMessage('Pedido j� esta Faturado.');
    end;


  TB_faturarpedido.Active := True;
  TB_faturarpedido.Locate('ped_codigo',SQL_ListarLancamentosped_codigo.AsString);
  TB_faturarpedido.Edit;
  TB_faturarpedidoped_forma_pag.Value := dm.SQL_formapagforma_id.Value;
  TB_faturarpedidoped_faturado.Value := 'SIM';
  TB_faturarpedido.Post;

  ShowMessage('Pedido faturado com Sucesso!');

  btn_imprimerecibo.Click;

  SQL_ListarLancamentos.Close;
  SQL_ListarLancamentos.Open;


end;

procedure TF_lancamento.btn_listaritensdopedido_lancClick(Sender: TObject);
begin
  
  codigo_venda := SQL_ListarLancamentosped_codigo.AsString;

  //executo a sql listar lan�amentos para filtrar atual
  with SQL_listarlancamento_relat do
  begin
   Close;
   SQL.Clear;
   SQL.Add('select * from view_listar_pedidos '); //
   SQL.Add('where  ped_codigo = :codigo ');
   ParamByName('codigo').Value := codigo_venda;
   Open;
   end;


end;

procedure TF_lancamento.btn_mostrarTodoslancClick(Sender: TObject);
begin
  SQL_ListarLancamentos.Close;
  SQL_ListarLancamentos.SQL.Clear;
  SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
  SQL_ListarLancamentos.SQL.Add('where ped_faturado = "NAO"');
  SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
  SQL_ListarLancamentos.Open;
  if SQL_ListarLancamentos.RecordCount = 0 then
    begin
      ShowMessage('N�o existem pedidos para serem faturados!');
    end;
end;

procedure TF_lancamento.dbg_listarlancamentosCellClick(Column: TColumn);
begin
 procedureMostrarPedido;

end;

procedure TF_lancamento.edt_buscarClientelancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where cli_nome like :nome');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "NAO"');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('nome').Value := edt_buscarClientelanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('Cliente n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "NAO"');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_lancamento.edt_buscarCodVendalancKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
     SQL_ListarLancamentos.Close;
     SQL_ListarLancamentos.SQL.Clear;
     SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
     SQL_ListarLancamentos.SQL.Add ('where ped_codigo like :cod');
     SQL_ListarLancamentos.SQL.Add ('and ped_faturado = "NAO"');
     SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
     SQL_ListarLancamentos.ParamByName('cod').Value := edt_buscarCodVendalanc.Text + '%';
     SQL_ListarLancamentos.Open;
     if SQL_ListarLancamentos.RecordCount = 0 then
       begin
         ShowMessage('C�digo n�o Encontrado');
         SQL_ListarLancamentos.Close;
         SQL_ListarLancamentos.SQL.Clear;
         SQL_ListarLancamentos.SQL.Add ('select * from view_listar_pedidos');
         SQL_ListarLancamentos.SQL.Add ('where ped_faturado = "NAO"');
         SQL_ListarLancamentos.SQL.Add ('group by ped_codigo');
         SQL_ListarLancamentos.Open;

       end;
    end;
end;

procedure TF_lancamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_lancamento := nil;
end;

procedure TF_lancamento.FormCreate(Sender: TObject);
begin
  dm.SQL_formapag.Active:=True;
end;

end.
