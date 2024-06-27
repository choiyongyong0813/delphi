unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OoMisc, AdPort;

type
  TForm1 = class(TForm)
    ApdComPort1: TApdComPort;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    FBuffer: AnsiString; // 데이터를 임시로 저장할 버퍼
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ApdComPort1.ComNumber := 2;
  ApdComPort1.Open := True;
  ApdComPort1.PutString('테스트');
  // 세로 3cm 공백 설정
  ApdComPort1.Output := char(27) + 'd'+ chr(round(0.5 / 0.125));  //d는라인조정 옆에는 공백 cm단위조정 기본값은 1라인당 0.125cm임

  ApdComPort1.Output := char(27)+'i';    //컷팅
  if ApdComPort1.Open then
    ShowMessage('포트가 열렸습니다.')
  else
    ShowMessage('포트가 안열립니다.');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  DataToSend: string;
begin
  DataToSend := Edit1.Text;

  try
    ApdComPort1.PutString(DataToSend);
    ShowMessage('데이터전송성공.');
  //  ApdComPort1.PutString('테스트');
  // 세로 3cm 공백 설정
    ApdComPort1.Output := char(27) + 'd'+ chr(round(0.8 / 0.125));
    ApdComPort1.Output := char(27)+'i';
  except
    on E: Exception do
      ShowMessage('데이터전송실패: ' + E.Message);      //예외에러 표시
  end;
end;


end.

