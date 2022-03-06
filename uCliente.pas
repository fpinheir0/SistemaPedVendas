unit uCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Data.DB;

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
    lbNOME: TLabel;
    lbENDERECO: TLabel;
    lbNUMERO: TLabel;
    lbBAIRRO: TLabel;
    lbCEP: TLabel;
    lbCIDADE: TLabel;
    lbESTADO: TLabel;
    lbTELEFONE: TLabel;
    lbRG: TLabel;
    lbCPF: TLabel;
    edtNOME: TDBEdit;
    edtCPF: TDBEdit;
    edtRG: TDBEdit;
    edtTELEFONE: TDBEdit;
    edtENDERECO: TDBEdit;
    edtBAIRRO: TDBEdit;
    edtNUMERO: TDBEdit;
    edtCEP: TDBEdit;
    edtCIDADE: TDBEdit;
    edtESTADO: TDBEdit;
    btnSAIR: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
  Texto : String;
    { Public declarations }
  end;

var
  TelaCliente: TTelaCliente;

implementation

{$R *.dfm}

uses dmPrincipal;

procedure TTelaCliente.btnInserirClick(Sender: TObject);
begin
    dmDados.TB_CLIENTES.Insert;
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
    edtNOME.SetFocus;
end;

procedure TTelaCliente.btnSairClick(Sender: TObject);
begin
    close;
end;

procedure TTelaCliente.btnAlterarClick(Sender: TObject);
begin
    dmDados.TB_CLIENTES.Edit;
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
//    DBGrid.SetFocus;
end;

procedure TTelaCliente.btnCancelarClick(Sender: TObject);
begin
    dmDados.TB_CLIENTES.Cancel;
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

procedure TTelaCliente.btnExcluirClick(Sender: TObject);
begin
   if MessageDlg ('Deseja realmente deletar o registro ? ' , mtWarning, [mbYes,mbNo], 0  ) = IDYES then

   dmDados.TB_CLIENTES.Delete;
   dmDados.Transaction.CommitRetaining;
   dmDados.TB_CLIENTES.Last;

end;

procedure TTelaCliente.btnSalvarClick(Sender: TObject);
begin
    if edtNOME.Text = '' then
    ShowMessage('por favor preencha o campo NOME !')
    else
    if edtCPF.Text = '' then
    ShowMessage('por favor preencha o campo CPF !')
    else
      if edtENDERECO.Text = '' then
    ShowMessage('por favor preencha o campo ENDEREÇO !')
    else
      if edtCIDADE.Text = '' then
    ShowMessage('por favor preencha o campo CIDADE !')
    else
      if edtESTADO.Text = '' then
    ShowMessage('por favor preencha o campo ESTADO !')
    else
      if edtCEP.Text = '' then
    ShowMessage('por favor preencha o campo CEP !')
    else
  begin
    dmDados.TB_CLIENTES.Post;
    dmDados.Transaction.CommitRetaining;
    dmDados.TB_CLIENTES.Last;
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
  end;

end;

procedure TTelaCliente.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        if Texto > '' then
          begin
            dmDados.TB_CLIENTES.Locate('CLI_CPF' , Texto , [locaseinsensitive,loPartialKey]  );
            Texto := '';
            pnPesquisa.Caption := Texto;
          end
          else
        btnAlterar.Click;
    end
    else
        if Key = #8 then
          begin
            Texto := Copy(Texto,1, Length (Texto) -1 );
            pnPesquisa.Caption := Texto;
          end
    else
          begin
            Texto := Texto + Key;
            pnPesquisa.Caption := Texto;
    end;
end;

procedure TTelaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dmDados.TB_CLIENTES.close;
end;

procedure TTelaCliente.FormCreate(Sender: TObject);
begin
    dmDados.TB_CLIENTES.Open;
    dmDados.TB_CLIENTES.Last;
end;

procedure TTelaCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
    begin
      if PageControl.ActivePageIndex = 0 then
      Close
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
