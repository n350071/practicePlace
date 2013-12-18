#!/usr/bin/ruby
class PrimeNumber

	#定数定義
	TRUE = "TRUE"
	FALSE = "FALSE"

	#1から入力された数字まで実行する振る舞い
	def run(inputNumber)
		for i in 1..inputNumber
			if i == inputNumber then
				puts ""
			elsif i == 1
			else
				print ","
			end
			if judge(i) == TRUE then
				print i
			end
		end
	end

	#素数かどうかを判定する関数
	def judge(number)
		#素数は自分と本人以外では割り切れない数字で１を除くので、１は素数ではないので除く
		if number==1 then
			return FALSE
		#2は素数
		elsif number ==2 then
			return TRUE
		end
		#2より大きい2の倍数は素数ではない
		if number % 2 == 0 then
			return FALSE
		end
			
		i = number - 1
		begin
			if (number % (number - i + 1))*10 == 0 then
				return FALSE
			end
			i -=1
		end while i > number/2
		return TRUE
	end
end