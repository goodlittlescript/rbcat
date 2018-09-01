#!/usr/bin/env ruby
require File.expand_path('helper.rb', __dir__)
require 'rbcat'
require 'stringio'

class RbcatTest < Minitest::Test
  def test_copy_stream
    input = StringIO.new "One\nTwo\n"
    output = StringIO.new

    Rbcat.copy_stream(input, output)
    assert_equal "One\nTwo\n", output.string
  end

  def test_copy_stream_in_arbitrary_chunks
    input = StringIO.new "One\nTwo\n"
    output = []

    Rbcat.copy_stream(input, output, 3)
    assert_equal %W[One \nTw o\n], output
  end
end
