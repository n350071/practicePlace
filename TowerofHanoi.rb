#!/usr/bin/ruby
#coding: utf-8

class TowerofHanoi
	#仕様
	#ルール
	#３本の杭とn枚の円盤を持っている
	#初期状態は左端の杭に全部乗っている
	#円盤を一回に一枚ずつどれかの杭に移動させることができるが、小さな円盤の上に大きな円盤を乗せることはできない
	#インプット
	#円盤の枚数n
	#アウトプット
	#解法、つまり、それを人間が見せられたら解けるやつ。
		#l回で解けるとして、そのm回目の状態を表示する
		#1回目からl回目までの状態を画面に表示する
	#イメージ
	#poleA => 1,3,5,8,9
	#poleB => 2,4,6,7
	#poleC =>

	#インスタンス変数
	#ポール３本はハノイの塔と共に創造される
	#ポールは複数の数字を覚えておくことができる
	#ポールに数字(円盤)を入力しようとすると、一番小さい数字と比較して、乗せてよいかどうかを判定して返す
	#乗せてよい場合は、入力された数字を追加する
	def initialize
		@poleA = []
		@poleB = []
		@poleC = []
	end

	# 試行錯誤のためのメソッド
	# 1.上から n - 1 個目までの円盤を何らかの方法でAからBに移動する。
	# 2.残った1枚をAからCに移動する。
	# 3.Bにある円盤を何らかの方法でBからCに移動する。
	def moveDiskx
		#1. 1個目までの円盤を何らかの方法でAからBに移動する
		@poleB.push(@poleA.pop)
		# 2.残った1枚をAからCに移動する。
		@poleC.push(@poleA.pop)
		# 3.Bにある円盤を何らかの方法でBからCに移動する。
		@poleC.push(@poleB.pop)
		poles
	end

	def moveDisk(from,to)
	end

	#１〜numberまでの数字をポールAにセットするメソッド
	def setPoleA(number)
		for i in 1..number
			@poleA.push(i)
		end
	end

	#ゲッターメソッド
	def poleA
		@poleA
	end

	def poleB
		@poleB
	end

	def poleC
		@poleC
	end

	#初期化メソッド
	def flash
		@poleA = []
		@poleB = []
		@poleC = []
	end


	#ポールの状態を画面に表示する便利メソッド
	def printPoles
		puts "+++++++++++++++++++++++++++++"
		print "poleA #{poleA} \n"
		print "poleB #{poleB} \n"
		print "poleC #{poleC} \n"
	end
end