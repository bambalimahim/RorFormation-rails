class AddReferenceSenderToEmploye < ActiveRecord::Migration[6.0]
  def change
    add_reference :employes, :sender
  end
end
