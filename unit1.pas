unit Unit1;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Bernd, car;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text := Toggle(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  c: Automobile;
begin
     c := Automobile.Create();
     Label1.Caption := c.Honk();
end;

end.

