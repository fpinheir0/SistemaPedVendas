object TelaVendas: TTelaVendas
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'PEDIDO DE VENDAS'
  ClientHeight = 593
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 104
    Width = 246
    Height = 33
    Caption = 'C'#211'DIGO DE BARRAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 600
    Top = 104
    Width = 68
    Height = 33
    Caption = 'QTDE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 320
    Top = 104
    Width = 213
    Height = 33
    Caption = 'VALOR UNIT'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 704
    Top = 104
    Width = 199
    Height = 33
    Caption = 'TOTAL DA NOTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object pnDescricao: TPanel
    Left = 8
    Top = 8
    Width = 928
    Height = 57
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnCaixa: TPanel
    Left = 8
    Top = 528
    Width = 928
    Height = 57
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtQTDE: TEdit
    Left = 600
    Top = 160
    Width = 68
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 320
    Top = 160
    Width = 265
    Height = 41
    DataField = 'PROD_VALOR_VENDA'
    DataSource = dmDados.dsConsultas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 704
    Top = 160
    Width = 199
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 8
    Top = 216
    Width = 928
    Height = 9
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
  end
  object edtCodigoBarras: TEdit
    Left = 32
    Top = 160
    Width = 246
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnKeyPress = edtCodigoBarrasKeyPress
  end
end
