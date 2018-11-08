unit CWU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Math, AboutCWP, ClipBrd, ActnList,LOGOU;

Function Potenz(bas,ex:Int64):Int64;

type
  TSystemForm = class(TForm)
    MM: TMainMenu;
    Operations: TMenuItem;
    Correcting: TMenuItem;
    help: TMenuItem;
    SaveCurvar: TMenuItem;
    CleanCurVar: TMenuItem;
    CopyValues: TMenuItem;
    PasteValues: TMenuItem;
    Calculations: TGroupBox;
    Hexadecimal: TRadioButton;
    Decimal: TRadioButton;
    Octal: TRadioButton;
    Binary: TRadioButton;
    ReadField: TEdit;
    InputField:TEdit;
    TypesOfCodes: TGroupBox;
    Direct: TRadioButton;
    Reverse: TRadioButton;
    Additional: TRadioButton;
    Equally: TButton;
    Addition: TButton;
    Substaction: TButton;
    Multiply: TButton;
    Exit: TMenuItem;
    N1: TMenuItem;
    PosNeg: TButton;
    Division: TButton;
    Three: TButton;
    Six: TButton;
    Nine: TButton;
    AllClean: TButton;
    Eight: TButton;
    Five: TButton;
    Two: TButton;
    Zero: TButton;
    AboutProg: TMenuItem;
    AllCleantwo: TButton;
    One: TButton;
    Four: TButton;
    ErasureStbySt: TButton;
    Seven: TButton;
    Ten: TButton;
    Eleven: TButton;
    Twelve: TButton;
    Thirteen: TButton;
    Fourteen: TButton;
    Fifteen: TButton;
    ModOper: TButton;
    DivBy2: TButton;
    MultiplyBy2: TButton;
    XorOperat: TButton;
    NotOper: TButton;
    DoubleFactorial: TButton;
    Square: TButton;
    Cubic: TButton;
    Factorial: TButton;
    PolPower: TButton;
    Tenthsquare: TButton;
    Fibonacci: TButton;
    Con0: TButton;
    Stirling: TButton;
    Con1: TButton;
    Otherfunctions: TActionList;
    Bufferoperat: TAction;
    PirsWebb: TButton;
    InvRevImp: TButton;
    InvDirImp: TButton;
    Sheffer: TButton;
    Equivalence: TButton;
    DirInv: TButton;
    RevInv: TButton;
    ChangeOper: TAction;
    ExtendedMM: TMenuItem;
    Fibonacci2: TGroupBox;
    Primorial: TButton;
    SyperFactorial: TButton;
    E: TEdit;
    DoubFac: TAction;
    PrimorialFac: TAction;
    Fac: TAction;
    SyperFac: TAction;
    DeleteField: TAction;
    CaseOperat: TAction;
    Case2Operat: TAction;
    HelpContent: TMenuItem;
    ExceptTranslate: TAction;
    DiapasonOverflow: TAction;
    procedure CleanCurVarClick(Sender: TObject);
    procedure CopyValuesClick(Sender: TObject);
    procedure PasteValuesClick(Sender: TObject);
    procedure BinaryClick(Sender: TObject);
    procedure InputFieldChange(Sender: TObject);
    procedure DecimalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure OctalClick(Sender: TObject);
    procedure HexadecimalClick(Sender: TObject);
    procedure ExitClick(Sender: TObject);
    procedure AdditionClick(Sender: TObject);
    procedure EquallyClick(Sender: TObject);
    procedure SubstactionClick(Sender: TObject);
    procedure MultiplyClick(Sender: TObject);
    procedure AboutProgClick(Sender: TObject);
    procedure DivisionClick(Sender: TObject);
    procedure NineClick(Sender: TObject);
    procedure SixClick(Sender: TObject);
    procedure ThreeClick(Sender: TObject);
    procedure AllCleanClick(Sender: TObject);
    procedure EightClick(Sender: TObject);
    procedure FiveClick(Sender: TObject);
    procedure TwoClick(Sender: TObject);
    procedure ZeroClick(Sender: TObject);
    procedure AllCleantwoClick(Sender: TObject);
    procedure OneClick(Sender: TObject);
    procedure FourClick(Sender: TObject);
    procedure SevenClick(Sender: TObject);
    procedure ErasureStbyStClick(Sender: TObject);
    procedure TenClick(Sender: TObject);
    procedure ElevenClick(Sender: TObject);
    procedure TwelveClick(Sender: TObject);
    procedure ThirteenClick(Sender: TObject);
    procedure FourteenClick(Sender: TObject);
    procedure FifteenClick(Sender: TObject);
    procedure PosNegClick(Sender: TObject);
    procedure SaveCurvarClick(Sender: TObject);
    procedure BufferoperatExecute(Sender: TObject);
    procedure ModOperClick(Sender: TObject);
    procedure ChangeOperExecute(Sender: TObject);
    procedure DivBy2Click(Sender: TObject);
    procedure MultiplyBy2Click(Sender: TObject);
    procedure XorOperatClick(Sender: TObject);
    procedure NotOperClick(Sender: TObject);
    procedure PolPowerClick(Sender: TObject);
    procedure FactorialClick(Sender: TObject);
    procedure SquareClick(Sender: TObject);
    procedure CubicClick(Sender: TObject);
    procedure TenthsquareClick(Sender: TObject);
    procedure FibonacciClick(Sender: TObject);
    procedure ExtendedMMClick(Sender: TObject);
    procedure StirlingClick(Sender: TObject);
    procedure DoubleFactorialClick(Sender: TObject);
    procedure DoubFacExecute(Sender: TObject);
    procedure PrimorialClick(Sender: TObject);
    procedure PrimorialFacExecute(Sender: TObject);
    procedure SyperFactorialClick(Sender: TObject);
    procedure FacExecute(Sender: TObject);
    procedure SyperFacExecute(Sender: TObject);
    procedure DeleteFieldExecute(Sender: TObject);
    procedure Con0Click(Sender: TObject);
    procedure Con1Click(Sender: TObject);
    procedure ReverseClick(Sender: TObject);
    procedure AdditionalClick(Sender: TObject);
    procedure PirsWebbClick(Sender: TObject);
    procedure InvRevImpClick(Sender: TObject);
    procedure InvDirImpClick(Sender: TObject);
    procedure CaseOperatExecute(Sender: TObject);
    procedure Case2OperatExecute(Sender: TObject);
    procedure ShefferClick(Sender: TObject);
    procedure EquivalenceClick(Sender: TObject);
    procedure DirInvClick(Sender: TObject);
    procedure RevInvClick(Sender: TObject);
    procedure HelpContentClick(Sender: TObject);
    procedure DirectClick(Sender: TObject);
    procedure ExceptTranslateExecute(Sender: TObject);
    procedure DiapasonOverflowExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  Current,Iteration,Power,Operation,ChangeDiv,Negative,Oper2,x:Int64;
  CopyS,ResultString,FirCur,ChangeMod,Code,Value,HexNorm:String;
  Result,ResultF,OtherDig,FirDig,SecDig:Variant;
  Sign,Sign2,Sign3,Sign4,Sign5,Sign6,Sign7:Boolean;
  public
    { Public declarations }
  end;

var
  SystemForm: TSystemForm;

implementation

{$R *.dfm}
{$I AdditionClickOfClass.inc}
{$I BinaryClickOfClass.inc}
{$I DecimalClickOfClass.inc}
{$I HexademicalClickOfClass.inc}
{$I OctalClickOfClass.inc}
{$I InputCurrentChange.inc}
{$I CaseOperat2Execute.inc}
{$I CaseOperatExecute.inc}
{$I ChangeOperExecute.inc}

Function Potenz(bas,ex:Int64):Int64;
var I:Integer;
   begin
     Result:=1; //Целочислительное произведение в степень.
     for I :=1 to ex do Result:=Result*bas;
   end;

procedure TSystemForm.BufferoperatExecute(Sender: TObject);
   begin
     ClipBoard.Clear;// Процедура прижатия курсора к правому краю.
     InputField.SelectAll;
     InputField.CopytoClipboard;
     InputField.PasteFromClipboard;
   end;

procedure TSystemForm.AdditionalClick(Sender: TObject);
   begin
     if Binary.Checked then  //Процедура переведения числа в дополнительний код
        if Sign=False then ReverseClick(Sender)
   end;

procedure TSystemForm.AllCleanClick(Sender: TObject);
   begin
     Current:=0;Iteration:=0;Power:=0;//Процедура очистки всех переменных прог-
     Operation:=0;CopyS:='';ResultString:='';// раммы.
     FirCur:='';ChangeMod:='';FirDig:=UnAssigned;
     SecDig:=UnAssigned;ChangeDiv:=UnAssigned;OtherDig:=UnAssigned;
     Result:=UnAssigned;ResultF:=UnAssigned;Value:='';
     Negative:=0;Oper2:=0;x:=0;
     Code:='';Sign:=False;Sign2:=False;
     Sign3:=False;HexNorm:='';Sign4:=False;
     Sign5:=False;Sign6:=False;Sign7:=False;
     InputField.Text:='0';
     InputField.SetFocus;PasteValues.Enabled:=False;
   end;

procedure TSystemForm.AllCleantwoClick(Sender: TObject);
   begin
     AllCleanClick(Sender);//Поддержка принципа полиморфизма.
     E.Text:='0 1 1';
   end;

procedure TSystemForm.FourClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'4';//Ввод с экрана числа 4
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.OneClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'1';//Ввод с экрана числа 1
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.ZeroClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'0';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.CleanCurVarClick(Sender: TObject);
   begin
     ReadField.Text:='';//Очистка промежуточных результатов.
   end;

procedure TSystemForm.Con0Click(Sender: TObject);
   begin //Вне зависимости от  значения аргумента функции,значение функции -
     if Binary.Checked then InputField.Text:='0'// константа 0 будет всегда -
   end; //равняться 0.

procedure TSystemForm.Con1Click(Sender: TObject);
   begin //Вне зависимости от  значения аргумента функции,значение функции -
     if Binary.Checked then InputField.Text:='1'// константа 0 будет всегда -
   end;////равняться 1.

procedure TSystemForm.CopyValuesClick(Sender: TObject);
   begin
     PasteValues.Enabled:=true; //Копирование промежуточных результатов.
     Value:=InputField.Text;
     if (Sign4=false) and (Tag=3) then Sign4:=True //Если число переведенно в
     else if Sign4 and (Tag<>3) then  Sign4:=False;//определенный формат,то опре-
     if (Sign5=false) and (Tag=0) then Sign5:=True //деленная булевая переменная
     else if Sign5 and (Tag<>0) then  Sign5:=False;//примет положение True.
     if (Sign6=false) and (Tag=2) then Sign6:=True
     else if Sign6 and (Tag<>2) then  Sign6:=False;
     if (Sign7=false) and (Tag=1) then Sign7:=True
     else if Sign7 and (Tag<>1) then  Sign7:=False;
   end;

procedure TSystemForm.CubicClick(Sender: TObject);
   begin
     if Tag=0 then  //преподнесение в куб,если указан десятичний формат
        begin
          InputField.Text:=IntToStr(Potenz(StrToInt64(InputField.Text),3));
          BufferOperat.OnExecute(Sender);
        end
     else if Tag=1 then   //если двоичный формат
        begin
          DecimalClick(Sender); //вызывпеться функция перевода
          ResultF:=Potenz(ResultF,3); //преподноситься в куб
          InputField.Text:=ResultF;   // переводиться обратно
        end
     else if Tag=2 then
        begin
          DecimalClick(Sender);   // та же схема далее
          ResultF:=Potenz(ResultF,3);
          InputField.Text:=ResultF;
        end
     else if Tag=3 then
        begin
          DecimalClick(Sender);
          ResultF:=Potenz(ResultF,3);
          InputField.Text:=ResultF;
        end;
   end;

procedure TSystemForm.DeleteFieldExecute(Sender: TObject);
   begin
     if(InputField.Text='0')and(Length(InputField.Text)=1)then InputField.Clear;
     if (Addition.ControlState=[csClicked])and(Length(InputField.Text)<>0) then
        InputField.Text:=''; //Очистка,если поле уже содержит данные
   end;

procedure TSystemForm.DiapasonOverflowExecute(Sender: TObject);
   begin
     MessageBeep(Mb_OK);
     Showmessage('Переполнение допустимого диапазона данных.');
     AllCleanClick(Sender);
   end;

procedure TSystemForm.DirectClick(Sender: TObject);
   begin
     if Sign then InputField.Text:='-'+Code//перевод в прямой код.
     else InputField.Text:=Code;
   end;

procedure TSystemForm.DirInvClick(Sender: TObject);
   begin
     if Binary.Checked then    //прямая инверсия, работает только когда, указан
        begin                  //двоичный формат.
          AdditionClick(Sender);
          Operation:=13;
        end;
   end;

procedure TSystemForm.DivBy2Click(Sender: TObject);
   begin
     if Tag<>3 then Oper2:=StrToInt64(InputField.Text);
     if (Odd(Oper2)=False)and(Tag=0) then
        begin
          ResultF:=Oper2 div 2;
          Sign2:=True;
          InputField.Text:=ResultF;
          BufferOperat.OnExecute(Sender);
        end
     else if (Odd(Oper2)=False)and(Tag=1) then
        begin
          DecimalClick(Sender);
          if InputField.Text[1]<>'-'
             then ResultF:=ResultF div 2
          else
             begin
               ResultF:='-'+IntToStr(ResultF);
               ResultF:=ResultF div 2;
             end;
          InputField.Text:=ResultF;
          BinaryClick(Sender);
        end
     else if (Odd(Oper2)=False)and(Tag=2)then
        begin
          DecimalClick(Sender);
          if InputField.Text[1]<>'-' then ResultF:=ResultF div 2
          else
             begin
               ResultF:='-'+IntToStr(ResultF);
               ResultF:=ResultF div 2;
             end;
          InputField.Text:=ResultF;
          OctalClick(Sender);
        end
     else if Tag=3 then
        begin
          ResultF:='$'+InputField.Text;
          ResultF:=StrToInt64(ResultF);
          Oper2:=ResultF;
          if (Odd(Oper2)=False) then
             begin
               ResultF:=ResultF div 2;
               ResultF:=IntToHex(ResultF,1);
               Sign2:=True;
               InputField.Text:=ResultF;
             end;
        end;
   end;

procedure TSystemForm.DivisionClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=4;
   end;

procedure TSystemForm.DoubFacExecute(Sender: TObject);
var i:integer;
   begin
     ResultF:=1;
     if Odd(Current)=False then
        begin
          for i:=1 to Current do
             if Odd(I)=False then ResultF:=ResultF*i;
          InputField.Text:=IntToStr(ResultF);
        end
     else
        begin
          for i:=1 to Current do
             if Odd(I) then ResultF:=ResultF*i;
          InputField.Text:=IntToStr(ResultF);
        end;
     Current:=0;
     Bufferoperat.OnExecute(Sender);
   end;

procedure TSystemForm.DoubleFactorialClick(Sender: TObject);
   begin
     Factorial.Controlstate:=[csClicked];
     if tag<>3 then Current:=StrToInt64(InputField.Text);
     case Tag of
        0:DoubFac.OnExecute(Sender);
        1:begin
            DecimalClick(Sender);
            Factorial.Controlstate:=[];
            Current:=StrToInt64(ResultF);
            DoubFac.OnExecute(Sender);
            CaseOperat.OnExecute(Sender);
            ChangeOper.OnExecute(Sender)
          end;
        2:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            DoubFac.OnExecute(Sender);
            CaseOperat.OnExecute(Sender);
            ChangeOper.OnExecute(Sender)
          end;
        3:begin
            ChangeMod:='$'+InputField.text;
            Current:=StrToInt64(ChangeMod);
            DoubFac.OnExecute(Sender);
            InputField.text:=IntToHex(ResultF,1);
            BufferOperat.OnExecute(Sender);
          end;
     end;
     Factorial.Controlstate:=[];
     Sign:=False;
   end;

procedure TSystemForm.FourteenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'E';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.HelpContentClick(Sender: TObject);
   begin
     HtmlHelp(self.Handle,PChar('C:\Windows\System32\help.chm'),HH_Display_topic,0);
     htmlHelp(SystemForm.handle,'help\help.chm',HH_DISPLAY_TOPIC,0);
   end;

procedure TSystemForm.InvDirImpClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=10;
        end;
   end;

procedure TSystemForm.InvRevImpClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=9;
        end;
   end;

procedure TSystemForm.FiveClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'5';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.FormActivate(Sender: TObject);
   begin
     InputField.SetFocus;
     InputField.Modified:=True;
   end;

procedure TSystemForm.FormShow(Sender: TObject);
   begin
     LoGo.ShowModal;
   end;

procedure TSystemForm.ModOperClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=5;
   end;

procedure TSystemForm.MultiplyBy2Click(Sender: TObject);
   begin
     if Tag=0 then
        begin
          InputField.Text:=IntToStr(StrToInt(InputField.Text)*2);
          BufferOperat.OnExecute(Sender);
        end
     else if Tag=1 then
        begin
          DecimalClick(Sender);
          if InputField.Text[1]<>'-'
             then ResultF:=ResultF*2
          else
             begin
               ResultF:='-'+IntToStr(ResultF);
               ResultF:=ResultF*2;
             end;
          InputField.Text:=ResultF;
          BinaryClick(Sender);
        end
     else if Tag=2 then
        begin
          DecimalClick(Sender);
          if InputField.Text[1]<>'-'
             then ResultF:=ResultF*2
          else
             begin
               ResultF:='-'+IntToStr(ResultF);
               ResultF:=ResultF*2;
             end;
          InputField.Text:=ResultF;
          OctalClick(Sender);
        end
     else if Tag=3 then
        begin
          DecimalClick(Sender);
          ResultF:=ResultF*2;
          InputField.Text:=ResultF;
          HexadecimalClick(Sender);
        end;
   end;

procedure TSystemForm.MultiplyClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=3;
   end;

procedure TSystemForm.NineClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'9';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.NotOperClick(Sender: TObject);
   begin
     if Tag<>3 then Oper2:=StrToInt64(InputField.Text);
     case tag of
        0:begin
            Oper2:=StrToInt64(InputField.Text);
            ResultF:=not(Oper2);
            InputField.Text:=ResultF;
            BufferOperat.OnExecute(Sender);
          end;
        1:begin
            DecimalClick(Sender);
            if InputField.Text[1]='-' then ResultF:='-'+IntToStr(ResultF);
            ResultF:=not(ResultF);
            InputField.Text:=ResultF;
          end;
        2:begin
            DecimalClick(Sender);
            if InputField.Text[1]='-' then ResultF:='-'+IntToStr(ResultF);
            ResultF:=not(ResultF);
            InputField.Text:=ResultF;
          end;
        3:begin
            ChangeMod:='$'+InputField.Text;
            ResultF:=StrToInt(ChangeMod);
            ResultF:=not(ResultF);
            InputField.Text:=IntTohex(ResultF,1);
          end;
     end;
   end;

procedure TSystemForm.AboutProgClick(Sender: TObject);
   begin
     AboutBox.Show;
   end;

procedure TSystemForm.EightClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'8';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.ElevenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'B';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.EquallyClick(Sender: TObject);
   begin
     case operation of
        1..14:begin
                Equally.ControlState:=[csClicked];
                if InputField.Modified=True then InputField.Text:=ResultF;
              end;
     end;
   end;

procedure TSystemForm.EquivalenceClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=12;
        end;
   end;

procedure TSystemForm.ErasureStbyStClick(Sender: TObject);
   begin
     Current:=Length(InputFIeld.Text);
     CopyS:=InputField.Text;
     Delete(CopyS,Current,1);
     InputField.Text:=CopyS;
     if Length(InputField.Text)=0 then InputField.Text:='0';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.ExceptTranslateExecute(Sender: TObject);
   begin
     MessageBeep(Mb_OK);
     Showmessage('Невозможно перевести число, так как число выходит за рамки допустимого диапазона.');
     AllCleanClick(Sender);
   end;

procedure TSystemForm.ExitClick(Sender: TObject);
   begin
     Close;
   end;

procedure TSystemForm.ExtendedMMClick(Sender: TObject);
   begin
     SystemForm.Height:=333;
     ExtendedMM.Enabled:=False;
   end;

procedure TSystemForm.PasteValuesClick(Sender: TObject);
   begin
     if Sign4 then Tag:=3
     else if Sign5 then Tag:=0
     else if Sign6 then Tag:=2
     else if Sign7 then Tag:=1;
     InputField.Text:=Value;
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.PirsWebbClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=8;
        end;
   end;

procedure TSystemForm.PolPowerClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=7;
   end;

procedure TSystemForm.PosNegClick(Sender: TObject);
   begin
     if (InputField.Text<>'')and(InputField.Text[1]='-') then Sign:=True;
     if Sign=False then Sign:=True
     else Sign:=False;
     if Tag<>3 then
     if Sign then
        begin
          Negative:=StrToInt64('-'+InputField.Text);
          InputField.Text:=IntToStr(Negative)
        end
     else
        begin
          Negative:=StrToInt64(InputField.Text);
          Negative:=abs(Negative);
          InputField.Text:=IntToStr(Negative);
        end;
     if (Tag=3) and Sign then
        begin
          HexNorm:=InputField.Text;
          ChangeMod:='$'+InputField.Text;
          Negative:=StrToInt(ChangeMod);
          Negative:=StrToInt('-'+IntToStr(Negative));
          Changemod:=IntToHex(Negative,1);
          InputField.Text:=ChangeMod;
        end
     else if (Tag=3) and (Sign=False) then
        begin
          InputField.Text:=HexNorm;
        end;
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.PrimorialClick(Sender: TObject);
   begin
     Factorial.Controlstate:=[csClicked];
     if tag<>3 then Current:=StrToInt64(InputField.Text);
     case Tag of
        0:PrimorialFac.OnExecute(Sender);
        1:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            PrimorialFac.OnExecute(Sender);
            BinaryClick(Sender);
          end;
        2:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            PrimorialFac.OnExecute(Sender);
          end;
        3:begin
            ChangeMod:='$'+InputField.text;
            Current:=StrToInt(ChangeMod);
            PrimorialFac.OnExecute(Sender);
            InputField.text:=IntToHex(Oper2,1);
            BufferOperat.OnExecute(Sender);
          end;
     end;
     Factorial.Controlstate:=[];
     Sign:=False;
   end;

procedure TSystemForm.PrimorialFacExecute(Sender: TObject);
var i:integer;
   begin
     Oper2:=1;
     for i:=1 to Current do
        begin
          if Odd(i)=False then
             begin
               if (i=2) or (i mod 2<>0) then Oper2:=Oper2*i
             end
          else
             if (i=3) or (i mod 3<>0) then Oper2:=Oper2*i
        end;
     InputField.Text:=IntToStr(Oper2);
     BufferOperat.OnExecute(Sender);
     Current:=0;
   end;

procedure TSystemForm.ReverseClick(Sender: TObject);
var i:integer;
   begin
     if Binary.Checked then
        begin
          Oper2:=Abs(StrToInt(InputField.Text));
          Code:=IntToStr(Oper2);
          if Sign=True then
             begin
               ResultString:='';
               for I := 1 to Length(Code) do
                  begin
                    CopyS:=Copy(Code,i,1);
                    if CopyS='0' then ResultString:=ResultString+'1'
                    else if CopyS='1' then ResultString:=ResultString+'0'
                  end;
               InputField.Text:='1'+ResultString;
               BufferOperat.OnExecute(Sender);
             end
          else
             begin
               InputField.Text:='0'+Code;
               BufferOperat.OnExecute(Sender);
             end;
        end;
   end;

procedure TSystemForm.RevInvClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=14;
        end;
   end;

procedure TSystemForm.SaveCurvarClick(Sender: TObject);
   begin
     ReadField.Text:='M: '+InputField.Text;
   end;

procedure TSystemForm.SevenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'7';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.ShefferClick(Sender: TObject);
   begin
     if Binary.Checked then
        begin
          AdditionClick(Sender);
          Operation:=11;
        end;
   end;

procedure TSystemForm.SixClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'6';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.SquareClick(Sender: TObject);
   begin
     case tag of
        0:begin
            InputField.Text:=IntToStr(Potenz(StrToInt64(InputField.Text),2));
            BufferOperat.OnExecute(Sender);
          end;
        1:begin
            DecimalClick(Sender);
            ResultF:=Potenz(ResultF,2);
            InputField.Text:=ResultF;
            BinaryClick(Sender);
          end;
        2:begin
            DecimalClick(Sender);
            ResultF:=Potenz(ResultF,2);
            InputField.Text:=ResultF;
            OctalClick(Sender);
          end;
        3:begin
            DecimalClick(Sender);
            ResultF:=Potenz(ResultF,2);
            InputField.Text:=ResultF;
            HexadecimalClick(Sender);
          end;
     end;
   end;

procedure TSystemForm.StirlingClick(Sender: TObject);
var i:integer;
   begin
     if Tag=0 then
        begin
          Oper2:=StrToint64(InputField.Text);
          Power:=1;Result:=1;
          for I := 2 to Oper2 do
             begin
               x:=(Oper2-Power);
               Result:=Result*x;
               Power:=Power+1;
             end;
          Result:=Result*Oper2;
          InputField.Text:=Result;
        end
     else FactorialClick(Sender);
   end;

procedure TSystemForm.FacExecute(Sender: TObject);
var i:integer;
   begin
      ResultF:=1;
      for i:=1 to Current do ResultF:=ResultF*I;
      InputField.Text:=IntToStr(ResultF);
      Current:=0;
   end;

procedure TSystemForm.FactorialClick(Sender: TObject);
   begin
     Factorial.Controlstate:=[csClicked];
     if tag<>3 then Current:=StrToInt64(InputField.Text);
     case Tag of
        0:Fac.OnExecute(Sender);
        1:begin
            DecimalClick(Sender);
            Factorial.Controlstate:=[];
            Current:=StrToInt64(ResultF);
            Fac.OnExecute(Sender);
            CaseOperat.OnExecute(Sender);
            ChangeOper.OnExecute(Sender)
          end;
        2:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            Fac.OnExecute(Sender);
            CaseOperat.OnExecute(Sender);
            ChangeOper.OnExecute(Sender);
          end;
        3:begin
            ChangeMod:='$'+InputField.text;
            Current:=StrToInt(ChangeMod);
            Fac.OnExecute(Sender);
            InputField.Text:=IntTohex(ResultF,1);
            BufferOperat.OnExecute(Sender);
          end;
     end;
     Factorial.Controlstate:=[];
     Sign:=False;
   end;

procedure TSystemForm.FibonacciClick(Sender: TObject);
var F1,F2,Fibonacci,F3:Int64;I:integer;
   begin
     ExtendedMM.Enabled:=True;
     SystemForm.Height:=423;
     if Decimal.Checked then
        begin
          Fibonacci:=StrToInt64(InputField.Text);
          F1:=1;F2:=1;
          E.Text:='0 1 1';
          if Fibonacci>=1 then
          for I := 1 to Fibonacci do
             begin
               F3:=F1+F2;
               F1:=F2;
               F2:=F3;
               E.Text:=E.Text+' '+IntToStr(F2);
             end;
        end;
   end;

procedure TSystemForm.FifteenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'F';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.SubstactionClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=2;
   end;

procedure TSystemForm.SyperFacExecute(Sender: TObject);
var i,j:integer;
   begin
     Result:=1;
     for i:=1 to Current do
        begin
          j:=1;Oper2:=1;
          while (i>=j) do
             begin
               Oper2:=Oper2*j;
               j:=j+1;
             end;
          Result:=Result*Oper2;
        end;
     InputField.Text:=IntToStr(Result);
     Current:=0;
   end;

procedure TSystemForm.SyperFactorialClick(Sender: TObject);
   begin
     Factorial.Controlstate:=[csClicked];
     if tag<>3 then Current:=StrToInt64(InputField.Text);
     case Tag of
        0:SyperFac.OnExecute(Sender);
        1:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            SyperFac.OnExecute(Sender);
            BinaryClick(Sender);
          end;
        2:begin
            DecimalClick(Sender);
            Current:=StrToInt64(ResultF);
            SyperFac.OnExecute(Sender);
          end;
        3:begin
            ChangeMod:='$'+InputField.text;
            Current:=StrToInt(ChangeMod);
            SyperFac.OnExecute(Sender);
            Changemod:=IntToHex(Result,1);
            InputField.Text:=ChangeMod;
            BufferOperat.OnExecute(Sender);
          end;
     end;
     Factorial.Controlstate:=[];
     Sign:=False;
   end;

procedure TSystemForm.TenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'A';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.TenthsquareClick(Sender: TObject);
   begin
     case tag of
        0:begin
            InputField.Text:=IntToStr(Potenz(10,StrToInt64(InputField.Text)));
            BufferOperat.OnExecute(Sender);
          end;
        1:begin
            DecimalClick(Sender);
            ResultF:=Potenz(10,ResultF);
            InputField.Text:=ResultF;
            BinaryClick(Sender);
          end;
        2:begin
            DecimalClick(Sender);
            ResultF:=Potenz(10,ResultF);
            InputField.Text:=ResultF;
            OctalClick(Sender);
          end;
        3:begin
            DecimalClick(Sender);
            ResultF:=Potenz(10,ResultF);
            InputField.Text:=ResultF;
            HexadecimalClick(Sender);
          end;
     end;
   end;

procedure TSystemForm.ThirteenClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'D';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.ThreeClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'3';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.TwelveClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'C';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.TwoClick(Sender: TObject);
   begin
     DeleteField.OnExecute(Sender);
     InputField.Text:=InputField.Text+'2';
     BufferOperat.OnExecute(Sender);
   end;

procedure TSystemForm.XorOperatClick(Sender: TObject);
   begin
     AdditionClick(Sender);
     Operation:=6;
   end;

end.
