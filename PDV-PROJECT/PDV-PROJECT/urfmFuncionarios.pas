unit urfmFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmFuncionarios = class(TForm)
    Label1: TLabel;
    rbNome: TRadioButton;
    rbCPF: TRadioButton;
    txtBuscarNome: TEdit;
    txtBuscarCPF: TMaskEdit;
    Label2: TLabel;
    txtGuardaNome: TEdit;
    Label3: TLabel;
    txtGuardaCPF: TMaskEdit;
    txtGuardaTelefone: TMaskEdit;
    Label4: TLabel;
    txtGuardaEndereco: TEdit;
    txtGuardaCargo: TComboBox;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

end.
