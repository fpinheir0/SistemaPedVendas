unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBTable;

type
  TdmDados = class(TDataModule)
    Transaction: TIBTransaction;
    Projeto_PedVendas: TIBDatabase;
    tabLogos: TIBTable;
    dsLogos: TDataSource;
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
