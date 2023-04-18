class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    return false unless valid_length
    return false unless capital_letter_present
    return false unless small_leter_present
    return false unless digit_present
    return false unless special_char_present
    return false unless method
    return true
  end

  private

  def valid_length;
    @password.length >6 && @password.length <24
  end
  def capital_letter_present;
    @password.count('A-Z')>0
  end
  def small_leter_present;
    @password.count('a-z') > 0
  end
  def digit_present;
    @password.count('0-9')>0
  end
  def special_char_present;
    @password.count('! @ # $ % & * + = : ; ? < >')>0
  end
  def method
    duplications = 1
    array = @password.split('')

    for i in 1..array.size do
      if array[i] == array[i-1]
        duplications += 1
      else
        duplications = 1
      end

      return false if duplications >= 3
    end

    return true
  end
end
