(*task 11*)

(*function from task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#3 x) <= (#3 y) andalso (#2 x) <= (#2 y) andalso (#1 x) < (#1 y)
    then true
    else false;

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