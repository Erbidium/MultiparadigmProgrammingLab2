(*task 6*)
fun get_nth(strings: string list, n: int) =
    if (n = 1)
    then hd strings
    else get_nth(tl strings, n-1);


(*tests for task 6*)
fun provided_test1 () = 
    let val list = ["str1", "str2", "str3"]
        val n = 1
    in
        get_nth(list, n)
    end;

fun provided_test2 () = 
    let val list = ["str1", "str2", "str3"]
        val n = 3
    in
        get_nth(list, n)
    end;

fun provided_test3 () = 
    let val list = ["str1", "str2", "str3"]
        val n = 2
    in
        get_nth(list, n)
    end;

fun provided_test4 () = 
    let val list = ["str1", "str2", "str3", "str4", "str5"]
        val n = 4
    in
        get_nth(list, n)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();