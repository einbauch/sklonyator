require 'rspec'

require_relative 'sklonyator'

describe Sklonyator do

  it 'should work for KROKODILOV' do
    [5, 28, 150, 1839].each do |i|
      result = Sklonyator.by_number(i, 'крокодил', 'крокодила', 'крокодилов', true)
      expect(result).to eq "#{i} крокодилов"
    end
  end

  it 'should work for KROKODILOV_automated' do
    [5, 6, 7, 8, 9, 0].each do |number|
      
      (0..100).step(10) do |i|
        summa = i + number
        
        expect("#{Sklonyator.by_number(summa, 'крокодил', 'крокодила', 'крокодилов', true)}").to eq "#{summa} крокодилов"
      end
    end
  end

  it 'should work for KROKODIL' do
    [1, 21, 151, 18321].each do |i|
      result = Sklonyator.by_number(i, 'крокодил', 'крокодила', 'крокодилов', true)
      expect(result).to eq "#{i} крокодил" 
    end
  end
  

  it 'should work for KROKODILA' do
    [2, 122, 154, 1323].each do |i|
      result = Sklonyator.by_number(i, 'крокодил', 'крокодила', 'крокодилов', true)
      expect(result).to eq "#{i} крокодила"
    end
  end
  
  it 'should work for KROKODILOV _ SPECIAL' do
    [10, 11, 12, 13, 14, 111, 312, 1013, 2414].each do |i|
      expect("#{i} #{Sklonyator.by_number(i, 'крокодил', 'крокодила', 'крокодилов')}").to eq "#{i} крокодилов"
    end
  end
  
  it 'should work for SHEL' do
    result = Sklonyator.verb_by_gender('m','шел')
    expect(result).to eq 'шел'
    
    result = Sklonyator.verb_by_gender('f','шел')
    expect(result).to eq 'шла'
    
    result = Sklonyator.verb_by_gender('n','шел')
    expect(result).to eq 'шло'
  end

  it 'should work for PROBEJALSA' do
    result = Sklonyator.verb_by_gender('m','пробежался')
    expect(result).to eq 'пробежался'

    result = Sklonyator.verb_by_gender('f','пробежался')
    expect(result).to eq 'пробежалась'

    result = Sklonyator.verb_by_gender('n', 'пробежался')
    expect(result).to eq 'пробежалось'
  end

  it 'should work for DUMAL' do
    result = Sklonyator.verb_by_gender('m','думал')
    expect(result).to eq 'думал'

    result = Sklonyator.verb_by_gender('f','думал')
    expect(result).to eq 'думала'

    result = Sklonyator.verb_by_gender('n', 'думал')
    expect(result).to eq 'думало'
  end

  it 'should work for KRASIVYJ' do
    result = Sklonyator.adj_by_gender('m','красивый')
    expect(result).to eq 'красивый'

    result = Sklonyator.adj_by_gender('f','красивый')
    expect(result).to eq 'красивая'

    result = Sklonyator.adj_by_gender('n','красивый')
    expect(result).to eq 'красивое'
  end
  
end