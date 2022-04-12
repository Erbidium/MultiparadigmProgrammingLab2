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

val resTask8 = number_before_reaching_sum(100, [1 ,2, 3, 4, 5]);