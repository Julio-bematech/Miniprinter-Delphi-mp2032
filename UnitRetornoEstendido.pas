unit UnitRetornoEstendido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, declaracoes;

type
  TFormRetornoEstendido = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Memo2: TMemo;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Memo3: TMemo;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Memo4: TMemo;
    GroupBox5: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Memo5: TMemo;
    Edit38: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    Edit39: TEdit;
    Label40: TLabel;
    Edit40: TEdit;
    Label41: TLabel;
    Edit41: TEdit;
    Label42: TLabel;
    Edit42: TEdit;
    Voltar: TButton;
    LerRetEstendido: TButton;
    procedure FormCreate(Sender: TObject);
    procedure VoltarClick(Sender: TObject);
    procedure LerRetEstendidoClick(Sender: TObject);
  private
    { Private declarations }
    Function HexToBin(Hexadecimal: string): string;
  public
    { Public declarations }
  end;

var
  FormRetornoEstendido: TFormRetornoEstendido;

implementation
function LeituraStatusEstendido( A: array of byte ): integer; stdcall; far; external 'MP2032.DLL';

{$R *.dfm}

procedure TFormRetornoEstendido.FormCreate(Sender: TObject);
var
buffer: array of byte;
h1,h2,h3,h4,h5 : PAnsiChar;
h1x,h2x,h3x,h4x,h5x : PAnsiChar;
b1,b2,b3,b4,b5 : string;
c10, c11, c12, c13, c14, c15, c16, c17,
c20, c21, c22, c23, c24, c25, c26, c27,
c30, c31, c32, c33, c34, c35, c36, c37,
c40, c41, c42, c43, c44, c45, c46, c47,
c50, c51, c52, c53, c54, c55, c56, c57 : string;
i_retorno : integer;

begin

try
SetLength(buffer, 20);
begin
    i_retorno:=LeituraStatusEstendido(buffer);

    // Converte o retorno para Hexa
    h1 := PChar(IntToHex(buffer[0],20));
    h2 := PChar(IntToHex(buffer[1],20));
    h3 := PChar(IntToHex(buffer[2],20));
    h4 := PChar(IntToHex(buffer[3],20));
    h5 := PChar(IntToHex(buffer[4],20));

    // pega somente os �ltimos 2 digitos dos 20 retornados
    h1x := PChar(Copy(h1,18,2));
    h2x := PChar(Copy(h2,18,2));
    h3x := PChar(Copy(h3,18,2));
    h4x := PChar(Copy(h4,18,2));
    h5x := PChar(Copy(h5,18,2));

    // Converte os dois digitos Hexa para Bin�rios (8 digitos)
    b1 := HexToBin(h1x);
    b2 := HexToBin(h2x);
    b3 := HexToBin(h3x);
    b4 := HexToBin(h4x);
    b5 := HexToBin(h5x);


    // Separa bit a bit e mostra em tela

    // 1� Byte
    c10 := Copy(b1,0,1);
    Edit1.Text := c10;
    c11 := Copy(b1,1,1);
    Edit2.Text := c11;
    c12 := Copy(b1,2,1);
    Edit3.Text := c12;
    c13 := Copy(b1,3,1);
    Edit4.Text := c13;
    c14 := Copy(b1,4,1);
    Edit5.Text := c14;
    c15 := Copy(b1,5,1);
    Edit6.Text := c15;
    c16 := Copy(b1,6,1);
    Edit7.Text := c16;
    c17 := Copy(b1,7,1);
    Edit39.Text := c17;

    // 2� Byte
    c20 := Copy(b2,0,1);
    Edit8.Text := c20;
    c21 := Copy(b2,1,1);
    Edit9.Text := c21;
    c22 := Copy(b2,2,1);
    Edit10.Text := c22;
    c23 := Copy(b2,3,1);
    Edit11.Text := c23;
    c24 := Copy(b2,4,1);
    Edit12.Text := c24;
    c25 := Copy(b2,5,1);
    Edit13.Text := c25;
    c26 := Copy(b2,6,1);
    Edit14.Text := c26;
    c27 := Copy(b2,7,1);
    Edit40.Text := c27;

    // 3� Byte
    c30 := Copy(b3,0,1);
    Edit15.Text := c30;
    c31 := Copy(b3,1,1);
    Edit16.Text := c31;
    c32 := Copy(b3,2,1);
    Edit17.Text := c32;
    c33 := Copy(b3,3,1);
    Edit18.Text := c33;
    c34 := Copy(b3,4,1);
    Edit19.Text := c34;
    c35 := Copy(b3,5,1);
    Edit20.Text := c35;
    c36 := Copy(b3,6,1);
    Edit21.Text := c36;
    c37 := Copy(b3,7,1);
    Edit41.Text := c37;

    // 4� Byte
    c40 := Copy(b4,0,1);
    Edit22.Text := c40;
    c41 := Copy(b4,1,1);
    Edit23.Text := c41;
    c42 := Copy(b4,2,1);
    Edit24.Text := c42;
    c43 := Copy(b4,3,1);
    Edit25.Text := c43;
    c44 := Copy(b4,4,1);
    Edit26.Text := c44;
    c45 := Copy(b4,5,1);
    Edit27.Text := c45;
    c46 := Copy(b4,6,1);
    Edit28.Text := c46;
    c47 := Copy(b3,7,1);
    Edit42.Text := c47;

    // 5� Byte
    c50 := Copy(b5,0,1);
    Edit29.Text := c50;
    c51 := Copy(b5,1,1);
    Edit30.Text := c51;
    c52 := Copy(b5,2,1);
    Edit31.Text := c52;
    c53 := Copy(b5,3,1);
    Edit32.Text := c53;
    c54 := Copy(b5,4,1);
    Edit33.Text := c54;
    c55 := Copy(b5,5,1);
    Edit34.Text := c55;
    c56 := Copy(b5,6,1);
    Edit35.Text := c56;
    c57 := Copy(b3,7,1);
    Edit38.Text := c57;
end
except
begin
  ShowMessage('Erro ao obter o status estendido...');
end;
end;
end;
///////////////////////////////////////////////////////////////////
// Fun��o para converter Hexa para Binario ////////////////////////
///////////////////////////////////////////////////////////////////
function TFormRetornoEstendido.HexToBin(Hexadecimal: string): string;
const
  BCD: array [0..15] of string =
    ('0000', '0001', '0010', '0011', '0100', '0101', '0110', '0111',
    '1000', '1001', '1010', '1011', '1100', '1101', '1110', '1111');
var
  I : integer;
begin
  for I := Length(Hexadecimal) downto 1 do
    Result := BCD[StrToInt('$' + Hexadecimal[i])] + Result;
end;
///////////////////////////////////////////////////////////////////

procedure TFormRetornoEstendido.VoltarClick(Sender: TObject);
begin
Close;
end;

procedure TFormRetornoEstendido.LerRetEstendidoClick(Sender: TObject);
var
buffer: array of byte;
h1,h2,h3,h4,h5 : PAnsiChar;
h1x,h2x,h3x,h4x,h5x : PAnsiChar;
b1,b2,b3,b4,b5 : string;
c10, c11, c12, c13, c14, c15, c16, c17,
c20, c21, c22, c23, c24, c25, c26, c27,
c30, c31, c32, c33, c34, c35, c36, c37,
c40, c41, c42, c43, c44, c45, c46, c47,
c50, c51, c52, c53, c54, c55, c56, c57 : string;
i_retorno : integer;

begin

try
SetLength(buffer, 20);
begin
    i_retorno:=LeituraStatusEstendido(buffer);

    // Converte o retorno para Hexa
    h1 := PChar(IntToHex(buffer[0],20));
    h2 := PChar(IntToHex(buffer[1],20));
    h3 := PChar(IntToHex(buffer[2],20));
    h4 := PChar(IntToHex(buffer[3],20));
    h5 := PChar(IntToHex(buffer[4],20));

    // pega somente os �ltimos 2 digitos dos 20 retornados
    h1x := PChar(Copy(h1,18,2));
    h2x := PChar(Copy(h2,18,2));
    h3x := PChar(Copy(h3,18,2));
    h4x := PChar(Copy(h4,18,2));
    h5x := PChar(Copy(h5,18,2));

    // Converte os dois digitos Hexa para Bin�rios (8 digitos)
    b1 := HexToBin(h1x);
    b2 := HexToBin(h2x);
    b3 := HexToBin(h3x);
    b4 := HexToBin(h4x);
    b5 := HexToBin(h5x);

Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
Edit11.Clear;
Edit12.Clear;
Edit13.Clear;
Edit14.Clear;
Edit15.Clear;
Edit16.Clear;
Edit17.Clear;
Edit18.Clear;
Edit19.Clear;
Edit20.Clear;
Edit21.Clear;
Edit22.Clear;
Edit23.Clear;
Edit24.Clear;
Edit25.Clear;
Edit26.Clear;
Edit27.Clear;
Edit28.Clear;
Edit29.Clear;
Edit30.Clear;
Edit31.Clear;
Edit32.Clear;
Edit33.Clear;
Edit34.Clear;
Edit35.Clear;
Edit38.Clear;
Edit39.Clear;
Edit40.Clear;
Edit41.Clear;
Edit42.Clear;

    // Separa bit a bit e mostra em tela

    // 1� Byte
    c10 := Copy(b1,0,1);
    Edit1.Text := c10;
    c11 := Copy(b1,1,1);
    Edit2.Text := c11;
    c12 := Copy(b1,2,1);
    Edit3.Text := c12;
    c13 := Copy(b1,3,1);
    Edit4.Text := c13;
    c14 := Copy(b1,4,1);
    Edit5.Text := c14;
    c15 := Copy(b1,5,1);
    Edit6.Text := c15;
    c16 := Copy(b1,6,1);
    Edit7.Text := c16;
    c17 := Copy(b1,7,1);
    Edit39.Text := c17;

    // 2� Byte
    c20 := Copy(b2,0,1);
    Edit8.Text := c20;
    c21 := Copy(b2,1,1);
    Edit9.Text := c21;
    c22 := Copy(b2,2,1);
    Edit10.Text := c22;
    c23 := Copy(b2,3,1);
    Edit11.Text := c23;
    c24 := Copy(b2,4,1);
    Edit12.Text := c24;
    c25 := Copy(b2,5,1);
    Edit13.Text := c25;
    c26 := Copy(b2,6,1);
    Edit14.Text := c26;
    c27 := Copy(b2,7,1);
    Edit40.Text := c27;

    // 3� Byte
    c30 := Copy(b3,0,1);
    Edit15.Text := c30;
    c31 := Copy(b3,1,1);
    Edit16.Text := c31;
    c32 := Copy(b3,2,1);
    Edit17.Text := c32;
    c33 := Copy(b3,3,1);
    Edit18.Text := c33;
    c34 := Copy(b3,4,1);
    Edit19.Text := c34;
    c35 := Copy(b3,5,1);
    Edit20.Text := c35;
    c36 := Copy(b3,6,1);
    Edit21.Text := c36;
    c37 := Copy(b3,7,1);
    Edit41.Text := c37;

    // 4� Byte
    c40 := Copy(b4,0,1);
    Edit22.Text := c40;
    c41 := Copy(b4,1,1);
    Edit23.Text := c41;
    c42 := Copy(b4,2,1);
    Edit24.Text := c42;
    c43 := Copy(b4,3,1);
    Edit25.Text := c43;
    c44 := Copy(b4,4,1);
    Edit26.Text := c44;
    c45 := Copy(b4,5,1);
    Edit27.Text := c45;
    c46 := Copy(b4,6,1);
    Edit28.Text := c46;
    c47 := Copy(b3,7,1);
    Edit42.Text := c47;

    // 5� Byte
    c50 := Copy(b5,0,1);
    Edit29.Text := c50;
    c51 := Copy(b5,1,1);
    Edit30.Text := c51;
    c52 := Copy(b5,2,1);
    Edit31.Text := c52;
    c53 := Copy(b5,3,1);
    Edit32.Text := c53;
    c54 := Copy(b5,4,1);
    Edit33.Text := c54;
    c55 := Copy(b5,5,1);
    Edit34.Text := c55;
    c56 := Copy(b5,6,1);
    Edit35.Text := c56;
    c57 := Copy(b3,7,1);
    Edit38.Text := c57;
end
except
begin
  ShowMessage('Erro ao obter o status estendido...');
end;
end;
end;

end.
