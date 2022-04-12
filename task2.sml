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
    let val datesList = [(5,3,2025), (5,10,2025), (10,3,2013)]
        val month = 3
    in
        number_in_month(datesList, month)
    end;

fun provided_test2 () = 
    let val datesList = [(5,3,2025), (5,3,2025), (10,3,2013)]
        val month = 6
    in
        number_in_month(datesList, month)
    end;

fun provided_test3 () = 
    let val datesList = [(7,6,2010)]
        val month = 6
    in
        number_in_month(datesList, month)
    end;

fun provided_test4 () = 
    let val datesList = [(5,8,2025), (5,8,2025)]
        val month = 8
    in
        number_in_month(datesList, month)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();