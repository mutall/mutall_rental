 /*
 This version 1 assumes that the current data file type is a  text file of "line_separated" rows and "
 variable text separated values", vtsv.
 Thes structcure of a text file has the following syntax:-

     text NAME LINE_SEPARATOR_TYPE FIELD_SEPARATOR_TYPE TEXT_SOURCE

 NAME: The name of the text table being described
 LINE_SEPARATOR_TYPE: The optional row separator type is  tab, and nl are spcial separators. A sSpecial cases are taThe valaues
 FIELD_SEPARATOR:  The field separator type is SIMPLE OR VSV type (expapound)
 TEXT_SOURCE: internally or extarannly avaialble data. If external, we expet a filename followd by the
     description
 */

text
     %
     %Name of the text table
     [t1]
     %
     %Line/Row separator of the text input
     line_separated_by nl
     %
     %The field separator type is of the vtsv type. The text has onl ne field marked by the end of line
     %marker. The foeld is named message
     {
        message: nl
     }
     %
     %The source of this data is the curent data file
     current_data_file
     %
     %The descriptions. The is only one the vtsv descriptor
     {

          %
          %vtsv name(STRING) EXPRESSION LINE_SEPARATOR_TYPE lbrace TEXT_FIELDS rbrace  OPTDESCRIPTION
          vtsv

               %Name of the resulting table
               [t2]

               %The data comes from this field in the tex body
               [message]

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

