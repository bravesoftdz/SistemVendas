object F_caixa: TF_caixa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa'
  ClientHeight = 291
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_caixahoje: TLabel
    Left = 8
    Top = 35
    Width = 67
    Height = 13
    Caption = 'Caixa de Hoje'
  end
  object Label1: TLabel
    Left = 310
    Top = 6
    Width = 91
    Height = 13
    Caption = 'Digite o valor inicial'
  end
  object lblCaixa: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 16
    Caption = 'lblCaixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgListarCaixa: TDBGrid
    Left = 8
    Top = 109
    Width = 393
    Height = 174
    DataSource = dm.ds_caixa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'caixa_data_abre'
        Title.Caption = 'Data Abertura'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_valor'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_data_fecha'
        Title.Caption = 'Data Fechou'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa_inicial'
        Title.Caption = 'Valor Inicial'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'user_nome'
        Title.Caption = 'Usu'#225'rio'
        Width = 90
        Visible = True
      end>
  end
  object edt_CaixaHoje: TCurrencyEdit
    Left = 8
    Top = 54
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object edtCaixaInicial: TCurrencyEdit
    Left = 310
    Top = 25
    Width = 91
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object btnAbreCaixa: TBitBtn
    Left = 326
    Top = 52
    Width = 75
    Height = 25
    Caption = 'Abrir Caixa'
    TabOrder = 3
    OnClick = btnAbreCaixaClick
  end
  object btnMostrarTodosUsuarios: TBitBtn
    Left = 153
    Top = 89
    Width = 137
    Height = 19
    Caption = 'Mostrar Todos Usu'#225'rios'
    Enabled = False
    TabOrder = 4
    OnClick = btnMostrarTodosUsuariosClick
  end
  object btnMostrarTodosDias: TBitBtn
    Left = 8
    Top = 89
    Width = 137
    Height = 19
    Caption = 'Mostrar Todos Dias'
    TabOrder = 5
    OnClick = btnMostrarTodosDiasClick
  end
  object btnFecharCaixa: TBitBtn
    Left = 326
    Top = 89
    Width = 75
    Height = 19
    Caption = 'Fechar Caixa'
    TabOrder = 6
    OnClick = btnFecharCaixaClick
  end
  object TB_AbreCaixa: TFDTable
    IndexFieldNames = 'caixa_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.caixa'
    TableName = 'aguiarsvendasbd.caixa'
    Left = 256
    Top = 208
    object TB_AbreCaixacaixa_id: TFDAutoIncField
      FieldName = 'caixa_id'
      Origin = 'caixa_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TB_AbreCaixacaixa_valor: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_valor'
      Origin = 'caixa_valor'
    end
    object TB_AbreCaixacaixa_data_abre: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_abre'
      Origin = 'caixa_data_abre'
    end
    object TB_AbreCaixacaixa_data_fecha: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_data_fecha'
      Origin = 'caixa_data_fecha'
    end
    object TB_AbreCaixacaixa_inicial: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_inicial'
      Origin = 'caixa_inicial'
    end
    object TB_AbreCaixacaixa_usuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'caixa_usuario'
      Origin = 'caixa_usuario'
    end
  end
end
