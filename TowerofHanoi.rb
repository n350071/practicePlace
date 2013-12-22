#!/usr/bin/ruby
#coding: utf-8

class TowerofHanoi
	#インスタンス変数
	#ポール３本はハノイの塔と共に創造される
	#ポールは複数の数字を覚えておくことができる
	attr:poleA, true
	attr:poleB, true
	attr:poleC, true
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

	#解を求める
	def solve(n)
	end

	#ポールに数字(円盤)を入力しようとすると、一番小さい数字と比較して、乗せてよいかどうかを判定して返す
	#乗せてよい場合は、入力された数字を追加する
	def moveDisk(from,to)
		#移動可能性を確認する
		if from.size == 0 then
			#移動しようがないのでエラー
			return false
		elsif to.size == 0 then
			#絶対移動できるので移動
		elsif from[from.size-1] < to[to.size-1] then
			# デバッグ用
			# print "from : #{from[from.size-1]} \n"
			# print "to   : #{ to[to.size-1]} \n"
			
			#移動元のサイズが大きいので移動可能
		else
			return false
		end
		#移動する
		to.push(from.pop)
		return true
	end

	#１〜numberまでの数字をポールAにセットするメソッド
	def setPoleA(number)
		for i in 1..number
			@poleA.push(i)
		end
		@poleA.reverse!
	end

	#ゲッターメソッド
	def getPoleA
		@poleA
	end

	def getPoleB
		@poleB
	end

	def getPoleC
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