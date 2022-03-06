unit uProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Data.DB;

type
  TTelaProdutos = class(TForm)
    pnPesquisaProd: TPanel;
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
    btnExcluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnInserir: TSpeedButton;
    btnSAIR: TSpeedButton;
    btnCancelar: TSpeedButton;
    lbCodProd: TLabel;
    lbDescricao: TLabel;
    lbQTDE: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbValorCusto: TLabel;
    SpeedButton1: TSpeedButton;
    edtCodProd: TDBEdit;
    edtDescricao: TDBEdit;
    edtQTDE: TDBEdit;
    edtCodBarras: TDBEdit;
    edtValorCusto: TDBEdit;
    edtLucroProd: TDBEdit;
    edtValorVenda: TDBEdit;
    edtCodigos: TDBEdit;
    edtDigitos: TDBEdit;
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
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
  Texto : String;
    { Public declarations }
  end;

var
  TelaProdutos: TTelaProdutos;

implementation

{$R *.dfm}

uses dmPrincipal;

procedure TTelaProdutos.btnInserirClick(Sender: TObject);
begin
    dmDados.TB_PRODUTOS.Insert;
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
    edtDescricao.SetFocus;
end;

procedure TTelaProdutos.btnSairClick(Sender: TObject);
begin
    close;
end;

procedure TTelaProdutos.BitBtn1Click(Sender: TObject);
begin
    dmDados.TB_PRODUTOSPROD_VALOR_VENDA.Value :=
    dmDados.TB_PRODUTOSPROD_VALOR_CUSTO.Value *
    dmDados.TB_PRODUTOSPROD_LUCRO.Value / 100 +
    dmDados.TB_PRODUTOSPROD_VALOR_CUSTO.Value;
end;

procedure TTelaProdutos.btnAlterarClick(Sender: TObject);
begin
    dmDados.TB_PRODUTOS.Edit;
    TabPesquisa.TabVisible := false;
    TabCadastros.TabVisible := true;
//    DBGrid.SetFocus;
end;

procedure TTelaProdutos.btnCancelarClick(Sender: TObject);
begin
    dmDados.TB_PRODUTOS.Cancel;
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

procedure TTelaProdutos.btnExcluirClick(Sender: TObject);
begin
   if MessageDlg ('Deseja realmente deletar o registro ? ' , mtWarning, [mbYes,mbNo], 0  ) = IDYES then

   dmDados.TB_PRODUTOS.Delete;
   dmDados.Transaction.CommitRetaining;
   dmDados.TB_PRODUTOS.Last;

end;

procedure TTelaProdutos.btnSalvarClick(Sender: TObject);
begin
    if edtDescricao.Text = '' then
    ShowMessage('por favor preencha o campo DESCRIÇÃO !')
    else
    if edtCodProd.Text = '' then
    ShowMessage('por favor preencha o campo CODIGO DO PRODUTO !')
    else
      if edtQTDE.Text = '' then
    ShowMessage('por favor preencha o campo QUANTIDADE !')
    else
      if edtCodBarras.Text = '' then
    ShowMessage('por favor preencha o campo CODIGO DE BARRAS !')
    else
      if EdtValorCusto.Text = '' then
    ShowMessage('por favor preencha o campo VALOR DE CUSTO !')
    else
  begin
    dmDados.TB_PRODUTOS.Post;
    dmDados.Transaction.CommitRetaining;
    dmDados.TB_PRODUTOS.Last;
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
  end;

end;

procedure TTelaProdutos.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        if Texto > '' then
          begin
            dmDados.TB_PRODUTOS.Locate('PROD_COD_BARRAS' , Texto , [locaseinsensitive,loPartialKey]  );
            Texto := '';
            pnPesquisaProd.Caption := Texto;
          end
          else
        btnAlterar.Click;
    end
    else
        if Key = #8 then
          begin
            Texto := Copy(Texto,1, Length (Texto) -1 );
            pnPesquisaProd.Caption := Texto;
          end
    else
          begin
            Texto := Texto + Key;
            pnPesquisaProd.Caption := Texto;
    end;
end;

procedure TTelaProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dmDados.TB_PRODUTOS.close;
end;

procedure TTelaProdutos.FormCreate(Sender: TObject);
begin
    dmDados.TB_PRODUTOS.Open;
    dmDados.TB_PRODUTOS.Last;
end;

procedure TTelaProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then
    begin
      if PageControl.ActivePageIndex = 0 then
      Close
      else
      btnCancelar.Click;
    end;
end;

procedure TTelaProdutos.FormShow(Sender: TObject);
begin
    TabPesquisa.TabVisible := true;
    TabCadastros.TabVisible := False;
    DBGrid.SetFocus;
end;

end.
