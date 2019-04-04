class Cipher
  class << self

    class CipherValidationError < StandardError
      def initialize(message)
        @message = message
      end
    end

    def distance_checker(dst)
      if dst >= 26
        return dst - 26
      else
        return dst
      end
    end

    def encode(input, distance: 1 )
      lower_min = "a".ord
      lower_max = "z".ord
      input_arr = input.split("")
      final_str = ""
      input_arr.each do |i|
        raise CipherValidationError if i.to_i != 0
        val = i.downcase.ord + distance_checker(distance)
        if val > lower_max
          dif = val - lower_max - 1
          new_let = (lower_min + dif).chr
          final_str += new_let
        else
          new_let = val.chr
          final_str += new_let
        end
      end
      final_str
    end

    def decode(input, distance: 1 )
      lower_min = "a".ord
      lower_max = "z".ord

      input_arr = input.split("")
      final_str = ""

      input_arr.each do |i|
        raise CipherValidationError if i.to_i != 0
        val = i.downcase.ord - distance_checker(distance)
        if val < lower_min
          dif = val - lower_min + 1
          new_let = (lower_max + dif).chr
          final_str += new_let
        else
          new_let = val.chr
          final_str += new_let
        end
      end
      final_str
    end
  end
end
