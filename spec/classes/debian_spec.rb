require 'spec_helper'

describe 'tasseo::debian' do
  include_context 'debian system'

  it { should contain_package('git-core') }
  it { should contain_file('/srv') }

  it 'should clone tasseo onto disk' do
    should contain_exec('clone tasseo').with({
      'cwd'     => '/srv',
      'require' => ['Package[git]', 'File[/srv]']
    })
  end

end
