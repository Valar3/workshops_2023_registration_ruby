class CountElements
  def initialize(collection)
    @collection = collection
  end

  def perform
    hash=Hash.new

    @collection.each do |value|
      if hash.has_key? value
        hash[value] += 1
      else
        hash[value] = 1
      end
    end

    return hash
  end
end
