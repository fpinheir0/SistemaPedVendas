unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TTelaCliente = class(TForm)
    pnPesquisa: TPanel;
    Pesquisa: TLabel;
    Label2: TLabel;
    PageControl: TPageControl;
    TabPesquisa: TTabSheet;
    TabCadastros: TTabSheet;
    Panel1: TPanel;
    nvCadastros: TDBNavigator;
    Panel2: TPanel;
    navPesquisa: TDBNavigator;
    DBGrid: TDBGrid;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnInserir: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCliente: TTelaCliente;

implementation

{$R *.dfm}

procedure TTelaCliente.btnInserirClick(Sender: TObject);
begin
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
//    DBGrid.SetFocus;
end;

procedure TTelaCliente.btnSairClick(Sender: TObject);
begin
    close;
end;

procedure TTelaCliente.btnAlterarClick(Sender: TObject);
begin
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
//    DBGrid.SetFocus;
end;

procedure TTelaCliente.btnCancelarClick(Sender: TObject);
begin
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

procedure TTelaCliente.btnSalvarClick(Sender: TObject);
begin
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

procedure TTelaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
    begin
      if PageControl.ActivePageIndex = 0 then
      close
      else
      btnCancelar.Click;
    end;
end;

procedure TTelaCliente.FormShow(Sender: TObject);
begin
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

end.
