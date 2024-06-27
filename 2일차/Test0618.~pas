unit Test0618;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Date: TMemo; // Memo 컴포넌트 이름을 Date로 사용
    Button3: TButton;
    ComboBox1: TComboBox;
    Image1: TImage;
    Label1: TLabel;
    Button4: TButton;
    Button5: TButton;
    Timer1: TTimer;
    Image2: TImage;
    Edit1: TEdit;
    Button6: TButton;
    procedure ButtonTimeClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DateChange(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Add('항목 1');
  ComboBox1.Items.Add('항목 2');
  ComboBox1.Items.Add('항목 3');
  ComboBox1.Items.Add('항목 4');
  ComboBox1.Items.Add('항목 5');
  ComboBox1.Items.Add('항목 6');
end;

procedure TForm1.ButtonTimeClick(Sender: TObject);
begin
  Date.Lines.Add('현재시간: ' + FormatDateTime('yyyy.mm.dd hh:mm:ss', Now));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Date.Font.Color = clWhite then
    Date.Font.Color := clBlack  // 기본 색상인 검정으로 변경
  else
    Date.Font.Color := clWhite;   // 흰색으로 변경
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Date.Lines.Add('현재시간: ' + FormatDateTime('yyyy.mm.dd hh:mm:ss', Now));
  if Date.Font.Color = clWhite then
    Date.Font.Color := clBlack  // 기본 색상인 검정으로 변경
  else
    Date.Font.Color := clWhite;   // 흰색으로 변경
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if Label1.Caption = 'Test' then
    Label1.Caption := 'TESTTEST'
  else
    Label1.Caption := 'Test';
end;

procedure TForm1.ButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False; // 타이머 중지
  ShowMessage('TESTTESTTESTTEST');
end;

procedure TForm1.DateChange(Sender: TObject);
begin
  // Date(Memo)의 내용이 변경될 때 실행할 코드
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  // Enter 키가 눌렸을 때
  if Key = #13 then
  begin
    // Edit1에서 텍스트 가져오기
    if Trim(Edit1.Text) <> '' then
    begin
      // Date(Memo)에 텍스트 추가
      Date.Lines.Add('나: ' + Edit1.Text);
      // Edit1 내용 지우기
      Edit1.Text := '';
    end;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  // Button6 클릭 시
  // Edit1에서 텍스트 가져오기
  if Trim(Edit1.Text) <> '' then
  begin
    // Date(Memo)에 텍스트 추가
    Date.Lines.Add('나: ' + Edit1.Text);
    // Edit1 내용 지우기
    Edit1.Text := '';
  end;
end;

end.

