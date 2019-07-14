unit Stucture;

interface

type
  TDelphiLine = string[80]; // ����� ������ � �����
  TSegmentLink = ^TCodeSegment;

  TCodeSegment = record
    Line: TDelphiLine;
    NextLine: TSegmentLink;
  end;

  CLineControler = class

  private
    RootOfStructure: TSegmentLink;
    Iterator: TSegmentLink;
    EndOfStructure: TSegmentLink;

  public
    Destructor destroy();
    Constructor create();
    Procedure AddNewLine(Element: TDelphiLine);
    Function GetNextLine(): TDelphiLine;
    Function HasNext(): Boolean;
    Procedure ClearStructure();
    procedure Clear_All;
    Procedure FromFileToRAM(FileName:string);
  end;

implementation

Destructor CLineControler.destroy;
Var
  I1: TSegmentLink;
Begin
  while RootOfStructure <> nil do
  Begin
    I1 := RootOfStructure;
    RootOfStructure := RootOfStructure^.NextLine;
    Dispose(I1);
  End;

End;

Constructor CLineControler.create;
begin
  RootOfStructure := nil;
  Iterator := nil;
end;

procedure ClineControler.Clear_All;
Var
  I1: TSegmentLink;
Begin
  while RootOfStructure <> nil do
  Begin
    I1 := RootOfStructure;
    RootOfStructure := RootOfStructure^.NextLine;
    Dispose(I1);
  End;
  RootOfStructure := nil;
  Iterator := nil;
end;


//��,��� ������ �������� ����
Procedure CLineControler.ClearStructure();
Var
  I1: TSegmentLink;
Begin
  while RootOfStructure <> nil do
  Begin
    I1 := RootOfStructure;
    RootOfStructure := RootOfStructure^.NextLine;
    Dispose(I1);
  End;
  RootOfStructure := nil;
  Iterator := nil;
End;

Procedure CLineControler.FromFileToRAM(FileName:string);
Var
  Temp : TDelphiLine;     ////////////////////////////////////////////////////
  StructureFile: File of TDelphiLine;
Begin
  AssignFile(StructureFile, FileName);
  Reset(StructureFile);
  while not(Eof(StructureFile)) do
  Begin
    Read(FileName, Temp);
    AddNewLine(Temp);
  End;
  closeFile(StructureFile);
End;

Procedure CLineControler.AddNewLine(Element: TDelphiLine);
var
  PlaceForLine: TSegmentLink;
Begin
  New(PlaceForLine);
  PlaceForLine^.NextLine := nil;
  if (RootOfStructure = nil) then
  Begin
    RootOfStructure := PlaceForLine;
    Iterator := RootOfStructure;
  End
  else
  EndOfStructure^.NextLine := PlaceForLine;
  PlaceForLine.Line := Element;
  EndOfStructure := PlaceForLine;

End;

Function CLineControler.GetNextLine(): TDelphiLine;
Begin
  Result := Iterator.Line;
  Iterator := Iterator.NextLine;

End;

Function CLineControler.HasNext(): Boolean;
Begin
  Result := Iterator <> nil;
End;

end.
