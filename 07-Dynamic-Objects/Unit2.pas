unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.ListBox, FMX.Layouts,
  System.ImageList, FMX.ImgList;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ImageList1: TImageList;
    VertScrollBox1: TVertScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form2: TForm2;
  buttonDeneme: TButton;
  newPanel: TPanel;
  newImage: TImage;



implementation

{$R *.fmx}

procedure TForm2.btnClick(Sender: TObject);
begin
     ShowMessage('You clicked me');
end;


procedure TForm2.Button1Click(Sender: TObject);
begin

      newPanel := TPanel.Create(Self);
      newPanel.Parent := VertScrollBox1;
      newPanel.Align := TAlignLayout.Top;
      newPanel.Padding.Left := 100;
      newPanel.Padding.Right := 100;


      buttonDeneme := TButton.Create(Self);
      buttonDeneme.Parent := newPanel;
      buttonDeneme.Align := TAlignLayout.Bottom;
      buttonDeneme.Text := 'sdss';
      buttonDeneme.OnClick := btnClick;
      buttonDeneme.Padding.Left := 100;
      buttonDeneme.Padding.Right := 100;

      newImage := TImage.Create(Self);
      newImage.Parent := newPanel;
      newImage.Align := TAlignLayout.Client;
      newImage.Bitmap.LoadFromFile('C:/Users/ahmet/OneDrive/Masa?st?/Work/cakirlogo/100days/100Days01.png');

end;

end.
