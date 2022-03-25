program pdv;

uses
  Vcl.Forms,
  urfmLogin in 'urfmLogin.pas' {UfrmLogin},
  ufrmMenu in 'ufrmMenu.pas' {FrmMenu},
  ufrmUsuarios in 'ufrmUsuarios.pas' {FrmUsuarios},
  urfmFuncionarios in 'urfmFuncionarios.pas' {FrmFuncionarios},
  urfmCargos in 'urfmCargos.pas' {FrmCargos},
  dm in 'dm.pas' {data_m: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUfrmLogin, UfrmLogin);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TFrmUsuarios, FrmUsuarios);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  Application.CreateForm(TFrmCargos, FrmCargos);
  Application.CreateForm(Tdata_m, data_m);
  Application.Run;
end.
