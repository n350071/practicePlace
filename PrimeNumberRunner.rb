#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../PrimeNumber.rb', __FILE__)
require File.expand_path('../StopWatch', __FILE__)
class PrimeNumberRunner

	#インスタンス生成
	pn = PrimeNumber.new()
	sw = StopWatch.new()

	#実行
	sw.start()
	pn.run(10000)
	sw.end()
	puts sw.result
end
