program Agenda;

uses
  Forms,
  unitPrincipaal in 'unitPrincipaal.pas' {Form1},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  uDM in 'uDM.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
