unit U_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, RxLookup;

type
  TF_usuarios = class(TForm)
    page_geral: TPageControl;
    tb_cadastrar: TTabSheet;
    tb_controle: TTabSheet;
    Image1: TImage;
    Image2: TImage;
    TB_usuario: TFDTable;
    TB_usuariouser_id: TFDAutoIncField;
    TB_usuariouser_nome: TStringField;
    TB_usuariouser_nome_completo: TStringField;
    TB_usuariouser_senha: TStringField;
    Label1: TLabel;
    edtNome_usuario: TDBEdit;
    ds_usuario: TDataSource;
    Label2: TLabel;
    edtNomeComp_usuario: TDBEdit;
    Label3: TLabel;
    edtSenha_usuario: TDBEdit;
    dbgUsuarios: TDBGrid;
    btnNovo_usuario: TBitBtn;
    btnEditar_usuario: TBitBtn;
    btnGravar_usuario: TBitBtn;
    btnCancelar_usuario: TBitBtn;
    btnExcluir_usuario: TBitBtn;
    pn_CadUsuarios: TPanel;
    dbg_ListarUsuarios_ContAcesso: TDBGrid;
    dbg_ListarAcessos_ContAcesso: TDBGrid;
    SQL_listarUsuarios: TFDQuery;
    ds_listarUsuarios: TDataSource;
    SQL_listarUsuariosuser_id: TFDAutoIncField;
    SQL_listarUsuariosuser_nome: TStringField;
    SQL_listarUsuariosuser_nome_completo: TStringField;
    SQL_listarUsuariosuser_senha: TStringField;
    SQL_listarAcessosPermitidos: TFDQuery;
    ds_acessosPermitidos: TDataSource;
    SQL_listarAcessosPermitidosacesso_id: TFDAutoIncField;
    SQL_listarAcessosPermitidosacesso_user: TIntegerField;
    SQL_listarAcessosPermitidosacesso_tela: TIntegerField;
    SQL_listarAcessosPermitidosforms_id: TFDAutoIncField;
    SQL_listarAcessosPermitidosforms_nome: TStringField;
    SQL_listarAcessosPermitidosforms_desc: TStringField;
    SQL_listarTelas: TFDQuery;
    ds_listarTelas: TDataSource;
    SQL_listarTelasforms_id: TFDAutoIncField;
    SQL_listarTelasforms_nome: TStringField;
    SQL_listarTelasforms_desc: TStringField;
    lkcTelas: TRxDBLookupCombo;
    Label6: TLabel;
    btnLiberarTela: TBitBtn;
    SQL_gravarTela: TFDQuery;
    btnRemoverTela: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovo_usuarioClick(Sender: TObject);
    procedure btnEditar_usuarioClick(Sender: TObject);
    procedure btnGravar_usuarioClick(Sender: TObject);
    procedure btnCancelar_usuarioClick(Sender: TObject);
    procedure btnExcluir_usuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbg_ListarUsuarios_ContAcessoCellClick(Column: TColumn);
    procedure btnLiberarTelaClick(Sender: TObject);
    procedure btnRemoverTelaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_usuarios: TF_usuarios;

implementation

uses
  u_DM, U_funcoes;

{$R *.dfm}

procedure TF_usuarios.btnCancelar_usuarioClick(Sender: TObject);
begin
  TB_usuario.Cancel;
  btnCancelar_usuario.Enabled:= False;
  edtNome_usuario.Enabled:=false;
  edtNomeComp_usuario.Enabled:=false;
  edtSenha_usuario.Enabled:=false;
  btnCancelar_usuario.Enabled := False;
  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
  pn_CadUsuarios.Visible:=False;
  TB_usuario.Close;
  TB_usuario.open;
end;

procedure TF_usuarios.btnEditar_usuarioClick(Sender: TObject);
begin
  edtNome_usuario.Enabled:=true;
  edtNomeComp_usuario.Enabled:=true;
  edtSenha_usuario.Enabled:=true;
  TB_usuario.Edit;
  btnCancelar_usuario.Enabled:=True;
  pn_CadUsuarios.Visible:=true;
  edtNome_usuario.SetFocus;
end;

procedure TF_usuarios.btnExcluir_usuarioClick(Sender: TObject);
begin
  if MsgConfirm('Confirma a exclus�o do registro?') then
  begin
    if TB_usuariouser_id.Value = 1 then
    begin
      ShowMessage('N�o pode remover usu�rio Administrador!');
      Exit
    end
    else
    begin
    try
    TB_usuario.Delete;
    except
    ShowMessage('N�o pode remover usu�rios que tenham vendas realizadas!');
    end;
    end;

    edtNome_usuario.Clear;
    edtNomeComp_usuario.Clear;
    edtSenha_usuario.Clear;
    TB_usuario.Close;
    TB_usuario.open;
    SQL_listarUsuarios.Close;
    SQL_listarUsuarios.Open;
  end;
end;

procedure TF_usuarios.btnGravar_usuarioClick(Sender: TObject);
begin
  if (edtNome_usuario.Text = '') or( edtNomeComp_usuario.Text = '') or   (edtSenha_usuario.Text = '') then
  begin
  ShowMessage('Existem campos em branco!');
    Exit
  end;


  try
  TB_usuario.Post;
  except
  ShowMessage('Sem dados para Gravar! Clique em Novo ou Editar! ');
  end;

  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
  btnCancelar_usuario.Enabled:=false;
  pn_CadUsuarios.Visible:=False;
  TB_usuario.Close;
  TB_usuario.open;
  SQL_listarUsuarios.Close;
  SQL_listarUsuarios.Open;

end;

procedure TF_usuarios.btnLiberarTelaClick(Sender: TObject);
begin
  //liberando tela para usuario
  if lkcTelas.Text = '' then
  begin
    ShowMessage('Selecione uma Tela');
    Exit
  end;

   with SQL_gravarTela  do
   begin
   Close;
   SQL.Clear;
   SQL.Add('select * from acesso');
   SQL.Add('where acesso_user = :user and acesso_tela = :tela');
   ParamByName('user').Value := SQL_listarUsuariosuser_id.Value;
   ParamByName('tela').Value := SQL_listarTelasforms_id.Value;
   Open;

   if RecordCount > 0 then
   begin
     ShowMessage('Esta tela j� esta liberada para este usu�rio!');
     Exit
   end;
   end;


   with SQL_gravarTela  do
   begin
   Close;
   SQL.Clear;
   SQL.Add('insert into acesso (acesso_user, acesso_tela)');
   SQL.Add('values (:user, :tela)');
   ParamByName('user').Value := SQL_listarUsuariosuser_id.Value;
   ParamByName('tela').Value := SQL_listarTelasforms_id.Value;
   ExecSQL;
   end;

   //refres na listagem de permitidos
   SQL_listarAcessosPermitidos.Close;
   SQL_listarAcessosPermitidos.Open;

end;

procedure TF_usuarios.btnNovo_usuarioClick(Sender: TObject);
begin
  edtNome_usuario.Enabled:=true;
  edtNomeComp_usuario.Enabled:=true;
  edtSenha_usuario.Enabled:=true;
  TB_usuario.Insert;
  btnCancelar_usuario.Enabled:=True;
  pn_CadUsuarios.Visible:=true;
  edtNome_usuario.SetFocus;
end;


procedure TF_usuarios.btnRemoverTelaClick(Sender: TObject);
begin
//remover tela do usuario
    with SQL_gravarTela  do
   begin
   Close;
   SQL.Clear;
   SQL.Add('delete From acesso');
   SQL.Add('where acesso_user = :user and acesso_tela = :tela');
   ParamByName('user').Value := SQL_listarAcessosPermitidosacesso_user.Value;
   ParamByName('tela').Value := SQL_listarAcessosPermitidosforms_id.Value;
   ExecSQL;


   end;

   SQL_listarAcessosPermitidos.Close;
   SQL_listarAcessosPermitidos.Open;

end;

procedure TF_usuarios.dbg_ListarUsuarios_ContAcessoCellClick(Column: TColumn);
begin
  SQL_listarAcessosPermitidos.Close;
  SQL_listarAcessosPermitidos.SQL.Clear;
  SQL_listarAcessosPermitidos.SQL.Add('select * from view_testar_permissao');
  SQL_listarAcessosPermitidos.SQL.Add('where acesso_user = :user');
  SQL_listarAcessosPermitidos.ParamByName('user').Value := SQL_listarUsuariosuser_id.Value;
  SQL_listarAcessosPermitidos.Open;
end;

procedure TF_usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_usuarios := nil;
end;

procedure TF_usuarios.FormCreate(Sender: TObject);
begin
  SQL_listarUsuarios.Active:=True;
  SQL_listarTelas.Open;
end;

procedure TF_usuarios.FormShow(Sender: TObject);
begin
  page_geral.ActivePage := tb_cadastrar;
  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
  edtNome_usuario.Enabled:=false;
  edtNomeComp_usuario.Enabled:=false;
  edtSenha_usuario.Enabled:=false;
  btnCancelar_usuario.Enabled := False;
  pn_CadUsuarios.Visible:=False;
  TB_usuario.Active:=True;
end;

end.
