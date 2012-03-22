unit DrawSpectrumForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,table_func_lib, ExtCtrls, TeeProcs, TeEngine, Chart,Series,colorimetry_lib,
  StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    GroupBox1: TGroupBox;
    txtGraphName: TLabeledEdit;
    txtXName: TLabeledEdit;
    txtYName: TLabeledEdit;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    txtDataName: TLabeledEdit;
    txtDataXName: TLabeledEdit;
    txtDataYName: TLabeledEdit;
    BitBtn2: TBitBtn;
    txtDescription: TMemo;
    Label1: TLabel;
    Button2: TButton;
    SaveDialog2: TSaveDialog;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    CheckBox1: TCheckBox;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Chart1AfterDraw(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure txtGraphNameChange(Sender: TObject);
    procedure txtXNameChange(Sender: TObject);
    procedure txtYNameChange(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure txtDataNameChange(Sender: TObject);
    procedure txtDataXNameChange(Sender: TObject);
    procedure txtDataYNameChange(Sender: TObject);
    procedure txtDescriptionChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    series: array of table_func;
    col: colorimetry_funcs;
  public
    { Public declarations }
    visible_only: Boolean;
    procedure AddSpectrum(data: table_func);
    procedure Clear;

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddSpectrum(data: table_func);
var i: Integer;
begin
  i:=Length(series);
  SetLength(series,i+1);
  series[i]:=table_func.Create;
  series[i].assign(data);
  series[i].normalize;
  series[i].chart_series:=TLineSeries.Create(chart1);
  series[i].chart_series.ParentChart:=chart1;
  if (series[i].title='') then series[i].title:='Series'+IntToStr(i);
  series[i].chart_series.Title:=series[i].title;
  if (series[i].Xname<>'') then begin
    chart1.BottomAxis.Title.Caption:=series[i].Xname;
    txtXName.Text:=series[i].Xname;
  end;
  if (series[i].Yname<>'') then begin
    chart1.LeftAxis.Title.Caption:=series[i].Yname;
    txtYName.Text:=series[i].Yname;
  end;
  ListBox1.AddItem(series[i].chart_series.Title,series[i]);
  if (ListBox1.Items.Count=1) then begin
    ListBox1.ItemIndex:=0;
    ListBox1Click(Form2);
  end;
//  series[i].draw;
end;

procedure TForm2.Clear;
var i:Integer;
begin
  for i:=0 to High(series) do begin
    series[i].chart_series.Free;
    series[i].Free;
  end;
  SetLength(series,0);
  ListBox1.Clear;
end;



procedure TForm2.FormPaint(Sender: TObject);
var i,n: Integer;
begin
  n:=Length(Series);
  chart1.MarginBottom:=100-(100 div (n+1));
  if visible_only then begin
    chart1.BottomAxis.Automatic:=false;
    chart1.BottomAxis.Maximum:=720;
    chart1.BottomAxis.Minimum:=380;
  end
  else chart1.BottomAxis.Automatic:=true;
  for i:=0 to High(Series) do begin
    series[i].draw;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  col:=colorimetry_funcs.Create;
  checkbox1Click(Form2);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  col.Free;
end;

procedure TForm2.Chart1AfterDraw(Sender: TObject);
var i,j,hei,offset: Integer;
    x: Real;
begin

  hei:=chart1.ClientHeight div (Length(form2.series)+1);
  offset:=hei div 10;
  with chart1 do begin
  for j:=0 to High(form2.Series) do begin
    col.Clear;
    for i:=ChartRect.Left to ChartRect.Right do begin
      x:=BottomAxis.CalcPosPoint(i);
      col.AddMonochr(i,x,form2.series[j][x]);
    end;
    for i:=ChartRect.Left to ChartRect.Right do begin
      Canvas.Pen.Color:=col.ColorFromTable(i);
      Canvas.MoveTo(i,hei*(j+1)+offset);
//      Canvas.LineTo(i,ChartRect.Bottom+hei*(j+2)-offset);
      Canvas.LineTo(i,hei*(j+2));
    end;
    Canvas.TextOut(ChartRect.Right+10,(hei*(2*j+3) div 2),form2.series[j].title);
    Canvas.Brush.Color:=col.ColorOfRGBSum;
    Canvas.FillRect(RECT(ChartRect.Right+10,(hei*(2*j+3) div 2)+offset,ChartRect.Right+10+offset,(hei*(2*j+3) div 2)+2*offset));
    Canvas.Rectangle(ChartRect.Right+10,(hei*(2*j+3) div 2)+offset,ChartRect.Right+10+offset,(hei*(2*j+3) div 2)+2*offset);
  end;
  end;
  
end;

procedure TForm2.FormDestroy(Sender: TObject);
var i:Integer;
begin
  col.Free;
  for i:=0 to High(series) do begin
    series[i].chart_series.Free;
    series[i].Free;
  end;
  ListBox1.Clear;
  SetLength(series,0);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if SaveDialog1.Execute then
    chart1.SaveToBitmapFile(SaveDialog1.FileName);
end;

procedure TForm2.txtGraphNameChange(Sender: TObject);
begin
  chart1.Title.Text.Clear;
  chart1.Title.Text.Add(txtGraphName.Text);
end;

procedure TForm2.txtXNameChange(Sender: TObject);
begin
  chart1.BottomAxis.Title.Caption:=txtXName.Text;
end;

procedure TForm2.txtYNameChange(Sender: TObject);
begin
  chart1.LeftAxis.Title.Caption:=txtYName.Text;
end;

procedure TForm2.ListBox1Click(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  txtDataName.Text:=obj.title;
  txtDataXName.Text:=obj.Xname;
  txtDataYName.Text:=obj.Yname;
  txtDescription.Text:=obj.description;

end;

procedure TForm2.txtDataNameChange(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  obj.title:=txtDataName.Text;
  obj.chart_series.Title:=obj.title;
  ListBox1.Items[ListBox1.ItemIndex]:=txtDataName.Text;
end;

procedure TForm2.txtDataXNameChange(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  obj.Xname:=txtDataXName.Text;
end;

procedure TForm2.txtDataYNameChange(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  obj.Yname:=txtDataYName.Text;
end;

procedure TForm2.txtDescriptionChange(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  obj.description:=txtDescription.Text;
end;

procedure TForm2.Button2Click(Sender: TObject);
var obj: table_func;
begin
  obj:=(ListBox1.items.objects[ListBox1.itemIndex] as table_func);
  if SaveDialog2.Execute then obj.SaveToFile(SaveDialog2.FileName);
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  txtXName.Text:=txtDataXName.Text;
  txtYName.Text:=txtDataYName.Text;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  txtDataXName.Text:=txtXName.Text;
  txtDataYName.Text:=txtYName.Text;
end;

procedure TForm2.Button3Click(Sender: TObject);
var obj: table_func;
begin
  if OpenDialog1.Execute then begin
    obj:=table_func.Create(OpenDialog1.FileName);
    AddSpectrum(obj);
    form2.Refresh;
  end;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
    visible_only:=CheckBox1.Checked;
    form2.Refresh;
end;

end.
