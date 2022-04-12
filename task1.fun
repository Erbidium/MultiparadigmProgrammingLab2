(*task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#3 x) <= (#3 y) andalso (#2 x) <= (#2 y) andalso (#1 x) < (#1 y)
    then true
    else false;



fun provided_test1 () = 
    let val date1 = (15,6,2022)
        val date2 = (21,6,2022)
    in
        is_older(date1,date2)
    end;

fun provided_test2 () = 
    let val date1 = (15,6,2022)
        val date2 = (15,5,2022)
    in
        is_older(date1,date2)
    end;

fun provided_test3 () = 
    let val date1 = (3,3,2001)
        val date2 = (5,10,2025)
    in
        is_older(date1,date2)
    end;

fun provided_test4 () = 
    let val date1 = (5,10,2025)
        val date2 = (3,3,2001)
    in
        is_older(date1,date2)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();