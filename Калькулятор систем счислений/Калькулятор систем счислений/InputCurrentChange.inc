procedure TSystemForm.InputFieldChange(Sender: TObject);
label arrow1;
var I:integer;
   begin
     if (Addition.ControlState=[csClicked])and(Length(InputField.Text)=0)
        then begin
               Addition.controlState:=[];
               goto arrow1;
             end;

     InputField.Modified:=True;

     if Sign2
        then goto arrow1;
     if Hexadecimal.Checked
        then HexadecimalClick(Sender);
     if Decimal.Checked
        then DecimalClick(Sender);
     if Octal.Checked
        then OctalClick(Sender);
     if (Factorial.ControlState=[])and binary.Checked
        then BinaryClick(Sender);

     if ((Tag=0) and (Equally.ControlState=[]) and ((Operation>=1)and(Operation<=7)))
        then
           try
              SecDig:=StrToInt64(InputField.text)
           except
              On EConvertError do DiapasonOverFlow.OnExecute(Sender)
           end

     else if(((Tag=2)or(Tag=1))and(Equally.ControlState=[])and
     ((Operation>=1)and(Operation<=14)))
     then begin
            if (Tag=2)
               then Power:=8
            else if (Tag=1)
               then Power:=2;
            SecDig:=InputField.Text;
            if SecDig<0
               then begin
                      SecDig:=abs(SecDig);
                      Sign:=True;
                    end;
            Current:=Length(SecDig);
            ResultF:=0;
            Result:=0;
            ResultString:='';
            FirCur:='';
            for I := 1 to Length(SecDig) do
               begin
                 Dec(Current);
                 CopyS:=Copy(SecDig,i,1);
                 Result:=StrToInt(CopyS)*Potenz(Power,current);
                 ResultF:=ResultF+Result;
               end;
            if Sign<>True then
               SecDig:=StrToInt64(ResultF)
            else SecDig:=ResultF-(2*ResultF);
            Sign:=False;
          end
     else if ((Tag=3) and (Equally.ControlState=[]) and ((Operation>=1)and(Operation<=7)))
        then begin
               ResultF:='$'+InputField.text;
                  try
                     ResultF:=StrToInt64(ResultF);
                  except
                     On EConvertError do DiapasonOverflow.OnExecute(Sender)
                  end;
               SecDig:=ResultF;
               Sign:=False;
             end;
     if (Tag=0)and(iteration=1) and (Operation=1)
        then begin
               ResultF:=firdig+SecDig;
               Sign:=False;
             end
     else if (Tag=0)and(iteration=1)and(Operation=2)
        then begin
               ResultF:=Firdig-SecDig;
               Sign:=False;
             end
     else if (Tag=0)and(iteration=1)and(Operation=3)
        then begin
               ResultF:=Firdig*SecDig;
               Sign:=False;
             end
     else if (Tag=0)and(iteration=1)and(Operation=4)
        then begin
               ResultF:=Floor(Firdig/SecDig);
               Sign:=False;
             end
     else if (Tag=0)and(iteration=1)and(Operation=5)
        then begin
               ResultF:=Firdig mod SecDig;
               Sign:=False
             end
     else if (Tag=0)and(iteration=1)and(Operation=6)
        then begin
               ResultF:=Firdig xor SecDig;
               Sign:=False
             end
     else if (Tag=0)and(iteration=1)and(Operation=7)
        then ResultF:=Potenz(Firdig,SecDig)
     else if ((Tag=2) or (Tag=1)) and (iteration=1) and ((Operation>=1)and (Operation<=14)) and (Equally.ControlState=[])
     then begin
            CaseOperat.OnExecute(Sender);
            ChangeOper.OnExecute(Sender)
          end
     else if(Tag=3) and (iteration=1) and ((Operation>=1)or(Operation<=7))
     then begin
            CaseOperat.OnExecute(Sender);
            ChangeDiv:=ResultF;
            ChangeMod:=IntToHex(ChangeDiv,1);
            ResultF:=ChangeMod;
          end;
     if(Tag=0)and(iteration>=2) and (Operation=1)
        then begin
            Resultf:=OtherDig+SecDig;
            Sign:=False;
          end
     else if(Tag=0)and(iteration>=2)and(Operation=2)
        then begin
               ResultF:=OtherDig-SecDig;
               Sign:=False;
             end
     else if(Tag=0)and(iteration>=2)and(Operation=3) then
        begin
          ResultF:=OtherDig*SecDig;
          Sign:=False;
        end
     else if (Tag=0)and(iteration>=2)and(Operation=4)  then
        begin
          ResultF:=Floor(OtherDig/SecDig);
          Sign:=False;
        end
     else if (Tag=0)and(iteration>=2)and(Operation=5)then
        begin
          ResultF:=OtherDig mod SecDig;
          Sign:=False;
        end
     else if (Tag=0)and(iteration>=2)and(Operation=6)then
        begin
          ResultF:=OtherDig xor SecDig;
          Sign:=False;
        end
     else if (Tag=0)and(iteration>=2)and(Operation=7)then ResultF:=Potenz(OtherDig,SecDig)
     else if ((Tag=2) or (Tag=1)) and (iteration>=2) and ((Operation>=1)or(Operation<=14)) and
     (Equally.ControlState=[])
     then
        begin
          Case2Operat.OnExecute(Sender);
          ChangeOper.OnExecute(Sender);
        end
     else if(Tag=3) and (iteration>=2) and ((Operation>=1)or(Operation<=7)) then
        begin
          Case2Operat.OnExecute(Sender);
          ChangeDiv:=ResultF;
          ChangeMod:=IntToHex(ChangeDiv,1);
          ResultF:=ChangeMod;
          Sign:=False;
        end;
     arrow1:
     Addition.controlState:=[];
   end;
