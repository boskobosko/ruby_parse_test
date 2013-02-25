class Conf

  def initialize(filename)
    @filename = filename
    @data = read
  end

  def get_all
    @data
  end

  def get(variable)
    @data[variable]
  end

  private

  def read
    File.open(@filename).inject(Hash.new) do |h, row|
      key,value = row.strip.split('=')
      h[key.strip] = value.strip if key and value and !key.start_with? '='
      h
    end
  end

end
