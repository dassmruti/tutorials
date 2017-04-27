class Tutorial
  def ruby
    print("Ruby")
    puts "Which Framework you want to learn in ruby ?"
    framework = gets.chomp
    self.class.send(:define_method, framework) do
      puts "Welcome to #{framework} of Ruby"
    end
  end

  def java
    print("Java")
    puts "Which Framework you want to learn in Java ?"
    framework = gets.chomp
    send(:define_method, framework) do
      puts "Welcome to #{framework} of Ruby"
    end
  end


  private
  def print(lang)
    puts "Welcome to #{lang} World !!!"
  end
end



tutorial = Tutorial.new


framework = "rails"
tutorial.ruby
tutorial.rails



