unit uDM;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset, Controls,
  StdCtrls;

type
  TdmDados = class(TDataModule)
    conexao: TZConnection;
    dsClientes: TDataSource;
    tbClientes: TZTable;
    tbClientesid: TIntegerField;
    tbClientesnome: TStringField;
    tbClientescelular: TStringField;
    tbClientesbloqueado: TSmallintField;
    tbClientesdata: TDateField;
    tbClientesobservacoes: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{$R *.dfm}

end.
