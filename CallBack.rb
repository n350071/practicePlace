#!/usr/bin/ruby
#coding: utf-8

require 'tk'
TkLabel.new{
	text "hello,World"
	bg   "red"
	pack
}
TkButton.new{
	text "close"
	command {exit}
	pack
}
Tk.mainloop