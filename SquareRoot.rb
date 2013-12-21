#!/usr/bin/ruby
#coding: utf-8

#入力された値の平方根を少数第3位まで求めるプログラム
class SquareRoot

	def initialize
		#現在の平方根
		@currentAns = 0
		@input = 0
	end

	#入力された値の平方根を返却する
	def squareRoot(number)
		#再帰呼び出し
		#
		@input = number
		return @input
	end

	#入力された値numberの平方根の小数第decimalを返す
	def calc(number,decimal)
		y = 0 #y=0..9
		while true do
			x = @currentAns + y
			# puts ("#{x},#{decimal},#{10**decimal}")
			if x**2 < @input && @input < (x+1)**2 then
				# puts "result : #{x} "
				@currentAns = x
				puts x
				return x
			end
			y += 1.0 / (10.0 ** decimal)
		end
	end



end
