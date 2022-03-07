unit uVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TTelaVendas = class(TForm)
    pnDescricao: TPanel;
    pnCaixa: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtQTDE: TEdit;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    edtCodigoBarras: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure NovaVenda;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaVendas: TTelaVendas;

implementation

{$R *.dfm}

uses dmPrincipal, uProdutos;

procedure TTelaVendas.edtCodigoBarrasKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
    with dmDados.sqlConsultas do
    begin
      Close;
      sql.Clear;
      sql.Add( 'SELECT * FROM TB_PRODUTOS' );
      sql.Add( 'WHERE PROD_CODIGO_BARRAS LIKE :Codigos' );
      ParamByName('Codigos').Value := edtCodigoBarras.Text;
      Open;

      if RecordCount > 0  then
      begin
        pnDescricao.Caption := dmDados.sqlConsultasPROD_PRODUTO.Value;
      end;
    end;
    end;

    edtCodigoBarras.Clear;
    edtCodigoBarras.SetFocus;
end;

procedure TTelaVendas.FormCreate(Sender: TObject);
begin
    dmDados.TB_VENDAS.Open;
    dmDados.TB_VENDAS.Last;
    edtCodigoBarras.Enabled := false;
    edtQTDE.Text := '1' ;
end;

procedure TTelaVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_F2 then
    begin
      NovaVenda;
    end;
end;

procedure TTelaVendas.FormShow(Sender: TObject);
begin
    pnDescricao.Caption := 'CAIXZA ABERTO - AGUARDANDO CLIENTES';
    pnCaixa.Caption := ' TECLE (F2) PARA REALIZAR UMA NOVA VENDA';
end;

procedure TTelaVendas.NovaVenda;
begin
    dmDados.TB_VENDAS.Insert;
    edtCodigoBarras.Enabled := true;
    edtCodigoBarras.SetFocus;
end;

end.
