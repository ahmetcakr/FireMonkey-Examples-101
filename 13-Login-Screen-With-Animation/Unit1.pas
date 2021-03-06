unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.Ani;

type
  TForm1 = class(TForm)
    lyLoginButtons: TLayout;
    recLoginButton: TRectangle;
    imgLoginBtn: TImage;
    lblLoginBtn: TLabel;
    recRegisterButton: TRectangle;
    imgRegisterBtn: TImage;
    lblRegisterBtn: TLabel;
    FloatAnimation2: TFloatAnimation;
    lyLoginEdits: TRectangle;
    lblLoginKullaniciAdi: TLabel;
    editLoginKullaniciAdi: TEdit;
    ClearEditButton1: TClearEditButton;
    lblLoginSifre: TLabel;
    editLoginSifre: TEdit;
    PasswordEditButton1: TPasswordEditButton;
    FloatAnimation1: TFloatAnimation;
    lyLoginEditsTop: TLayout;
    btnLoginEditsBack: TRectangle;
    imgBtnBack: TImage;
    recBtnLogin: TRectangle;
    imgLogin: TImage;
    lblLogin: TLabel;
    lyRegisterEdits: TRectangle;
    lblRegisterKullaniciAdi: TLabel;
    editRegisterKullaniciAdi: TEdit;
    ClearEditButton2: TClearEditButton;
    lblRegisterSifre: TLabel;
    editRegisterSifre: TEdit;
    PasswordEditButton2: TPasswordEditButton;
    FloatAnimation3: TFloatAnimation;
    lyRegisterBackBtn: TLayout;
    recRegisterBackBtn: TRectangle;
    imgRegisterBackBtn: TImage;
    recRegisterbtn: TRectangle;
    imgRegister: TImage;
    lblRegisterPageBtn: TLabel;
    editRegisterEposta: TEdit;
    ClearEditButton3: TClearEditButton;
    lblRegisterEposta: TLabel;
    lblRegisterSifreOnay: TLabel;
    editRegisterSifreOnay: TEdit;
    PasswordEditButton3: TPasswordEditButton;
    editRegisterTelefon: TEdit;
    ClearEditButton4: TClearEditButton;
    lblRegisterTelefon: TLabel;
    lblRegisterAd: TLabel;
    editRegisterAd: TEdit;
    ClearEditButton5: TClearEditButton;
    lblRegisterSoyad: TLabel;
    editRegisterSoyad: TEdit;
    ClearEditButton6: TClearEditButton;
    lblRegisterCinsiyet: TLabel;
    recCinsiyet: TRectangle;
    rbtnErkek: TRadioButton;
    rbtnKadin: TRadioButton;
    procedure recLoginButtonClick(Sender: TObject);
    procedure recRegisterButtonClick(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure btnLoginEditsBackClick(Sender: TObject);
    procedure recRegisterBackBtnClick(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);
    procedure editRegisterSifreOnayChangeTracking(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btnLoginEditsBackClick(Sender: TObject);
begin
  lyLoginEdits.Visible := false;
  lyLoginButtons.Height := 0;
  lyLoginButtons.Visible := true;

  FloatAnimation2.Enabled := true;
end;

procedure TForm1.editRegisterSifreOnayChangeTracking(Sender: TObject);
begin
  if editRegisterSifre.Text <> '' then
  begin
    if editRegisterSifreOnay.Text <> editRegisterSifre.Text then
    begin
      editRegisterSifreOnay.TextSettings.FontColor := TAlphaColors.Red;
    end
    else
    begin
      editRegisterSifreOnay.TextSettings.FontColor := TAlphaColors.Black
    end;
  end;

end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  FloatAnimation1.Enabled := false;
end;

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
  FloatAnimation2.Enabled := false;
end;

procedure TForm1.FloatAnimation3Finish(Sender: TObject);
begin
  FloatAnimation3.Enabled := false;
end;

procedure TForm1.recLoginButtonClick(Sender: TObject);
begin
  lyLoginButtons.Visible := false;

  lyLoginEdits.Height := 0;
  lyRegisterEdits.Visible := false;
  lyLoginEdits.Visible := true;

  FloatAnimation1.Enabled := true;

end;

procedure TForm1.recRegisterBackBtnClick(Sender: TObject);
begin
  lyLoginEdits.Visible := false;
  lyRegisterEdits.Visible := false;
  lyLoginButtons.Height := 0;

  lyLoginButtons.Visible := true;

  FloatAnimation2.Enabled := true;
end;

procedure TForm1.recRegisterButtonClick(Sender: TObject);
begin
  lyLoginButtons.Visible := false;

  lyRegisterEdits.Height := 0;

  if lyLoginEdits.Visible = true then
    lyLoginEdits.Visible := false;

  if lyRegisterEdits.Visible = false then
    lyRegisterEdits.Visible := true;

  FloatAnimation3.Enabled := true;

end;

end.
