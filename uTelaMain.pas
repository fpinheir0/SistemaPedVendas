unit uTelaMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TTelaMain = class(TForm)
    pnLogo: TPanel;
    pnHeader: TPanel;
    pnSistema: TPanel;
    pnBotoes: TPanel;
    lbTitulo: TLabel;
    lbDataHora: TLabel;
    btnCadCliente: TSpeedButton;
    btnCadProduto: TSpeedButton;
    btnCadFuncionario: TSpeedButton;
    btnPedido: TSpeedButton;
    pnSeparar: TPanel;
    btnSairSistema: TSpeedButton;
    Image1: TImage;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure btnSairSistemaClick(Sender: TObject);
    procedure btnCadClienteClick(Sender: TObject);
    procedure btnCadFuncionarioClick(Sender: TObject);
    procedure btnCadProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaMain: TTelaMain;

implementation

{$R *.dfm}

uses uCliente, dmPrincipal, uProdutos;

procedure TTelaMain.btnCadClienteClick(Sender: TObject);
begin
    try
      Application.CreateForm(TTelaCliente, TelaCliente);
      TelaCliente.showModal;
    finally
     FreeAndNil(TelaCliente);
    end;
end;

procedure TTelaMain.btnCadFuncionarioClick(Sender: TObject);
begin
    try
//      Application.CreateForm(TTelaFuncionarios, TelaFuncionarios);
//      TelaFuncionarios.showModal;
    finally
//     FreeAndNil(TelaFuncionarios);
    end;
end;

procedure TTelaMain.btnCadProdutoClick(Sender: TObject);
begin
    try
      Application.CreateForm(TTelaProdutos, TelaProdutos);
      TelaProdutos.showModal;
    finally
     FreeAndNil(TelaProdutos);
    end;
end;

procedure TTelaMain.btnSairSistemaClick(Sender: TObject);
begin
    close;
end;

procedure TTelaMain.TimerTimer(Sender: TObject);
begin
   lbDataHora.Caption := TimeToStr(Time);
end;

end.
