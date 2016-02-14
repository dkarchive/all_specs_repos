require 'json'

DEFAULT_DIR = 'Specs'
OUTPUT_FILENAME = 'all-specs-repos.txt'

specs_dir = ARGV.count == '0' ? DEFAULT_DIR : ARGV[0]

# TODO validation error

elapsed_time_start = Time.now

glob = Dir.glob "#{specs_dir}**/*/*/*/*.json"

repos = []
glob.uniq.each do |f|
  c = File.read f
  j = JSON.parse c

  begin
    print '.'
    g = j['source']['git']
    repo = g.sub '.git', ''
    repos.push repo
  rescue
    next
  end
end

File.open(OUTPUT_FILENAME, 'w') { |f| f.puts '' }
repos.uniq.each do |r|
  File.open(OUTPUT_FILENAME, 'a') { |f| f.puts r }
end # glob

elapsed_seconds = Time.now - elapsed_time_start

puts "\nProcessed CocoaPods Specs in #{elapsed_seconds.round}s \n"\
  "Found #{repos.uniq.count} repos \n"\
  "Wrote #{OUTPUT_FILENAME}"
