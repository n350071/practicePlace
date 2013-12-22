#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../TowerofHanoi.rb', __FILE__)
class TowerofHanoiRunner
	th = TowerofHanoi.new()
	th.setPoleA(2)
	th.solve(2)
end

