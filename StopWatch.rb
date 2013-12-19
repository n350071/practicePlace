#!/usr/bin/ruby
#coding: utf-8

require 'date'
class StopWatch

	#ストップウォッチ内のはじまりの時間と終わりの時間
	@startTime
	@endTime

	#ストップウォッチをスタートさせるメソッド
	def start
		@startTime = Time.now
	end
	#ストップウォッチを止めるメソッド
	def end
		@endTime = Time.now
	end

	#開始時間getter
	def startTimeGetter
		return @startTime
	end
	#修了時間getter
	def endTimeGetter
		return @endTime
	end

	#かかったを返却するメソッド
	def result
		return @endTime-@startTime
	end


end