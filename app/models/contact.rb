class Contact < ApplicationRecord
	has_many :addresses, :dependent => :delete_all
	has_many :phonenumbers, :dependent => :delete_all
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_presence_of :email
	validates :email, :uniqueness => {:case_sensitive => false}
	validates_numericality_of :age
end
