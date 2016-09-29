function pass = eligible (v, q)
    pass = (v + q)/2 >= 92 && v > 88 && q > 88;  %better use mean([v q])
end 
