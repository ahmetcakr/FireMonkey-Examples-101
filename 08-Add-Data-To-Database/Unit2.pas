unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.StdCtrls, FMX.Edit, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Data.DB, MemDS, DBAccess, MSAccess;

type
  TForm2 = class(TForm)
    Grid1: TGrid;
    lblName: TLabel;
    lblNumber: TLabel;
    editName: TEdit;
    editNumber: TEdit;
    btnAdd: TButton;
    MSConnection1: TMSConnection;
    MSQuery1: TMSQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    MSQuery1id: TIntegerField;
    MSQuery1isimSoyisim: TStringField;
    MSQuery1numara: TStringField;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.btnAddClick(Sender: TObject);
begin
     with MSQuery1 do
     begin
       Close;
       SQL.Clear;
       SQL.BeginUpdate;
       SQL.Add('INSERT INTO numaraTablosu (isimSoyisim,numara) VALUES (:isimSoyisim,:numara)');
       SQL.EndUpdate;
       Params.ParamByName('isimSoyisim').Value := editName.Text;
       Params.ParamByName('numara').Value := editNumber.Text;
       Execute;

       SQL.Clear;
       SQL.Add('Select * from numaraTablosu');
       Open;

     end;



end;

end.
