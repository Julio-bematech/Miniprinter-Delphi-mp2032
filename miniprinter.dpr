program miniprinter;

uses
  Forms,
  principal in 'principal.pas' {frm_principal},
  UnitRetornoEstendido in 'UnitRetornoEstendido.pas' {FormRetornoEstendido};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TFormRetornoEstendido, FormRetornoEstendido);
  Application.Run;
end.
