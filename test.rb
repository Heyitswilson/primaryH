require_relative 'find_common_films'
def test
    test1 = find_common_films([])
    test2 = find_common_films([5, 40])
    test3 = find_common_films([1, 2, 67])
    res1 = []
    res2 = "No common films"
    res3 = ["http://swapi.dev/api/films/6/.json"]

    if test1.size === res1.size && test1&res1 == test1
        puts true
    else
        puts false
    end

    if test2 === res2
        puts true
    else
        puts false
    end

    if test3.size === res3.size && test3&res3 == test3
        puts true
    else
        puts false
    end
end

# default tests
test()