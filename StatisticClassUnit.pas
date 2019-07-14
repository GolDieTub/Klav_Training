unit StatisticClassUnit;

interface
type
   CStatistic = class
   Constructor Create();
   procedure Update(Correct, Misstake, Time: Integer);
   function GetTime(): Integer;
   function GetCorrect(): Integer;
   function GetMistake(): Integer;
      private
      MisatekeCounter: Integer;
      CorrectCounter: Integer;
      TimeCounter: Integer;
   end;
implementation

constructor CStatistic.Create();
begin
   MisatekeCounter := 0;
   CorrectCounter := 0;
   TimeCounter := 0;
end;

procedure CStatistic.Update(Correct, Misstake, Time: Integer);
begin
   Inc(MisatekeCounter, Misstake);
   Inc(CorrectCounter, Correct);
   Inc(TimeCounter, Time);
end;

function CStatistic.GetTime(): Integer;
begin
   Result := TimeCounter;
end;

function CStatistic.GetMistake(): Integer;
begin
   Result := MisatekeCounter;
end;

function CStatistic.GetCorrect(): Integer;
begin
   Result := CorrectCounter;
end;
end.
