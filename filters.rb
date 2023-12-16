# filters.rb

# In this file, we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code here
end

def experienced?(candidate)
  # Check if the candidate has 2 years of experience or more
  candidate[:experience] >= 2
end

def github_points?(candidate)
  # Check if the candidate has 100 or more Github points
  candidate[:github_points] >= 100
end

def knows_ruby_or_python?(candidate)
  # Check if the candidate knows at least Ruby or Python
  candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
end

def applied_in_last_15_days?(candidate)
  # Check if the candidate applied in the last 15 days
  (Date.today - candidate[:application_date]).to_i <= 15
end

def age_over_17?(candidate)
  # Check if the candidate is over the age of 17 (18+)
  candidate[:age] >= 18
end

def qualified_candidates(candidates)
  # Filter candidates based on the defined criteria
  candidates.select do |candidate|
    experienced?(candidate) &&
      github_points?(candidate) &&
      knows_ruby_or_python?(candidate) &&
      applied_in_last_15_days?(candidate) &&
      age_over_17?(candidate)
  end
end

def ordered_by_qualifications(candidates)
  # Order candidates by experience and then by Github points (highest first)
  candidates.sort_by do |candidate|
    [-candidate[:experience], -candidate[:github_points]]
  end
end

# More methods will go below
