procedure TSystemForm.OctalClick(Sender: TObject);
var I:integer;
   begin
     Eight.Enabled:=False;
     Nine.Enabled:=False;
     Two.Enabled:=True;
     Three.Enabled:=True;
     Four.Enabled:=True;
     Five.Enabled:=True;
     Six.Enabled:=True;
     Seven.Enabled:=True;
     Ten.Enabled:=False;
     Eleven.Enabled:=False;
     Twelve.Enabled:=False;
     Thirteen.Enabled:=False;
     Fourteen.Enabled:=False;
     Fifteen.Enabled:=False;
     InputField.SetFocus;
     InputField.NumbersOnly:=True;
     if (InputField.Text<>'0') and ((tag=0) or (tag=4)) then
        begin
          Iteration:=0;
          ResultString:='';
          FirCur:='';
          try
             ChangeDiv:=StrToInt64(InputField.Text);
          except
             ExceptTranslate.OnExecute(Sender);
          end;
          if ChangeDiv<0 then
             begin
               ChangeDiv:=abs(ChangeDiv);
               Sign:=True;
             end;
          while ChangeDiv>=8 do
             begin
               Iteration:=Iteration+1;
               ChangeMod:=inttostr(ChangeDiv mod 8);
               ChangeDiv:=ChangeDiv div 8;
               ResultString:=ResultString+ChangeMod;
             end;
          for I := iteration downto 1 do
             begin
               CopyS:=Copy(ResultString,i,1);
               FirCur:=FirCur+CopyS;
             end;
          Tag:=2;
          Iteration:=0;
          if Sign<>True then InputField.Text:=IntToStr(ChangeDiv)+FirCur;
          if Sign then InputField.text:='-'+IntToStr(ChangeDiv)+FirCur;
          Sign:=False;
          BufferOperat.OnExecute(Sender);
        end
     else if((InputField.Text<>'0')and(tag=1))or((tag=3)and(InputField.Text<>'0'))
     then DecimalClick(Sender);
     Tag:=2;
     if (InputField.Text<>IntToStr(changeDiv)+FirCur)then
        begin
          Tag:=2;
          Current:=Length(InputField.Text);
        for I :=Current  downto 1  do
           begin
             CopyS:=Copy(InputField.Text,I,1);
             if (((CopyS>='0') and (CopyS<='7'))or((i=1)and(CopyS='-')))then
             ResultString:=InputField.Text
             else
                begin
                  CopyS:=InputField.text;
                  Delete(CopyS,i,1);
                  ResultString:=CopyS;
                  InputField.Text:=ResultString;
                  BufferOperat.OnExecute(Sender);
                end;
           end;
        end;
   end;
