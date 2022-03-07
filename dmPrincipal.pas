unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBTable, IBX.IBQuery;

type
  TdmDados = class(TDataModule)
    Transaction: TIBTransaction;
    Projeto_PedVendas: TIBDatabase;
    TB_CLIENTES: TIBTable;
    dsCliente: TDataSource;
    TB_CLIENTESID_CLIENTE: TIntegerField;
    TB_CLIENTESCLI_NOME: TIBStringField;
    TB_CLIENTESCLI_ENDERECO: TIBStringField;
    TB_CLIENTESCLI_NUMERO: TIBBCDField;
    TB_CLIENTESCLI_BAIRRO: TIBStringField;
    TB_CLIENTESCLI_CEP: TIBStringField;
    TB_CLIENTESCLI_CIDADE: TIBStringField;
    TB_CLIENTESCLI_ESTADO: TIBStringField;
    TB_CLIENTESCLI_TELEFONE: TIBStringField;
    TB_CLIENTESCLI_RG: TIBStringField;
    TB_CLIENTESCLI_CPF: TIBStringField;
    TB_PRODUTOS: TIBTable;
    dsProdutos: TDataSource;
    TB_PRODUTOSPROD_ID: TIntegerField;
    TB_PRODUTOSPROD_CODIGO_BARRAS: TIBStringField;
    TB_PRODUTOSPROD_PRODUTO: TIBStringField;
    TB_PRODUTOSPROD_VALOR_CUSTO: TFloatField;
    TB_PRODUTOSPROD_LUCRO: TIntegerField;
    TB_PRODUTOSPROD_VALOR_VENDA: TFloatField;
    TB_PRODUTOSPROD_QTDE_ESTOQUE: TIntegerField;
    TB_VENDAS: TIBTable;
    dsVendas: TDataSource;
    TB_VENDASVEN_ID: TIntegerField;
    TB_VENDASVEN_NUMERO_NOTA: TIBStringField;
    TB_VENDASVEN_DATA_VENDA: TDateField;
    TB_VENDASVEN_HORA_VENDA: TTimeField;
    TB_VENDASVEN_TOTAL_VENDA: TFloatField;
    TB_VENDASVEN_PAGAMENTOS: TFloatField;
    TB_VENDASVEN_TROCO: TFloatField;
    TB_VENDASCLI_ID: TIntegerField;
    TB_VENDASFUNC_ID: TIntegerField;
    TB_VENDASFORMA_ID: TIntegerField;
    sqlConsultas: TIBQuery;
    dsConsultas: TDataSource;
    sqlConsultasPROD_ID: TIntegerField;
    sqlConsultasPROD_CODIGO_BARRAS: TIBStringField;
    sqlConsultasPROD_PRODUTO: TIBStringField;
    sqlConsultasPROD_VALOR_CUSTO: TFloatField;
    sqlConsultasPROD_LUCRO: TIntegerField;
    sqlConsultasPROD_VALOR_VENDA: TFloatField;
    sqlConsultasPROD_QTDE_ESTOQUE: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
