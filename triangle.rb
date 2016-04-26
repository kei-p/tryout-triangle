class Triangle
  MESSAGES = {
    'scalene_triangle'     => '不等辺三角形ですね！',
    'isosceles_triangle'   => '二等辺三角形ですね！',
    'equilateral_triangle' => '正三角形ですね！',
    'not_triangle'         => '三角形じゃないです＞＜'
  }

  def self.check(lengths)
    type = triangle_type(lengths)
    message(type)
  end

  def self.triangle_type(lengths)
    return 'not_triangle' unless triangle?(*lengths)

    case deplicated_length_count(lengths)
    when 3
      'equilateral_triangle'
    when 2
      'isosceles_triangle'
    else
      'scalene_triangle'
    end
  end

  def self.message(type)
    MESSAGES[type]
  end

  private

  def self.triangle?(a, b, c)
    a < b + c && b < c + a && c < a + b
  end

  def self.deplicated_length_count(lengths)
    3 - lengths.uniq.size + 1
  end
end

if $0 == __FILE__
end
