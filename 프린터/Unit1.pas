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
    FBuffer: AnsiString; // �����͸� �ӽ÷� ������ ����
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
  ApdComPort1.PutString('�׽�Ʈ');
  // ���� 3cm ���� ����
  ApdComPort1.Output := char(27) + 'd'+ chr(round(0.5 / 0.125));  //d�¶������� ������ ���� cm�������� �⺻���� 1���δ� 0.125cm��

  ApdComPort1.Output := char(27)+'i';    //����
  if ApdComPort1.Open then
    ShowMessage('��Ʈ�� ���Ƚ��ϴ�.')
  else
    ShowMessage('��Ʈ�� �ȿ����ϴ�.');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  DataToSend: string;
begin
  DataToSend := Edit1.Text;

  try
    ApdComPort1.PutString(DataToSend);
    ShowMessage('���������ۼ���.');
  //  ApdComPort1.PutString('�׽�Ʈ');
  // ���� 3cm ���� ����
    ApdComPort1.Output := char(27) + 'd'+ chr(round(0.8 / 0.125));
    ApdComPort1.Output := char(27)+'i';
  except
    on E: Exception do
      ShowMessage('���������۽���: ' + E.Message);      //���ܿ��� ǥ��
  end;
end;


end.

