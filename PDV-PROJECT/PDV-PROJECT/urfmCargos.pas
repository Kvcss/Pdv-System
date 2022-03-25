unit urfmCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrmCargos = class(TForm)
    Label2: TLabel;
    txtGuardaNome: TEdit;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCargos: TFrmCargos;

implementation

{$R *.dfm}

procedure TFrmCargos.btnNovoClick(Sender: TObject);
begin
  btnSalvar.Enabled     := true;
  txtGuardaNome.Enabled := true;
  txtGuardaNome.Text    := EmptyStr;
  txtGuardaNome.SetFocus;
end;

end.
