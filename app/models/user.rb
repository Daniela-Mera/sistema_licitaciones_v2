class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #relacion 1-n
  #Un usuario debe tener una comuna,region,tipoentidad
  #Una comuna,region,tipoentidad puede tener muchos usuarios
  belongs_to :comuna, class_name:"Comuna", foreign_key:"nombre_comuna"
  belongs_to :chileregion, class_name:"Chileregion", foreign_key:"nombre_region"
  belongs_to :tipo_entidad, class_name:"TipoEntidad", foreign_key:"entidad"

  #relacion n-n
  #Un usuario puede tener una o mas licitaciones
  #Una licitacion puede tener uno o mas usuarios (1 constructora, 1contratista)
  has_many :licitacions, class_name:"Licitacion", foreign_key:"fk_estado_licitacion"



end
