procedure TSystemForm.BinaryClick(Sender: TObject);
var I:integer;
   begin
     Two.Enabled:=False;
     Three.Enabled:=False;
     Four.Enabled:=False;
     Five.Enabled:=False;
     Six.Enabled:=False;
     Seven.Enabled:=False;
     Eight.Enabled:=False;
     Nine.Enabled:=False;
     Ten.Enabled:=False;
     Eleven.Enabled:=False;
     Twelve.Enabled:=False;
     Thirteen.Enabled:=False;
     Fourteen.Enabled:=False;
     Fifteen.Enabled:=False;
     InputField.SetFocus;
     InputField.NumbersOnly:=True;
     if (InputField.Text<>'0') and (tag=0) then
        begin
          ResultString:='';
          FirCur:='';
          iteration:=0;
          try
             ChangeDiv:=StrtoInt64(InputField.Text);
          except
             ExceptTranslate.OnExecute(Sender);
          end;
          if ChangeDiv<0 then
             begin
               ChangeDiv:=abs(ChangeDiv);
               Sign:=True;
             end;
          while ChangeDiv>=2 do
             begin
               Iteration:=Iteration+1;
               ChangeMod:=IntToStr(ChangeDiv mod 2);
               ChangeDiv:=ChangeDiv div 2;
               ResultString:=ResultString+ChangeMod;
             end;
          for I := iteration downto 1 do
             begin
               CopyS:=Copy(ResultString,i,1);
               FirCur:=FirCur+CopyS;
             end;
          Tag:=1;
          Iteration:=0;
          if Sign<>True then InputField.Text:=IntToStr(ChangeDiv)+FirCur;
          if Sign then InputField.Text:='-'+IntToStr(ChangeDiv)+FirCur;
          Sign:=False;
          BufferOperat.OnExecute(Sender);
        end
     else if ((InputField.Text<>'0')and(tag=2))or((tag=3)and((InputField.Text<>'0')))
     then DecimalClick(Sender);
     Tag:=1;
     if (InputField.Text<>IntToStr(ChangeDiv)+FirCur) then
        begin
          Current:=Length(InputField.Text);
          for I :=Current  downto 1  do
             begin
               CopyS:=Copy(InputField.Text,I,1);
               if (((CopyS='0') or (CopyS='1'))or((i=1)and(CopyS='-'))) then
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