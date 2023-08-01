class HelloWorld

def self.sortChar
  @arr = [" ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "y", "x", "z"]

  randon_char = @arr[rand(0..26)]
  
  def self.newChar
    return randon_new_char = @arr[rand(0..26)]
  end
  
  target = "hello world"
  target_arr = target.split("")

  @word_build = []
  i = 0

  until i == 11 do
    while target_arr[i] != randon_char do
      randon_char = HelloWorld.newChar
      sleep(0.1)

      puts @word_build.join("") + randon_char
    end

    @word_build.push randon_char
    i += 1
    sleep(0.2)
  end

end
  HelloWorld.sortChar
end