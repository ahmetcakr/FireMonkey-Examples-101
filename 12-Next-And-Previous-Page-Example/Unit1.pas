unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.Controls.Presentation, System.Actions, FMX.ActnList,
  FMX.Gestures, FMX.Objects;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    TabControl1: TTabControl;
    btnBack: TButton;
    btnNext: TButton;
    lblTitle: TLabel;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    ActionList1: TActionList;
    GestureManager1: TGestureManager;
    NextTabAction: TNextTabAction;
    PreviousTabAction: TPreviousTabAction;
    TitleAction: TControlAction;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    procedure TabControl1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
var
activeTab: TTabItem;
begin
   activeTab := TabControl1.ActiveTab;

   if Action = TitleAction then
     lblTitle.Text := activeTab.Text;
end;

procedure TForm1.TabControl1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        TabControl1.Next;
        Handled := true;
      end;

    sgiRight:
      begin
        TabControl1.Previous;
        Handled := true;
      end;
  end;
end;

end.
