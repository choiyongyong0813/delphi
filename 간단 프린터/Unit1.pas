unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OoMisc, AdPort;

type
  TForm1 = class(TForm)
    ApdComPort1: TApdComPort;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  ApdComPort1.ComNumber := 2;
  ApdComPort1.Open := true;
  ApdComPort1.PutString('11121213123') ;
   ApdComPort1.Output := char(27) + 'd'+ chr(round(0.5 / 0.125));
   ApdComPort1.Output := char(27)+'i';
end;

end.
