class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #relacion 1-n

  #Un usuario debe tener una comuna,region,tipoentidad
  belongs_to :comuna, class_name:"Comuna", foreign_key:"nombre_comuna"
  belongs_to :chileregion, class_name:"Chileregion", foreign_key:"nombre_region"
  belongs_to :tipo_entidad, class_name:"TipoEntidad", foreign_key:"entidad"

  #Un usuario debe tener una comuna,region,tipoentidad
  #has_many :comuna, class_name:"Comuna", foreign_key:"nombre_comuna"
  #has_many :chileregion, class_name:"Chileregion", foreign_key:"nombre_region"
  #has_many :tipo_entidad, class_name:"TipoEntidad", foreign_key:"entidad"



end
