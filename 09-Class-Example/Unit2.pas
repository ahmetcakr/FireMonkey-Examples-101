unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TPersonRecord = record
    FirstNameRecord: string;
    LastNameRecord: String;
    AgeRecord: Integer;
  end;

  type
  TPerson = class
    FirstName: string;
    LastName: String;
    Age: Integer;
    function FullName: String;
  end;

  // recordlar kaps?lleme i?in yani birden fazla veriyi bir alanda tutmaya yarar.

var
  Form2: TForm2;
  Person : TPerson;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
     Person := TPerson.Create;
     Person.FirstName := 'Ahmet';
     Person.LastName := 'Cakir';
     // Person.Free; Bu kod person nesnesini yokeder. Haf?zada kaplad??? alan? siler.
     // Person.Destroy; Bu kod Person nesnesini yokeder.

     ShowMessage(Person.FullName);

end;

{ TPerson }

function TPerson.FullName: String;
begin
     Result := FirstName + ' ' + LastName;
end;

end.
