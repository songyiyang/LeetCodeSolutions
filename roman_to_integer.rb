# # @param {String} s
# @return {Integer}

CONST = {:I => 1, :V => 5, :X => 10, :L => 50, :C => 100, :D => 500, :M => 1000}

def roman_to_int(s)
    sum = 0
    a = s.split('')
    a.each_with_index do |n, index|
        if a[index+1] && (CONST[a[index+1].to_sym] > CONST[n.to_sym])
            sum -= CONST[n.to_sym]
        else
            sum += CONST[n.to_sym] 
        end
    end
    sum
end