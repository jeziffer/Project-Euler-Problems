#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.
######################################

# Set Up
multipliers = [3,5]
n_multipliers = length(multipliers)
max_number = 1000

#iterating through each multiplier and adding all the values up to max_number
function adding(total, multipliers, max_number)
    for j = 1:n_multipliers
        n = div((max_number-1), multipliers[j], RoundDown) 
        for i = 1:n
            total +=  i * multipliers[j]
        end
    end
    return(total)
end   

#adding each product of multipliers up to max_number for overcounting
function overcounting(total, n_multipliers, multiplier_product, multipliers)
    for j = 1:n_multipliers
        multiplier_product *= multipliers[j]
    end
    n = div((max_number-1), multiplier_product, RoundDown)
    for i = 1:n
        total += i * multiplier_product
    end
    return(total)
end 

#calling functions
adding_total = adding(0, multipliers, max_number)
sub_total = overcounting(0, n_multipliers, 1, multipliers)
result = adding_total - sub_total
println(result)

