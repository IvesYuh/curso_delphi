object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Heranca'
  ClientHeight = 605
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnlRodape: TPanel
    Left = 0
    Top = 560
    Width = 1013
    Height = 45
    Align = alBottom
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 20
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 101
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 182
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 263
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 344
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apaga&r'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 920
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 425
      Top = 6
      Width = 220
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1013
    Height = 560
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 1
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 1005
        Height = 43
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 16
          Top = 14
          Width = 209
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Pesquisar'
        end
        object btnPesquisar: TBitBtn
          Left = 231
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 43
        Width = 1005
        Height = 487
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manutencao'
      ImageIndex = 1
    end
  end
  object qryListagem: TZQuery
    Connection = dtmConexao.ConexaoDB
    Params = <>
    Left = 524
    Top = 34
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 596
    Top = 34
  end
end
