require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do

  context "#get_prime" do

    it "リスト要素が0になる最大数" do
      Eratos
      expect( Eratos.new(number:1).get_prime()).to match( [] )
    end

    it "要素1つになる最小値" do
      expect( Eratos.new(number:2).get_prime()).to match( [2] )
    end

    it "要素2つ以上" do
      expect( Eratos.new(number:30).get_prime()).to match( [2,3,5,7,11,13,17,19,23,29] )
    end

    it "大量要素" do
      expect{ Eratos.new(number:5000000).get_prime()}.not_to raise_error
    end

  end

end
