unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, table_func_lib_0_70,DrawSpectrumForm;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  spectrum: table_func;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    spectrum:=table_func.Create;
    spectrum.LoadFromFile(OpenDialog1.FileName);
    Form2.AddSpectrum(spectrum);
    Form2.ShowModal;
    spectrum.Free;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var sp2: table_func;
    i: Integer;
begin
  if OpenDialog1.Execute then begin
    spectrum:=table_func.Create;
    spectrum.LoadFromFile(OpenDialog1.FileName);
    sp2:=table_func.Create;
    for i:=0 to High(spectrum.X) do begin
      sp2.addpoint(spectrum.X[i]*1000,spectrum.Y[i]);
    end;

    sp2.title:='Солнечный спектр';
    sp2.Xunit:='nm';
    sp2.Yunit:='W*(cm)^-2*(um)^-1';
    sp2.Xname:='Длина волны, нм';
    sp2.Yname:='Спектральная мощность излучения на кв. м';
    sp2.description:='Данные взяты из [1]';

    sp2.SaveToFile(OpenDialog1.FileName+'_1');
    spectrum.Free;
    sp2.Free;
  end;

end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  form2.visible_only:=CheckBox1.Checked;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  form2.visible_only:=true;
end;

end.
