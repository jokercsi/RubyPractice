def convert_mark(mark, exponent)
    puts mark.to_s + " points -> " +  (mark**exponent * (100.0/100**exponent)).round.to_s + " points"
  end

(0..100).each do |i|
  convert_mark(i, 0.5)
end