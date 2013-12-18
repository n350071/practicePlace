#!/usr/bin/ruby
#coding: utf-8

load 'PrimeNumber.rb'
class PrimeNumberRunner

	#インスタンス生成
	pn = PrimeNumber.new()

	#実行
	pn.run(100000)
end
