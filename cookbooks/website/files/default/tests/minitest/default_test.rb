class TestWebsite < MiniTest::Chef::TestCase
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  def test_succeed
    assert run_status.success?
  end
  
  def test_that_the_package_installed
    package("apache2").must_be_installed
  end

  def test_that_the_service_is_running
    service("apache2").must_be_running
  end

  def test_that_the_service_is_enabled
    service("apache2").must_be_enabled
  end

  def test_home_page_file
    file("/var/www/index.html").must_exist
  end

  def test_home_page_content
    file("/var/www/index.html").must_include node['conference']['name']
    file("/var/www/index.html").must_include node['conference']['city']
  end
end
