require 'spec_helper'
describe 'check_mk' do
  context 'with default values for all parameters' do
    it { should contain_class('check_mk') }
  end
end
