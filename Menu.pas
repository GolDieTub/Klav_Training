unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, StatisticClassUnit,
  Vcl.ExtCtrls;

type
  TMenuForm = class(TForm)
    btTrening: TButton;
    btStatistic: TButton;
    btExit: TButton;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    btYourText: TButton;
    procedure FormShow(Sender: TObject);
    procedure SetParametrs();
    procedure btExitClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btTreningClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure btYourTextClick(Sender: TObject);
    procedure btStatisticClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  MenuForm: TMenuForm;

implementation

{$R *.dfm}

uses Training, UnitYourText, StatisticFormUnit;

procedure TMenuForm.SetParametrs;
const
  TopMargin = 30;
begin
  ClientWidth := 320;
  ClientHeight := 350;

  with btTrening do
  begin
    Width := Self.ClientWidth - 60;
    height := 50;
    Left := 30;
    Top := 30;
  end;


  with btYourText do
  begin
    Width := Self.ClientWidth - 60;
    height := 50;
    Left := 30;
    Top := btTrening.Top + btTrening.height + TopMargin;

  end;

  with btStatistic do
  begin
    Width := Self.ClientWidth - 60;
    height := 50;
    Left := 30;
    Top := btYourText.Top + btYourText.height + TopMargin;

  end;

  with btExit do
  begin
    Width := Self.ClientWidth - 60;
    height := 50;
    Left := 30;
    Top := btStatistic.Top + btStatistic.height + TopMargin;
  end;

end;

procedure TMenuForm.btExitClick(Sender: TObject);
begin
  Close;
end;

procedure TMenuForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
    close;
end;

procedure TMenuForm.btStatisticClick(Sender: TObject);
begin
   StatisticForm.ShowModal;
end;

procedure TMenuForm.btTreningClick(Sender: TObject);
begin
  FormTraining.showModal;
end;

procedure TMenuForm.btYourTextClick(Sender: TObject);
begin
  FEditText.showModal;
end;

procedure TMenuForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const
  AreSure = 'Вы уверены, что хотите выйти?';
begin
  if (MessageDlg(AreSure, mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
    CanClose := False;
end;

procedure TMenuForm.FormShow(Sender: TObject);
begin
  MenuForm.SetParametrs;
end;

procedure TMenuForm.N2Click(Sender: TObject);
const
  MyInformation = 'Программа разработана Кучеренко Владимиром' + #13#10 +
    'студентом 1-ого курса ФКСиС ПОИТ';
begin
  MessageDlg(MyInformation, mtInformation, [mbOk], 0);
end;

procedure TMenuForm.N3Click(Sender: TObject);
const
  Inf = 'Клавиатурный тренажёр — это программа, предназначенная для обучения'+' слепой печати, приобретения навыка десятипальцевого метода набора и увеличения скорости'+' печати на клавиатуре компьютера. Клавиатурный тренажёр'+' представляет собой учебный текстовый редактор для набора определенного'+' текстового фрагмента, с системой подсказок во время набора на клавиатуре и функцией'+' подсчёта различных метрик печати';
begin
  MessageDlg(Inf, mtInformation, [mbOk], 0);
end;

end.
