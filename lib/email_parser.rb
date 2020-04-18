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
    array = []
    parsed_emails = []
    split_emails << @email_addresses.split(" ")
    split_emails.each do |email|
      if (!parsed_emails.include? (email))
        parsed_emails << email
      end 
    end 
    parsed_emails
  end 
  
end 