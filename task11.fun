(*task 11*)
use "task1.fun";

fun legacy(dates: (int*int*int) list) =
    let
        fun getOldestDate(dates: (int*int*int) list, dateToCompare: int*int*int) =
            if (null dates)
            then dateToCompare
            else (
                getOldestDate((tl dates), (
                    if (is_older((hd dates), dateToCompare))
                    then (hd dates)
                    else dateToCompare
                ))   
            )
    in
        if null dates
        then NONE
        else SOME (getOldestDate((tl dates), (hd dates)))
    end;

val resTask11 = legacy([(2,2,2), (3,3,3), (4,4,4), (5,5,5)]);
val resTask11Test2 = legacy([]);