procedure TSystemForm.DecimalClick(Sender: TObject);
var I:integer;
   begin
     Two.Enabled:=True;
     Three.Enabled:=True;
     Four.Enabled:=True;
     Five.Enabled:=True;
     Six.Enabled:=True;
     Seven.Enabled:=True;
     Eight.Enabled:=True;
     Nine.Enabled:=True;
     Ten.Enabled:=False;
     Eleven.Enabled:=False;
     Twelve.Enabled:=False;
     Thirteen.Enabled:=False;
     Fourteen.Enabled:=False;
     Fifteen.Enabled:=False;
     InputField.SetFocus;
     InputField.NumbersOnly:=True;
     if (InputField.Text<>'0') and ((tag=1) or (Tag=2)) then
        begin
          Iteration:=0;
          ResultF:=0;
          if tag=1 then Power:=2 else if tag=2 then Power:=8;
          if InputField.Text='' then InputField.Text:='0';
          ChangeMod:=InputField.Text;
          if Changemod<'0' then
             begin
              ChangeMod:=IntTostr(abs(StrToInt64(ChangeMod)));
              Sign:=True;
             end;
          Current:=Length(ChangeMod);
          for I := 1 to Length(ChangeMod) do
             begin
               Dec(Current);
               CopyS:=Copy(ChangeMod,i,1);
               Result:=StrToInt64(CopyS)*Potenz(Power,current);
               ResultF:=ResultF+Result;
             end;
          Tag:=0;
          if Sign<>True then InputField.Text:=Resultf;
          if Sign then InputField.Text:='-'+CurrtoStr(resultF);
          Sign:=False;
          BufferOperat.OnExecute(Sender);
        end
     else if (InputField.Text<>'0') and (tag=3) then
        begin
          if InputField.Text<'0' then
             begin
               Sign3:=True;
               ResultString:=InputField.text;
               Delete(ResultString,1,1);
               Tag:=10;
               InputField.Text:=ResultString;
               ResultF:='$'+InputField.text;
             end
          else ResultF:='$'+InputField.text;
          if Oper2<>0 then
             begin
               Sign2:=True;
               InputField.Text:=IntToStr(Oper2);
               Oper2:=0;
             end;
          try
            ResultF:=StrToInt64(ResultF);
             except
                on EConvertError do ResultF:='0';
             end;
          Tag:=0;
          Iteration:=0;
          if Sign3<>True then InputField.Text:=ResultF
          else InputField.Text:='-'+IntToStr(ResultF);
          BufferOperat.OnExecute(Sender);
        end;
     Tag:=0;
     Sign2:=False;
   end;
