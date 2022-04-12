(*task 4*)
fun dates_in_month(dates: (int*int*int) list, month: int) =
    if (null dates)
    then []
    else ((
        if (#2 (hd dates)) = month
        then [hd dates]
        else []
    ) @ dates_in_month(tl dates, month));

val resTask4 = dates_in_month([(1,1,1), (2,1,2)], 1);