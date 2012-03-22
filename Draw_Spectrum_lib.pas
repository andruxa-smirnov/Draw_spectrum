unit Draw_Spectrum_lib;

interface
uses forms,chart;
type
  TDrawSpectrumForm=class(TForm)
    chart1: TChart;
    procedure FormCreate(Sender: TObject);
  end;

implementation

procedure TDrawSpectrumForm.FormCreate(Sender: TObject);
begin
  chart1.Left:=TDrawSpectrumForm.clientRect.left;

end;

end.
