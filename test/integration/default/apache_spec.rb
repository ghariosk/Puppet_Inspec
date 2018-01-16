if ['debian', 'ubuntu'].include?(os[:family])
	describe package('apache2') do
		it { should be_installed }
	end
	describe service('apache2') do
		it { should be_running }
	end
elsif os[:family] == 'redhat'
	describe package('httpd') do
		it { should be_installed }
	end
	describe service('httpd') do
		it {should be_running}
	end
end

describe port('8080') do
	it { should be_listening }
end



