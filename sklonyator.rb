#encoding: utf-8

class Sklonyator
  
  def self.by_number(number, krokodil, krokodila, krokodilov, with_number = false)
    if number == nil || !number.is_a?(Numeric)
      number = 0
    end
    
    prefix = ''
    prefix = "#{number} " if with_number

    ostatok = number % 10
    ostatok100 = number % 100

    if ostatok100 >= 11 && ostatok100 <=14
      return "#{prefix}#{krokodilov}"
    elsif ostatok == 1
      return "#{prefix}#{krokodil}"
    elsif ostatok >= 2 && ostatok <= 4
      return "#{prefix}#{krokodila}"
    elsif ostatok > 4 || ostatok == 0
      return "#{prefix}#{krokodilov}"
    end
  end
  
  def self.adj_by_gender(gender, male_adj)
    case gender
      when 'm' then male_adj
      when 'f' then male_adj[0..-3] + 'ая'
      when 'n' then male_adj[0..-3] + 'ое'
    end
  end
  
  def self.verb_by_gender(gender, male_verb)
    if male_verb[-2..-1] == 'ся'
      
      case gender
        when 'm' then male_verb
        when 'f' then male_verb[0..-3] + 'ась'
        when 'n' then male_verb[0..-3] + 'ось'
      end
      
    elsif male_verb == 'шел' || male_verb == 'шёл'

      case gender
        when 'm' then male_verb
        when 'f' then 'шла'
        when 'n' then 'шло'
      end
          
    else
      
      case gender
        when 'm' then male_verb
        when 'f' then male_verb + 'а'
        when 'n' then male_verb + 'о'
      end
      
    end
  end

end

