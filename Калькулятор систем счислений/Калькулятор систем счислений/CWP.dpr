program CWP;

uses
  Forms,
  CWU in 'CWU.pas' {SystemForm},
  AboutCWP in 'AboutCWP.pas' {AboutBox},
  LOGOU in 'LOGOU.pas' {LOGO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Система счислений';
  Application.CreateForm(TSystemForm, SystemForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TLOGO, LOGO);
  Application.Run;
end.
