#!/usr/bin/ruby
class FizzBuzz

	@ansHash = Hash.new #答えを記録しておくインスタンス変数

	#与えられた数字に対して文字列を返す振る舞いをする
	def react(number)
		i = number.to_i
		if i%15 == 0 then
			return "fizzbuzz"
		elsif i%5 == 0 then
			return "fizz"
		elsif i%3 == 0 then
			return "buzz"
		else
			return i.to_s
		end
	end

	#１から与えられた数字まで、reactを実行する
	def loopReact(loopCount)
		_counter = 1
		_loopReactHash = Hash.new
		begin
			_loopReactHash[_counter] = react(_counter)
			_counter +=1
		end while _counter <= loopCount
		return @ansHash = _loopReactHash
	end

	#画面に表示する
	def viewAns()
		puts @ansHash
	end

	#実行する
	def run(inputNumber)
		loopReact(inputNumber)
		viewAns()
	end
end


