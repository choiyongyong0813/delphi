unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleCtrls, KSNET_DONGLELib_TLB;

type
  TForm1 = class(TForm)
    KSNet_Dongle1: TKSNet_Dongle;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
 KSNet_Dongle1.SetComPort(2,38400);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 KSNet_Dongle1.SignComReqA1('서명을 해주시길 바랍니다.','','','');
end;

end.
