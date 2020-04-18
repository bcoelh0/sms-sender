class Contact < ApplicationRecord
  belongs_to :list # Change this so a contact can belong to multiple lists! We need a table in between these
  has_many :messages
end
