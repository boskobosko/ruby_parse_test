require "test/unit"

require './conf'

class ConfTest < Test::Unit::TestCase

  FILENAME = "sample-conf.txt"

  def setup
  end

  def teardown
  end

  def test_get_all
    conf = Conf.new(FILENAME)
    assert_equal 5, conf.get_all.keys.length
  end

  def test_get
    conf = Conf.new(FILENAME)
    assert_equal 'true', conf.get('verbose')
  end

  def test_invalid_valid
    conf = Conf.new('inexistent')
    assert_true false
  rescue Exception => e
    #expected
  end
end
