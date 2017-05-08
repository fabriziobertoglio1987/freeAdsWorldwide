# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
user = User.create(:email => "fabrizio@email.com", :firstname => "Fabrizio", :lastname => "Bertoglio", :country => "IT", :city => "Torino",:password => "fabrizio", :password_confirmation => "fabrizio")
companytype = Companytype.create(:name => "startup")
campaigntype = Campaigntype.create(:name => "Paper Advertisement")

companytype = Companytype.first
user = User.last
campaigntype = Campaigntype.last


company = Company.create(:name => "StartupAds", :title => "Free Advertisement Worldwide distribution", :description => "Free Advertisement Worldwide distribution", :website => "https://freeadsworldwide.herokuapp.com/", :companytype_id => companytype.id)
user.companies << company
campaign = Campaign.create(:name => "Paper Advertisement Campaign", :targetcountries => "Italy", :campaigntype_id => campaigntype.id, :company_id => company.id)

company = Company.create(:name => "BateringApps", :title => "Free Apps in exchange of accomodation", :description => "Free Apps in exchange of accomodation", :website => "https://barteringapps.herokuapp.com/", :companytype_id => companytype.id)
user.companies << company
campaign = Campaign.create(:name => "My test campaign", :campaigntype_id => campaigntype.id, :company_id => company.id, :worldwide => true)
=end
company = Company.last
campaign = Campaign.last
run =  Run.create(:campaign_id => campaign.id, :runprintnumber => 10, :ownads => 10)
ad = Ad.create(:company_id => company.id, :run_id => run.id)