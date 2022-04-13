json.party do
  json.name  @party.name
  json.buckets do
    json.array! @party.buckets do |bucket|
      json.name bucket.name
      json.tasks bucket.tasks, :id, :name, :description, :index, :completed
    end
  end
end
