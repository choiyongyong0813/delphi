unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TForm1 = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;

  Shift: TShiftState);
begin


  if (Key = 91) and (GetAsyncKeyState(68) <> 0) then
  begin
    ShowMessage('DDD\DDDDDDDDD');
  end;
end;

end.
  //GetAsyncKeyState= 현재 키보드 상태를 확인하는 함수
