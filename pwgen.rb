#!/usr/bin/env ruby

require 'set'

words = Set.new

Dir['wordlists/*'].each do |f|
    File.open(f) do |file|
        file.each_line do |line|
            words << line.strip
        end
    end
end

puts words.to_a.sample(4).join(' ')
