# Drop the DB
puts "Clearing database"
Party.destroy_all
Bucket.destroy_all
Task.destroy_all

# Create 3 parties
puts "Creating parties..."
christmas = Party.create(name: "Christmas")
nowruz = Party.create(name: "Nowruz")
bday = Party.create(name: "Birthday")

parties = [christmas, nowruz, bday]

# Add buckets to each party
parties.each do |party|
  puts "Creating buckets for #{party.name}"
  # Create first bucket
  puts "Creating invitations bucket"
  invitations = Bucket.new(name: "Invitations")
  invitations.party = party
  invitations.save!

  # Create second bucket
  puts "Creating shopping bucket"
  shopping = Bucket.new(name: "Shopping")
  shopping.party = party
  shopping.save!

  # Create third bucket
  puts "Creating cooking bucket"
  cooking = Bucket.new(name: "Cooking")
  cooking.party = party
  cooking.save!

  puts "Creating tasks for this party"
  party.buckets.each do |bucket|
    4.times do |i|
      puts "Creating task no. #{i + 1} for #{bucket.name} bucket"
      task = Task.new(
        name: "TODO #{i}",
        index: i
      )
      task.bucket = bucket
      task.save!
    end
  end
  puts
end
