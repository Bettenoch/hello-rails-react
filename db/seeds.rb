# Create an array of greetings
greetings = [
  "Hello!",
  "Hi there!",
  "Welcome!",
  "Greetings!",
  "Good day!"
]

# Loop through the greetings array and create records in the greetings table
greetings.each do |message|
  Greeting.create!(message: message)
end
