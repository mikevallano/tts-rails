class HomeController < ApplicationController
  def index
    right_now = Time.now
    @current_time = right_now.to_formatted_s(:short)

    # Adjust message by time of day
    @greet_message = case right_now.hour
    when 5..11
      "goooooooood mornin"
    when 12..15
      "happy afternooooooon"
    when 16..19
      "good evenin' there, fella"
    when 20..23
      "good night"
    when 0..4
      "hello madrugada"
    end

  end
end
