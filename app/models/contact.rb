class Contact < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :user
end
