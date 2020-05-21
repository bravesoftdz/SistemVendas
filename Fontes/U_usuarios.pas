unit U_usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons;

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
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SQL_listarUsuarios: TFDQuery;
    ds_listarUsuarios: TDataSource;
    SQL_listarUsuariosuser_id: TFDAutoIncField;
    SQL_listarUsuariosuser_nome: TStringField;
    SQL_listarUsuariosuser_nome_completo: TStringField;
    SQL_listarUsuariosuser_senha: TStringField;
    btnLiberarTudo: TBitBtn;
    btnBloquearTudo: TBitBtn;
    SQL_listarAcessosPermitidos: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovo_usuarioClick(Sender: TObject);
    procedure btnEditar_usuarioClick(Sender: TObject);
    procedure btnGravar_usuarioClick(Sender: TObject);
    procedure btnCancelar_usuarioClick(Sender: TObject);
    procedure btnExcluir_usuarioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_usuarios: TF_usuarios;

implementation

uses
  u_DM;

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
end;

procedure TF_usuarios.btnEditar_usuarioClick(Sender: TObject);
begin
  edtNome_usuario.Enabled:=true;
  edtNomeComp_usuario.Enabled:=true;
  edtSenha_usuario.Enabled:=true;
  TB_usuario.Edit;
  btnCancelar_usuario.Enabled:=True;
  pn_CadUsuarios.Visible:=true;
end;

procedure TF_usuarios.btnExcluir_usuarioClick(Sender: TObject);
begin
  try
  TB_usuario.Delete;
  except
  ShowMessage('N�o pode apagar usu�rios que tenham vendas realizadas!');
  end;
  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
end;

procedure TF_usuarios.btnGravar_usuarioClick(Sender: TObject);
begin
  TB_usuario.Post;
  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
  btnCancelar_usuario.Enabled:=false;
  pn_CadUsuarios.Visible:=False;
end;

procedure TF_usuarios.btnNovo_usuarioClick(Sender: TObject);
begin
  edtNome_usuario.Enabled:=true;
  edtNomeComp_usuario.Enabled:=true;
  edtSenha_usuario.Enabled:=true;
  TB_usuario.Insert;
  btnCancelar_usuario.Enabled:=True;
  pn_CadUsuarios.Visible:=true;
end;


procedure TF_usuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  F_usuarios := nil;
end;

procedure TF_usuarios.FormCreate(Sender: TObject);
begin
  SQL_listarUsuarios.Active:=True;
end;

procedure TF_usuarios.FormShow(Sender: TObject);
begin
  edtNome_usuario.Clear;
  edtNomeComp_usuario.Clear;
  edtSenha_usuario.Clear;
  edtNome_usuario.Enabled:=false;
  edtNomeComp_usuario.Enabled:=false;
  edtSenha_usuario.Enabled:=false;
  btnCancelar_usuario.Enabled := False;
  pn_CadUsuarios.Visible:=False;
end;

end.
