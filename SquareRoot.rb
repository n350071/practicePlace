#!/usr/bin/ruby
#coding: utf-8

# 入力された値の平方根を少数第3位まで求めるクラス
class SquareRoot

	def initialize
		# @currentAns=0.0
		@currentDepth=0
	end

	# 入力された値の平方根の小数第0位までを返却する
	# input 入力された値
	# depth 小数第depth値まで
	def squareRoot(input,depth)
		x = 0.0
		incrimentSize = 1.0
		while true do
			puts x
			#現在の深さでの答えが見つかった場合
			if x**2 <= input && input < (x+incrimentSize)**2 then
				# 答えがぴったりinputと等しい場合は答えなのでおしまい
				if x**2 == input then #|| depth == @currentDepth then
					return x
				# ぴったりあってないけど、求める深さまで計算してた場合
				elsif @currentDepth == depth
					return x.round(3)
				# ぴったりあってないし、深さも足りない場合は、もう一桁深くして再探索する
				else
					incrimentSize = 1.0 / 10**@currentDepth
					@currentDepth += 1
				end
			# 答えが見つからなかった場合はインクリメントする
			else
				#深さに合わせてインクリメント
				x += incrimentSize
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
