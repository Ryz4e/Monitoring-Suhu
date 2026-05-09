unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Btn2: TButton;
    suhu: TEdit;
    EditTemp: TEdit;
    EditRegister: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblstatus: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    MemoLog: TMemo;
    Timer1: TTimer;
    procedure Btn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    IsConnected : Boolean;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if IsConnected = False then
  begin
    IsConnected := True;

    Button1.Caption := 'Disconnect';

    lblstatus.Caption := 'Connected';
    lblstatus.font.color := clGreen;

    Timer1.Enabled := True;

    MemoLog.Lines.Add('Connected To Modbus Server');
  end

  else
  begin
    IsConnected := False;

    Button1.Caption := 'CONNECT';

    lblstatus.Caption := 'Disconnected';
    lblstatus.font.color := clRed;

    Timer1.Enabled := False;

    MemoLog.Lines.Add('Disconnected From Modbus Server');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Randomize;
 IsConnected :=False;
 Button1.Caption := 'Connect';
 LblStatus.Caption := 'Disconnected';
 Timer1.Enabled := False;
end;

procedure TForm1.Btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
  var
    TempValue : Integer;
    begin
      TempValue := Random(101);
      if (TempValue >= 0) and (TempValue <= 24) then
begin
  EditTemp.Caption := IntToStr(TempValue);
  Suhu.Caption := 'DINGIN';
  Suhu.Font.Color := clBlue;
  MemoLog.Lines.Add(
  'Read Register ' +
  EditRegister.Text +
  ' = ' +
  IntToStr(TempValue) + '°C' + ' ' + Suhu.Caption
);
end

else if (TempValue >= 25) and (TempValue <= 49) then
begin
  EditTemp.Caption := IntToStr(TempValue);
  Suhu.Caption := 'NORMAL';
  Suhu.Font.Color := clGreen;
  MemoLog.Lines.Add(
  'Read Register ' +
  EditRegister.Text +
  ' = ' +
  IntToStr(TempValue) + '°C' + ' ' + Suhu.Caption
);
end

else if (TempValue >= 50) and (TempValue <= 74) then
begin
  EditTemp.Caption := IntToStr(TempValue);
  Suhu.Caption := 'HANGAT';
  Suhu.Font.Color := clOlive;
  MemoLog.Lines.Add(
  'Read Register ' +
  EditRegister.Text +
  ' = ' +
  IntToStr(TempValue) + '°C' + ' ' + Suhu.Caption
);
end

else
begin
  EditTemp.Caption := IntToStr(TempValue);
  Suhu.Caption := 'PANAS';
  Suhu.Font.Color := clRed;
  MemoLog.Lines.Add(
  'Read Register ' +
  EditRegister.Text +
  ' = ' +
  IntToStr(TempValue) + '°C' + ' ' + Suhu.Caption
);
end;



end;
end.

