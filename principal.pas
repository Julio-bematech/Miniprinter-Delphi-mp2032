unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, TabNotBk, StdCtrls,declaracoes, UnitRetornoEstendido;

type
  Tfrm_principal = class(TForm)
    img_back: TImage;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    tb_principal: TTabbedNotebook;
    pic_model: TImage;
    cbo_modelo: TComboBox;
    cbo_porta: TComboBox;
    edt_ip: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_porta: TButton;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    edt_bematx: TEdit;
    btn_acentuado: TButton;
    btn_bematech_tx: TButton;
    mmo_texto: TMemo;
    GroupBox5: TGroupBox;
    rdb_comprimido: TRadioButton;
    rdb_normal: TRadioButton;
    rdb_elite: TRadioButton;
    GroupBox6: TGroupBox;
    chk_ita: TCheckBox;
    chk_sub: TCheckBox;
    chk_exp: TCheckBox;
    chk_enf: TCheckBox;
    btn_formtx: TButton;
    btn_f_corte: TButton;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label4: TLabel;
    edt_altura: TEdit;
    GroupBox9: TGroupBox;
    rdb_finas: TRadioButton;
    rdb_medias: TRadioButton;
    rdb_grossas: TRadioButton;
    GroupBox10: TGroupBox;
    rdb_n_imprimir: TRadioButton;
    rdb_acima: TRadioButton;
    rdb_abaixo: TRadioButton;
    rdb_ac_ab: TRadioButton;
    edt_margem: TEdit;
    Label5: TLabel;
    btn_config_cod_barras: TButton;
    GroupBox11: TGroupBox;
    rdb_ft_normal: TRadioButton;
    rdb_ft_cond: TRadioButton;
    GroupBox12: TGroupBox;
    rdb_codabar: TRadioButton;
    rdb_code128: TRadioButton;
    rdb_code39: TRadioButton;
    rdb_code93: TRadioButton;
    rdb_ean13: TRadioButton;
    rdb_ean8: TRadioButton;
    rdb_isbn: TRadioButton;
    rdb_ITF: TRadioButton;
    rdb_msi: TRadioButton;
    rdb_pdf417: TRadioButton;
    rdb_plessey: TRadioButton;
    rdb_upca: TRadioButton;
    rdb_upce: TRadioButton;
    edt_codigo: TEdit;
    Label6: TLabel;
    btn_imp_cod: TButton;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    dlg_bmp: TOpenDialog;
    dlg_bmpesp: TOpenDialog;
    GroupBox15: TGroupBox;
    rdb_retrato: TRadioButton;
    rdb_paisagem: TRadioButton;
    edt_path_bmp: TEdit;
    Label7: TLabel;
    btn_loadbmp: TButton;
    btn_impbitmap: TButton;
    edt_path_bmp_esp: TEdit;
    btn_load_bmp_esp: TButton;
    GroupBox16: TGroupBox;
    btn_imp_bmp_esp: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edt_x: TEdit;
    edt_y: TEdit;
    Label11: TLabel;
    edt_angulo: TEdit;
    GroupBox17: TGroupBox;
    btn_cmdtx: TButton;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    rdb_a_gaveta: TRadioButton;
    rdb_gui_total: TRadioButton;
    rdb_gui_parcial: TRadioButton;
    rdb_salto: TRadioButton;
    lbl_status: TLabel;
    btn_chargraf: TButton;
    btn_autentica: TButton;
    btn_status_est: TButton;
    btn_le_status: TButton;
    procedure cbo_modeloChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbo_portaChange(Sender: TObject);
    procedure btn_portaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_acentuadoClick(Sender: TObject);
    procedure btn_bematech_txClick(Sender: TObject);
    procedure btn_f_corteClick(Sender: TObject);
    procedure btn_formtxClick(Sender: TObject);
    procedure btn_config_cod_barrasClick(Sender: TObject);
    procedure rdb_codabarClick(Sender: TObject);
    procedure rdb_ean13Click(Sender: TObject);
    procedure rdb_msiClick(Sender: TObject);
    procedure rdb_code128Click(Sender: TObject);
    procedure rdb_ean8Click(Sender: TObject);
    procedure rdb_pdf417Click(Sender: TObject);
    procedure rdb_code39Click(Sender: TObject);
    procedure rdb_code93Click(Sender: TObject);
    procedure rdb_isbnClick(Sender: TObject);
    procedure rdb_plesseyClick(Sender: TObject);
    procedure rdb_ITFClick(Sender: TObject);
    procedure rdb_upcaClick(Sender: TObject);
    procedure rdb_upceClick(Sender: TObject);
    procedure btn_imp_codClick(Sender: TObject);
    procedure btn_loadbmpClick(Sender: TObject);
    procedure btn_impbitmapClick(Sender: TObject);
    procedure btn_load_bmp_espClick(Sender: TObject);
    procedure btn_imp_bmp_espClick(Sender: TObject);
    procedure btn_cmdtxClick(Sender: TObject);
    procedure btn_le_statusClick(Sender: TObject);
    procedure btn_status_estClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  i_retorno: integer;
  i_modelo:integer;
  s_porta: string;
  ret_funcao: string;
  frm_principal: Tfrm_principal;

implementation

{$R *.dfm}

procedure Tfrm_principal.cbo_modeloChange(Sender: TObject);
begin
if cbo_modelo.Text='MP 20 CI' then
    Begin
      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      i_modelo:=1
    End
    Else
      if cbo_modelo.Text='MP 20 MI' then
      Begin
        pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
        edt_ip.Enabled:=False;
        edt_ip.Color:=ClBtnFace;
        i_modelo:=1;
      End
        Else
          if cbo_modelo.Text='MP 20 TH' then
          Begin
            pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\mi.bmp' );
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            i_modelo:=0;
          End
            Else
              if cbo_modelo.Text='MP 2000 CI' then
                Begin
                  pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  i_modelo:=0;
                End
                  Else
                    if cbo_modelo.Text='MP 2000 TH' then
                    Begin
                      pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                      edt_ip.Enabled:=False;
                      edt_ip.Color:=ClBtnFace;
                      i_modelo:=0;
                    End
                      Else
                        if cbo_modelo.Text='MP 2100 TH' then
                        Begin
                          pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2100.bmp' );
                          edt_ip.Enabled:=False;
                          edt_ip.Color:=ClBtnFace;
                          i_modelo:=0;
                        End
                          Else
                            if cbo_modelo.Text='MP 4000 TH' then
                            Begin
                              pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
                              edt_ip.Enabled:=True;
                              edt_ip.Color:=ClWhite;
                              i_modelo:=5;
                            End
                              Else
                                if cbo_modelo.Text='MP 4200 TH' then
                                Begin
                                  pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\4000.bmp' );
                                  edt_ip.Enabled:=True;
                                  edt_ip.Color:=ClWhite;
                                  i_modelo:=7;
                                End
                                  Else
                                     if cbo_modelo.Text='MP 2500 TH' then
                                     Begin
                                        pic_model.Picture.LoadFromFile( ExtractFilePath( Application.ExeName ) + 'img\2500.bmp' );
                                        edt_ip.Enabled:=True;
                                        edt_ip.Color:=ClWhite;
                                        i_modelo:=8;
                                     End
                                    Else
                                      Application.MessageBox('Modelo incorreto ou não informado','Aviso!',1);

end;

procedure Tfrm_principal.FormActivate(Sender: TObject);
begin

//TRATAR CAMPO EDT_IP

edt_ip.Enabled:=false;
edt_ip.Color:=clBtnFace;

end;

procedure Tfrm_principal.cbo_portaChange(Sender: TObject);
begin
if cbo_porta.Text='COM1' then
    Begin
      edt_ip.Enabled:=False;
      edt_ip.Color:=ClBtnFace;
      s_porta:=cbo_porta.text;
    End
      Else
        if cbo_porta.Text='COM2' then
          Begin
            edt_ip.Enabled:=False;
            edt_ip.Color:=ClBtnFace;
            s_porta:=cbo_porta.text;
          End
            Else
              if cbo_porta.Text='COM3' then
                Begin
                  edt_ip.Enabled:=False;
                  edt_ip.Color:=ClBtnFace;
                  s_porta:=cbo_porta.text;
                End
                  Else
                    if cbo_porta.Text='COM4' then
                      Begin
                        edt_ip.Enabled:=False;
                        edt_ip.Color:=ClBtnFace;
                        s_porta:=cbo_porta.text;
                      End
                        Else
                           if cbo_porta.Text='LPT1' then
                            Begin
                              edt_ip.Enabled:=False;
                              edt_ip.Color:=ClBtnFace;
                              s_porta:=cbo_porta.text;
                            End
                              Else
                                if cbo_porta.Text='LPT2' then
                                  Begin
                                    edt_ip.Enabled:=False;
                                    edt_ip.Color:=ClBtnFace;
                                    s_porta:=cbo_porta.text;
                                  End
                                    Else
                                      if cbo_porta.Text='USB' then
                                        Begin
                                          edt_ip.Enabled:=False;
                                          edt_ip.Color:=ClBtnFace;
                                          s_porta:=cbo_porta.text;
                                        End
                                          Else
                                            if cbo_porta.Text='ETHERNET' then
                                              Begin
                                                edt_ip.Enabled:=True;
                                                edt_ip.Color:=ClWhite;
                                                s_porta:=edt_ip.text;

                                               End
                                  Else
                                    Application.MessageBox('Erro ao abrir porta de comunicação','Aviso!',1);
End;


procedure Tfrm_principal.btn_portaClick(Sender: TObject);
begin
//COMANDO EXECUTADO INTERNAMENTE PELA DLL PARA
//CONFIGURAÇÃO DO MODELO DA IMPRESSORA QUE SERÁ CONECTADA

ConfiguraModeloImpressora(i_modelo);

//COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

i_retorno:= IniciaPorta(pchar(s_porta));

//VALIDAÇÃO DE EXECUÇÃO DO COMANDO


if i_retorno=1 then
  Begin
    Application.MessageBox('Impressora conectada','Sucesso!',0);
  end
    Else
      Application.MessageBox('Erro de conexão','Erro!',0);

end;

procedure Tfrm_principal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

// COMANDO PARA FECHAR A PORTA DE COMUNICAÇÃO DA IMPRESSORA
// USADO AO FECHAR O FORMULÁRIO PARA EVITAR QUE A PORTA DE
//COMUNICAÇÃO FIQUE ABERTA NO WINDOWS
FechaPorta();
end;

procedure Tfrm_principal.btn_acentuadoClick(Sender: TObject);
begin

edt_bematx.Text:='ãâéè?;:/{}[]ª|\,.<>!@#$%¨&*()_+=';

end;

procedure Tfrm_principal.btn_bematech_txClick(Sender: TObject);
var
s_bematx: string;
begin
// IMPRESSÃO DE TEXTO SIMPLES

s_bematx:=edt_bematx.Text;

i_retorno:=BematechTX(pchar(s_bematx+#10));

if i_retorno <> 1 then
    Application.MessageBox('Erro de comunicação','Erro!',0);


end;

procedure Tfrm_principal.btn_f_corteClick(Sender: TObject);
begin
// COMANDO PARA ACIONAMENTO DA GUILHOTINA
i_retorno:=AcionaGuilhotina(1);

if i_retorno <> 1 then
    Application.MessageBox('Erro de comunicação','Erro!',0);

end;

procedure Tfrm_principal.btn_formtxClick(Sender: TObject);
var
s_texto: string;
i_tipo_letra: integer;
i_italico: integer;
i_sublinhado: integer;
i_expandido: integer;
i_enfatizado: integer;

begin

//COMANDO FORMATATX PARA IMPRESSÃO DE TEXTO FORMATADO

if rdb_comprimido.checked=true then i_tipo_letra:=1;
if rdb_normal.checked=true then i_tipo_letra:=2;
if rdb_elite.checked=true then i_tipo_letra:=3;

if chk_ita.checked=true then i_italico:=1
  Else
    i_italico:=0;

if chk_exp.checked=true then i_expandido:=1
  Else
    i_expandido:=0;

if chk_sub.checked=true then i_sublinhado:=1
  Else
    i_sublinhado:=0;

if chk_enf.checked=true then i_enfatizado:=1
  Else
    i_enfatizado:=0;

s_texto:= mmo_texto.text;
i_retorno:=FormataTX(pchar(s_texto)+#13+#10,
                     i_tipo_letra,
                     i_italico,
                     i_sublinhado,
                     i_expandido,
                     i_enfatizado);


// ANÁLISE DE RETORNO DA EXECUÇÃO DO COMANDO

if i_retorno = -2 then
    Begin
      Application.MessageBox('Parâmetro Inválido','Erro!',0);
    End
      Else
        if i_retorno <> 1 then
        Begin
          Application.MessageBox('Erro de comunicação/Execução','Erro!',0);
        End

end;

procedure Tfrm_principal.btn_config_cod_barrasClick(Sender: TObject);
var
s_altura: string;
i_p_caraceteres: integer;
i_fonte: integer;
s_margem: string;
i_barras: integer;

begin

// CONFIGURAÇÃO DO CÓDIGO DE BARRAS PARA IMPRESSÃO

s_altura:= edt_altura.Text;
s_margem:= edt_margem.Text;


// CONFIGURAÇÃO DA ESPESSURA DAS BARRAS
if rdb_finas.checked=true then i_barras:=0;
if rdb_medias.checked=true then i_barras:=1;
if rdb_grossas.checked=true then i_barras:=2;

//CONFIGURAÇÃO DA POSIÇÃO DOS CARACTERES IMPRESSOS NO CÓDIGO
if rdb_n_imprimir.checked=true then i_p_caraceteres:=0;
if rdb_acima.checked=true then i_p_caraceteres:=1;
if rdb_abaixo.checked=true then i_p_caraceteres:=2;
if rdb_ac_ab.checked=true then i_p_caraceteres:=3;

//CONFIGURAÇÃO DA FONTE (TIPO)     //
if rdb_ft_normal.checked=true then i_fonte:=0;
if rdb_ft_cond.checked=true then i_fonte:=1;

i_retorno:=ConfiguraCodigoBarras(strtoint(s_altura),
                                 i_barras,
                                 i_p_caraceteres,
                                 i_fonte,
                                 strtoint(s_altura));

// ANÁLISE DE RETORNO DE EXECUÇÃO DO COMANDO
if i_retorno = -2 then
    Begin
      Application.MessageBox('Parâmetro Inválido','Erro!',0);
    End
      Else
        if i_retorno <> 1 then
        Begin
          Application.MessageBox('Erro de comunicação/Execução','Erro!',0);
        End






end;

procedure Tfrm_principal.rdb_codabarClick(Sender: TObject);
begin

edt_codigo.Text:='12345';

end;

procedure Tfrm_principal.rdb_ean13Click(Sender: TObject);
begin
edt_codigo.Text:='012345678912';

end;

procedure Tfrm_principal.rdb_msiClick(Sender: TObject);
begin
edt_codigo.Text:='123';

end;

procedure Tfrm_principal.rdb_code128Click(Sender: TObject);
begin
edt_codigo.Text:='Bematech';

end;

procedure Tfrm_principal.rdb_ean8Click(Sender: TObject);
begin
edt_codigo.Text:='1234567';

end;

procedure Tfrm_principal.rdb_pdf417Click(Sender: TObject);
begin
edt_codigo.Text:='Bematech - Suporte ao Desenvolvedor -  drivers, ferramentas,tutoriais e treinamentos disponibilizados em nosso site visite http://www.bematech.com.br ';

end;

procedure Tfrm_principal.rdb_code39Click(Sender: TObject);
begin
edt_codigo.Text:='abc123';

end;

procedure Tfrm_principal.rdb_code93Click(Sender: TObject);
begin
edt_codigo.Text:='123-abc';

end;

procedure Tfrm_principal.rdb_isbnClick(Sender: TObject);
begin
edt_codigo.Text:='9727115306';

end;

procedure Tfrm_principal.rdb_plesseyClick(Sender: TObject);
begin
edt_codigo.Text:='12345';

end;

procedure Tfrm_principal.rdb_ITFClick(Sender: TObject);
begin
edt_codigo.Text:='123456789123';

end;

procedure Tfrm_principal.rdb_upcaClick(Sender: TObject);
begin
edt_codigo.Text:='12345678901';

end;

procedure Tfrm_principal.rdb_upceClick(Sender: TObject);
begin
edt_codigo.Text:='123456';

end;

procedure Tfrm_principal.btn_imp_codClick(Sender: TObject);
var
s_codigo: string;
begin
// IMPRESSÃO DO CÓDIGO DE BARRAS NA IMPRESSORA

s_codigo:=edt_codigo.Text;

if rdb_codabar.checked=true then
  i_retorno:=ImprimeCodigoBarrasCODABAR(pchar(s_codigo));

if rdb_code128.checked=true then
  i_retorno:=ImprimeCodigoBarrasCODE128(pchar(s_codigo));

if rdb_code39.checked=true then
  i_retorno:=ImprimeCodigoBarrasCODE39(pchar(s_codigo));

if rdb_code93.checked=true then
  i_retorno:=ImprimeCodigoBarrasCODE93(pchar(s_codigo));

if rdb_ean13.checked=true then
  i_retorno:=ImprimeCodigoBarrasEAN13(pchar(s_codigo));

if rdb_ean8.checked=true then
  i_retorno:=ImprimeCodigoBarrasEAN8(pchar(s_codigo));

if rdb_isbn.checked=true then
  i_retorno:=ImprimeCodigoBarrasISBN(pchar(s_codigo));

if rdb_itf.checked=true then
  i_retorno:=ImprimeCodigoBarrasITF(pchar(s_codigo));

if rdb_msi.checked=true then
  i_retorno:=ImprimeCodigoBarrasmsi(pchar(s_codigo));



// ESTA ROTINA DIFERENTEMENTE DAS OUTROS TEM MAIS PARÂMETROS PARA CONFIGURAÇÃO
// DO CÓDIGO DE BARRAS SÃO ELES:
//Nível de Correção de Erros - Inteiro entre 0 à 8.
//Quanto mais alto o nível, melhor a leitura do código, maior a impressão e
//menor o número de informações que poderão ser impressas.
//Altura - Inteiro entre 1 à 8.
//Altura do caracter do código (pitch). 1 pitch = altura de 0,125 mm.
//Largura - Inteiro entre 1 à 4.
//largura do caracter do código (pitch). 1 pitch = altura de 0,125 mm.
//Número de Colunas Impressa na Linha - Inteiro entre 0 à 30.
//"0" (zero) utiliza o máximo de colunas que o mecanismo permite para a largura informada (pitch). Caso não caiba na linha a impressora ajusta, automaticamente, para o máximo de colunas permitido na linha.
//Código - String do código que deseja gerar
// NO EXEMPLO TODOS OS PARÂMETROS SÃO FIXOS MENOS O CÓDIGO QUE PODE SER INFORMADO NO CAMPO EDT_CODIGO


if rdb_pdf417.checked=true then
  i_retorno:=ImprimeCodigoBarrasPDF417(4,4,2,0,pchar(s_codigo));

if rdb_plessey.checked=true then
  i_retorno:=ImprimeCodigoBarrasPLESSEY(pchar(s_codigo));

if rdb_upca.checked=true then
  i_retorno:=ImprimeCodigoBarrasUPCA(pchar(s_codigo));

if rdb_upce.checked=true then
  i_retorno:=ImprimeCodigoBarrasUPCE(pchar(s_codigo));




// ANÁLISE DE RETORNO DE EXECUÇÃO DO COMANDO
if i_retorno = -2 then
    Begin
      Application.MessageBox('Parâmetro Inválido','Erro!',0);
    End
      Else
        if i_retorno <> 1 then
        Begin
          Application.MessageBox('Erro de comunicação/Execução','Erro!',0);
        End

end;

procedure Tfrm_principal.btn_loadbmpClick(Sender: TObject);
begin
dlg_bmp.Execute;
edt_path_bmp.Text:=dlg_bmp.FileName;


end;

procedure Tfrm_principal.btn_impbitmapClick(Sender: TObject);
var
s_path_bmp: string;
i_modo: integer;
begin
//IMPRESSÃO DE BITMAP SIMPLES (FUNÇÃO IMPRIME BITMAP)

s_path_bmp:=edt_path_bmp.Text;

if rdb_paisagem.checked=true then i_modo:=1;
if rdb_retrato.checked=true then i_modo:=0;



i_retorno:=ImprimeBitmap(pchar(s_path_bmp),i_modo);

case i_retorno of

0: ret_funcao := '0: Erro de comunicação!';
1: ret_funcao:= '1: Comando OK!';
-1: ret_funcao:= '-1: Erro de execução!';
-2: ret_funcao:= '-2: Arquivo inexistente!';
-3: ret_funcao:= '-4: Erro na leitura ou arquivo inválido.';
-4: ret_funcao:= '-5: Parâmetro inválido!';
end;

Application.MessageBox(pchar(ret_funcao),'Erro', MB_ICONINFORMATION + MB_OK);

end;

procedure Tfrm_principal.btn_load_bmp_espClick(Sender: TObject);
begin
dlg_bmpesp.Execute;
edt_path_bmp_esp.Text:=dlg_bmpesp.FileName;
end;

procedure Tfrm_principal.btn_imp_bmp_espClick(Sender: TObject);
var
s_x: string;
s_y: string;
s_angulo: string;
s_path_bmpesp: string;
begin
 // IMPRIME BITMAP ESPECIAL

s_x:= edt_x.Text;
s_y:= edt_y.Text;
s_angulo:= edt_angulo.Text;
s_path_bmpesp:=edt_path_bmp_esp.Text;

i_retorno:= ImprimeBmpEspecial(pchar(s_path_bmpesp),
                               strtoint(s_x),
                               strtoint(s_y),
                               strtoint(s_angulo));


case i_retorno of

0: ret_funcao := '0: Erro de comunicação!';
1: ret_funcao:= '1: Comando OK!';
-1: ret_funcao:= '-1: Erro de execução!';
-2: ret_funcao:= '-2: Arquivo inexistente!';
-3: ret_funcao:= '-4: Erro na leitura ou arquivo inválido.';
-4: ret_funcao:= '-5: Parâmetro inválido!';


end;

end;



procedure Tfrm_principal.btn_cmdtxClick(Sender: TObject);
var
s_cmdtx: string;
begin

// EXECUÇÃO DA FUNÇÃO COMANDOTX
// Gaveta
// Avanço de papel
//Corte de papel (total e parcial)

if rdb_a_gaveta.Checked=true then
  Begin
    s_cmdtx:=#27+#118#140;
    i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
  End
    Else
      if rdb_salto.Checked=true then
        Begin
          s_cmdtx:=#13+#10;
          i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
        End
          Else
            if rdb_gui_total.Checked=true then
              Begin
                s_cmdtx:=#27+#119;
                i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
              End
                Else
                  if rdb_gui_parcial.Checked=true then
                    Begin
                      s_cmdtx:=#27+#109;
                      i_retorno:=ComandoTX(s_cmdtx,length (s_cmdtx));
                    End;

case i_retorno of

0: ret_funcao := '0: Erro de comunicação!';
1: ret_funcao:= '1: Comando OK!';

end;

end;
procedure Tfrm_principal.btn_le_statusClick(Sender: TObject);
var
s_stporta: String;
begin
//ANÁLISE DO RETORNO DE STATUS DAS IMPRESSORAS FISCAIS

if s_porta='COM1' then s_stporta:='serial';
if s_porta='COM2' then s_stporta:='serial';
if s_porta='COM3' then s_stporta:='serial';
if s_porta='COM4' then s_stporta:='serial';
if s_porta='lpt1' then s_stporta:='lpt';
if s_porta='lpt2' then s_stporta:='lpt';
if s_porta='Ethernet' then s_stporta:='rede';

i_retorno:=Le_Status();

//******************IMPRESSORAS MP 20 CI E MI - CONEXÃO SERIAL******************

  if (i_modelo=1) and (s_stporta='serial') then
    Begin
    if i_retorno= 24 then lbl_status.Caption:='24 - ON LINE';
    if i_retorno= 0 then lbl_status.Caption:='0 - OFF LINE';
    if i_retorno= 32 then lbl_status.Caption:='32 - SEM PAPEL';
    End;
//******************************************************************************

//******************IMPRESSORAS MP 20 CI E MI - CONEXÃO PARALELA****************

  if (i_modelo=1) and (s_stporta='lpt') then
    Begin
    if i_retorno= 144 then lbl_status.Caption:='144 - ON LINE';
    if i_retorno= 0 then lbl_status.Caption:='0 - OFF LINE OU IMP. SEM PAPEL';
    End;
//******************************************************************************

//******IMPRESSORAS MP 20 TH, 2000 CI 2000 TH 2100 TH - CONEXÃO SERIAL**********

  if (i_modelo=0) and (s_stporta='serial') then
    Begin
    if i_retorno= 0 then lbl_status.Caption:='0 - OFF LINE';
    if i_retorno= 24 then lbl_status.Caption:='24 - ON LINE OU POUCO PAPEL';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    End;
//******************************************************************************

//******IMPRESSORAS MP 20 TH, 2000 CI 2000 TH 2100 TH - CONEXÃO PARALELA********

  if (i_modelo=0) and (s_stporta='lpt') then
    Begin
    if i_retorno= 79 then lbl_status.Caption:='79 - OFF LINE';
    if i_retorno= 144 then lbl_status.Caption:='144 - ON LINE OU POUCO PAPEL';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    if i_retorno= 0 then lbl_status.Caption:='0 - ERRO DE COMUNICAÇÃO';
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO PARALELA*********************

  if (i_modelo=5) and (s_stporta='lpt') then
    Begin
    if i_retorno= 40 then lbl_status.Caption:='40 - IMP. OFF LINE/SEM COMUNICAÇÃO';
    if i_retorno= 24 then lbl_status.Caption:='24 - IMPRESSORA ON LINE';
    if i_retorno= 128 then lbl_status.Caption:='128 - IMP. SEM PAPEL';
    if i_retorno= 0 then lbl_status.Caption:='0 - POUCO PAPEL';
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO ETHERNET*********************

  if (i_modelo=5) and (s_stporta='rede') then
    Begin
    if i_retorno= 24 then lbl_status.Caption:='24 - IMPRESSORA ON LINE';
    if i_retorno= 0 then lbl_status.Caption:='0 - IMP. OFF LINE/SEM COMUNICAÇÃO';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    if i_retorno= 24 then lbl_status.Caption:='24 - ON LINE - POUCO PAPEL';
    End;
//******************************************************************************

//******************IMPRESSORAS MP 4000 TH CONEXÃO SERIAL***********************

  if (i_modelo=5) and (s_stporta='serial') then
    Begin
    if i_retorno= 24 then lbl_status.Caption:='24 - IMPRESSORA ON LINE';
    if i_retorno= 0 then lbl_status.Caption:='0 - IMP. OFF LINE/SEM COMUNICAÇÃO';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    if i_retorno= 5 then lbl_status.Caption:='5 - ON LINE - POUCO PAPEL';
    End;
//******************************************************************************

//*********************IMPRESSORAS MP 4000 TH CONEXÃO USB***********************

  if (i_modelo=5) and (s_stporta='serial') then
    Begin
    if i_retorno= 24 then lbl_status.Caption:='24 - IMPRESSORA ON LINE';
    if i_retorno= 68 then lbl_status.Caption:='68 - IMP. OFF LINE/SEM COMUNICAÇÃO';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    if i_retorno= 24 then lbl_status.Caption:='24 - ON LINE - POUCO PAPEL';
    End;
//******************************************************************************

//*******************IMPRESSORAS MP 4200 TH CONEXÃO TODAS***********************

  if (i_modelo=7) then
    Begin
    if i_retorno= 24 then lbl_status.Caption:='24 - IMPRESSORA ON LINE';
    if i_retorno= 0 then lbl_status.Caption:='0 - IMP. OFF LINE/SEM COMUNICAÇÃO';
    if i_retorno= 32 then lbl_status.Caption:='32 - IMP. SEM PAPEL';
    if i_retorno= 5 then lbl_status.Caption:='5 - ON LINE - POUCO PAPEL';
    if i_retorno= 9 then lbl_status.Caption:='9 - TAMPA ABERTA';
    End;
//******************************************************************************



end;

procedure Tfrm_principal.btn_status_estClick(Sender: TObject);
begin
FormRetornoEstendido := TFormRetornoEstendido.Create(Application);
FormRetornoEstendido.ShowModal;
end;

end.
