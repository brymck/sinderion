# coding: utf-8
module ApplicationHelper
  def copyright_years
    first_year = 2011
    current_year = Time.now.year
    if current_year > first_year
      "#{first_year}‒#{current_year}"
    else
      first_year
    end
  end

  def pad_columns(x, max)
    if x < max
      "<td colspan='#{max - x}'></td>".html_safe
    end
  end

  def pad_weight(weight)
    case ("%.2f" % weight).to_s.index("0", 1)
    when 2
      "#{weight.to_i}<span class='sigfigs'>.00</span>".html_safe
    when 3
      "#{weight}<span class='sigfigs'>0</span>".html_safe
    else
      weight
    end
  end

  def title
    @title || "Sinderion"
  end
end
