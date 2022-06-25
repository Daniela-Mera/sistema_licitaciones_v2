class Licitacion < ApplicationRecord
  #relacion n-n
  #Un usuario puede tener una o mas licitaciones
  #Una licitacion puede tener uno o mas usuarios (1 constructora, 1contratista)
  belongs_to :user, class_name:"User", foreign_key:"user_id"

  #relacion 1-n
  #Una region puede tener muchas licitaciones
  #Una licitacion debe tener una region
  belongs_to :chileregion, class_name:"Chileregion", foreign_key:"nombre_region"
  

end
