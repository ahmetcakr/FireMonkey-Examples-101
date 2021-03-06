unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types,
  FMX.Objects, FMX.Layouts, FMX.ListBox, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    ListBox1: TListBox;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
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

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
     ListBox1.Items.Add(Memo1.Text);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     ListBox1.Items.Delete(ListBox1.Selected.Index);
end;

end.
