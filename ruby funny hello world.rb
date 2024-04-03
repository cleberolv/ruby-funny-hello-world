class HelloWorld
  def self.newChar
    @arr = [" ", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    return @arr[rand(0..26)]
  end

  def self.sortChar
    target = "hello world"
    target_arr = target.split("")
    @word_build = []
    i = 0

    until i == target.length do
      randon_char = newChar
      while target_arr[i] != randon_char do
        randon_char = newChar
        sleep(0.1)
        print @word_build.join("") + randon_char + "\n"
      end

      @word_build.push randon_char
      i += 1
      sleep(0.2)
    end
  end
end

HelloWorld.sortChar
