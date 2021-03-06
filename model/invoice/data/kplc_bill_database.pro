database connection "SERVER=mutall.co.ke;DRIVER={MySQL ODBC 5.3 Unicode Driver};DATABASE=mutallco_rental;UID=mutallco;PORT=3306;PWD=mutall2015"

query [msg]
	sql
	"SELECT"
		"`msg`.`body` AS msg_body"

	"FROM"
		"`msg`"
	{

          %
          %vtsv name(STRING) EXPRESSION LINE_SEPARATOR_TYPE lbrace TEXT_FIELDS rbrace  OPTDESCRIPTION
          vtsv

               %Name of the resulting table
               [t2]

               %The data comes from this field in the tex body
               [msg_body]

               %Line separaror is the new line (nl) character, i.e., the hard return
               line_separated_by nl

               %Describe the text fields in terms of their field names and the variable text that separate them
               {
                    acno: ",ACCOUNT NO:", ", ACCOUNT NO:";
                    billdate: ":Curr bill dated", ": Curr bill dated", ": Current bill dated", ", Curr bill dated";
                    curramnt: "is KShs:";
                    currread: "Curr Read:", "CurrentReading:";
                    prevread: "Prev Read:", "PreviousReading:";
                    consumption: ",Consumption:", ", Consumption:",  ",Estimated Units:" ;
                    consamnt: "KWh, Amount:", "KWh,Amount:";
                    fuel: "Fuel Cost:";
                    levies: ",Levies:", ", Levies:";
                    taxes: ",Taxes:";
                    prevamnt: ".Prev Balance is KShs", ". Prev Balance is KShs", ".Prev Balance is KSh";
                    duedate: "Due date";
                    queryend: "."
               }

               %The optional description is about mapping the fields to thier database fields
               {
                    acno->eaccount.num;
                    billdate->ebill.bill_date;
                    curramnt->ebill.current_amount;
                    currread->ebill.current_reading;
                    prevread->ebill.prev_reading;
                    consumption->ebill.consumption;
                    consamnt->ebill.prev_amount;
                    fuel->ebill.fuel;
                    levies->ebill.levies;
                    taxes->ebill.taxes;
                    prevamnt->ebill.balance;
                    duedate->ebill.due_date
               }
    }
