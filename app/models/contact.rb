class Contact < ApplicationRecord
    belongs_to :kind, optional: true 
    
    #  def Birthdate_br
    #  I18n.l(self.Birthdate) unless self.Birthdate.blank?
    #  end
 
     def to_br
        { 
            name: self.name,
            email: self.email,
            Birthdate: (I18n.l(self.Birthdate) unless self.Birthdate.blank?) 
        }
     end
     

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