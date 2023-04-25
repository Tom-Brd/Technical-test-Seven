pokemonData = [
  { pokemonId: 1, name: "Bulbasaur", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png", weight: 69, height: 7, price: 100, userId: 1 },
  { pokemonId: 2, name: "Ivysaur", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png", weight: 130, height: 10, price: 200, userId: 1 },
  { pokemonId: 3, name: "Venusaur", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png", weight: 1000, height: 20, price: 300, userId: 1 },
  { pokemonId: 4, name: "Charmander", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png", weight: 85, height: 6, price: 400, userId: 1 },
  { pokemonId: 5, name: "Charmeleon", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png", weight: 190, height: 11, price: 500, userId: 1 },
  { pokemonId: 6, name: "Charizard", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png", weight: 905, height: 17, price: 600, userId: 1 },
  { pokemonId: 7, name: "Squirtle", imagePath: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png", weight: 90, height: 5, price: 700, userId: 1 },
]

pokemonData.each do |pokemon|
  Pokemon.create(pokemon)
end

userData = [
  { userId: 1, email: "user1@test.com", password: "password", balance: 1000 },
  { userId: 2, email: "user2@test.com", password: "password", balance: 1000 },
  { userId: 3, email: "user3@test.com", password: "password", balance: 1000 },
]

userData.each do |user|
  User.create(user)
end

transactionData = [
  { transactionId: 1, action: 1, userId: 1, pokemonId: 1 },
  { transactionId: 2, action: 1, userId: 1, pokemonId: 2 },
  { transactionId: 3, action: 1, userId: 1, pokemonId: 3 },
  { transactionId: 4, action: 1, userId: 1, pokemonId: 4 },
  { transactionId: 5, action: 0, userId: 1, pokemonId: 5 },
  { transactionId: 6, action: 0, userId: 1, pokemonId: 6 },
  { transactionId: 7, action: 0, userId: 1, pokemonId: 7 },
]

transactionData.each do |transaction|
  Transaction.create(transaction)
end