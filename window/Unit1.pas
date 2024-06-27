unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

  RegisterHotKey(Handle, 1, MOD_WIN, Ord('D'));
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin

  UnregisterHotKey(Handle, 1);
end;

procedure TForm1.WMHotKey(var Msg: TWMHotKey);
begin

  if Msg.HotKey = 1 then
    Memo1.Lines.Add('둘다눌렸습니다');
end;

end.

