module ProfessionalsHelper
  def formatted_name(professional)
    "#{professional.civility.humanize} #{professional.first_name} #{professional.last_name.upcase}"
  end
end
