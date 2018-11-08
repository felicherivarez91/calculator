unit LOGOU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TLOGO = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LOGO: TLOGO;

implementation

{$R *.dfm}

procedure TLOGO.Timer1Timer(Sender: TObject);
   begin
     Close
   end;

end.
