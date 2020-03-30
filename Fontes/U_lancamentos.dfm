object F_lancamento: TF_lancamento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Fatura e Lan'#231'amento'
  ClientHeight = 455
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 152
    ExplicitTop = 40
    ExplicitWidth = 185
  end
  object dbg_listarlancamentos: TDBGrid
    Left = 0
    Top = 41
    Width = 696
    Height = 192
    Align = alTop
    DataSource = ds_listarlancamentos
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ped_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_codigo'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cli_nome'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forma_nome'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_fechado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_faturado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_nome'
        Width = 100
        Visible = True
      end>
  end
  object SQL_listarancamentos: TFDQuery
    Active = True
    Connection = dm.conexao
    SQL.Strings = (
      
        'select * from pedidos d, itens i, produtos p, clientes c, forma_' +
        'pagamento f, usuarios u '
      
        ' where c.cli_id = d.ped_cliente and i.iten_pedido = d.ped_codigo' +
        ' and d.ped_forma_pag = f.forma_id'
      '  and i.iten_produto = p.pro_id and d.ped_usuario = u.user_id')
    Left = 584
    Top = 272
  end
  object ds_listarlancamentos: TDataSource
    DataSet = SQL_listarancamentos
    Left = 600
    Top = 368
  end
end
