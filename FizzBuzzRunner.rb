#!/usr/bin/ruby
#coding: utf-8

load 'FizzBuzz.rb'
#require 'test_helper'

class FizzBuzzRunner

	#インスタンスをひとつ生成
	fb = FizzBuzz.new()

	#画面表示を確かめる
	fb.run(100)

end