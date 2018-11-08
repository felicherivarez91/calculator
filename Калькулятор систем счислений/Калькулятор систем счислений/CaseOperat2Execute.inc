procedure TSystemForm.Case2OperatExecute(Sender: TObject);
label arrow5,arrow6;
var i:integer;
   begin
     case Operation of
        1:ResultF:=StrToInt64(OtherDig)+StrToInt64(SecDig);
        2:ResultF:=OtherDig-SecDig;
        3:ResultF:=OtherDig*SecDig;
        4:ResultF:=Floor(OtherDig/SecDig);
        5:ResultF:=OtherDig mod SecDig;
        6:ResultF:=OtherDig xor SecDig;
        7:ResultF:=Potenz(OtherDig,SecDig);
        8:ResultF:=OtherDig or SecDig;
        9:begin
            arrow6:
            for I := 1 to Length(IntToStr(SecDig)) do
               begin
                 CopyS:=Copy(IntToStr(SecDig),i,1);
                 if CopyS='0' then ResultString:=ResultString+'1'
                 else if CopyS='1' then ResultString:=ResultString+'0'
               end;
            SecDig:=StrToInt64(ResultString);
            ResultString:='';
            ResultF:=OtherDig or SecDig;
          end;
        10:begin
             arrow5:
             for I := 1 to Length(IntToStr(OtherDig)) do
                begin
                  CopyS:=Copy(IntToStr(OtherDig),i,1);
                  if CopyS='0' then ResultString:=ResultString+'1'
                  else if CopyS='1' then ResultString:=ResultString+'0'
                end;
             OtherDig:=StrToInt64(ResultString);
             ResultString:='';
             ResultF:=OtherDig or SecDig;
           end;
        11:ResultF:=OtherDig and SecDig;
        12:If OtherDig=SecDig then ResultF:=1
           else ResultF:=0;
        13:goto arrow5;
        14:goto arrow6;
     end;
   end;
