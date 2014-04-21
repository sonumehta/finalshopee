class Cat1 < ActiveRecord::Base

has_many :cat2s
  has_many :cat3s, :through => :cat2s
end


