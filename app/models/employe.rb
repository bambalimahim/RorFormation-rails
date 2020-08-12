class Employe < ApplicationRecord
  belongs_to :account
  belongs_to :sender, class_name: "Account", foreign_key: "sender_id"
end
