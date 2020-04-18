# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  
  attr_accessor :email_address
  
  def initialize (emails)
    @email_addresses = emails
  end 
  
  def parse
    split_emails = []
    temp_array = []
    temp_array2 = []
    parsed_emails = []
    temp_array << @email_addresses.split(", ")
    temp_array << @email_addresses.split(" ")
    temp_array.each do |email|
      if (email.include? (", "))
        temp_array2 << email.split(", ")
      elsif (email.include? (" "))
        temp_array2 << email.split(" ")
      else 
        temp_array2 << email
      end 
    end 
    temp_array2.each do |email|
      if (!parsed_emails.include? (email))
        parsed_emails << email
      end 
    end 
    parsed_emails
  end 
  
end 