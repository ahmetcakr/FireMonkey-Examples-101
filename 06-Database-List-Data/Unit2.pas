unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, MemDS, DBAccess, MSAccess,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    MSConnection1: TMSConnection;
    Grid1: TGrid;
    MSQuery1: TMSQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
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

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
     MSConnection1.Connected := true;
     MSQuery1.Active := true;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
MSConnection1.Connected := false;
     MSQuery1.Active := false;
end;

end.
