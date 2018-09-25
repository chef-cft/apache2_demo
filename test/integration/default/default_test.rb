# # encoding: utf-8

# Inspec test for recipe apache2_demo::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os.family == 'debian'
  apache_service = 'apache2'
  apache_user = 'www-data'
elsif os.family == 'redhat'
  apache_service = 'httpd'
  apache_user = 'apache'
end

describe port(80) do
  it { should be_listening }
end

describe service(apache_service) do
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/www/html/basic_web_app/index.html') do
  it { should be_owned_by 'root' }
  it { should be_readable.by_user(apache_user) }
  its('mode') { should cmp '0644' }
end

describe http('http://127.0.0.1/') do
  its('status') { should eq 200 }
  its('body') { should match 'Hello World' }
end
