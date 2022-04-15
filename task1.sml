(*task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#1 x) <= (#1 y) andalso (#2 x) <= (#2 y) andalso (#3 x) < (#3 y)
    then true
    else false;


(*tests for task 1*)
fun provided_test1 () = 
    let val date1 = (2022,6,15)
        val date2 = (2022,6,21)
    in
        is_older(date1,date2)
    end;

fun provided_test2 () = 
    let val date1 = (2022,6,15)
        val date2 = (2022,5,15)
    in
        is_older(date1,date2)
    end;

fun provided_test3 () = 
    let val date1 = (2001,3,3)
        val date2 = (2025,10,5)
    in
        is_older(date1,date2)
    end;

fun provided_test4 () = 
    let val date1 = (2025,10,5)
        val date2 = (2001,3,3)
    in
        is_older(date1,date2)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();