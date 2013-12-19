#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../StopWatch', __FILE__)
class StropWatchTest

	#ストップウォッチインスタンスの作成
	sw = StopWatch.new()

	#定数定義
	TRUE = "TRUE"
	FALSE = "FALSE"
	SUCESS = "success"
	ERROR = "error"

	#ストップウォッチを開始したことのテスト
	puts "ストップウォッチを開始したことのテスト"
	if sw.start() == sw.startTimeGetter then
		puts SUCESS
	else
		puts FALSE
	end
	
	#ストップウォッチを停止したことのテスト
	puts "ストップウォッチを停止したことのテスト"
	if sw.end() == sw.endTimeGetter then
		puts SUCESS
	else
		puts FALSE
	end

	#計測時間が正しいことの確認テスト
	puts "計測時間が正しいことの確認テスト"
	sw.start()
	sleep(1)
	sw.end()
	if sw.result == sw.endTimeGetter - sw.startTimeGetter then
		puts SUCESS
	else
		puts FALSE
	end




end