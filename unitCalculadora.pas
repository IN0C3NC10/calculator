unit unitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnl2: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn0: TButton;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    btnIgual: TButton;
    btnZerar: TButton;
    pnl1: TPanel;
    edtTela: TEdit;
    procedure btnZerarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  valor1: Double;
  valor2: Double;
  operacao: string;
  resultado: Double;

implementation

{$R *.dfm}

//lembrando que edttela é atribuido ':=' ele mesmo, ou seja o q ja estava digitado e acrescenta o restante do texto
procedure TForm1.btn0Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'0';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'1';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'6';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
edtTela.Text:=edtTela.Text+'9';
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
valor1:=StrToFloat(edtTela.Text);
operacao:='/';
edtTela.Text:='';
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
valor2:=StrToFloat(edtTela.text);
if (operacao='+') then
begin
resultado:= valor1+valor2;
end

else if (operacao='-') then
begin
   resultado:= valor1-valor2;
end

else if (operacao='x') then
begin
   resultado:= valor1*valor2;
end

else if (operacao='/') then
begin
   resultado:= valor1/valor2;
end

else
begin
showmessage('ERRO');
end;


edtTela.Text:=FloatToStr(resultado);

end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
valor1:=StrToFloat(edtTela.Text);
operacao:='x';
edtTela.Text:='';
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
valor1:=StrToFloat(edtTela.Text);
operacao:='+';
edtTela.Text:='';

end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
valor1:=StrToFloat(edtTela.Text);
operacao:='-';
edtTela.Text:='';
end;

procedure TForm1.btnZerarClick(Sender: TObject);
begin
edtTela.Text:='';
operacao:='';
valor1:=0;
valor2:=0;
resultado:=0;
end;

end.
