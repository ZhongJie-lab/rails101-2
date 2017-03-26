desc 'Counter cache for group has many posts'

task task_counter: :environment do
  Group.find_each { |group| Group.reset_counters(group.id, :posts) }
end
