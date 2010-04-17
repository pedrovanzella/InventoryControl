class Client < ActiveRecord::Base
  attr_accessible :name, :telephone, :address, :email, :rg
  has_many :sales
end
