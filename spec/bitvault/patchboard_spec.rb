require 'spec_helper'

describe BitVault::Patchboard, :vcr do
  describe '.authed_client' do
    let(:client) { BitVault::Patchboard.authed_client(email: 'julian@bitvault.io', password: 'terrible_secret') }
    context 'with BitVault-Token auth' do
      let(:application) { client.user.applications['bitcoin_app'] }
      let(:app_client) { 
        BitVault::Patchboard.authed_client(app_url: application.url, api_token: application.api_token) 
      }

      it 'returns an authed client' do
        expect(app_client.resources).to_not be_nil
      end

      it 'sets the api_token' do
        expect(app_client.context.api_token).to_not be_nil
      end

      it 'sets the app_url' do
        expect(app_client.context.app_url).to_not be_nil
      end
    end

    context 'with basic auth' do
      it 'auths the client with basic auth' do
        expect(client.resources).to_not be_nil
      end

      it 'sets the email' do
        expect(client.context.email).to_not be_nil
      end

      it 'sets the password' do
        expect(client.context.password).to_not be_nil
      end
    end

    context 'with no credentials' do
      let(:client) { BitVault::Patchboard.authed_client }
      it 'raises an error' do
        expect { client }.to raise_error
      end
    end
  end

  describe '.client' do
    it 'discovers the API' do
      patchboard = double('patchboard', spawn: {})
      BitVault::Patchboard.should_receive(:discover).and_return(patchboard)
      BitVault::Patchboard.client
    end

    it 'returns a BitVault client' do
      expect(BitVault::Patchboard.client).to be_a_kind_of(BitVault::Patchboard::Client)
    end
  end

end