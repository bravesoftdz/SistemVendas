object F_produtos: TF_produtos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Produtos'
  ClientHeight = 422
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object stb_produtos: TStatusBar
    Left = 0
    Top = 404
    Width = 994
    Height = 18
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <>
  end
  object page_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 994
    Height = 404
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tab_consultar
    Align = alClient
    TabOrder = 1
    TabWidth = 200
    object tab_consultar: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Consultar'
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 986
        Height = 72
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000003290000
          006308020000001023D8AA000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
          CF4944415478DAEDD6410100200C0021D7BF980556C11CB6B817A460EEBE0300
          4062DC0B0020E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F0080
          8E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D071
          2F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE05
          00D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD0000
          3AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7
          BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B817
          0040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200
          E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E00001D
          F70200E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E
          00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B00
          A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B010074
          DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B
          010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F00
          808E7B010074DC0B00A0E35E00009D0F6A65F90D0E8500230000000049454E44
          AE426082}
        Stretch = True
        ExplicitLeft = 1
        ExplicitHeight = 127
      end
      object Label1: TLabel
        Left = 125
        Top = 20
        Width = 35
        Height = 14
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Buscar'
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object SpeedButton_buscarprodutos: TSpeedButton
        Left = 352
        Top = 41
        Width = 23
        Height = 22
        Glyph.Data = {
          A2070000424DA207000000000000360000002800000019000000190000000100
          1800000000006C070000232E0000232E00000000000000000001FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFE
          FEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBFAFAFAFA
          FAFAF9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F4F4F5F6F5F5F8F8F7F5F5F5FAFAFA
          FEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBFA
          FAFAF8F8F8F5F5F5F2F2F2F0F0F0EDEDEDEBEBEBE9E9E9E7E7E7E3E3E4EFECE9
          D0D8E1D0D8E1F5F2EFF8F8F8FDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBFAFAFAFAFAFAF9F9F9F8F8F8
          F7F7F7F6F7F7FAF9F8DEE4EC477DBD5587C3E2E7ECFBFAFAFEFEFEFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3F5578BC63C76B93677C39FB8
          D4FFFFFFFDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFE5E7EA467C
          BB3976BB3B7AC27AA0CAF7F8F8FEFEFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFEFE
          FEFFFFFFE6E9EC4F84C33C78BE3B7AC2789FCBFAFAFBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFF
          FFFFFFFFFEFEFEFDFDFEFFFFFFE7E9EC4C83C13A77BD3C79C27A9FCBFAFAFBFF
          FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFFFFFFFFFFF5F5F5F0F0F0FBFBFBFFFFFFFFFFFFFBFBFB5589C53C78BE3C
          7AC27A9FCBFBFBFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9BEBEBEBFBFBFC3C3C3BEBEBEC0C0C0F1
          F1F1C6C7CA4069983777C07A9FCBFAFAFBFFFFFFFDFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEFDFDFDC0C0C0CFCFCFDCDCDCE4
          E4E4E5E5E5E2E2E2DEDEDEC1C0C05B6875626C78CCD2D9FCFDFDFFFFFFFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFEFEFEFFFFFFCD
          CDCDD4D4D4E0E0E0F6F6F6FBFBFBF9F9F9F6F6F6EAEAEAE4E4E4B7B9BCD5D6D6
          FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FEFEFEFFFFFFF4F4F4C0C0C0DDDDDDFAFAFAF9F9F9F6F6F6F4F4F4F2F2F2
          F4F4F4E8E8E8E1E1E0C5C5C5FDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFD8D8D8CECECEECECECFBFBFB
          F6F6F6F5F5F5F3F3F3F1F1F1EFEFEFEEEEEEE7E7E7C0C0C0F9F9F9FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFF
          CFCFCFD4D4D4EFEFEFF8F8F8F5F5F5F3F3F3F1F1F1EFEFEFEDEDEDECECECE8E8
          E8C8C8C8EFEFEFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FCFCFCFFFFFFD2D2D2D3D3D3ECECECF6F6F6F2F2F2F1F1F1EFEF
          EFEDEDEDEBEBEBEAEAEAE8E8E8C5C5C5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFE9E9E9C8C8C8E4E4
          E4F5F5F5F0F0F0EFEFEFEDEDEDEBEBEBEAEAEAE6E6E6E7E7E7BDBDBDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFC0C0C0E1E1E1E6E6E6F0F0F0EDEDEDEBEBEBE9E9E9E6E6E6E6
          E6E6D5D5D5DADADAFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF1F1F1BBBBBBE3E3E3E6E6E6E8
          E8E8E8E8E8E6E6E6E8E8E8DCDCDCC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEFF
          FFFFF0F0F0BFBFBFCACACAD9D9D9DDDDDDD7D7D7C3C3C3CCCCCCFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFE9E9E9D3D3D3CFCFCFD9D9D9
          F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00}
        OnClick = SpeedButton_buscarprodutosClick
      end
      object btn_editar_produto: TSpeedButton
        Left = 400
        Top = 40
        Width = 113
        Height = 22
        Caption = 'Editar Selecionado'
        OnClick = btn_editar_produtoClick
      end
      object dbg_produtos: TDBGrid
        Left = 0
        Top = 72
        Width = 986
        Height = 303
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        DataSource = dm.ds_produtos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbg_produtosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_id'
            Title.Caption = 'ID'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nome'
            Title.Caption = 'Produto'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barra'
            Title.Caption = 'Barras'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_ref'
            Title.Caption = 'Ref'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_custo'
            Title.Caption = 'R$ Custo'
            Title.Color = clRed
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco'
            Title.Caption = 'R$ Pre'#231'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 1539124
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco_prazo'
            Title.Caption = 'R$ Prazo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clHotLight
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'Qtd Estoque'
            Width = 64
            Visible = True
          end>
      end
      object edt_busca: TEdit
        Left = 125
        Top = 40
        Width = 222
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        CharCase = ecUpperCase
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edt_buscaChange
        OnKeyPress = edt_buscaKeyPress
      end
      object rg_buscar: TRadioGroup
        Left = 2
        Top = 0
        Width = 105
        Height = 71
        Margins.Top = 2
        Margins.Bottom = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Por Nome'
          'Por Barras')
        ParentFont = False
        TabOrder = 2
      end
    end
    object tab_cadastrar: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 986
        Height = 375
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000003290000
          006308020000001023D8AA000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000001
          CC4944415478DAEDD6310100301003A1BE7FB391501737810A6EDB03002071EE
          050090712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00
          003AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040
          C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8
          170040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E00001DF702
          00E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E35E0000
          1DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B00A0E3
          5E00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B010074DC0B
          00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E7B0100
          74DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F00808E
          7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500D0712F
          00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003AEE0500
          D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD00003A
          EE0500D0712F00808E7B010074DC0B00A0E35E00001DF70200E8B8170040C7BD
          00003AEE0500D0712F0080CE076F8D16E3840D69700000000049454E44AE4260
          82}
        Stretch = True
        ExplicitTop = -4
      end
      object Label3: TLabel
        Left = 40
        Top = 25
        Width = 48
        Height = 14
        Caption = 'Produto:'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 40
        Top = 64
        Width = 61
        Height = 14
        Caption = 'Cod. Barras'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 40
        Top = 105
        Width = 18
        Height = 14
        Caption = 'Ref'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 40
        Top = 145
        Width = 49
        Height = 14
        Caption = 'R$ Custo'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 40
        Top = 185
        Width = 49
        Height = 14
        Caption = 'R$ Pre'#231'o'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 40
        Top = 225
        Width = 82
        Height = 14
        Caption = 'R$ Pre'#231'o Prazo'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 40
        Top = 265
        Width = 45
        Height = 14
        Caption = 'Estoque'
        FocusControl = DBEdit8
      end
      object btn_novo_cad: TSpeedButton
        Left = 208
        Top = 332
        Width = 100
        Height = 40
        Action = ac_insert
      end
      object btn_editar_cad: TSpeedButton
        Left = 314
        Top = 332
        Width = 100
        Height = 40
        Action = ac_editar
      end
      object btn_gravar_cad: TSpeedButton
        Left = 420
        Top = 332
        Width = 100
        Height = 40
        Action = ac_post
      end
      object btn_cancelar_cad: TSpeedButton
        Left = 526
        Top = 332
        Width = 100
        Height = 40
        Action = ac_cancelar
      end
      object btn_apagar_cad: TSpeedButton
        Left = 632
        Top = 332
        Width = 100
        Height = 40
        Action = ac_delet
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 41
        Width = 500
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_nome'
        DataSource = ds_produtos_cad
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 81
        Width = 500
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_barra'
        DataSource = ds_produtos_cad
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 121
        Width = 500
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_ref'
        DataSource = ds_produtos_cad
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 40
        Top = 161
        Width = 100
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_custo'
        DataSource = ds_produtos_cad
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 40
        Top = 201
        Width = 100
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_preco'
        DataSource = ds_produtos_cad
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 40
        Top = 241
        Width = 100
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_preco_prazo'
        DataSource = ds_produtos_cad
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 40
        Top = 281
        Width = 100
        Height = 22
        CharCase = ecUpperCase
        DataField = 'pro_estoque'
        DataSource = ds_produtos_cad
        TabOrder = 6
      end
    end
  end
  object ds_produtos_cad: TDataSource
    DataSet = dm.TB_produtos
    Left = 264
    Top = 216
  end
  object acm_produtos: TActionManager
    Left = 472
    Top = 192
    StyleName = 'Platform Default'
    object ac_insert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = ds_produtos_cad
    end
    object ac_delet: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = ds_produtos_cad
    end
    object ac_editar: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = ds_produtos_cad
    end
    object ac_post: TDataSetPost
      Category = 'Dataset'
      Caption = 'Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ds_produtos_cad
    end
    object ac_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = ds_produtos_cad
    end
  end
end
