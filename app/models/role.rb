class Role < ActiveRecord::Base
  validates :name, :presence => {:message => '役割を入力してください'}
end
