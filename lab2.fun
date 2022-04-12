(*task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#3 x) <= (#3 y) andalso (#2 x) <= (#2 y) andalso (#1 x) < (#1 y)
    then true
    else false;

val resTask1 = is_older((3, 3, 2), (3, 3, 3));


(*task 2*)
fun number_in_month(dates: (int*int*int) list, month: int) =
    if (null dates)
    then 0
    else (number_in_month(tl dates, month) + (
        if (#2 (hd dates) ) = month
        then 1
        else 0)
        );

val resTask2 = number_in_month([(1,1,1), (2,1,2)], 1);

(*task 3*)
fun number_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then []
    else (number_in_month(dates, hd months)) :: number_in_months(dates, tl months);

val resTask3 = number_in_months([(1,1,1), (2,1,2)], [1, 2]);

(*task 4*)
fun dates_in_month(dates: (int*int*int) list, month: int) =
    if (null dates)
    then []
    else ((
        if (#2 (hd dates)) = month
        then [hd dates]
        else []
    ) @ dates_in_month(tl dates, month));

val resTask4 = dates_in_month([(1,1,1), (2,1,2)], 1);

(*task 5*)
fun dates_in_months(dates: (int*int*int) list, months: int list) =
    if (null months)
    then []
    else (
        dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)
    );

val resTask5 = dates_in_months([(1,1,1), (2,2,2)], [1, 3, 4]);

(*task 6*)
fun get_nth(strings: string list, n: int) =
    if (n = 1)
    then hd strings
    else get_nth(tl strings, n-1);

val resTask6 = get_nth(["fsrgrf", "hello"], 2);

(*task 7*)
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

val resTask7 = date_to_string((28, 2, 2022));

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

(*task 9*)
fun what_month(day: int) =
    1 + number_before_reaching_sum(day, [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);

val resTask9 = what_month(60);

(*task 10*)
fun month_range(day1: int, day2: int) =
    let
        fun getMonthRange(day1: int, day2: int, currentDay: int) =
            if(currentDay = day2)
            then [what_month(currentDay)]
            else [what_month(currentDay)] @ getMonthRange(day1, day2, currentDay + 1)
    in
        getMonthRange(day1, day2, day1)
    end;

val resTask10 = month_range(25, 35);

(*task 11*)

(*function from task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#3 x) <= (#3 y) andalso (#2 x) <= (#2 y) andalso (#1 x) < (#1 y)
    then true
    else false;

fun legacy(dates: (int*int*int) list) =
    let
        fun getOldestDate(dates: (int*int*int) list, dateToCompare: int*int*int) =
            if (null dates)
            then dateToCompare
            else (
                getOldestDate((tl dates), (
                    if (is_older((hd dates), dateToCompare))
                    then (hd dates)
                    else dateToCompare
                ))   
            )
    in
        if null dates
        then NONE
        else SOME (getOldestDate((tl dates), (hd dates)))
    end;

val resTask11 = legacy([(2,2,2), (3,3,3), (4,4,4), (5,5,5)]);
val resTask11Test2 = legacy([]);