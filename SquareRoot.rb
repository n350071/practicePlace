#!/usr/bin/ruby
#coding: utf-8

#入力された値の平方根を少数第3位まで求めるクラス
class SquareRoot

	def initialize
		@currentAns=0.0
		@currentDepth=0
	end

	#入力された値の平方根の小数第0位までを返却する
	# input 入力された値
	# depth 小数第depth値まで
	def squareRoot(input,depth)
		x = 0.0
		while true do
			# puts "#{x}"
			#puts "x:#{x}, x**2:#{x**2}, input:#{input}, (x+1)**2:#{(x+1)**2}"
			if x**2 <= input && input < (x+1)**2 then
				#puts x
				if x**2 == input || @currentDepth == depth then
					@currentAns = x
					puts "ans = #{@currentAns}"
					return @currentAns
				else
					puts "currentDepth #{@currentDepth}"
					@currentDepth += 1
					squareRoot(input,depth)
				end
			end
			x += 1.0 / 10**@currentDepth
			#puts "incriment size is #{1.0 / 10**@currentDepth}"
			#デバッグ用ストッパ
			if x > 9
				puts "break"
				break
			end
		end
	end

	# #入力された値numberの平方根の小数第decimalを返す
	# def calc(number,decimal)
	# 	y = 0 #y=0..9
	# 	while true do
	# 		x = @currentAns + y
	# 		# puts ("#{x},#{decimal},#{10**decimal}")
	# 		if x**2 < @input && @input < (x+1)**2 then
	# 			# puts "result : #{x} "
	# 			@currentAns = x
	# 			puts x
	# 			return x
	# 		end
	# 		y += 1.0 / (10.0 ** decimal)
	# 	end
	# end



end
