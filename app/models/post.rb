class Post < ApplicationRecord
  acts_as_paranoid 
  validates_uniqueness_of :title, scope: :content, case_sensitive: true
  validates :status, inclusion: { in: %w(done progress),
                                  messge: '%{errors[:value]} ne fait pas parti des valeurs'}
                            
end