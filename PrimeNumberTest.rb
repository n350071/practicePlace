#!/usr/bin/ruby
#coding: utf-8

load 'PrimeNumber.rb'
class PrimeNumberTest

	#定数定義
	TRUE = "TRUE"
	FALSE = "FALSE"
	SUCESS = "success"
	ERROR = "error"

	#インスタンス生成
	pn = PrimeNumber.new()
	
	#素数以外を見分けるテスト
	puts "素数以外を見分けるテスト"
	if pn.judge(1) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(4) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(8) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(10) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(15) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(21) == FALSE then
		puts SUCESS
	else
		puts ERROR
	end


	#素数を素数と判定するテスト
	puts "素数を素数と判定するテスト"
	if pn.judge(2) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(3) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(5) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(7) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(13) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(17) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(23) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(29) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end

	if pn.judge(31) == TRUE then
		puts SUCESS
	else
		puts ERROR
	end
end
