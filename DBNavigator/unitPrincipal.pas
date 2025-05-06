unit unitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ExtCtrls, DBCtrls,
  Grids, DBGrids, Buttons;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    btnAbrirTabela: TButton;
    btnInserir: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    conexao: TZConnection;
    tbUsuarios: TZTable;
    dsUsuarios: TDataSource;
    dbGrid: TDBGrid;
    btnFecharTabela: TButton;
    btnPrimeiro: TBitBtn;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnUltimo: TBitBtn;
    procedure btnAbrirTabelaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tbUsuariosAfterScroll(DataSet: TDataSet);
    procedure btnInserirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAbrirTabelaClick(Sender: TObject);
begin
   tbUsuarios.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   tbUsuarios.Close;
end;

procedure TForm1.tbUsuariosAfterScroll(DataSet: TDataSet);
begin
   if tbUsuarios.Eof = true then
     begin
        btnProximo.Enabled := false;
        btnUltimo.Enabled := false;
     end
   else
     begin
        btnProximo.Enabled := true;
        btnUltimo.Enabled := true;
     end;

   if tbUsuarios.Bof = true then
     begin
        btnPrimeiro.Enabled := false;
        btnAnterior.Enabled := false;
     end
   else
      begin
        btnPrimeiro.Enabled := true;
        btnAnterior.Enabled := true;
      end;
end;

procedure TForm1.btnInserirClick(Sender: TObject);
begin
    btnInserir.Enabled  := false;
    btnDeletar.Enabled  := false;

    btnSalvar.Enabled   := true;
    btnCancelar.Enabled := true;

    tbUsuarios.Insert;
end;

procedure TForm1.btnSalvarClick(Sender: TObject);
begin
    btnInserir.Enabled  := true;
    btnDeletar.Enabled  := true;

    btnSalvar.Enabled   := false;
    btnCancelar.Enabled := false;

    tbUsuarios.Post;
end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
    btnInserir.Enabled  := true;
    btnDeletar.Enabled  := true;

    btnSalvar.Enabled   := false;
    btnCancelar.Enabled := false;

    tbUsuarios.Cancel;
end;

procedure TForm1.btnDeletarClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja realmente deletar esse registro ?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
    begin
       tbUsuarios.Delete;
    end;
end;

procedure TForm1.btnPrimeiroClick(Sender: TObject);
begin
   tbUsuarios.First;
end;

procedure TForm1.btnAnteriorClick(Sender: TObject);
begin
   tbUsuarios.Prior;
end;

procedure TForm1.btnProximoClick(Sender: TObject);
begin
   tbUsuarios.Next;
end;

procedure TForm1.btnUltimoClick(Sender: TObject);
begin
   tbUsuarios.Last;
end;

end.
