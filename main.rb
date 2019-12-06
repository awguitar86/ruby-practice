# GETTING USER INPUT
# puts "Enter a number to multiply by 2"
# input = gets.chomp #gets data that user inputs
# puts input.to_i * 2

# REVERSE AN INTEGER
# def reverse_int(n)
#     reversed_number = n.to_s.split('').reverse!.join('')
#     if(n < 0)
#         p reversed_number.to_i * -1
#     else 
#         p reversed_number.to_i
#     end
# end
# reverse_int(-54)

# MAX CHARACTER
# Given a string, return the character tjat is most commonly used in the string.
# def max_char(str)
#     char_map = {}
#     max = 0;
#     max_char = ''
#     str.split("").each do |i|
#         if !char_map[i]
#             char_map[i] = 1
#         else
#             char_map[i] += 1
#         end
#     end
#     char_map.each do |k,v|
#         if v > max
#             max = v
#             max_char = k
#         end
#     end

#     p max_char
# end 

# max_char("coolbeans")

#PALINDROME
#Given a string, return true if string is a palindrome or false if it is not. 
# def palindrome(str)
#     if str.split('').reverse!.join('') === str
#         p true
#     else
#         p false
#     end
# end
# palindrome("cool")

#PYRAMID
# Write a method that accepts a positive number N. The method should print a pyramid shape with N levels using the # character. Make sure the pyramid has spaces on both the left and right hand sides.
# def pyramid(n, row = 0, level = '')
#     if row == n
#         return
#     end

#     if level.length == 2 * n - 1
#         p level
#         return pyramid(n, row + 1)
#     end

#     midpoint = ((2*n-1)/2).floor
#     add = ''
#     if midpoint - row <= level.length && midpoint + row >= level.length
#         add = '#'
#     else
#         add = ' '
#     end

#     pyramid(n, row, level + add)
# end
# pyramid(20)
# def pyramid(n)
#     midpoint = ((2*n-1)/2).floor
#     for i in 0..n
#         level = ''
#         for x in 0..(2*n-1)
#             if midpoint - i <= x && midpoint + i >= x
#                 level += '#'
#             else
#                 level += ' '
#             end
#         end
#         p level
#     end
# end
# pyramid(5)



#STEPS
# Write a function that accepts a positive number N. The function should console log a step shape with N levels using the # character. Make sure the step has spaces on the right hand side!
# def steps(n)
#     for i in 0..n
#         stair = ''
#         for x in 0..n
#             if x <= i
#                 stair += '#'
#             else
#                 stair += ' '
#             end
#         end
#     p stair
#     end
# end
# steps(15)

# RECURSION SOLUTION
# def steps(n, row = 0, stair = '')
#     if n == row
#         return
#     end
#     if n == stair.length
#         p stair
#         return steps(n, row + 1)
#     end
#     add = ''
#     if stair.length <= row
#         add = '#'
#     else
#         add = ' '
#     end
#     steps(n, row, stair += add)
# end
# steps(20)

#FIZZBUZZ
# Write a program that prints the numbers from 1 to n. But for multiples of 3 print "fizz". For multiples of 5 print "buzz". For multiples of 3 and 5 print "fizzbuzz".
# def fizzbuzz(n)
#     for i in 1..n
#         if i % 3 == 0 && i % 5 == 0
#             p 'fizzbuzz'
#         elsif i % 3 == 0
#             p 'fizz'
#         elsif i % 5 == 0
#             p 'buzz'
#         else
#             p i
#         end
#     end
# end
# fizzbuzz(15)


#CHUNK
# Given an array and chunk size, divide the array into many subarrays where each subarray is of chunk length size
# SOLUTION 1
def chunk(array, size)
    chunked = []
    index = 0

    while index < array.length
        chunked << array.slice(index, index + size)
        index += size
    end

    p chunked
end
chunk([1, 2, 3, 4, 5, 6, 7, 8], 4)