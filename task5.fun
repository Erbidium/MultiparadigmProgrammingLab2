(*task 5*)
fun dates_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then []
    else (
        dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)
    );

val resTask5 = dates_in_months([(1,1,1), (2,2,2)], [1, 3, 4]);