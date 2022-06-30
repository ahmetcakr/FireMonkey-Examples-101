unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TCars = class
    Model: String;
    CurrentGear: integer;

  end;

var
  Form2: TForm2;

implementation

// Procedure'ler bize yapmak istedi�imiz kodu �al��t�r�r.
procedure StartEngine;
begin
  ShowMessage('Engine Started');
end;

procedure StopEngine;
begin
  ShowMessage('Engine Stopped');
end;

procedure ChangeGear(ChangedGear: Integer);
begin
  ShowMessage('Gear Changed to ' + ChangedGear.ToString);
end;

// Bunlar g�zel ama geriye de�er d�nd�rmezler.
// Geriye de�er d�nd�rmesi i�in function kullan�r�z.

function sayMyName: string;
begin
  Result := 'Im Ahmet';
end;
function sayMySurname(surname:string): string;
begin
  Result := surname;
end;

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
  StartEngine;
  ChangeGear(Edit2.Text.ToInteger);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ShowMessage(sayMyName()+ sayMySurname('Cakir'));  // geriye de�er d�nd�rd��� i�in yazd�rmad���m�z takdirde g�r�nmez.
  StopEngine;
end;

end.
