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
    ExplicitTop = 474
    ExplicitWidth = 1178
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
    ExplicitWidth = 1178
    ExplicitHeight = 474
    object tab_consultar: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Consultar'
      ExplicitLeft = 8
      ExplicitTop = 36
      ExplicitWidth = 1162
      ExplicitHeight = 412
      object Image1: TImage
        Left = 0
        Top = -52
        Width = 986
        Height = 110
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
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
        ExplicitTop = -2
        ExplicitWidth = 1162
      end
      object Label1: TLabel
        Left = 4
        Top = 8
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
      object img_buscarprodutos: TImage
        Left = 228
        Top = 28
        Width = 20
        Height = 22
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alCustom
        ParentShowHint = False
        Picture.Data = {
          07544269746D6170A2070000424DA20700000000000036000000280000001900
          00001900000001001800000000006C070000232E0000232E0000000000000000
          0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFB
          FBFBFBFBFAFAFAFAFAFAF9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F4F4F5F6F5F5F8
          F8F7F5F5F5FAFAFAFEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFDFDFDFBFBFBFAFAFAF8F8F8F5F5F5F2F2F2F0F0F0EDEDEDEBEBEBE9E9E9E7
          E7E7E3E3E4EFECE9D0D8E1D0D8E1F5F2EFF8F8F8FDFDFDFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFDFDFCFCFCFBFBFBFBFBFBFAFAFAFA
          FAFAF9F9F9F8F8F8F7F7F7F6F7F7FAF9F8DEE4EC477DBD5587C3E2E7ECFBFAFA
          FEFEFEFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F3F5578BC6
          3C76B93677C39FB8D4FFFFFFFDFDFDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
          FFFFFFE5E7EA467CBB3976BB3B7AC27AA0CAF7F8F8FEFEFEFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFF
          FFFFFFFFFFFFFEFEFEFFFFFFE6E9EC4F84C33C78BE3B7AC2789FCBFAFAFBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFDFDFEFFFFFFE7E9EC4C83C13A77BD3C79
          C27A9FCBFAFAFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFF5F5F5F0F0F0FBFBFBFFFFFFFFFFFFFBFB
          FB5589C53C78BE3C7AC27A9FCBFBFBFBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9BEBEBEBFBFBFC3C3
          C3BEBEBEC0C0C0F1F1F1C6C7CA4069983777C07A9FCBFAFAFBFFFFFFFDFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFEFEFEFDFDFDC0C0
          C0CFCFCFDCDCDCE4E4E4E5E5E5E2E2E2DEDEDEC1C0C05B6875626C78CCD2D9FC
          FDFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFEFEFEFFFFFFCDCDCDD4D4D4E0E0E0F6F6F6FBFBFBF9F9F9F6F6F6EAEAEAE4
          E4E4B7B9BCD5D6D6FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FEFEFEFFFFFFF4F4F4C0C0C0DDDDDDFAFAFAF9F9F9F6
          F6F6F4F4F4F2F2F2F4F4F4E8E8E8E1E1E0C5C5C5FDFDFDFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFFD8D8D8CE
          CECEECECECFBFBFBF6F6F6F5F5F5F3F3F3F1F1F1EFEFEFEEEEEEE7E7E7C0C0C0
          F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FDFDFDFFFFFFCFCFCFD4D4D4EFEFEFF8F8F8F5F5F5F3F3F3F1F1F1EFEFEF
          EDEDEDECECECE8E8E8C8C8C8EFEFEFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FCFCFCFFFFFFD2D2D2D3D3D3ECECECF6F6F6
          F2F2F2F1F1F1EFEFEFEDEDEDEBEBEBEAEAEAE8E8E8C5C5C5F4F4F4FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FDFDFDFFFFFF
          E9E9E9C8C8C8E4E4E4F5F5F5F0F0F0EFEFEFEDEDEDEBEBEBEAEAEAE6E6E6E7E7
          E7BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFC0C0C0E1E1E1E6E6E6F0F0F0EDEDEDEBEB
          EBE9E9E9E6E6E6E6E6E6D5D5D5DADADAFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFF1F1F1BBBB
          BBE3E3E3E6E6E6E8E8E8E8E8E8E6E6E6E8E8E8DCDCDCC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFEFEFEFFFFFFF0F0F0BFBFBFCACACAD9D9D9DDDDDDD7D7D7C3C3C3CC
          CCCCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFE9E9E9D3
          D3D3CFCFCFD9D9D9F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFC
          FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00}
        ShowHint = False
        OnClick = img_buscarprodutosClick
      end
      object dbg_produtos: TDBGrid
        Left = 0
        Top = 58
        Width = 986
        Height = 317
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'Qtd Estoque'
            Visible = True
          end>
      end
      object edt_busca: TEdit
        Left = 4
        Top = 28
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
    end
    object tab_cadastrar: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cadastrar / Editar'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 36
      ExplicitWidth = 1162
      ExplicitHeight = 412
    end
  end
end
