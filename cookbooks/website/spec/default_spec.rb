require 'chefspec'

describe 'website::default' do
  chef_run = ChefSpec::ChefRunner.new(platform:'ubuntu', version:'12.04') do |node|
    node.set["conference"]["name"] = "My Awesome Conference!"
    node.set["conference"]["city"] = "Annapolis, MD"
  end
  chef_run.converge "website::default"

  it "should install apache package" do
    chef_run.should install_package "apache2"
  end

  it "should create a home page" do
    chef_run.should create_file "/var/www/index.html"
  end

  it "should create a home page with our content" do
    chef_run.should create_file_with_content(
      "/var/www/index.html","My Awesome Conference!")
    chef_run.should create_file_with_content(
      "/var/www/index.html","Annapolis, MD")
  end

  it "should start the apache service" do
    chef_run.should start_service "apache2"
  end

  it "should enable the apache service" do
    chef_run.should enable_service "apache2"
  end
end
