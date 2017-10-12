class Phonenumber < ApplicationRecord
	belongs_to :contact
	validates :phone_number, :presence => true, :numericality => true, :length => {:minimum=>6, :maximum=>15}
end
