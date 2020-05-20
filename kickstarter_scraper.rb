# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  projects = {}

  kickstarter.css("li.project.grid_4").each do |project|

    projects[project.to_sym] = {}
  end
  projects
end


# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
