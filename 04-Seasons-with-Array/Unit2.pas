unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  AylarDizisi: array [1 .. 12] of integer;
  Aylar: array [1 .. 12] of String = (
    'Ocak',
    'Subat',
    'Mart',
    'Nisan',
    'May?s',
    'Haziran',
    'Temmuz',
    'Agustos',
    'Eyl?l',
    'Ekim',
    'Kas?m',
    'Aral?k'
  );

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  i := Edit1.Text.ToInteger;
  case i of
    1:
      begin
        ShowMessage('Ocak');
      end;
    2:
      begin
        ShowMessage('Subat');
      end;
    3:
      begin
        ShowMessage('Mart');
      end;
    4:
      begin
        ShowMessage('Nisan');
      end;
    5:
      begin
        ShowMessage('May?s');
      end;
    6:
      begin
        ShowMessage('Haziran');
      end;
    7:
      begin
        ShowMessage('Temmuz');
      end;
    8:
      begin
        ShowMessage('Agustos');
      end;
    9:
      begin
        ShowMessage('Eyl?l');
      end;
    10:
      begin
        ShowMessage('Ekim');
      end;
    11:
      begin
        ShowMessage('Kas?m');
      end;
    12:
      begin
        ShowMessage('Aral?k');
      end;

  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  I: Integer;
begin
     i := Edit1.Text.ToInteger;

     ShowMessage(Aylar[i]);

end;

end.
