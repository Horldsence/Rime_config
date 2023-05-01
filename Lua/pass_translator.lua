local function translator(input, seg)
    if (input == "/pass") then         --关键字更改，你也可以用or语句定义多个关键字
        local password_number = math.random(10000000000, 99999999999)
        local password_character = math.randomseed(os.time())
        yield(Candidate("time", seg.start, seg._end, password_number, "密码🔏"))
        yield(Candidate("time", seg.start, seg._end, password_character, "密码🔏"))
    end
end
return translator