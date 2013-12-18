#!/usr/bin/ruby
#coding: utf-8

load 'FizzBuzz.rb'
#require 'test_helper'

class FizzBuzzTest

	#テストのたびにインスタンスをひとつ生成
	fb = FizzBuzz.new()

	#与えられた数字に対して文字列を返す振る舞いを確認するテスト
	if fb.react(3) == "buzz" then
		puts "success"
	else
		puts "false"
	end
	if fb.react(5) == "fizz" then
		puts "success"
	else
		puts "false"
	end
	if fb.react(15) == "fizzbuzz" then
		puts "success"
	else
		puts "false"
	end

	#１から与えられた数字まで、reactを実行する
	exactAns = {1=>"1",2=>"2",3=>"buzz"}
	if fb.loopReact(3) == exactAns then
		puts "success"
	else
		puts "false"
	end		
	# puts fb.loopReact(3)
	# puts exactAns

	#画面表示を確かめる
	fb.viewAns()

end