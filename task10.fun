(*task 10*)
use "task9.fun";

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