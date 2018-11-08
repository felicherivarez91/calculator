procedure TSystemForm.HexadecimalClick(Sender: TObject);
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
     Ten.Enabled:=True;
     Eleven.Enabled:=True;
     Twelve.Enabled:=True;
     Thirteen.Enabled:=True;
     Fourteen.Enabled:=True;
     Fifteen.Enabled:=True;
     InputField.SetFocus;
     InputField.NumbersOnly:=false;
     if (InputField.Text<>'0') and (tag=0) then
        begin
          Iteration:=0;
          try
             ChangeDiv:=StrToInt64(InputField.Text);
          except
             on EConvertError do ExceptTranslate.OnExecute(Sender);
          end;
          if ChangeDiv<0 then Oper2:=ChangeDiv;
          ChangeMod:=IntTohex(ChangeDiv,1);
          Tag:=3;
          InputField.Text:=ChangeMod;
          BufferOperat.OnExecute(Sender);
        end
     else if(InputField.Text<>'0')and((tag=2)or(tag=1))then DecimalClick(Sender);
     Tag:=3;
     if InputField.Text<>ChangeMod then
        begin
          Current:=Length(InputField.Text);
          for I :=Current  downto 1  do
             begin
               CopyS:=Copy(InputField.Text,I,1);
               if ((CopyS>='0') and (CopyS<='9')) or ((CopyS>='A') and
               (CopyS<='F')) or ((i=1)and(CopyS='-')) then ResultString:=InputField.Text
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