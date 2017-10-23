require 'spec_helper'

describe "userprefs::atom" do
  on_supported_os(facterversion: '3.6').each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

#      if os.start_with?('windows')
        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_package('atom').with(
          'ensure'   => 'present',
          'provider' => 'chocolatey',
        ) }
#      end
    end
  end
end
