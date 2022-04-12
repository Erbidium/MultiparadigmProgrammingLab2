(*task 10*)
use "task9.fun";

fun month_range(day1: int, day2: int) =
    if day1<=day2 then what_month(day1) :: month_range(day1 + 1, day2)
    else [];

fun provided_test1 () = 
    let val day1 = 25
        val day2 = 35
    in
        month_range(day1, day2)
    end;

fun provided_test2 () = 
    let val day1 = 365
        val day2 = 1
    in
        month_range(day1, day2)
    end;

fun provided_test3 () = 
    let val day1 = 1
        val day2 = 5
    in
        month_range(day1, day2)
    end;

fun provided_test4 () = 
    let val day1 = 55
        val day2 = 70
    in
        month_range(day1, day2)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();