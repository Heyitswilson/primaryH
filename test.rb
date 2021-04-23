require_relative 'find_common_films'
def test
    test1 = find_common_films([])
    test2 = find_common_films([5, 40])
    test3 = find_common_films([1, 2, 67])
    test4 = find_common_films([1, 2])
    test5 = find_common_films([1])
    res1 = []
    res2 = "No common films"
    res3 = ["http://swapi.dev/api/films/6/.json"]
    res4 = [
        "http://swapi.dev/api/films/1/.json", 
        "http://swapi.dev/api/films/2/.json", 
        "http://swapi.dev/api/films/3/.json", 
        "http://swapi.dev/api/films/6/.json"
    ]
    res5 = [
        "http://swapi.dev/api/films/1/.json",
        "http://swapi.dev/api/films/2/.json",
        "http://swapi.dev/api/films/3/.json",
        "http://swapi.dev/api/films/6/.json"
    ]

    if test1.size === res1.size && test1&res1 == test1
        puts 'find_common_films([])' 
        puts "PASS"
        puts 'Results =>'
        puts "Empty array"
        puts '-------------------------------------'
    else
        puts "FAIL"
        puts test1
        puts '-------------------------------------'
    end

    if test2 === res2
        puts 'find_common_films([5, 40])' 
        puts "PASS"
        puts 'Results =>'
        puts test2
        puts '-------------------------------------'
    else
        puts "FAIL"
        puts test2
        puts '-------------------------------------'
    end

    if test3.size === res3.size && test3&res3 == test3
        puts 'find_common_films([1, 2, 67])' 
        puts "PASS"
        puts 'Results =>'
        puts test3
        puts '-------------------------------------'
    else
        puts "FAIL"
        puts test3
        puts '-------------------------------------'
    end

    if test4.size === res4.size && test4&res4 == test4
        puts 'find_common_films([1, 2])'
        puts "PASS"
        puts 'Results =>'
        puts test4
        puts '-------------------------------------'
    else
        puts "FAIL"
        puts test4
        puts '-------------------------------------'
    end

    if test5.size === res5.size && test5&res5 == test5
        puts 'find_common_films([1])'
        puts "PASS"
        puts 'Results =>'
        puts test5
        puts '-------------------------------------'
    else
        puts "FAIL"
        puts test5
        puts '-------------------------------------'
    end
end

# default tests
test()