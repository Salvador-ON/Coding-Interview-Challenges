# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  queue = []
  indegree = {}
  adj_list = {}

  (0...num_courses).each do |e|
      adj_list[e] = []
      indegree[e] = 0
  end
  
  prerequisites.each do |node|
      adj_list[node[1]].push(node[0])
      indegree[node[0]] += 1
  end
  
  
  indegree.each do |node, count|
      queue.push(node) if count == 0
  end
  
  while queue.any?
      node = queue.shift
      num_courses -= 1
      adj_list[node].each do |e|
          indegree[e] -= 1
          queue.push(e) if indegree[e] == 0
      end
  end
      
  num_courses == 0
  
end