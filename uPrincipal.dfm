object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 657
  ClientWidth = 1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MenuPrincipal
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object MenuPrincipal: TMainMenu
    Left = 112
    Top = 120
    object CADASTRO1: TMenuItem
      Caption = 'CADASTRO'
      object CLIENTE1: TMenuItem
        Caption = 'CLIENTE'
      end
      object CLIENTE2: TMenuItem
        Caption = '-'
      end
      object CATEGORIA1: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CATEGORIA1Click
      end
      object CATEGORIA2: TMenuItem
        Caption = 'PRODUTO'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'FECHAR'
        OnClick = mnuFecharClick
      end
    end
    object CADASTRO2: TMenuItem
      Caption = 'MOVIMENTACAO'
      object VENDAS1: TMenuItem
        Caption = 'VENDAS'
      end
    end
    object RELATORIO1: TMenuItem
      Caption = 'RELATORIO'
      object CLIENTE3: TMenuItem
        Caption = 'CLIENTE'
      end
      object CLIENTE4: TMenuItem
        Caption = '-'
      end
      object PRODUTO1: TMenuItem
        Caption = 'PRODUTO'
      end
      object PRODUTO2: TMenuItem
        Caption = '-'
      end
      object VENDAPORDATA1: TMenuItem
        Caption = 'VENDA POR DATA'
      end
    end
  end
end
