#15817028 Kim Jibin

# ruby는 함수를 앞쪽에 선언해야 된다. 
# 뒤에다 선언하니까 계속  undefined method (NoMethodError) 라고 오류가 났다.
def to_japanese_calendar(year)
    # int Meiji == 1868;
    # int Taisho == 1912;
    # int Showa == 1926;
    # int Heisei == 1989;
    # int Reiwa == 2019;

    if(year > 2021)
        answer = "too new to convert"

    elsif(year >= 2019)
        answer = "Reiwa " + (year - 2019 + 1).to_s; 

    elsif(year >= 1989)
        answer = "Heisei " + (year - 1989 + 1).to_s; 

    elsif(year >= 1926)
        answer = "Showa " + (year - 1926 + 1).to_s;

    elsif(year >= 1912)
        answer = "Taisho " + (year - 1912 + 1).to_s;
        
    elsif(year >= 1868)
        answer = "Meiji " + (year - 1868 + 1).to_s;

    else
        answer = "too old to convert";
    
    end
     
    return(answer)
end


# while line = gets
#     year = line.to_i
#     print "Year #{year} in the Western calendar "
#     puts "is #{to_japanese_calendar(year)} in the Japanese calendar."
# end

