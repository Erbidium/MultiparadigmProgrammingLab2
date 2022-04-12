(*task 9*)
use "task8.fun";

fun what_month(day: int) =
    1 + number_before_reaching_sum(day, [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);

val resTask9 = what_month(15);