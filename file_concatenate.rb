new_file = File.open("concatenated_file.txt","w+")
ARGF.each do |line|
  if ARGF.file.lineno == 1
    new_file.puts("\n#{ARGF.filename}:")
    new_file.puts(File.open(ARGF.filename).read)
  end
end