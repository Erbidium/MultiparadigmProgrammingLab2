(*task 1*)
fun is_older (x: int*int*int, y: int*int*int) =
    if (#3 x) <= (#3 y) andalso (#2 x) <= (#2 y) andalso (#1 x) < (#1 y)
    then true
    else false;

val resTask1 = is_older((3, 3, 2), (3, 3, 3));