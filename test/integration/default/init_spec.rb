if [ 'debian', 'ubuntu'].include?(os[:family])
	describe service('ntp') do
		it { should_not be_running }
	end
elsif os[:family] == 'redhat'
	describe service('ntpd') do
		it { should_not be_running }
	end
end

