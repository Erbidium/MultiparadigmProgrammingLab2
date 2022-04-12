(*task 3*)
fun number_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then []
    else (number_in_month(dates, hd months)) :: number_in_months(dates, tl months);

val resTask3 = number_in_months([(1,1,1), (2,1,2)], [1, 2]);