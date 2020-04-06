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
  ppProd, ppReport;

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
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses
  U_pdv, U_lancamentos;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
