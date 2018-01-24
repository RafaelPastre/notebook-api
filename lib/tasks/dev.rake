namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastrando tipos de contatos..."

    kinds = %w(Amigos Comercial Conhecido)
    #kinds = ["Amigos", "Comercial", "Conhecido"]
    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end  

    puts "Tipos de contatos cadastrados com sucesso!"


    puts "Cadastrando os contatos..."

    100.times do |i|
      Contact.create!(
        name:Faker::Name.name,
        email:Faker::Internet.email,
        Birthdate: Faker::Date.between(65.years.ago,18.years.ago),
        kind: Kind.all.sample
      )
    end
    puts "Contatos cadastrados com sucesso!"
  end

end