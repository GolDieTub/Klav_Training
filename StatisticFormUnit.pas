unit StatisticFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, StatisticClassUnit, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TStatisticForm = class(TForm)
    pnllSymbolsCaption: TFlowPanel;
    pnlTimeCaption: TFlowPanel;
    pnlMistakeCaption: TFlowPanel;
    pnlSymbols: TFlowPanel;
    pnlTime: TFlowPanel;
    pnlMistake: TFlowPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpdateInformation();
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Statistic: CStatistic;
  end;

var
  StatisticForm: TStatisticForm;

implementation

{$R *.dfm}

procedure TStatisticForm.UpdateInformation();
var
  Time, Symbols, Mistake: String;
  MistakeProcent, MistakeCount, CorrectCount: Extended;
begin
  Symbols := IntToStr(Statistic.GetCorrect);
  pnlSymbols.Caption := Symbols;

  Time := IntToStr(Statistic.GetTime);
  pnlTime.Caption := Time;

  MistakeCount := Statistic.GetMistake;
  CorrectCount := Statistic.GetCorrect;
  if (CorrectCount <> 0) then
  begin
    MistakeProcent := (MistakeCount) / (CorrectCount) * 100;
  end
  else
  begin
    MistakeProcent := 0;
  end;
  Mistake := '';
  Mistake := Mistake + IntToStr(Trunc(MistakeProcent) mod 100);
  Mistake := Mistake + '.';
  Mistake := Mistake + IntToStr(Trunc(MistakeProcent * 100) mod 100);
  Mistake := Mistake + '%';
  pnlMistake.Caption := Mistake;

end;

procedure TStatisticForm.FormCreate(Sender: TObject);
begin
  Statistic := CStatistic.Create();
end;

procedure TStatisticForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Escape then
    close;
end;

procedure TStatisticForm.FormShow(Sender: TObject);
begin
  UpdateInformation();
end;

procedure TStatisticForm.N1Click(Sender: TObject);
begin
  close;
end;

end.
