class Contact < ApplicationRecord


    # Associations 

    belongs_to :kind #optional: true 
    has_many :phones
    has_one :address

    accepts_nested_attributes_for :phones, allow_destroy: true 
    accepts_nested_attributes_for :address, update_only: true

    def as_json(options={})
      h = super (options)
      h [:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
      h
    end




    
    #  def Birthdate_br
    #  I18n.l(self.Birthdate) unless self.Birthdate.blank?
    #  end
 
    #  def to_br
    #     { 
    #         name: self.name,
    #         email: self.email,
    #         Birthdate: (I18n.l(self.Birthdate) unless self.Birthdate.blank?) 
    #     }
    #  end
     

    # def author 
    #     "jackson pires"
    # end 

    # def kind_description
    #     self.kind.description
    # end

    # def as_json(options={})
    #     super(
    #         root: true,
    #         methods: [:kind_description, :author],
    #         include: { kind: { only: :description}}
    #         )
    # end


    # def hello
    #     I18n.t('hello')
    # end    

    # def i18n
    #     I18n.default_locale
    # end

end