unit unitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TformConsulta = class(TForm)
    radioGroupOpcoes: TRadioGroup;
    txtConsulta: TEdit;
    labelConsulta: TLabel;
    btnRealizarConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure radioGroupOpcoesClick(Sender: TObject);
    procedure btnRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConsulta: TformConsulta;

implementation

uses unitDM;

{$R *.dfm}

procedure TformConsulta.radioGroupOpcoesClick(Sender: TObject);
begin
   if(radioGroupOpcoes.ItemIndex = 0) then
     begin
        labelConsulta.Caption := 'Pesquisar por nome';
     end;

     if(radioGroupOpcoes.ItemIndex = 1) then
       begin
          labelConsulta.Caption := 'Pesquisar por bairro';
       end;
end;

procedure TformConsulta.btnRealizarConsultaClick(Sender: TObject);
begin
  DM.sqlConsulta.Close;
  DM.sqlConsulta.SQL.Clear;

  if(radioGroupOpcoes.ItemIndex = 0) then
  begin
     DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
     DM.sqlConsulta.ParaMByName('pConsulta').AsString := txtConsulta.Text+'%';
  end;

  if(radioGroupOpcoes.ItemIndex = 1) then
  begin
     DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
     DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text+'%';
  end;
  DM.sqlConsulta.Open;
end;

end.
