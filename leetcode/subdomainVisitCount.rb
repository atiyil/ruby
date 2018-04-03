# https://leetcode.com/contest/weekly-contest-78/problems/subdomain-visit-count/
def subdomain_visits(cpdomains)
  domains = Hash.new(0)
  cpdomains.each { |e| 
    count = e.split().fetch(0)
    domain = e.split().fetch(1)
    domains[domain] += count.to_i
    firstdot = domain.index('.')
    seconddot = domain.rindex('.')
    if firstdot == seconddot then
      subdomain = domain[firstdot+1,domain.length-1]
      domains[subdomain] += count.to_i
    else
      subdomain1 = domain[firstdot+1,domain.length-1]
      subdomain2 = domain[seconddot+1,domain.length-1]
      domains[subdomain1] += count.to_i
      domains[subdomain2] += count.to_i
    end
    }
  formatted = domains.map {|k,v| "#{v} #{k}"}
  return formatted
end
