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
	puts "++++++++++++++++++++++++"
	puts "      テスト開始          "
	puts "++++++++++++++++++++++++"
	#ポールへのセットがうまくできていることのテスト
	puts "+++セットメソッドの確認+++"
	th.setPoleA(2)
	if th.getPoleA == [2,1] then
		puts TRUE
	else
		puts FALSE
	end
	th.flash
	th.setPoleA(12)
	if th.getPoleA == [12,11,10,9,8,7,6,5,4,3,2,1] then
		puts TRUE
	else
		puts FALSE
	end

	#ポールに円盤を移せるかチェックしながら移動させるメソッドのテスト
	puts "+++円盤移動のテスト+++"
	th.flash
	th.setPoleA(3)
	puts "++B,Cからは動かせない++"
	if !(th.moveDisk(th.poleB,th.poleA)) then
		puts TRUE
	else
		puts FALSE
	end
	if !(th.moveDisk(th.poleC,th.poleA)) then
		puts TRUE
	else
		puts FALSE
	end
	puts "++AからAに動かせない++"
	if !(th.moveDisk(th.poleA,th.poleA)) then
		puts TRUE
	else
		puts FALSE
	end
	puts "++AからBに移動++"
	th.moveDisk(th.poleA,th.poleB)
	if th.getPoleA == [3,2] && th.getPoleB == [1] then
		puts TRUE
	else
		puts FALSE
	end
	puts "++さらにAからBに移動++"	
	if !(th.moveDisk(th.poleA,th.poleB)) then
		puts TRUE
	else
		puts FALSE
	end
	puts "++AからCに移動++"
	th.moveDisk(th.poleA,th.poleC)
	if th.getPoleA == [3] && th.getPoleB == [1] && th.getPoleC == [2] then
		puts TRUE
	else
		puts FALSE
	end
	puts "++BからCに移動++"
	th.moveDisk(th.poleB,th.poleC)
	if th.getPoleA == [3] && th.getPoleB == [] && th.getPoleC == [2,1] then
		puts TRUE
	else
		puts FALSE
	end

	th.printPoles

	puts "++++++++++++++++++++++++"
	puts "      テスト終了          "
	puts "++++++++++++++++++++++++"
end




