program Consultas;

uses
  Forms,
  unitPrincipal in 'unitPrincipal.pas' {formConsulta},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformConsulta, formConsulta);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
