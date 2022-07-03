unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.ListBox, FMX.Layouts;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type

  Calculate = class
    name: String;
  end;

  Age = class(Calculate)
    function ReAge(no: Integer): String;
  end;

  Number = class(Calculate)
    function ReNumber(Number: Integer): String;

  end;

var
  Form1: TForm1;
  THesap: Calculate;
  TAge: Age;
  TNumber: Number;

implementation

function Age.ReAge(no: Integer): String;
begin
  Result := 'Your Age = ' + no.ToString;
end;
{$R *.fmx}
{ Number }

function Number.ReNumber(Number: Integer): String;
begin
  Result := 'Your Picked Number = ' + Number.ToString;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex = 0 then
  begin
     ShowMessage(TAge.ReAge(Edit1.Text.ToInteger));
  end

  else if ListBox1.ItemIndex = 1 then
  begin
     ShowMessage(TNumber.ReNumber(Edit1.Text.ToInteger));
  end;


end;

end.
