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

	puts "答えが整数のテスト"
	#4の平方根は2
	if sr.squareRoot(4,0) == 2 then
		puts TRUE
	else
		puts FALSE
	end

	#16の平方根は4
	if sr.squareRoot(16,0) == 4 then
		puts TRUE
	else
		puts FALSE
	end

	puts "答えがが無限小数のテスト"
	#2の平方根の第2位までは1.41
	if sr.squareRoot(2,2) == 1.41 then
		puts TRUE
	else
		puts FALSE
	end

	#2の平方根の第11位まで
	if sr.squareRoot(2,11) == 1.41421356237 then
		puts TRUE
	else
		puts FALSE
	end

	#3の平方根の第11位まで
	if sr.squareRoot(3,11) == 1.73205080756 then
		puts TRUE
	else
		puts FALSE
	end

	puts "答えが有限小数のテスト"
	if sr.squareRoot(1.5625,3) == 1.25 then
		puts TRUE
	else
		puts FALSE
	end

	if sr.squareRoot(76.9129,3) == 8.77 then
		puts TRUE
	else
		puts FALSE
	end

	puts "後ろの数字が大きすぎるもののテスト"
	if sr.squareRoot(1.5625,100) == 1.25 then
		puts TRUE
	else
		puts FALSE
	end

	if sr.squareRoot(76.9129,100) == 8.77 then
		puts TRUE
	else
		puts FALSE
	end

	#3の平方根の第12位まで
	if sr.squareRoot(3,100) == 1.732050807568 then
		puts TRUE
	else
		puts FALSE
	end
end
