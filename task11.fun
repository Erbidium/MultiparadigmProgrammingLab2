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

fun provided_test1 () = 
    let val dates = [(2,2,2), (3,3,3), (4,4,4), (5,5,5)]
    in
        legacy(dates)
    end;

fun provided_test2 () = 
    let val dates = []
    in
        legacy(dates)
    end;

fun provided_test3 () = 
    let val dates = [(2,2,2)]
    in
        legacy(dates)
    end;

fun provided_test4 () = 
    let val dates = [(3,3,3), (3,3,3)]
    in
        legacy(dates)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();