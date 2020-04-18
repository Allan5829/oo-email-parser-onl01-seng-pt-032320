class EmailAddressParser
  
  attr_accessor :email_address
  
  def initialize (emails)
    @email_addresses = emails
  end 
  
  def parse
    split_emails = []
    parsed_emails = []
    split_emails = @email_addresses.split.collect { |email| email.split}
  end 
  
end 