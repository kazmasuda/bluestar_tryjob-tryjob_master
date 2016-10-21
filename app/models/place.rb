class Place < ActiveRecord::Base
  validates :name, :presence => {:message => '場所を入力してください'}
end
