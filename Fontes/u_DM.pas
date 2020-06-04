unit u_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, Data.DB, FireDAC.Comp.Client, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter,
  ppProd, ppReport,Vcl.Dialogs, System.IniFiles, vcl.forms;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    Mysql_link: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    SQL_produtos: TFDQuery;
    SQL_produtospro_id: TFDAutoIncField;
    SQL_produtospro_nome: TStringField;
    SQL_produtospro_barra: TStringField;
    SQL_produtospro_ref: TStringField;
    SQL_produtospro_custo: TFloatField;
    SQL_produtospro_preco: TFloatField;
    SQL_produtospro_preco_prazo: TFloatField;
    SQL_produtospro_estoque: TIntegerField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtospro_id: TFDAutoIncField;
    TB_produtospro_nome: TStringField;
    TB_produtospro_barra: TStringField;
    TB_produtospro_ref: TStringField;
    TB_produtospro_custo: TFloatField;
    TB_produtospro_preco: TFloatField;
    TB_produtospro_preco_prazo: TFloatField;
    TB_produtospro_estoque: TIntegerField;
    SQL_clientes: TFDQuery;
    TB_clientes: TFDTable;
    ds_clientes: TDataSource;
    TB_clientescli_id: TFDAutoIncField;
    TB_clientescli_nome: TStringField;
    TB_clientescli_endereco: TStringField;
    TB_clientescli_numero: TStringField;
    TB_clientescli_bairro: TStringField;
    TB_clientescli_cidade: TStringField;
    TB_clientescli_fone: TStringField;
    TB_clientescli_celular: TStringField;
    TB_clientescli_rg: TStringField;
    TB_clientescli_cnpj_cpf: TStringField;
    TB_clientescli_profissao: TStringField;
    TB_clientescli_data_nasc: TDateField;
    SQL_clientescli_id: TFDAutoIncField;
    SQL_clientescli_nome: TStringField;
    SQL_clientescli_endereco: TStringField;
    SQL_clientescli_numero: TStringField;
    SQL_clientescli_bairro: TStringField;
    SQL_clientescli_cidade: TStringField;
    SQL_clientescli_fone: TStringField;
    SQL_clientescli_celular: TStringField;
    SQL_clientescli_rg: TStringField;
    SQL_clientescli_cnpj_cpf: TStringField;
    SQL_clientescli_profissao: TStringField;
    SQL_clientescli_data_nasc: TDateField;
    ppDB_Recibo_Pedido: TppDBPipeline;
    Report_reciboPedido: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    SQL_formapag: TFDQuery;
    ds_formapag: TDataSource;
    SQL_formapagforma_id: TFDAutoIncField;
    SQL_formapagforma_nome: TStringField;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    ppDBText8: TppDBText;
    ppLabel13: TppLabel;
    ppDBText9: TppDBText;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDB_Recibo_Lancamento: TppDBPipeline;
    Report_reciboPedidoLancamento1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText15: TppDBText;
    ppLabel25: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel28: TppLabel;
    ppDBText26: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLabel29: TppLabel;
    ppDBText27: TppDBText;
    ppLabel30: TppLabel;
    ppDBText28: TppDBText;
    ppLabel31: TppLabel;
    ppDBText29: TppDBText;
    ppLabel32: TppLabel;
    ppDBText30: TppDBText;
    ppDBText14: TppDBText;
    Report_reciboPedidoLancamento: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel41: TppLabel;
    ppDBText20: TppDBText;
    ppLabel42: TppLabel;
    ppDBText21: TppDBText;
    ppLabel43: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine12: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDBText37: TppDBText;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText40: TppDBText;
    ppDB_relatorioVendas: TppDBPipeline;
    report_relatorioVendas: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel39: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLine15: TppLine;
    ppFooterBand4: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel40: TppLabel;
    ppDBText41: TppDBText;
    ppLabel50: TppLabel;
    ppDBText42: TppDBText;
    ppLabel51: TppLabel;
    ppDBText43: TppDBText;
    ppLabel52: TppLabel;
    ppDBText44: TppDBText;
    ppLine14: TppLine;
    ppLabel53: TppLabel;
    ppDBText49: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    SQL_relatoriovendas: TFDQuery;
    SQL_relatoriovendasped_id: TFDAutoIncField;
    SQL_relatoriovendasped_date: TDateField;
    SQL_relatoriovendasped_codigo: TStringField;
    SQL_relatoriovendasped_cliente: TIntegerField;
    SQL_relatoriovendasped_usuario: TIntegerField;
    SQL_relatoriovendasped_forma_pag: TIntegerField;
    SQL_relatoriovendasped_fechado: TStringField;
    SQL_relatoriovendasped_faturado: TStringField;
    SQL_relatoriovendasped_subtotal: TFloatField;
    SQL_relatoriovendasped_subtotalprazo: TFloatField;
    SQL_relatoriovendasiten_id: TFDAutoIncField;
    SQL_relatoriovendasiten_produto: TIntegerField;
    SQL_relatoriovendasiten_qtd: TIntegerField;
    SQL_relatoriovendasiten_pedido: TStringField;
    SQL_relatoriovendasiten_preco: TFloatField;
    SQL_relatoriovendasiten_preco_prazo: TFloatField;
    SQL_relatoriovendaspro_id: TFDAutoIncField;
    SQL_relatoriovendaspro_nome: TStringField;
    SQL_relatoriovendaspro_barra: TStringField;
    SQL_relatoriovendaspro_ref: TStringField;
    SQL_relatoriovendaspro_custo: TFloatField;
    SQL_relatoriovendaspro_preco: TFloatField;
    SQL_relatoriovendaspro_preco_prazo: TFloatField;
    SQL_relatoriovendaspro_estoque: TIntegerField;
    SQL_relatoriovendascli_id: TFDAutoIncField;
    SQL_relatoriovendascli_nome: TStringField;
    SQL_relatoriovendascli_endereco: TStringField;
    SQL_relatoriovendascli_numero: TStringField;
    SQL_relatoriovendascli_bairro: TStringField;
    SQL_relatoriovendascli_cidade: TStringField;
    SQL_relatoriovendascli_fone: TStringField;
    SQL_relatoriovendascli_celular: TStringField;
    SQL_relatoriovendascli_rg: TStringField;
    SQL_relatoriovendascli_cnpj_cpf: TStringField;
    SQL_relatoriovendascli_profissao: TStringField;
    SQL_relatoriovendascli_data_nasc: TDateField;
    SQL_relatoriovendasforma_id: TFDAutoIncField;
    SQL_relatoriovendasforma_nome: TStringField;
    SQL_relatoriovendasuser_id: TFDAutoIncField;
    SQL_relatoriovendasuser_nome: TStringField;
    SQL_relatoriovendasuser_nome_completo: TStringField;
    SQL_relatoriovendasuser_senha: TStringField;
    SQL_relatoriovendassubTotal: TFloatField;
    SQL_relatoriovendassubTotalPrazo: TFloatField;
    ds_relatoriovendas: TDataSource;
    TB_formapag: TFDTable;
    TB_formapagforma_id: TFDAutoIncField;
    TB_formapagforma_nome: TStringField;
    SQL_usuario: TFDQuery;
    SQL_usuariouser_id: TFDAutoIncField;
    SQL_usuariouser_nome: TStringField;
    SQL_usuariouser_nome_completo: TStringField;
    SQL_usuariouser_senha: TStringField;
    SQL_acesso: TFDQuery;
    SQL_caixa: TFDQuery;
    SQL_caixacaixa_id: TFDAutoIncField;
    SQL_caixacaixa_valor: TFloatField;
    SQL_caixacaixa_data_abre: TDateField;
    SQL_caixacaixa_data_fecha: TDateField;
    SQL_caixacaixa_inicial: TFloatField;
    SQL_caixacaixa_usuario: TIntegerField;
    ds_caixa: TDataSource;
    SQL_caixauser_id: TFDAutoIncField;
    SQL_caixauser_nome: TStringField;
    SQL_caixauser_nome_completo: TStringField;
    SQL_caixauser_senha: TStringField;
    SQL_empresa: TFDQuery;
    ds_empresa: TDataSource;
    ppDB_empresa: TppDBPipeline;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText53: TppDBText;
    ppLabel3: TppLabel;
    ppLabel54: TppLabel;
    ppDBText52: TppDBText;

    procedure SQL_relatoriovendasCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
  public
  procedure CaixaVerifica;
  var CAIXA_ABERTO : Boolean;
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses
  U_pdv, U_lancamentos, U_inicial;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

// verifico o caixa
procedure Tdm.CaixaVerifica;
begin
  // verifico se o caixa esta aberto para data atual e para o usu�rio selecionado

  with SQL_caixa do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from view_caixa');
    SQL.Add('where caixa_usuario = :user');
    SQL.Add('and caixa_data_abre = :data');
    ParamByName('user').Value := SQL_usuariouser_id.Value;
    ParamByName('data').Value := Date;
    Open;

    //verifica se o caixa esta aberto
    if RecordCount <1 then
    begin
      ShowMessage('Caixa n�o foi aberto, precisa iniciar o caixa.');
      CAIXA_ABERTO := False;
    end
    else
    if RecordCount >0 then
    begin
      CAIXA_ABERTO := True;

    end;
  end;
end;


procedure Tdm.DataModuleCreate(Sender: TObject);
var server,user,senha,lib,pasta, DB:string;
var PORTA:Integer;
var conf:TIniFile;
begin
   pasta := ExtractFilePath(Application.ExeName);

   SetCurrentDir(ExtractFilePath(Application.ExeName));
   conf := TIniFile.Create(pasta + '\conf.ini');
   lib := pasta + '\libmysql.dll' ;
   server := conf.ReadString('banco','server','');
   user :=  conf.ReadString('banco','user','');
   senha :=  conf.ReadString('banco','senha','');
   PORTA :=  StrToInt(conf.ReadString('banco','porta',''));
   DB   := conf.ReadString('banco','database','');

   {Conex�o com banco dinamicamente}


  { try
   conexao.Connected := False;
   conexao.Params.Clear;
   Mysql_link.VendorLib := lib;
   Mysql_link.DriverID := 'MySQL';
   conexao.DriverName := 'MySQL';
   conexao.Params.Add('Database='  +DB);
   conexao.Params.Add('Server='    +server);
   conexao.Params.Add('User_name=' +user);
   conexao.Params.Add('Password='  +senha);
   conexao.Params.Add('Port='      +IntToStr(porta));
   conexao.Connected := True;
   except
   ShowMessage('Banco de Dados n�o Conectado! Verifique o Arquivo de Configura��o!');
     Application.Terminate;
     Exit;
   end;}

   conexao.Connected := False;
   conexao.Params.Clear;
   Mysql_link.VendorLib := lib;
   Mysql_link.DriverID := 'MySQL';
   conexao.DriverName := 'MySQL';
   conexao.Params.Add('Database='  +DB);
   conexao.Params.Add('Server='    +server);
   conexao.Params.Add('User_name=' +user);
   conexao.Params.Add('Password='  +senha);
   conexao.Params.Add('Port='      +IntToStr(porta));

     {try

     conexao.Connected := True;
     except
     ShowMessage('Banco de Dados n�o Conectado! Verifique o Arquivo de Configura��o!');
       Application.Terminate;
       Exit;
     end;}


   ShowMessage(conexao.Params.Database);
   ShowMessage(conexao.Params.UserName);
   ShowMessage(conexao.Params.Password);


  try

  conexao.Connected := true;

  except
  showmessage('Banco de dados n�o conectado');

  end;




end;

procedure Tdm.SQL_relatoriovendasCalcFields(DataSet: TDataSet);
begin
  {// soma do subtotal
  SQL_relatoriovendassubTotal.Value :=
  SQL_relatoriovendasiten_preco.Value * SQL_relatoriovendasiten_qtd.Value;

  // soma do subtotalprazo

   SQL_relatoriovendassubTotalPrazo.Value :=
  SQL_relatoriovendasiten_preco_prazo.Value * SQL_relatoriovendasiten_qtd.Value; }


end;

end.
