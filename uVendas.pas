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
    edtCodigoBarras: TEdit;
    edtQTDE: TEdit;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaVendas: TTelaVendas;

implementation

{$R *.dfm}

uses dmPrincipal;

procedure TTelaVendas.FormCreate(Sender: TObject);
begin
    dmDados.TB_VENDAS.Open;
    dmDados.TB_VENDAS.Last;
    edtCodigoBarras.Enabled := false;
    edtQTDE.Text := '1' ;
end;

end.