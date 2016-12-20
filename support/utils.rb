require 'Base64'

module Utils
  def decode_base_64(code_msg)
    Base64.decode64(code_msg)
  end
end