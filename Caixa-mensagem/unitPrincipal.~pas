unit unitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    cbProfissoes: TComboBox;
    Label1: TLabel;
    btnEscolha: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure btnEscolhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   ShowMessage('Teste de Mensagem com ShowMessage.');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Application.MessageBox('Teste de Mensagem', 'Atenção', MB_ICONEXCLAMATION+MB_OK);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Informação', MB_ICONINFORMATION+MB_OK);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Application.MessageBox('Teste de Mensagem', 'Erro', MB_ICONERROR+MB_OK);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Application.MessageBox('Teste de Mensagem', 'Pergunta', MB_ICONQUESTION+MB_OK);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   Application.MessageBox('Teste de Mensagem', 'Título', MB_ICONQUESTION+MB_OKCANCEL);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
   if Application.MessageBox('Teste de Mensagem', 'Título', MB_ICONQUESTION+MB_YESNO) = mrYes then
    begin
       ShowMessage('Você escolheu a opção Sim.');
    end
   else
     begin
        ShowMessage('Você escolheu a opção Não.');
    end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   if(Application.MessageBox('Deseja Realmente sair do sistema?', 'Finalizar', MB_ICONQUESTION+MB_YESNO)) = mryes then
     begin
        Application.Terminate;
     end;
end;

procedure TForm1.btnEscolhaClick(Sender: TObject);
begin
   case cbProfissoes.ItemIndex of
      0:
        begin
           ShowMessage('Escolha: Professor');
           ShowMessage('Teste de segundo comando');
        end;

      1: ShowMessage('Escolha: Desenvolvedor');
      2: ShowMessage('Escolha: Cientista');
      3: ShowMessage('Escolha: Engenheiro');
   end;
end;

end.


