require 'spec_helper'

class String
  include CamelSnake
end

describe CamelSnake do
  it 'has a version number' do
    expect(CamelSnake::VERSION).not_to be nil
  end

  describe '#to_pascal' do
    {
      'hoge'        => 'Hoge',
      'foo_bar1'    => 'FooBar1',
      'a_b_c'       => 'ABC',
      'foo_bar baz' => 'FooBar Baz',
    }.each_pair do |sbj,expect|
      it "#{sbj} => #{expect}" do
        expect(sbj.to_pascal).to eq expect
      end
      it "#{sbj} => #{expect} (by #to_camel)" do
        expect(sbj.to_camel).to eq expect
      end
    end
  end

  describe '#to_camel' do
    {
      'hoge'        => 'hoge',
      'foo_bar1'    => 'fooBar1',
      'a_b_c'       => 'aBC',
      'foo_bar baz' => 'fooBar baz',
    }.each_pair do |sbj,expect|
      it "#{sbj} => #{expect}" do
        expect(sbj.to_camel :lower).to eq expect
      end
    end
  end

  describe '#to_snake' do
    {
      'ID'          => 'id',
      'camelCase'   => 'camel_case',
      'FooBar'      => 'foo_bar',
      'ServiceID'   => 'service_id',
      'HTTPRequest' => 'httprequest',
      'FooBar ID'   => 'foo_bar id',
    }.each_pair do |sbj,expect|
      it "#{sbj} => #{expect}" do
        expect(sbj.to_snake).to eq expect
      end
    end
  end
end
