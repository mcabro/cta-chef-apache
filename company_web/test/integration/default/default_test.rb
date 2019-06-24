# # encoding: utf-8

# Inspec test for recipe company_web::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

companyName = node['company_web']['company_name']

describe command('curl localhost') do
  its('stdout') { should match(companyName) }
end