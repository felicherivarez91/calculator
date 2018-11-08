procedure TSystemForm.ChangeOperExecute(Sender: TObject);
label arrow2;
var I:integer;
   begin
     ChangeDiv:=ResultF;
     if Tag=2 then Power:=8
     else if Tag=1 then Power:=2;
     if ChangeDiv<0 then
        begin
          ChangeDiv:=abs(ChangeDiv);
          Sign:=True;
        end;
     while ChangeDiv>=Power do
        begin
          Current:=Current+1;
          ChangeMod:=inttostr(ChangeDiv mod Power);
          ChangeDiv:=ChangeDiv div Power;
          ResultString:=ResultString+ChangeMod;
        end;
     for I := Current downto 1 do
        begin
          CopyS:=Copy(ResultString,i,1);
          FirCur:=FirCur+CopyS;
        end;
     if (Operation>=8)and(Operation<=11) then
        begin
          ResultF:=IntToStr(ChangeDiv)+FirCur;
          ResultString:='';
          for I := 1 to Length(ResultF) do
             begin
               CopyS:=Copy(ResultF,i,1);
               if CopyS='0' then ResultString:=ResultString+'1'
               else if CopyS='1' then ResultString:=ResultString+'0'
             end;
          ResultF:=ResultString;
          goto arrow2;
        end;
     if Sign<>True then ResultF:=(IntToStr(ChangeDiv)+FirCur)
     else ResultF:='-'+(IntToStr(ChangeDiv)+FirCur);
     Sign:=False;
     arrow2:
   end;
