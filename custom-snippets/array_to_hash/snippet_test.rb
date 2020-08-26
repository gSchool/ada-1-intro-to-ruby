require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

def solution(list)
  solution_hash_array = []
  list.each_with_index do |name, index|
    solution_hash_array << { name: name, id: (index + 1)}
  end

  return solution_hash_array
end

describe "Test Suite" do
  describe "array_to_hash_array" do
    it "will return an empty array for []" do
      list = []
      answer = array_to_hash_array(list)

      expect(answer).must_equal []
    end

    it "will return [{name: 'ada', id: 1}] for ['ada']" do
      list = ["ada"]
      name_hash_array = array_to_hash_array(list)

      expect(name_hash_array.length).must_equal 1
      expect(name_hash_array.first).must_equal({ name: "ada", id: 1 })
    end

    it "will return an array of hashes with key-value pairs for a 2-element array" do
      list = ["ada", "Grace"]
      name_hash_array = array_to_hash_array(list)
      solution_array = solution(list)

      name_hash_array.each do |hash|
        expect(solution_array.include? hash).must_equal true
      end
    end

    it "will return an array of hashes with key-value pairs for a 4-element array" do
      list = ["ada", "Grace", "paula", "Katherine"]
      name_hash_array = array_to_hash_array(list)
      solution_array = solution(list)

      expect(name_hash_array.length).must_equal 4

      name_hash_array.each do |hash|
        found = false
        solution_array.each do |other_hash|
          if (other_hash[:id] == hash[:id] && other_hash[:name] == hash[:name])
            found = true
          end
        end
        expect(found).must_be_true
      end
    end
  end
end
