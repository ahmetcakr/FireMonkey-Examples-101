unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox, FMX.Edit;

type
  TForm2 = class(TForm)
    ListBox1: TListBox;
    CornerButton1: TCornerButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure CornerButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TKisi = record
    Ad: string;
    Soyad: string;
    Yas: integer;
  end;


var
  Form2: TForm2;
  Kisi: TKisi;



implementation



 function CreateUser(aAd:string;aSoyad:string;aYas: Integer):string;
 begin
    Kisi.Ad := aAd;
    Kisi.Soyad := aSoyad;
    Kisi.Yas := aYas;

    Result:= aAd + aSoyad + aYas.ToString;

 end;


{$R *.fmx}

procedure TForm2.CornerButton1Click(Sender: TObject);
begin
     ListBox1.Items.Add(CreateUser(Edit1.Text,Edit2.Text,Edit3.Text.ToInteger));
end;

end.
