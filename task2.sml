(*task 2*)
fun number_in_month(dates: (int*int*int) list, month: int) =
    if (null dates)
    then 0
    else (number_in_month(tl dates, month) + (
        if (#2 (hd dates) ) = month
        then 1
        else 0)
        );


(*tests for task 2*)
fun provided_test1 () = 
    let val datesList = [(2025,3,5), (2025,10,5), (2013,3,10)]
        val month = 3
    in
        number_in_month(datesList, month)
    end;

fun provided_test2 () = 
    let val datesList = [(2025,3,5), (2025,3,5), (2013,3,10)]
        val month = 6
    in
        number_in_month(datesList, month)
    end;

fun provided_test3 () = 
    let val datesList = [(2010,6,7)]
        val month = 6
    in
        number_in_month(datesList, month)
    end;

fun provided_test4 () = 
    let val datesList = [(2025,8,5), (2026,8,5)]
        val month = 8
    in
        number_in_month(datesList, month)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();