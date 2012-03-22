program DrawSpectrum;

uses
  Forms,
  DrawSpectrumForm in 'DrawSpectrumForm.pas' {Form2},
  table_func_lib in 'table_func_lib.pas',
  colorimetry_lib in 'colorimetry_lib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
