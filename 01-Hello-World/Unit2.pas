unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, Vcl.Dialogs;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1ChangeTracking(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
     // users will see 'Hello World' message box in their screen
     ShowMessage('Hello World');

     // Another messagebox but this one is for information
     // you can change typed ones
     MessageDlg('Hello',TMsgDlgType.mtInformation,[TMsgDlgBtn.mbOK],0);

     // 'Press to button' will change as 'Hello World Dude'
     Label1.Text := 'Hello World Dude !';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     // users will see what they texted to edit area.
     ShowMessage(Edit1.Text);
end;

procedure TForm2.Edit1ChangeTracking(Sender: TObject);
begin
     Label2.Text := Edit1.Text;
end;

end.
