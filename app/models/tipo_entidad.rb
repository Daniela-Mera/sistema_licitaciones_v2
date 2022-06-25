class TipoEntidad < ApplicationRecord
  #Relacion 1-n
  has_many :user, class_name:"User", foreign_key:"user_id"
  #belongs_to :user, class_name:"User", foreign_key:"user_id"

end
