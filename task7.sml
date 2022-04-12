(*task 7*)
use "task6.sml";

fun date_to_string(date: int*int*int) =
    get_nth(["January", 
    "February", 
    "March", 
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"], (#2 date))
    ^ " " ^ (Int.toString (#1 date)) ^ ", " ^ (Int.toString (#3 date));


(*tests for task 7*)
fun provided_test1 () = 
    let val date = (28, 2, 2022)
    in
        date_to_string(date)
    end;

fun provided_test2 () = 
    let val date = (13, 12, 1995)
    in
        date_to_string(date)
    end;

fun provided_test3 () = 
    let val date = (17, 10, 2022)
    in
        date_to_string(date)
    end;

fun provided_test4 () = 
    let val date = (1, 1, 2007)
    in
        date_to_string(date)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();