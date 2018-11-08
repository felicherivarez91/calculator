procedure TSystemForm.AdditionClick(Sender: TObject);
var i:integer;
   begin
     Operation:=1;
     Addition.ControlState:=[csClicked];
     If InputField.Modified=True then Iteration:=iteration+1;
     Equally.ControlState:=[];
     if (iteration=1) and (InputField.Modified=True) then
        begin
          if Tag=0 then
            try
               Firdig:=StrToInt64(InputField.text);
            except
               on EConvertError do DiapasonOverflow.OnExecute(Sender);
            end;
        begin
            end;
          if (Tag=2) or (Tag=1) then
             begin
               FirDig:=InputField.Text;
               if FirDig<0 then
                  begin
                    FirDig:=abs(FirDig);
                    Sign:=True;
                  end;
               ResultF:=0;
               if Tag=2 then Power:=8
               else if Tag=1 then Power:=2;
               Current:=Length(FirDig);
               for I := 1 to Length(FirDig) do
                  begin
                    Dec(Current);
                    CopyS:=Copy(FirDig,i,1);
                    Result:=StrToInt(copyS)*Potenz(Power,current);
                    ResultF:=ResultF+Result;
                  end;
          if Sign=False then FirDig:=StrToInt64(ResultF)
          else FirDig:=ResultF-(2*ResultF);
          Sign:=False;
        end
        else if (Tag=3) then
             begin
               ResultF:='$'+InputField.text;
               try
                  ResultF:=StrToInt64(ResultF);
               except
                  on EConvertError do DiapasonOverFlow.OnExecute(Sender);
               end;
               FirDig:=ResultF;
             end;
          InputField.SetFocus;
          InputField.Modified:=False
        end
     else if (iteration>=2) and(InputField.Modified=True)and(SecDig<>0) then
        begin
          if Equally.ControlState=[] then
             begin
               Sign2:=True;
               InputField.Text:=ResultF;
             end;
          if (Tag=0) then OtherDig:=resultF;
          if (Tag=2) or (Tag=1) then
             begin
               OtherDig:=ResultF;
               if OtherDig<0 then
                  begin
                    OtherDig:=abs(OtherDig);
                    Sign:=True;
                  end;
               ResultF:=0;
               if Tag=2 then Power:=8
               else if Tag=1 then Power:=2;
               Current:=Length(OtherDig);
               for I := 1 to Length(OtherDig) do
                  begin
                    Dec(Current);
                    CopyS:=Copy(OtherDig,i,1);
                    Result:=StrToInt(copyS)*IntPower(Power,current);
                    ResultF:=ResultF+Result;
                  end;
               if Sign<>True then OtherDig:=ResultF
               else OtherDig:=ResultF-(2*ResultF);
               Sign:=False
             end
          else if (Tag=3) then
             begin
               OtherDig:=ResultF;
               ResultF:='$'+OtherDig;
               ResultF:=StrToInt64(ResultF);
               OtherDig:=ResultF;
             end;
          InputField.SetFocus;
          InputField.Modified:=False;
        end;
     Addition.ControlState:=[csClicked];
     Sign:=False;
     Sign2:=False;
     InputField.SetFocus;
   end;