require 'spec_helper'

describe 'tasseo' do
  context 'on redhat systems' do
    let(:facts) do
      {
        :osfamily => 'redhat'
      }
    end

    it { should_not include_class('tasseo::debian') }
  end

  context 'on debian systems' do
    include_context 'debian system'

    it { should include_class('tasseo::debian') }
  end
end
