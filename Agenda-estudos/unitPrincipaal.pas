unit unitPrincipaal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractConnection, ZConnection, Mask, DBCtrls,ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,db,
  ExtCtrls, Buttons, frxpngimage, jpeg, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    dbNome: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    memo_obs: TDBMemo;
    DBText1: TDBText;
    dbCelular: TMaskEdit;
    Label6: TLabel;
    nao_conectado: TImage;
    conectado: TImage;
    Button1: TButton;
    DBGrid1: TDBGrid;
    bInserir: TBitBtn;
    bAlterar: TBitBtn;
    bDeletar: TBitBtn;
    bCancelar: TBitBtn;
    bGravar: TBitBtn;
    txtBusca: TEdit;
    Label7: TLabel;
    bPesquisar: TBitBtn;
    procedure dbCelularExit(Sender: TObject);
    procedure dbNomeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    function conexao_banco():Boolean;
    procedure memo_obsExit(Sender: TObject);
    procedure bInserirClick(Sender: TObject);
    procedure bAlterarClick(Sender: TObject);
    procedure bDeletarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bGravarClick(Sender: TObject);
    procedure txtBuscaChange(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure limpa_tela ;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses uDM, unitDM, Unit1;

{$R *.dfm}

procedure TForm1.dbCelularExit(Sender: TObject);
begin
   //DBEdit2.Text := MaskEdit1.text;
   dmDados.tbClientes.FieldByName('celular').asstring := dbCelular.text;
end;

procedure TForm1.dbNomeClick(Sender: TObject);
begin
   if not (dmDados.tbClientes.State in [dsEdit, dsInsert])
   then dmDados.tbClientes.edit;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if not conexao_banco()
  then showmessage('Falha ao Conetar com Banco de dados');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  conexao_banco();
end;
function Tform1.conexao_banco():Boolean;
Begin
  dmDados.conexao.HostName := 'localhost';
  dmDados.conexao.Port     := 3306;
  dmDados.conexao.User     := 'root';
  dmDados.conexao.Password := '';
  dmDados.conexao.Database := 'agenda';
  limpa_tela;
  if dmDados.conexao.Connected
  then Begin
         conectado.visible     := true;
         nao_conectado.visible := false;
         Label6.caption        := 'Conectado ao Banco';
         conexao_banco         := true;
         conectado.visible     := true;
         nao_conectado.visible := false;
       End
  else Begin
         dmDados.conexao.Connect;
         if dmDados.conexao.Connected
         then Begin
                Label6.caption := 'Conectado ao Banco';
                conectado.visible     := true;
                nao_conectado.visible := false;
                conexao_banco         := true;
              End
         else Begin
                conectado.visible     := false;
                nao_conectado.visible := true;
                Label6.caption        := 'erro na conexão com banco';
                conexao_banco         := false;
                conectado.visible     := false;
                nao_conectado.visible := true;
              End;
       End;
  dmDados.dsClientes.AutoEdit := true;
  dmDados.tbClientes.Active   := true;
  if dmDados.tbClientes.Active
  then dbCelular.text := dmDados.tbClientes.FieldByName('celular').asstring;

End;
procedure TForm1.memo_obsExit(Sender: TObject);
begin
  bGravar.setfocus;
end;

procedure TForm1.bInserirClick(Sender: TObject);
begin
  limpa_tela;
  dmDados.tbClientes.Insert;
  if  (dmDados.tbClientes.State in [dsInsert])
  then Begin
         dbNome.text := '';
         dbCelular.Clear;
         memo_obs.Clear;
         dbNome.setfocus;
       End;
end;

procedure TForm1.bAlterarClick(Sender: TObject);
begin
  dmDados.tbClientes.edit;
  dbNome.setfocus;
end;

procedure TForm1.bDeletarClick(Sender: TObject);
begin
  dmDados.tbClientes.Delete;
end;

procedure TForm1.bCancelarClick(Sender: TObject);
begin
  dmDados.tbClientes.Cancel;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1
  then bInserirClick(self);

  if key = vk_f2
  then bAlterarClick(self);

  if key = vk_f3
  then bDeletarClick(self);

  if (key = vk_f4) or (key = vk_escape)
  then bCancelarClick(self);

  if (key = vk_f5)
  then bPesquisarClick(self);

  if key = vk_f8
  then bGravarClick(self);
end;

procedure TForm1.bGravarClick(Sender: TObject);
begin
  if (dmDados.tbClientes.State in [dsEdit, dsInsert])
  then dmDados.tbClientes.Post;

  bInserir.setFocus;
end;

procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  // dmDados.tbClientes.locate('nome', txtBusca.Text,[LoPartialKey]);
  dmDados.tbClientes.Filtered:= false;
  dmDados.tbClientes.Filter  :=  'nome LIKE ' + QuotedStr( '*' + txtBusca.text+ '*' );
  dmDados.tbClientes.Filtered:= true;
end;

procedure TForm1.bPesquisarClick(Sender: TObject);
begin
  txtBusca.setfocus;
end;
procedure tForm1.limpa_tela;
Begin
  dmDados.tbClientes.Filter  := '';
  txtBusca.text              := '';
  dmDados.tbClientes.Filtered:= false;
End;

end.
