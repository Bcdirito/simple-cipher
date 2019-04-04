require 'minitest/autorun'
require_relative 'cipher'

# Incrementally comment out `skip` statements below and run
# `ruby cipher_test.rb` to begin testing your code.

class CipherTest < Minitest::Test
  def test_encode_letter_with_default_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'a'
    ciphertext = 'b'
    assert_equal(ciphertext, Cipher.encode(plaintext))
  end

  def test_decode_letter_with_default_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'b'
    ciphertext = 'a'
    assert_equal(ciphertext, Cipher.decode(plaintext))
  end

  def test_encode_wraps_z_to_a
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'z'
    ciphertext = 'a'
    assert_equal(ciphertext, Cipher.encode(plaintext))
  end

  def test_decode_wraps_a_to_z
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'a'
    ciphertext = 'z'
    assert_equal(ciphertext, Cipher.decode(plaintext))
  end

  def test_encode_string_with_default_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'wxyzabcd'
    ciphertext = 'xyzabcde'
    assert_equal(ciphertext, Cipher.encode(plaintext))
  end

  def test_decode_string_with_default_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'xyzabcde'
    ciphertext = 'wxyzabcd'
    assert_equal(ciphertext, Cipher.decode(plaintext))
  end

  def test_encode_with_10_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'wxyzabcd'
    ciphertext = 'ghijklmn'
    assert_equal(ciphertext, Cipher.encode(plaintext, distance: 10))
  end

  def test_decode_with_10_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'ghijklmn'
    ciphertext = 'wxyzabcd'
    assert_equal(ciphertext, Cipher.decode(plaintext, distance: 10))
  end

  def test_encode_with_26_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'abcdefghij'
    ciphertext = 'abcdefghij'
    assert_equal(ciphertext, Cipher.encode(plaintext, distance: 26))
  end

  def test_decode_with_26_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'klmnopqrst'
    ciphertext = 'klmnopqrst'
    assert_equal(ciphertext, Cipher.decode(plaintext, distance: 26))
  end

  def test_encode_with_27_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'wxyzabcd'
    ciphertext = 'xyzabcde'
    assert_equal(ciphertext, Cipher.encode(plaintext, distance: 27))
  end

  def test_decode_with_27_shift_distance
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'xyzabcde'
    ciphertext = 'wxyzabcd'
    assert_equal(ciphertext, Cipher.decode(plaintext, distance: 27))
  end

  def test_encode_always_returns_downcase_string
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'AbCdEfGhIj'
    ciphertext = 'bcdefghijk'
    assert_equal(ciphertext, Cipher.encode(plaintext))
  end

  def test_decode_always_returns_downcase_string
    # skip
<<<<<<< HEAD

=======
    
>>>>>>> with_cypher_file
    plaintext = 'BcDeFgHiJk'
    ciphertext = 'abcdefghij'
    assert_equal(ciphertext, Cipher.decode(plaintext))
  end

  def test_encode_raise_error_if_non_letter_characters
    # skip
<<<<<<< HEAD
=======
    
    plaintext = 'az4'
>>>>>>> with_cypher_file

    plaintext = 'az4'
    assert_raises Cipher::CipherValidationError do
      Cipher.encode(plaintext)
    end
  end

  def test_decode_raise_error_if_non_letter_characters
    # skip
<<<<<<< HEAD
=======
    
    plaintext = 'za4'
>>>>>>> with_cypher_file

    plaintext = 'za4'
    assert_raises Cipher::CipherValidationError do
      Cipher.decode(plaintext)
    end
  end
end
