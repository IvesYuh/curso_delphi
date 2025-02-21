unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, Enter;

type
  TfrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    CADASTRO2: TMenuItem;
    RELATORIO1: TMenuItem;
    CLIENTE1: TMenuItem;
    CLIENTE2: TMenuItem;
    CATEGORIA1: TMenuItem;
    CATEGORIA2: TMenuItem;
    N1: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE3: TMenuItem;
    CLIENTE4: TMenuItem;
    PRODUTO1: TMenuItem;
    PRODUTO2: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.CATEGORIA1Click(Sender: TObject);
begin
  frmCadCategoria:= TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(dtmConexao);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmConexao := TdtmConexao.Create(Self);  //Cria o formulario
  with dtmConexao.ConexaoDB do
    begin
      SQLHourGlass:= True;                //Troca o icone do mouse para ampulheta quando conecta no banco
      Protocol:= 'ado';                   // Configuracao das propriedades do banco (uDTMCONEXAO)
      Database:= 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=vendas;Data Source=DESKTOP-DGHK2IU\SQLEXPRESS';
      Connected:= True;                   //Conecta com o Banco de dados
    end;

    TeclaEnter:= TMREnter.Create(Self);
    TeclaEnter.FocusEnabled:=True;
    TeclaEnter.FocusColor:=clInfoBk;
end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  Close;
end;

end.
