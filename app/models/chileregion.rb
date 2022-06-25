class Chileregion < ApplicationRecord
  #relacion 1-n
  #Un usuario debe tener una comuna,region,tipoentidad
  #Una comuna,region,tipoentidad puede tener muchos usuarios
  has_many :users, class_name:"User", foreign_key:"user_id"
  #belongs_to :user, class_name:"User", foreign_key:"user_id"
  
  #relacion 1-n
  #Una region puede tener muchas licitaciones
  #Una licitacion debe tener una region
  has_many :licitacions, class_name:"Licitacion", foreign_key:"user_id"
  


end
