require 'spec_helper'

describe 'tasseo::debian' do
  include_context 'debian system'

  it { should contain_package('git-core') }

end
