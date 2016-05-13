unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin
//Launch BROWSEEER WITH LIIIIIINK
shellexecute(0, nil, pchar('https://github.com/bronydell/Delphi-Notepad.git'), nil, nil, sw_restore);
end;

end.
