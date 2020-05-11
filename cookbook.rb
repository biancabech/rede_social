puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = []

# puts "[1] Cadastrar uma receita"
# puts "[2] Ver todas as receitas"
# puts "[3] Sair"

# print "Escolha uma opção: "
# opcao = gets.to_i

# puts "Digite o nome da receita:" if opcao != 3

opcao = nil
while(opcao != 3) do
  puts "[1] Cadastrar uma receita"
  puts "[2] Ver todas as receitas"
  puts "[3] Sair"

  print "Escolha uma opção: "
  opcao = gets.to_i

  if(opcao == 1)
    puts "Digite o nome da receita:"
    nome = gets.chomp
    puts "Digite o tipo da receita:"
    tipo = gets.chomp

    receitas << {nome: nome, tipo: tipo}
    puts
    puts "Receita de #{nome} cadastrada com sucesso!"
    puts
  elsif(opcao == 2)
    puts "======= Receitas Cadastradas ======="
    receitas.each do |receita|
      puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts "======= FIM ======="
    puts
  elsif (opcao != 3)
    puts "Opção Inválida!"
  end
end

puts "Obrigado por usar o Cookbook, até logo!"
