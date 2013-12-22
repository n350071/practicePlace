#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../TowerofHanoi.rb', __FILE__)
class TowerofHanoiTest
	#定数定義
	TRUE = "TRUE"
	FALSE = "FALSE"
	SUCESS = "success"
	ERROR = "error"

	#インスタンス生成
	th = TowerofHanoi.new()
	# th.moveDiskx

	# print "poleA #{th.poleA} \n"
	# print "#{th.printPoles}"

	#ポールへのセットがうまくできていることのテスト
	th.setPoleA(2)
	if th.poleA == [1,2] then
		puts TRUE
	else
		puts FALSE
	end
	th.flash
	th.setPoleA(12)
	if th.poleA == [1,2,3,4,5,6,7,8,9,10,11,12] then
		puts TRUE
	else
		puts FALSE
	end

	#ポールに円盤を移せるかチェックしながら移動させるメソッドのテスト
	# puts "ポールの円盤のサイズを確認しながら移動するテスト"
	# th.moveDisk(@poleA,@poleB)
	# th.showCurrentSituation

	#

end