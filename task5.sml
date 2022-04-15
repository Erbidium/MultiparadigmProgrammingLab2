(*task 5*)
use "task4.sml";

fun dates_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then []
    else (
        dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)
    );


(*tests for task 5*)
fun provided_test1 () = 
    let val datesList = [(2025,3,5), (2025,10,5), (2013,3,10)]
        val months = [3, 10]
    in
        dates_in_months(datesList, months)
    end;

fun provided_test2 () = 
    let val datesList = [(2025,3,5), (2025,10,5), (2013,3,10)]
        val months = [6, 7]
    in
        dates_in_months(datesList, months)
    end;

fun provided_test3 () = 
    let val datesList = [(2010,6,7), (2010,9,7), (2010,11,7)]
        val months = [6, 9, 11]
    in
        dates_in_months(datesList, months)
    end;

fun provided_test4 () = 
    let val datesList = [(2025,8,5), (2025,9,5), (2025,10,5)]
        val months = [8, 9]
    in
        dates_in_months(datesList, months)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();