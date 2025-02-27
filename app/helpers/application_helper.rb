module ApplicationHelper
  def format_date(date)
    date.strftime("%d/%m") if date.present?
  end
end
