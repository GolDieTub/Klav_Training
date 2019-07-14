unit UnitYourText;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Stucture, Vcl.Menus;

type
  TFEditText = class(TForm)
    TTextField: TMemo;
    btSave: TButton;
    SaveDialog: TSaveDialog;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure WriteToFile(FileName: string);
    procedure WriteToStructure;
    procedure btSaveKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TTextFieldChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditText: TFEditText;
 // Structure: CLineControler;
 // i: integer;

implementation

{$R *.dfm}

uses Training;

procedure TFEditText.WriteToStructure;
Var
  Temp,Temp1: TDelphiLine;
  flag: boolean;
  i: integer;
Begin
  Structure := CLineControler.Create;
  Temp1:='';
  flag:=true;
  i := 0;
  while (i <= TTextField.Lines.Count - 1) and (flag) do
  Begin
    // Прогнать текст и загнать в структуру
    Temp := TTextField.Lines[i];
    Trim(Temp);
      Temp1 := Temp1 + temp + ' ';
      Structure.AddNewLine(Temp);
    inc(i);
  End;
  Trim(temp1);
End;

procedure TFEditText.WriteToFile(FileName: string);
Var
  StructureFile: File of TDelphiLine;
  Temp: TDelphiLine;
Begin
  AssignFile(StructureFile, FileName);
  Rewrite(StructureFile);
  while Structure.HasNext do
  Begin
    Temp := Structure.GetNextLine;
    Write(StructureFile, Temp);
  End;
  CloseFile(StructureFile);
  structure.ClearStructure;
End;

procedure TFEditText.btSaveClick(Sender: TObject);
const
  NotEmptyFile = 'Данный файл не является пустым.' + #13#10 +
    'Хотите его перезаписать?';
  Detect: set of char = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
    '-', '_', '+', '=', 'й', 'Й', 'ц', 'Ц', 'у', 'У', 'к', 'К', 'е', 'Е', 'н',
    'Н', 'г', 'Г', 'ш', 'Ш', 'щ', 'Щ', 'з', 'З', 'х', 'Х', 'ъ', 'Ъ', 'ф', 'Ф',
    'ы', 'Ы', 'в', 'В', 'а', 'А', 'п', 'П', 'р', 'Р', 'о', 'О', 'л', 'Л', 'д',
    'Д', 'ж', 'Ж', 'э', 'Э', 'ё', 'Ё', '/', '\', 'я', 'Я', 'ч', 'Ч', 'с', 'С',
    'м', 'М', 'и', 'И', 'т', 'Т', 'ь', 'Ь', 'б', 'Б', 'ю', 'Ю', '.', ',', ' ','!'];
Var
  FileName: String;
  Temp: TDelphiLine;
  i, k: integer;
  len: integer;
  flag: boolean;
  order: byte;

begin
  flag := true;
  i := 0;
  while (i <= TTextField.Lines.Count - 1) and (flag) do
  Begin
    Temp := TTextField.Lines[i];
    k := 1;
    while (k <= length(Temp)) and (flag) do

    Begin
      if not(Temp[k] in Detect) then
        flag := false;

      inc(k);

    End;
    inc(i);
  end;
  if flag = true then
  Begin
    if SaveDialog.Execute then
    begin
      FileName := SaveDialog.FileName + '.trng';
      if (FileExists(FileName)) then
      begin
        if (MessageDlg(NotEmptyFile, mtConfirmation, [mbYes, mbNo], 0) = mrYes)
        then
        begin
          WriteToStructure;
          WriteToFile(FileName);
        end
        else
        begin
          btSaveClick(Sender);
        end;
      end
      else
      begin
        WriteToStructure;
        WriteToFile(FileName);
      end
    end;
    FEditText.close;
  End

  else
    ShowMessage('Недопустимые символы!');
end;

procedure TFEditText.btSaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_Escape then
    close;
end;

procedure TFEditText.FormActivate(Sender: TObject);
begin
  TTextField.Clear;
end;

procedure TFEditText.FormShow(Sender: TObject);
begin
  ClientWidth := 530;
  ClientHeight := 300;

  With TTextField do
  Begin
    Left := 30;
    Top := 30;
    TTextField.Width := Self.ClientWidth - 60;
    TTextField.Height := 200;
  End;

  With btSave do
  Begin
    btSave.Width := 120;
    btSave.Height := 40;
    Top := TTextField.Top + TTextField.Height + 20;
    Left := TTextField.Left + TTextField.Width - Width;
  End;
end;

procedure TFEditText.N2Click(Sender: TObject);
begin
  close;
end;

procedure TFEditText.N3Click(Sender: TObject);
Const
  MyInformation = 'Разрешенные символы:' + #13#10 + 'Буквы русского алфавита, цифры и символы: , . !';
begin
  MessageDlg(MyInformation, mtInformation, [mbOk], 0);
end;

procedure TFEditText.TTextFieldChange(Sender: TObject);
const
  MaxLineCount = 10;
begin
  if TTextField.Lines.Count > MaxLineCount then
    TTextField.Perform(EM_UNDO, 0, 0);
  TTextField.Perform(EM_EMPTYUNDOBUFFER, 0, 0);
end;

end.
