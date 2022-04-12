(*task 8*)
fun number_before_reaching_sum(sum: int, numbers: int list) =
    let
        fun sumListNElems(numberList: int list, n: int) = 
            if (n = 0)
            then 0
            else (hd numberList) + sumListNElems(tl numberList, n - 1)
        fun getIndexN(sum: int, numberList: int list, n: int) = 
            if (sumListNElems(numberList, n + 1) >= sum)
            then n
            else getIndexN(sum, numberList, n + 1)
    in
        getIndexN(sum, numbers, 0)
    end;


(*tests for task 8*)
fun provided_test1 () = 
    let val sum = 31
        val list = [10, 10, 10, 10]
    in
        number_before_reaching_sum(sum, list)
    end;

fun provided_test2 () = 
    let val sum = 11
        val list = [10, 10, 10, 10]
    in
        number_before_reaching_sum(sum, list)
    end;

fun provided_test3 () = 
    let val sum = 7
        val list = [1, 2, 3, 4, 5]
    in
        number_before_reaching_sum(sum, list)
    end;

fun provided_test4 () = 
    let val sum = 55
        val list = [10, 15, 20, 10]
    in
        number_before_reaching_sum(sum, list)
    end;

val ans1 = provided_test1();
val ans2 = provided_test2();
val ans3 = provided_test3();
val ans4 = provided_test4();