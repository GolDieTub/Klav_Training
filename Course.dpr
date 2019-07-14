program Course;

{$R *.dres}

uses
  Vcl.Forms,
  Menu in 'Menu.pas' {MenuForm},
  Training in 'Training.pas' {FormTraining},
  Stucture in 'Stucture.pas',
  UnitYourText in 'UnitYourText.pas' {FEditText},
  StatisticClassUnit in 'StatisticClassUnit.pas',
  StatisticFormUnit in 'StatisticFormUnit.pas' {StatisticForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TFormTraining, FormTraining);
  Application.CreateForm(TFEditText, FEditText);
  Application.CreateForm(TStatisticForm, StatisticForm);
  Application.Run;
end.
