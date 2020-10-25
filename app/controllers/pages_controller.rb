class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def stats
    matches = User.where.not(name: 'OG').where.not(name: 'No Assist').sort_by {|user| user.matches.size }.reverse
    goals = matches.sort_by {|user| user.goals.size }.reverse
    @players = goals.sort_by {|user| user.goals.size + user.assists.size }.reverse
  end
end
