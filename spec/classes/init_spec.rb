require 'spec_helper'
describe 'mms' do

  context 'with defaults for all parameters' do
    it { should contain_class('mms') }
  end
end
