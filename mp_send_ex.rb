class Account
  attr_accessor :name, :address, :email, :notes, :phone, :balance
  def attributes=(values)
    values.each_key do |k|
      self.send("#{k}=",values[k])
    end
  end
end

user_info = {
    :name => "Smruti",
    :address => "Banglore",
    :email => "smruti@gmail.com",
    :notes => ["comment 1","Comment 2"],
    :phone => 9408332167,
    :balance => 50_00_000
}

ac = Account.new
ac.attributes =user_info # Message Passing to Object
puts ac.inspect


comments = {:body => "HIRO HIRA"}