unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBTable;

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
