#!/usr/bin/ruby
#coding: utf-8

#入力された値の平方根を少数第3位まで求めるプログラム
class SquareRoot

	#入力された値の平方根を返却する
	def squareRoot(number)
		return 2
	end

	#
	def calc(number,decimal)
		x = 0.0
		while true do
			puts ("#{x},#{decimal},#{10**decimal}")
			if x**2 < number && number < (x+1)**2 then
				puts "result : #{x} "
				return x
			end
			x += 1.0 / (10.0 ** decimal)
		end
	end



end
