class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[1].strip
  end

  def log_level
    @line.downcase.split(":")[0].delete('[]')
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

line = LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n")
puts line.message