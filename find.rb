# filters.rb

# In this file, we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Assuming candidates is an array of hashes where each hash represents a candidate
  # Example: candidates = [{id: 1, name: "John"}, {id: 2, name: "Jane"}]
  
  # Find the candidate with the given id
  candidate = candidates.find { |c| c[:id] == id }
  
  # Return the candidate or nil if not found
  candidate
end

def experienced?(candidate)
  # Your code here
end

def qualified_candidates(candidates)
  # Your code here
end

# More methods will go below
