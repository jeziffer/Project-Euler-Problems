#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

function prime_test(number)
    #not_prime = [1]
    for i in range(2,number-1)
        if number%i == 0
            return(number)
            break
        end
    end
    #return(not_prime)
end

for j in range(2,12)
    x = prime_test(j)
    println(x)
    not_prime = [1]
    push!(not_prime, prime_test(j))
    #println(not_prime)
end

#https://www.geeksforgeeks.org/getting-symmetric-difference-of-elements-of-sets-in-julia-symdiff-and-symdiff-methods/