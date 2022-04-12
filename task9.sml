(*task 9*)
use "task8.sml";

fun what_month(day: int) =
    1 + number_before_reaching_sum(day, [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);


(*tests for task 9*)
fun provided_test1 () = 
    let val day = 365
    in
        what_month(day)
    end;

fun provided_test2 () = 
    let val day = 1
    in
        what_month(day)
    end;

fun provided_test3 () = 
    let val day = 40
    in
        what_month(day)
    end;

fun provided_test4 () = 
    let val day = 320
    in
        what_month(day)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();