###
# Each new term in the Fibonacci sequence is generated by adding previous
# two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not 
# exceed four million, find the sum of the even-valued terms.

#function takes the desired number of fibo values to caluculate as an argument
# and returns the sum of evens for the number of values desired, 
# unless the sum is > break point

function sum_fibo_evens(n)
    fibo = [1,2] #initial fibo vector
    evens = [2] #initial even vector
    for i in range(1,n)
        x = fibo[i] + fibo[i+1] #calculating next fibo
        push!(fibo, x) #appending next fibo to vector
        if x%2 == 0 # if fibo is even
            push!(evens, x) # append it to even vector
        end
        if fibo[i+1] > 4000000 #if fibo exceeds this numbers
            return(sum(evens)) # send the sum of evens
            break #and exit
        end
    end
end

answer = sum_fibo_evens(100)
println(answer)