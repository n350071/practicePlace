#!/usr/bin/ruby
#coding: utf-8

require File.expand_path('../SquareRoot.rb', __FILE__)
class SquareRootRunner

	sr = SquareRoot.new()
	inputNumber = 0

	puts "Hi, this is square root Calculator"
	puts "please input number what you want to know that's square root "

	inputNumber = gets
	puts sr.squareRoot(inputNumber.to_f,100)

end