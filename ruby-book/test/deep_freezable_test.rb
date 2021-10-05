require "minitest/autorun"
require './ruby-book/lib/bank'
require './ruby-book/lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freezable
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen?}
  end

  def test_deep_freeze_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee'},
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen?}
  end
end