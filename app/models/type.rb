class Type < ActiveRecord::Base
  validates :name, :presence => {:message => '雇用形態を入力してください'}
end
