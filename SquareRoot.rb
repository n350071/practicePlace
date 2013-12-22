#!/usr/bin/ruby
#coding: utf-8

# 入力された値の平方根を少数第12位まで求めるクラス
class SquareRoot

	def squareRoot(input,depth=12) #入力値,小数第何位まで
		if depth > 12
			depth = 12
		end

		_ans = 0.0
		_incrimentSize = 1.0
		_currentDepth = 0

		while true do
			# _ansが正解の範囲内にあるときは以下の３パターンのどれか。
			if _ans**2 <= input && input < (_ans+_incrimentSize)**2 then
				# _ansがぴったり正解
				if _ans**2 == input then
					return _ans
				# _ansの精度が十分な深さに達している
				elsif _currentDepth > depth
					return _ans.round(depth+1)
				# _ansの精度が足りない
				else
					# 精度を高めるため、桁をひとつ下げる
					_incrimentSize = 1.0 / 10**_currentDepth
					_currentDepth += 1
				end
			else
				_ans += _incrimentSize
			end
		end
	end

end
