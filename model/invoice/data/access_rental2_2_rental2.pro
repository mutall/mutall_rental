database "F:\mutall_project\mutall\data\mutallco_rental_version3.accdb"

query [business]
	sql
	"SELECT"
		"[business].[name] AS business_name,"
		"[business].[ceo] AS business_ceo,"
		"[business].[consumption] AS business_consumption,"
		"[business].[market_rent_price] AS business_market_rent_price,"
		"[business].[water_cost] AS business_water_cost,"
		"[business].[is_current] AS business_is_current"
	"FROM"
		"[business]"
	{
		business_name -> [business].[name];
		business_ceo -> [business].[ceo];
		business_consumption -> [business].[consumption];
		business_market_rent_price -> [business].[market_rent_price];
		business_water_cost -> [business].[water_cost];
		business_is_current -> [business].[is_current]
	}


query [client]
	sql
	"SELECT"
		"[client].[name] AS client_name,"
		"[client].[title] AS client_title,"
		"[client].[quarterly] AS client_quarterly,"
		"[client].[contact] AS client_contact,"
		"[client].[phone] AS client_phone,"
		"[client].[address] AS client_address,"
		"[client].[email] AS client_email"
	"FROM"
		"[client]"
	{
		client_name -> [client].[name];
		client_title -> [client].[title];
		client_quarterly -> [client].[quarterly];
		client_contact -> [client].[contact];
		client_phone -> [client].[phone];
		client_address -> [client].[address];
		client_email -> [client].[email]
	}


query [eaccount]
	sql
	"SELECT"
		"[eaccount].[num] AS eaccount_num,"
		"[eaccount].[name] AS eaccount_name,"
		"[eaccount].[is_invalid] AS eaccount_is_invalid,"
		"[eaccount].[comment] AS eaccount_comment,"
		"[eaccount].[source] AS eaccount_source"
	"FROM"
		"[eaccount]"
	{
		eaccount_num -> [eaccount].[num];
		eaccount_name -> [eaccount].[name];
		eaccount_is_invalid -> [eaccount].[is_invalid];
		eaccount_comment -> [eaccount].[comment];
		eaccount_source -> [eaccount].[source]
	}


query [emeter]
	sql
	"SELECT"
		"[emeter].[num] AS emeter_num,"
		"[emeter].[uid] AS emeter_uid,"
		"[emeter].[name] AS emeter_name,"
		"[emeter].[is_invalid] AS emeter_is_invalid,"
		"[emeter].[comment] AS emeter_comment,"
		"[emeter].[source] AS emeter_source"
	"FROM"
		"[emeter]"
	{
		emeter_num -> [emeter].[num];
		emeter_uid -> [emeter].[uid];
		emeter_name -> [emeter].[name];
		emeter_is_invalid -> [emeter].[is_invalid];
		emeter_comment -> [emeter].[comment];
		emeter_source -> [emeter].[source]
	}


query [job]
	sql
	"SELECT"
		"[job].[name] AS job_name,"
		"[job].[dbname] AS job_dbname,"
		"[job].[sql] AS job_sql"
	"FROM"
		"[job]"
	{
		job_name -> [job].[name];
		job_dbname -> [job].[dbname];
		job_sql -> [job].[sql]
	}


query [msg]
	sql
	"SELECT"
		"[msg].[id] AS msg_id,"
		"[msg].[body] AS msg_body,"
		"[msg].[date] AS msg_date"
	"FROM"
		"[msg]"
	{
		msg_id -> [msg].[id];
		msg_body -> [msg].[body];
		msg_date -> [msg].[date]
	}


query [period]
	sql
	"SELECT"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month,"
		"[period].[cutoff] AS period_cutoff"
	"FROM"
		"[period]"
	{
		period_year -> [period].[year];
		period_month -> [period].[month];
		period_cutoff -> [period].[cutoff]
	}


query [room]
	sql
	"SELECT"
		"[room].[uid] AS room_uid,"
		"[room].[is_psuedo] AS room_is_psuedo,"
		"[room].[title] AS room_title,"
		"[room].[floor] AS room_floor,"
		"[room].[wing] AS room_wing,"
		"[room].[width_ft] AS room_width_ft,"
		"[room].[width_inch] AS room_width_inch,"
		"[room].[breadth_ft] AS room_breadth_ft,"
		"[room].[breadth_inch] AS room_breadth_inch,"
		"[room].[area_sq_m] AS room_area_sq_m,"
		"[room].[area_sq_ft] AS room_area_sq_ft"
	"FROM"
		"[room]"
	{
		room_uid -> [room].[uid];
		room_is_psuedo -> [room].[is_psuedo];
		room_title -> [room].[title];
		room_floor -> [room].[floor];
		room_wing -> [room].[wing];
		room_width_ft -> [room].[width_ft];
		room_width_inch -> [room].[width_inch];
		room_breadth_ft -> [room].[breadth_ft];
		room_breadth_inch -> [room].[breadth_inch];
		room_area_sq_m -> [room].[area_sq_m];
		room_area_sq_ft -> [room].[area_sq_ft]
	}


query [service]
	sql
	"SELECT"
		"[service].[name] AS service_name,"
		"[service].[description] AS service_description,"
		"[service].[price] AS service_price,"
		"[service].[auto] AS service_auto"
	"FROM"
		"[service]"
	{
		service_name -> [service].[name];
		service_description -> [service].[description];
		service_price -> [service].[price];
		service_auto -> [service].[auto]
	}


query [wmeter]
	sql
	"SELECT"
		"[wmeter].[serial_no] AS wmeter_serial_no,"
		"[wmeter].[name] AS wmeter_name,"
		"[wmeter].[comment] AS wmeter_comment,"
		"[wmeter].[is_supply] AS wmeter_is_supply"
	"FROM"
		"[wmeter]"
	{
		wmeter_serial_no -> [wmeter].[serial_no];
		wmeter_name -> [wmeter].[name];
		wmeter_comment -> [wmeter].[comment];
		wmeter_is_supply -> [wmeter].[is_supply]
	}


query [agreement]
	sql
	"SELECT"
		"[agreement].[amount] AS agreement_amount,"
		"[agreement].[start_date] AS agreement_start_date,"
		"[agreement].[duration] AS agreement_duration,"
		"[agreement].[review] AS agreement_review,"
		"[agreement].[terminated] AS agreement_terminated,"
		"[agreement].[valid] AS agreement_valid,"
		"[agreement].[comment] AS agreement_comment,"
		"[room].[uid] AS room_uid,"
		"[client].[name] AS client_name"
	"FROM"
		"([agreement] INNER JOIN "
		"[room] ON [agreement].[room] = [room].[room]) INNER JOIN "
		"[client] ON [agreement].[client] = [client].[client]"
	{
		agreement_amount -> [agreement].[amount];
		agreement_start_date -> [agreement].[start_date];
		agreement_duration -> [agreement].[duration];
		agreement_review -> [agreement].[review];
		agreement_terminated -> [agreement].[terminated];
		agreement_valid -> [agreement].[valid];
		agreement_comment -> [agreement].[comment];
		room_uid -> [room].[uid];
		client_name -> [client].[name]
	}


query [econnection]
	sql
	"SELECT"
		"[econnection].[rate] AS econnection_rate,"
		"[econnection].[start_date] AS econnection_start_date,"
		"[econnection].[end_date] AS econnection_end_date,"
		"[econnection].[start_reading] AS econnection_start_reading,"
		"[econnection].[shared] AS econnection_shared,"
		"[room].[uid] AS room_uid,"
		"[emeter].[num] AS emeter_num"
	"FROM"
		"([econnection] INNER JOIN "
		"[room] ON [econnection].[room] = [room].[room]) INNER JOIN "
		"[emeter] ON [econnection].[emeter] = [emeter].[emeter]"
	{
		econnection_rate -> [econnection].[rate];
		econnection_start_date -> [econnection].[start_date];
		econnection_end_date -> [econnection].[end_date];
		econnection_start_reading -> [econnection].[start_reading];
		econnection_shared -> [econnection].[shared];
		room_uid -> [room].[uid];
		emeter_num -> [emeter].[num]
	}


query [elink]
	sql
	"SELECT"
		"[elink].[origin] AS elink_origin,"
		"[emeter].[num] AS emeter_num,"
		"[eaccount].[num] AS eaccount_num"
	"FROM"
		"([elink] INNER JOIN "
		"[emeter] ON [elink].[emeter] = [emeter].[emeter]) INNER JOIN "
		"[eaccount] ON [elink].[eaccount] = [eaccount].[eaccount]"
	{
		elink_origin -> [elink].[origin];
		emeter_num -> [emeter].[num];
		eaccount_num -> [eaccount].[num]
	}


query [invoice]
	sql
	"SELECT"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [mobile]
	sql
	"SELECT"
		"[mobile].[num] AS mobile_num,"
		"[mobile].[contact] AS mobile_contact,"
		"[client_mobile].[client],"
		"[client_mobile].[client_name] AS client_mobile_client_name"
	"FROM"
		"[mobile] LEFT JOIN "
		"("
	"SELECT"
		"[client].[client] AS client,"
		"[client].[name] AS client_name"
	"FROM"
		"[client]"
		")  AS [client_mobile] ON [mobile].[client] = [client_mobile].[client]"
	{
		mobile_num -> [mobile].[num];
		mobile_contact -> [mobile].[contact];
{client_mobile_client_name -> [client].[name]}
	}


query [picture]
	sql
	"SELECT"
		"[picture].[name] AS picture_name,"
		"[picture].[elevation] AS picture_elevation,"
		"[room].[uid] AS room_uid"
	"FROM"
		"[picture] INNER JOIN "
		"[room] ON [picture].[room] = [room].[room]"
	{
		picture_name -> [picture].[name];
		picture_elevation -> [picture].[elevation];
		room_uid -> [room].[uid]
	}


query [subscription]
	sql
	"SELECT"
		"[subscription].[amount] AS subscription_amount,"
		"[client].[name] AS client_name,"
		"[service].[name] AS service_name"
	"FROM"
		"([subscription] INNER JOIN "
		"[client] ON [subscription].[client] = [client].[client]) INNER JOIN "
		"[service] ON [subscription].[service] = [service].[service]"
	{
		subscription_amount -> [subscription].[amount];
		client_name -> [client].[name];
		service_name -> [service].[name]
	}


query [wconnection]
	sql
	"SELECT"
		"[wconnection].[rate] AS wconnection_rate,"
		"[wconnection].[start_date] AS wconnection_start_date,"
		"[wconnection].[end_date] AS wconnection_end_date,"
		"[wconnection].[start_reading] AS wconnection_start_reading,"
		"[wconnection].[end_reading] AS wconnection_end_reading,"
		"[wconnection].[disconnected] AS wconnection_disconnected,"
		"[room].[uid] AS room_uid,"
		"[wmeter].[serial_no] AS wmeter_serial_no"
	"FROM"
		"([wconnection] INNER JOIN "
		"[room] ON [wconnection].[room] = [room].[room]) INNER JOIN "
		"[wmeter] ON [wconnection].[wmeter] = [wmeter].[wmeter]"
	{
		wconnection_rate -> [wconnection].[rate];
		wconnection_start_date -> [wconnection].[start_date];
		wconnection_end_date -> [wconnection].[end_date];
		wconnection_start_reading -> [wconnection].[start_reading];
		wconnection_end_reading -> [wconnection].[end_reading];
		wconnection_disconnected -> [wconnection].[disconnected];
		room_uid -> [room].[uid];
		wmeter_serial_no -> [wmeter].[serial_no]
	}


query [balance_initial]
	sql
	"SELECT"
		"[balance_initial].[date_g] AS balance_initial_date_g,"
		"[balance_initial].[amount_g] AS balance_initial_amount_g,"
		"[balance_initial].[amount_v] AS balance_initial_amount_v,"
		"[balance_initial].[amount] AS balance_initial_amount,"
		"[balance_initial].[date_v] AS balance_initial_date_v,"
		"[balance_initial].[comment] AS balance_initial_comment,"
		"[balance_initial].[date] AS balance_initial_date,"
		"[client].[name] AS client_name,"
		"[invoice_balance_initial].[invoice],"
		"[invoice_balance_initial].[invoice_is_valid] AS invoice_balance_initial_invoice_is_valid,"
		"[invoice_balance_initial].[client_name] AS invoice_balance_initial_client_name,"
		"[invoice_balance_initial].[period_year] AS invoice_balance_initial_period_year,"
		"[invoice_balance_initial].[period_month] AS invoice_balance_initial_period_month"
	"FROM"
		"([balance_initial] INNER JOIN "
		"[client] ON [balance_initial].[client] = [client].[client]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_balance_initial] ON [balance_initial].[invoice] = [invoice_balance_initial].[invoice]"
	{
		balance_initial_date_g -> [balance_initial].[date_g];
		balance_initial_amount_g -> [balance_initial].[amount_g];
		balance_initial_amount_v -> [balance_initial].[amount_v];
		balance_initial_amount -> [balance_initial].[amount];
		balance_initial_date_v -> [balance_initial].[date_v];
		balance_initial_comment -> [balance_initial].[comment];
		balance_initial_date -> [balance_initial].[date];
		client_name -> [client].[name];
{invoice_balance_initial_invoice_is_valid -> [invoice].[is_valid];
invoice_balance_initial_client_name -> [client].[name];
invoice_balance_initial_period_year -> [period].[year];
invoice_balance_initial_period_month -> [period].[month]}
	}


query [charge]
	sql
	"SELECT"
		"[charge].[name] AS charge_name,"
		"[charge].[price] AS charge_price,"
		"[charge].[factor] AS charge_factor,"
		"[charge].[amount] AS charge_amount,"
		"[service].[name] AS service_name,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"((([charge] INNER JOIN "
		"[service] ON [charge].[service] = [service].[service]) INNER JOIN "
		"[invoice] ON [charge].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		charge_name -> [charge].[name];
		charge_price -> [charge].[price];
		charge_factor -> [charge].[factor];
		charge_amount -> [charge].[amount];
		service_name -> [service].[name];
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [closing_balance]
	sql
	"SELECT"
		"[closing_balance].[amount] AS closing_balance_amount,"
		"[closing_balance].[posted] AS closing_balance_posted,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"(([closing_balance] INNER JOIN "
		"[invoice] ON [closing_balance].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		closing_balance_amount -> [closing_balance].[amount];
		closing_balance_posted -> [closing_balance].[posted];
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [credit]
	sql
	"SELECT"
		"[credit].[reason] AS credit_reason,"
		"[credit].[date] AS credit_date,"
		"[credit].[amount] AS credit_amount,"
		"[client].[name] AS client_name,"
		"[invoice_credit].[invoice],"
		"[invoice_credit].[invoice_is_valid] AS invoice_credit_invoice_is_valid,"
		"[invoice_credit].[client_name] AS invoice_credit_client_name,"
		"[invoice_credit].[period_year] AS invoice_credit_period_year,"
		"[invoice_credit].[period_month] AS invoice_credit_period_month"
	"FROM"
		"([credit] INNER JOIN "
		"[client] ON [credit].[client] = [client].[client]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_credit] ON [credit].[invoice] = [invoice_credit].[invoice]"
	{
		credit_reason -> [credit].[reason];
		credit_date -> [credit].[date];
		credit_amount -> [credit].[amount];
		client_name -> [client].[name];
{invoice_credit_invoice_is_valid -> [invoice].[is_valid];
invoice_credit_client_name -> [client].[name];
invoice_credit_period_year -> [period].[year];
invoice_credit_period_month -> [period].[month]}
	}


query [debit]
	sql
	"SELECT"
		"[debit].[reason] AS debit_reason,"
		"[debit].[date] AS debit_date,"
		"[debit].[amount] AS debit_amount,"
		"[client].[name] AS client_name,"
		"[invoice_debit].[invoice],"
		"[invoice_debit].[invoice_is_valid] AS invoice_debit_invoice_is_valid,"
		"[invoice_debit].[client_name] AS invoice_debit_client_name,"
		"[invoice_debit].[period_year] AS invoice_debit_period_year,"
		"[invoice_debit].[period_month] AS invoice_debit_period_month"
	"FROM"
		"([debit] INNER JOIN "
		"[client] ON [debit].[client] = [client].[client]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_debit] ON [debit].[invoice] = [invoice_debit].[invoice]"
	{
		debit_reason -> [debit].[reason];
		debit_date -> [debit].[date];
		debit_amount -> [debit].[amount];
		client_name -> [client].[name];
{invoice_debit_invoice_is_valid -> [invoice].[is_valid];
invoice_debit_client_name -> [client].[name];
invoice_debit_period_year -> [period].[year];
invoice_debit_period_month -> [period].[month]}
	}


query [ebill]
	sql
	"SELECT"
		"[ebill].[due_date] AS ebill_due_date,"
		"[ebill].[current_amount] AS ebill_current_amount,"
		"[eaccount].[num] AS eaccount_num,"
		"[msg_ebill].[msg],"
		"[msg_ebill].[msg_id] AS msg_ebill_msg_id,"
		"[invoice_ebill].[invoice],"
		"[invoice_ebill].[invoice_is_valid] AS invoice_ebill_invoice_is_valid,"
		"[invoice_ebill].[client_name] AS invoice_ebill_client_name,"
		"[invoice_ebill].[period_year] AS invoice_ebill_period_year,"
		"[invoice_ebill].[period_month] AS invoice_ebill_period_month"
	"FROM"
		"(([ebill] INNER JOIN "
		"[eaccount] ON [ebill].[eaccount] = [eaccount].[eaccount]) LEFT JOIN "
		"("
	"SELECT"
		"[msg].[msg] AS msg,"
		"[msg].[id] AS msg_id"
	"FROM"
		"[msg]"
		")  AS [msg_ebill] ON [ebill].[msg] = [msg_ebill].[msg]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_ebill] ON [ebill].[invoice] = [invoice_ebill].[invoice]"
	{
		ebill_due_date -> [ebill].[due_date];
		ebill_current_amount -> [ebill].[current_amount];
		eaccount_num -> [eaccount].[num];
{msg_ebill_msg_id -> [msg].[id]};
{invoice_ebill_invoice_is_valid -> [invoice].[is_valid];
invoice_ebill_client_name -> [client].[name];
invoice_ebill_period_year -> [period].[year];
invoice_ebill_period_month -> [period].[month]}
	}


query [electricity]
	sql
	"SELECT"
		"[electricity].[eaccount_no] AS electricity_eaccount_no,"
		"[electricity].[emeter_no] AS electricity_emeter_no,"
		"[electricity].[due_date] AS electricity_due_date,"
		"[electricity].[payable_to_kplc] AS electricity_payable_to_kplc,"
		"[electricity].[sharing] AS electricity_sharing,"
		"[electricity].[amount] AS electricity_amount,"
		"[eaccount].[num] AS eaccount_num,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"((([electricity] INNER JOIN "
		"[eaccount] ON [electricity].[eaccount] = [eaccount].[eaccount]) INNER JOIN "
		"[invoice] ON [electricity].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		electricity_eaccount_no -> [electricity].[eaccount_no];
		electricity_emeter_no -> [electricity].[emeter_no];
		electricity_due_date -> [electricity].[due_date];
		electricity_payable_to_kplc -> [electricity].[payable_to_kplc];
		electricity_sharing -> [electricity].[sharing];
		electricity_amount -> [electricity].[amount];
		eaccount_num -> [eaccount].[num];
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [ereading]
	sql
	"SELECT"
		"[ereading].[date] AS ereading_date,"
		"[ereading].[value] AS ereading_value,"
		"[ereading].[remark] AS ereading_remark,"
		"[emeter].[num] AS emeter_num,"
		"[invoice_ereading].[invoice],"
		"[invoice_ereading].[invoice_is_valid] AS invoice_ereading_invoice_is_valid,"
		"[invoice_ereading].[client_name] AS invoice_ereading_client_name,"
		"[invoice_ereading].[period_year] AS invoice_ereading_period_year,"
		"[invoice_ereading].[period_month] AS invoice_ereading_period_month"
	"FROM"
		"([ereading] INNER JOIN "
		"[emeter] ON [ereading].[emeter] = [emeter].[emeter]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_ereading] ON [ereading].[invoice] = [invoice_ereading].[invoice]"
	{
		ereading_date -> [ereading].[date];
		ereading_value -> [ereading].[value];
		ereading_remark -> [ereading].[remark];
		emeter_num -> [emeter].[num];
{invoice_ereading_invoice_is_valid -> [invoice].[is_valid];
invoice_ereading_client_name -> [client].[name];
invoice_ereading_period_year -> [period].[year];
invoice_ereading_period_month -> [period].[month]}
	}


query [note]
	sql
	"SELECT"
		"[note].[info] AS note_info,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"(([note] INNER JOIN "
		"[invoice] ON [note].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		note_info -> [note].[info];
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [payment]
	sql
	"SELECT"
		"[payment].[date] AS payment_date,"
		"[payment].[bank] AS payment_bank,"
		"[payment].[amount_v] AS payment_amount_v,"
		"[payment].[description] AS payment_description,"
		"[client].[name] AS client_name,"
		"[invoice_payment].[invoice],"
		"[invoice_payment].[invoice_is_valid] AS invoice_payment_invoice_is_valid,"
		"[invoice_payment].[client_name] AS invoice_payment_client_name,"
		"[invoice_payment].[period_year] AS invoice_payment_period_year,"
		"[invoice_payment].[period_month] AS invoice_payment_period_month"
	"FROM"
		"([payment] INNER JOIN "
		"[client] ON [payment].[client] = [client].[client]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_payment] ON [payment].[invoice] = [invoice_payment].[invoice]"
	{
		payment_date -> [payment].[date];
		payment_bank -> [payment].[bank];
		payment_amount_v -> [payment].[amount_v];
		payment_description -> [payment].[description];
		client_name -> [client].[name];
{invoice_payment_invoice_is_valid -> [invoice].[is_valid];
invoice_payment_client_name -> [client].[name];
invoice_payment_period_year -> [period].[year];
invoice_payment_period_month -> [period].[month]}
	}


query [rent]
	sql
	"SELECT"
		"[rent].[room_no] AS rent_room_no,"
		"[rent].[price] AS rent_price,"
		"[rent].[agreement_end_date] AS rent_agreement_end_date,"
		"[rent].[factor] AS rent_factor,"
		"[rent].[amount] AS rent_amount,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month,"
		"[agreement].[start_date] AS agreement_start_date,"
		"[room].[uid] AS room_uid,"
		"[client].[name] AS client_name"
	"FROM"
		"(((([rent] INNER JOIN "
		"[invoice] ON [rent].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]) INNER JOIN "
		"[agreement] ON [rent].[agreement] = [agreement].[agreement]) INNER JOIN "
		"[room] ON [agreement].[room] = [room].[room]) INNER JOIN "
		"[client] ON [agreement].[client] = [client].[client] AND [invoice].[client] = [client].[client]"
	{
		rent_room_no -> [rent].[room_no];
		rent_price -> [rent].[price];
		rent_agreement_end_date -> [rent].[agreement_end_date];
		rent_factor -> [rent].[factor];
		rent_amount -> [rent].[amount];
		invoice_is_valid -> [invoice].[is_valid];
		period_year -> [period].[year];
		period_month -> [period].[month];
		agreement_start_date -> [agreement].[start_date];
		room_uid -> [room].[uid];
		client_name -> [client].[name]
	}


query [water]
	sql
	"SELECT"
		"[water].[serial_no] AS water_serial_no,"
		"[water].[prev_date] AS water_prev_date,"
		"[water].[prev_value] AS water_prev_value,"
		"[water].[curr_date] AS water_curr_date,"
		"[water].[curr_value] AS water_curr_value,"
		"[water].[consumption] AS water_consumption,"
		"[water].[rate] AS water_rate,"
		"[water].[amount] AS water_amount,"
		"[wconnection].[end_date] AS wconnection_end_date,"
		"[room].[uid] AS room_uid,"
		"[wmeter].[serial_no] AS wmeter_serial_no,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"((((([water] INNER JOIN "
		"[wconnection] ON [water].[wconnection] = [wconnection].[wconnection]) INNER JOIN "
		"[room] ON [wconnection].[room] = [room].[room]) INNER JOIN "
		"[wmeter] ON [wconnection].[wmeter] = [wmeter].[wmeter]) INNER JOIN "
		"[invoice] ON [water].[invoice] = [invoice].[invoice]) INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
	{
		water_serial_no -> [water].[serial_no];
		water_prev_date -> [water].[prev_date];
		water_prev_value -> [water].[prev_value];
		water_curr_date -> [water].[curr_date];
		water_curr_value -> [water].[curr_value];
		water_consumption -> [water].[consumption];
		water_rate -> [water].[rate];
		water_amount -> [water].[amount];
		wconnection_end_date -> [wconnection].[end_date];
		room_uid -> [room].[uid];
		wmeter_serial_no -> [wmeter].[serial_no];
		invoice_is_valid -> [invoice].[is_valid];
		client_name -> [client].[name];
		period_year -> [period].[year];
		period_month -> [period].[month]
	}


query [wreading]
	sql
	"SELECT"
		"[wreading].[date] AS wreading_date,"
		"[wreading].[value] AS wreading_value,"
		"[wreading].[remark] AS wreading_remark,"
		"[wmeter].[serial_no] AS wmeter_serial_no,"
		"[invoice_wreading].[invoice],"
		"[invoice_wreading].[invoice_is_valid] AS invoice_wreading_invoice_is_valid,"
		"[invoice_wreading].[client_name] AS invoice_wreading_client_name,"
		"[invoice_wreading].[period_year] AS invoice_wreading_period_year,"
		"[invoice_wreading].[period_month] AS invoice_wreading_period_month"
	"FROM"
		"([wreading] INNER JOIN "
		"[wmeter] ON [wreading].[wmeter] = [wmeter].[wmeter]) LEFT JOIN "
		"("
	"SELECT"
		"[invoice].[invoice] AS invoice,"
		"[invoice].[is_valid] AS invoice_is_valid,"
		"[client].[name] AS client_name,"
		"[period].[year] AS period_year,"
		"[period].[month] AS period_month"
	"FROM"
		"([invoice] INNER JOIN "
		"[client] ON [invoice].[client] = [client].[client]) INNER JOIN "
		"[period] ON [invoice].[period] = [period].[period]"
		")  AS [invoice_wreading] ON [wreading].[invoice] = [invoice_wreading].[invoice]"
	{
		wreading_date -> [wreading].[date];
		wreading_value -> [wreading].[value];
		wreading_remark -> [wreading].[remark];
		wmeter_serial_no -> [wmeter].[serial_no];
{invoice_wreading_invoice_is_valid -> [invoice].[is_valid];
invoice_wreading_client_name -> [client].[name];
invoice_wreading_period_year -> [period].[year];
invoice_wreading_period_month -> [period].[month]}
	}

