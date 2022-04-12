(*task 3*)
use "task2.sml";

fun number_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then 0
    else number_in_month(dates, hd months) + number_in_months(dates, tl months);



fun provided_test1 () = 
    let val datesList = [(5,3,2025), (5,10,2025), (10,3,2013)]
        val months = [3, 10]
    in
        number_in_months(datesList, months)
    end;

fun provided_test2 () = 
    let val datesList = [(5,3,2025), (5,3,2025), (10,3,2013)]
        val months = [6, 7]
    in
        number_in_months(datesList, months)
    end;

fun provided_test3 () = 
    let val datesList = [(7,6,2010), (7,9,2010), (7,11,2010)]
        val months = [6, 9, 11]
    in
        number_in_months(datesList, months)
    end;

fun provided_test4 () = 
    let val datesList = [(5,8,2025), (5,9,2025), (5,10,2025)]
        val months = [8, 9]
    in
        number_in_months(datesList, months)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();