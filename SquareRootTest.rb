#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../SquareRoot.rb', __FILE__)
class SquareRootTest

	#定数定義
	TRUE = "TRUE"
	FALSE = "FALSE"
	SUCESS = "success"
	ERROR = "error"

	#インスタンス生成
	sr = SquareRoot.new()

	#4の平方根は2
	puts "4の平方根は2"
	if sr.squareRoot(4) == 2 then
		puts TRUE
	else
		puts FALSE
	end

	#4の平方根は2
	puts "16の平方根は4"
	if sr.squareRoot(16) == 4 then
		puts TRUE
	else
		puts FALSE
	end

	#4の平方根は2
	puts "2の平方根は1.14"
	if 1.40 < sr.squareRoot(2) && sr.squareRoot(2) < 1.42 then
		puts TRUE
	else
		puts FALSE
	end

	puts "calcの確認"
	#10の平方根の少数第０位は3
	puts "10の平方根の少数第０位は3"
	if sr.calc(10,0) == 3 then
		puts TRUE
	else
		puts FALSE
	end

	puts "2の平方根の少数第1位は1"
	if sr.calc(2,0) == 1 then
		puts TRUE
	else
		puts FALSE
	end

	puts "2の平方根の少数第2位は4"
	if sr.calc(2,2) == 4 then
		puts TRUE
	else
		puts FALSE
	end

	puts "2の平方根の少数第3位は2"
	if sr.calc(2,3) == 2 then
		puts TRUE
	else
		puts FALSE
	end
end
