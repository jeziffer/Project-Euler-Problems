##########################################################################
# Project Euler Problem 1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.
##########################################################################

# Set Up
start = 0
steps = [3,5]
stop  = 999

# Create Vectors containing multiples of each multiplier up to max number
x = collect(start:steps[1]:stop)
y = collect(start:steps[2]:stop)

# Union and sum the vectors
println(sum(union(x,y)))

#my stats: maybe 4 hours; less than a day; solved it two ways