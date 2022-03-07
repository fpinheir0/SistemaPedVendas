unit U_funcoes;

interface
Function EAN13( CodigoDeBarras : String ) : String;

implementation

uses SysUtils;
// funcao para gerar codigo de barras ------------------------


Function EAN13( CodigoDeBarras : String ) : String;
var nX    : Integer;
   nPeso  : Integer;
   nSoma  : Double;
   nMaior : Double;
   nDigito: Integer;
Begin

 nPeso := 3;
 nSoma := 0;

 For nX := 12 DownTo 1 do
 Begin

     nSoma := nSoma + StrToInt( CodigoDeBarras[ nX ] ) * nPeso;

   If nPeso = 3 Then
       nPeso := 1
   Else
       nPeso := 3;

 End;

 nMaior      := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
 nDigito  := Trunc( nMaior ) - Trunc( nSoma );

 If nDigito = 10 Then
     nDigito := 0;
 Result := IntToStr( nDigito );

End;
// ------------fim do gera codigo de barras


end.
