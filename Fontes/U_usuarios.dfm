object F_usuarios: TF_usuarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Controle de Usu'#225'rios'
  ClientHeight = 426
  ClientWidth = 491
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object page_geral: TPageControl
    Left = 0
    Top = 0
    Width = 491
    Height = 426
    ActivePage = tb_controle
    Align = alClient
    TabOrder = 0
    TabWidth = 200
    ExplicitWidth = 592
    object tb_cadastrar: TTabSheet
      Caption = 'Cadastro de Usu'#225'rios'
      ExplicitWidth = 584
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 483
        Height = 398
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
        ExplicitLeft = 168
        ExplicitTop = 192
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object dbgUsuarios: TDBGrid
        Left = 3
        Top = 230
        Width = 342
        Height = 165
        DataSource = ds_usuario
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
            FieldName = 'user_nome'
            Title.Caption = 'Nome'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'user_nome_completo'
            Title.Caption = 'Nome Completo'
            Width = 150
            Visible = True
          end>
      end
      object btnNovo_usuario: TBitBtn
        Left = 248
        Top = 30
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = btnNovo_usuarioClick
      end
      object btnEditar_usuario: TBitBtn
        Left = 248
        Top = 61
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
        OnClick = btnEditar_usuarioClick
      end
      object btnGravar_usuario: TBitBtn
        Left = 248
        Top = 92
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 3
        OnClick = btnGravar_usuarioClick
      end
      object btnCancelar_usuario: TBitBtn
        Left = 248
        Top = 123
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = btnCancelar_usuarioClick
      end
      object btnExcluir_usuario: TBitBtn
        Left = 248
        Top = 154
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 5
        OnClick = btnExcluir_usuarioClick
      end
      object pn_CadUsuarios: TPanel
        Left = 34
        Top = 11
        Width = 185
        Height = 201
        TabOrder = 6
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Nome:'
          FocusControl = edtNome_usuario
        end
        object Label2: TLabel
          Left = 16
          Top = 56
          Width = 79
          Height = 13
          Caption = 'Nome Completo:'
          FocusControl = edtNomeComp_usuario
        end
        object Label3: TLabel
          Left = 16
          Top = 103
          Width = 34
          Height = 13
          Caption = 'Senha:'
          FocusControl = edtSenha_usuario
        end
        object edtNome_usuario: TDBEdit
          Left = 16
          Top = 32
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'user_nome'
          DataSource = ds_usuario
          TabOrder = 0
        end
        object edtNomeComp_usuario: TDBEdit
          Left = 16
          Top = 72
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'user_nome_completo'
          DataSource = ds_usuario
          TabOrder = 1
        end
        object edtSenha_usuario: TDBEdit
          Left = 16
          Top = 118
          Width = 150
          Height = 21
          DataField = 'user_senha'
          DataSource = ds_usuario
          PasswordChar = '*'
          TabOrder = 2
        end
      end
    end
    object tb_controle: TTabSheet
      Caption = 'Controle de Acesso'
      ImageIndex = 1
      ExplicitWidth = 584
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 483
        Height = 398
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
        ExplicitLeft = 168
        ExplicitTop = 192
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 80
        Width = 200
        Height = 225
        DataSource = ds_listarUsuarios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'user_nome'
            Width = 150
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 280
        Top = 80
        Width = 200
        Height = 225
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btnLiberarTudo: TBitBtn
        Left = 204
        Top = 89
        Width = 75
        Height = 25
        Caption = 'Liberar Tudo'
        TabOrder = 2
      end
      object btnBloquearTudo: TBitBtn
        Left = 204
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Bloquear Tudo'
        TabOrder = 3
      end
    end
  end
  object TB_usuario: TFDTable
    IndexFieldNames = 'user_id'
    Connection = dm.conexao
    UpdateOptions.UpdateTableName = 'aguiarsvendasbd.usuarios'
    TableName = 'aguiarsvendasbd.usuarios'
    Left = 220
    Top = 384
    object TB_usuariouser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TB_usuariouser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 100
    end
    object TB_usuariouser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 100
    end
    object TB_usuariouser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 100
    end
  end
  object ds_usuario: TDataSource
    DataSet = TB_usuario
    Left = 280
    Top = 384
  end
  object SQL_listarUsuarios: TFDQuery
    Active = True
    Connection = dm.conexao
    SQL.Strings = (
      'select * from usuarios')
    Left = 20
    Top = 336
    object SQL_listarUsuariosuser_id: TFDAutoIncField
      FieldName = 'user_id'
      Origin = 'user_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_listarUsuariosuser_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome'
      Origin = 'user_nome'
      Size = 100
    end
    object SQL_listarUsuariosuser_nome_completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_nome_completo'
      Origin = 'user_nome_completo'
      Size = 100
    end
    object SQL_listarUsuariosuser_senha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'user_senha'
      Origin = 'user_senha'
      Size = 100
    end
  end
  object ds_listarUsuarios: TDataSource
    DataSet = SQL_listarUsuarios
    Left = 94
    Top = 339
  end
  object SQL_listarAcessosPermitidos: TFDQuery
    Left = 364
    Top = 320
  end
end
