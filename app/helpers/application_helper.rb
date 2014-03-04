module ApplicationHelper

  def fix_url(str)
    str.starts_with?("http://") ? str : "http://#{str}"
  end

  def fix_time(date_time)
    date_time.strftime("%m/%d/%Y %l:%M%P %Z")
  end

end
