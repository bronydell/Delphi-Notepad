unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Unit2, ActnList;

type
 
  { TForm1 }
 
  TForm1 = class(TForm)
    Editor: TMemo;
    MainMenu: TMainMenu;
    FileItem: TMenuItem;
    ExitItem: TMenuItem;
    OpenThatShit: TOpenDialog;
    OpenItem: TMenuItem;
    SaveThatShit: TSaveDialog;
    SaveItem: TMenuItem;
    SaveWithCode: TMenuItem;
    AboutItem: TMenuItem;
    SaveWithoutCode: TMenuItem;
    OpenWithoutCode: TMenuItem;
    OpenWithCode: TMenuItem;
    ActionList1: TActionList;
    SaveNoCode: TAction;
    SaveCode: TAction;
    OpenWithoutCD: TAction;
    OpenWithCD: TAction;
    
    procedure SaveNoCodeExecute(Sender: TObject);
    procedure SaveCodeExecute(Sender: TObject);
    procedure OpenWithoutCDExecute(Sender: TObject);
    procedure OpenWithCDExecute(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;
 
var
  Form1: TForm1;
  CurrentFileDir: String;
  k: integer;
  s: string;

implementation

{$R *.dfm}

function Code(listOfLines: TStringList; password: string;
  decode: boolean):TStringList;
var
  i, j, PasswordLength: integer;
  sign: shortint;
  text: string;
begin
  PasswordLength := length(password);
  if PasswordLength = 0 then
    Code:=listOfLines;
  if decode then
    sign := -1
  else
    sign := 1;
     for i := 0 to listOfLines.Count-1 do
    begin
      text := listOfLines.Strings[i];
      for j := 1 to Length(text) do
        text[j] := chr(ord(text[j]) + sign *
          ord(password[j mod PasswordLength + 1]));
      listOfLines.Strings[i]:=text;
    end;
 Code:=listOfLines;
end;


procedure TForm1.SaveNoCodeExecute(Sender: TObject);
begin
  SaveThatShit := TSaveDialog.Create(self);

  // Give the dialog a title
  SaveThatShit.Title := 'Save your text or word file';

  // Display the open file dialog
  if SaveThatShit.Execute
  then begin
       CurrentFileDir:='';    //Empty
       Editor.Lines.SaveToFile(SaveThatShit.FileName);
  end;

  // Free up the dialog
  SaveThatShit.Free;
end;

procedure TForm1.SaveCodeExecute(Sender: TObject);
var value: string;
    zoznam: TStringList;
begin
  value:=InputBox('Security code',
            'Please type your code:', '0') ;
  SaveThatShit := TSaveDialog.Create(self);

  // Give the dialog a title
  SaveThatShit.Title := 'Save your file';

  // Display the save file dialog
  if (SaveThatShit.Execute) and (value<>'')
  then begin
       CurrentFileDir:='';    //Empty
       zoznam := TStringList.Create;
       zoznam.Assign(Editor.Lines);
       ShowMessage(zoznam[0]);
       zoznam:=code(zoznam, value, false);
       ShowMessage(zoznam[0]);
       Editor.Lines:=zoznam;
       Editor.Lines.SaveToFile(SaveThatShit.FileName);
  end;

  // Free up the dialog
  SaveThatShit.Free;
end;

procedure TForm1.OpenWithoutCDExecute(Sender: TObject);
begin
  OpenThatShit := TOpenDialog.Create(self);

  // Display the save file dialog
  if OpenThatShit.Execute
  then begin
       CurrentFileDir:=OpenThatShit.FileName;
       Editor.Lines.LoadFromFile(CurrentFileDir);
  end;
  OpenThatShit.Free;
end;

procedure TForm1.OpenWithCDExecute(Sender: TObject);
var value: string;
zoznam: TStringList;
begin
value:=InputBox('Security code',
            'Please type your code:', '0') ;
  OpenThatShit := TOpenDialog.Create(self);

  // Display the save file dialog
  if (OpenThatShit.Execute) and (value<>'')
  then begin

       CurrentFileDir:=OpenThatShit.FileName;
       Editor.Lines.LoadFromFile(CurrentFileDir);
       zoznam := TStringList.Create;
       zoznam.Assign(Editor.Lines);
       zoznam:=code(zoznam, value, true);
       Editor.Lines:=zoznam;
  end;
  OpenThatShit.Free;
   end;

   
procedure TForm1.AboutItemClick(Sender: TObject);
begin
   Form2.Show;
end;


end.
