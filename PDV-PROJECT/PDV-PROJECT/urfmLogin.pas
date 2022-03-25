unit urfmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,ufrmMenu;

type
  TUfrmLogin = class(TForm)
    Image1: TImage;
    pnlPanel2: TPanel;
    pnlPanel: TPanel;
    Image2: TImage;
    btnLogin: TSpeedButton;
    txtUsuario: TEdit;
    txtSenha: TEdit;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnLoginClick(Sender: TObject);
  private
    procedure centralizarPainel;
    procedure login;
  //  procedure login;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UfrmLogin: TUfrmLogin;

implementation

{$R *.dfm}

procedure TUfrmLogin.btnLoginClick(Sender: TObject);
begin
  if trim(txtUsuario.Text) = '' then
    begin
      MessageDlg('Preencha o Usuario!', mtInformation, mbOKCancel,0);
      txtUsuario.SetFocus;
      exit;
    end;
    if trim(txtSenha.Text) = '' then
    begin
      MessageDlg('Preencha a Senha!', mtInformation, mbOKCancel,0);
      txtSenha.SetFocus;
      exit;
    end;
    login;
end;

procedure TUfrmLogin.centralizarPainel;
begin
    pnlPanel2.Top  := (self.Height div 2) - (pnlPanel2.Height div 2);
    pnlPanel2.Left := (self.Width  div 2) - (pnlPanel2.Width  div 2);
end;

procedure TUfrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
     centralizarPainel;
end;

procedure TUfrmLogin.login;
begin
   FrmMenu := TFrmMenu.Create(UfrmLogin);
   FrmMenu.ShowModal;
end;

end.





