class AddProfessionelToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :professionel,  foreign_key: true
  end
end
