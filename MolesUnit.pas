unit MolesUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Score: TLabel;
    MoleGenerator: TTimer;
    Label0: TLabel;
    procedure MoleGeneratorTimer(Sender: TObject);
    procedure HandleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    public
        I: Cardinal;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.MoleGeneratorTimer(Sender: TObject);
var
    Lab: TLabel;
    Mole: Byte;
    Color: TColor;
    Top, Left: Smallint;
begin
    randomize;

    TLabel(FindComponent('Label' + IntToStr(I))).Visible := false;
    Inc(I);

    Lab := TLabel.Create(self);
    Lab.Parent := Form1;
    Lab.Name := 'Label' + IntToStr(I);
    Lab.Caption := '';

    Mole := random(2);
    if Mole = 0 then Color := clGreen else Color := clRed;
    Lab.Color := Color;

    Lab.Height := 25;
    Lab.Width := 25;

    Top := Random(ClientHeight - Lab.Height);
    Left := Random(ClientWidth - Lab.Width);
    Lab.Top := Top;
    Lab.Left := Left;

    Lab.OnClick := HandleClick;
end;

procedure TForm1.HandleClick(Sender: TObject);
begin
    with Sender as TLabel do begin
        if Color = clGreen then
            Score.Caption := IntToStr(StrToInt(Score.Caption) + 1)
        else
            Score.Caption := IntToStr(StrToInt(Score.Caption) - 1);

        Visible := false;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    I := 0;
end;

end.
