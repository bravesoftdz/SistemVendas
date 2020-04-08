program SistemVendas;

uses
  Vcl.Forms,
  U_inicial in 'Fontes\U_inicial.pas' {F_inicial},
  U_clientes in 'Fontes\U_clientes.pas' {F_clientes},
  U_funcoes in 'Fontes\U_funcoes.pas',
  U_produtos in 'Fontes\U_produtos.pas' {F_produtos},
  u_DM in 'Fontes\u_DM.pas' {dm: TDataModule},
  U_pdv in 'Fontes\U_pdv.pas' {F_PDV},
  U_PesquisarProduto in 'Fontes\U_PesquisarProduto.pas' {F_pdv_produtos_listar},
  U_PesquisarCliente in 'Fontes\U_PesquisarCliente.pas' {F_pdv_clientes_listar},
  U_lancamentos in 'Fontes\U_lancamentos.pas' {F_lancamento},
  U_GerarParcelas in 'Fontes\U_GerarParcelas.pas' {F_gerarparcelas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_inicial, F_inicial);
  Application.Run;
end.
