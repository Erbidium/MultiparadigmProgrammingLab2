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