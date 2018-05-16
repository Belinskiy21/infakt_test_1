require "pry"
class PassedOrFailed

  def initialize(results, threshold)
    @results = results
    @threshold = threshold.to_i
  end


  def perform
    passed_array = []
    failed_array = []
    result = {}
    @results.each do |name, value|
      modefied_array = [name, value.to_i]
      passed_array.push(modefied_array) if modefied_array[1] >= @threshold
      failed_array.push(modefied_array) if modefied_array[1] < @threshold
      result = { passed: Hash[passed_array], failed: Hash[failed_array] }
    end
    result
  end

end
