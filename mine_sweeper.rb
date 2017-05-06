require 'pry'
class MineBoard
  attr_accessor :mine_field, :dummy_mine

  def set_mine_field
    puts "Please enter Minefield Layout separated by(,). Valid Inputs x,m"
    data = gets.chomp.downcase
    if validate_string(data)
      get_mine_field(data).each do |ele|
        print ele
        puts "\n"
      end
    else
      puts "Invalid Input"
      return false
    end
  end

  def show_dummy_mine_field
    return @mine_field.inspect
  end

  def start_game
    loop do
      puts "Enter the co-orinate which you want to flag / open , e.g : o(1,0), f(0,1) \n"
      user_data = gets.chomp
      command_args = validate_user_data(user_data)
      # print user_data
      if command_args
        mine_val = @mine_field[command_args["row"]][command_args["col"]]
        command = command_args["command"]
        if validate_mine(mine_val, command)
          @dummy_mine[command_args["row"]][command_args["col"]] = command
          break if @dummy_mine == @mine_field
          populate_partial_filled_mine
        else
          puts "You stepped Over a Mine"
          break
        end
      end
    end
  end

  private

  def populate_partial_filled_mine
    @dummy_mine.each do |ele|
      print ele
      puts "\n"
    end
  end

  def validate_mine(mine_val, command)
    case command
      when "f"
        return mine_val == "m"
      when "o"
        return mine_val == "x"
      else
        puts "Invalid I/P"
    end
  end

  def get_mine_field data
    mine_set = data.split(",").collect do |ele|
      ele.split("")
    end
    @mine_field = mine_set
    return populate_dummy_mine
  end

  def populate_dummy_mine
    system('clear')
    @dummy_mine = @mine_field.map {|ele| ["x"]*ele.length}
    return @dummy_mine
  end

  def validate_string(data)
    return false if data.length <= 0
    return false if data.split("").select {|ele| (ele != "x" && ele != "m" && ele != ",")}.length > 0
    return true
  end

  def validate_user_data(input)
    matched_data = input.match(/^(?<command>(o|f))\((?<row>\d+),(?<col>\d+)\)/)
    return false if matched_data.nil?
    return {"command" => matched_data['command'], "row" => matched_data['row'].to_i, "col" => matched_data['col'].to_i}
  end
end
m = MineBoard.new
if m.set_mine_field
  m.show_dummy_mine_field
  m.start_game
end
