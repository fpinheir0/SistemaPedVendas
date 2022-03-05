program SistemaVendas;

uses
  Vcl.Forms,
  uTelaMain in 'uTelaMain.pas' {TelaMain},
  Vcl.Themes,
  Vcl.Styles,
  dmPrincipal in 'dmPrincipal.pas' {dmDados: TDataModule},
  uCliente in 'uCliente.pas' {TelaCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Luna');
  Application.CreateForm(TTelaMain, TelaMain);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TTelaCliente, TelaCliente);
  Application.Run;
end.
