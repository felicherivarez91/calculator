procedure TSystemForm.CaseOperatExecute(Sender: TObject);
label arrow3,arrow4;
var  i:integer;
   begin
      case Operation of
         1:ResultF:=FirDig+SecDig;
         2:ResultF:=FirDig-SecDig;
         3:ResultF:=FirDig*SecDig;
         4:ResultF:=Floor(FirDig/SecDig);
         5:ResultF:=FirDig mod SecDig;
         6:ResultF:=FirDig xor SecDig;
         7:ResultF:=Potenz(FirDig,SecDig);
         8:ResultF:=FirDig or SecDig;
         9:begin
             arrow3:
             for I := 1 to Length(IntToStr(SecDig)) do
                begin
                  CopyS:=Copy(IntToStr(SecDig),i,1);
                  if CopyS='0' then ResultString:=ResultString+'1'
                  else if CopyS='1' then ResultString:=ResultString+'0'
                end;
                SecDig:=StrToInt64(ResultString);
                ResultString:='';
                ResultF:=FirDig or SecDig;
           end;
         10:begin
              arrow4:
              for I := 1 to Length(IntToStr(FirDig)) do
                 begin
                   CopyS:=Copy(IntToStr(FirDig),i,1);
                   if CopyS='0' then ResultString:=ResultString+'1'
                   else if CopyS='1' then ResultString:=ResultString+'0'
                 end;
                 FirDig:=StrToInt64(ResultString);
                 ResultString:='';
                 ResultF:=FirDig or SecDig;
            end;
         11:ResultF:=FirDig and SecDig;
         12:If FirDig=SecDig then ResultF:=1
            else ResultF:=0;
         13:goto arrow4;
         14:goto arrow3;
      end;
   end;