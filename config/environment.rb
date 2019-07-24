require 'bundler/setup'
Bundler.require

puts "Choose one of the following programs"
progs = %w(airbnb bakery crowdfunding gym imdb lyft)
progs.each_with_index {|prog, i| puts "#{i + 1} - #{prog}"}
input = gets.chomp.to_i - 1
name = progs[input]
require_relative "../app/#{name}/helper.rb"
require_all "app/#{name}"
