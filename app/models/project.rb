class Project < ActiveRecord::Base

  validates :title, :presence => {:message => 'タイトルを入力してください'}

  self.inheritance_column = :_type_disabled
end
