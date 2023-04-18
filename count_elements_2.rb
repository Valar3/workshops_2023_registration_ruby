class CountElements
  def initialize(collection)
    @collection = collection
  end

  def perform
    @collection.tally
  end
end

