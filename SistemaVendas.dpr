program SistemaVendas;

uses
  Vcl.Forms,
  uTelaMain in 'uTelaMain.pas' {TelaMain},
  Vcl.Themes,
  Vcl.Styles,
  dmPrincipal in 'dmPrincipal.pas' {dmDados: TDataModule},
  uCliente in 'uCliente.pas' {TelaCliente},
  uProdutos in 'uProdutos.pas' {TelaProdutos},
  U_funcoes in 'U_funcoes.pas',
  uVendas in 'uVendas.pas' {TelaVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaMain, TelaMain);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TTelaVendas, TelaVendas);
  Application.Run;
end.
