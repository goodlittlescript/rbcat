# Example module
module Rbcat
  module_function

  def copy_stream(input, output, chuck_size = 1024)
    loop do
      chunk = input.read(chuck_size)
      break if chunk.nil?
      output << chunk
    end
  end
end
