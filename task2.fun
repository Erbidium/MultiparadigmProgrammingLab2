(*task 2*)
fun number_in_month(dates: (int*int*int) list, month: int) =
    if (null dates)
    then 0
    else (number_in_month(tl dates, month) + (
        if (#2 (hd dates) ) = month
        then 1
        else 0)
        );

val resTask2 = number_in_month([(1,1,1), (2,1,2)], 1);