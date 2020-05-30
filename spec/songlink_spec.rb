# frozen_string_literal: true

RSpec.describe Songlink do
  before do
    WebMock.stub_request(:get, url).to_return(
      body: File.read(fixture),
      status: 200,
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  let(:url) { 'https://api.song.link/v1-alpha.1/links?format=json&key&url=spotify%3Atrack%3A0BKR0dFPDmhREewiiqGArC&userCountry=JP' }
  let(:params) { { url: 'spotify:track:0BKR0dFPDmhREewiiqGArC', userCountry: 'JP' } }
  let(:fixture) { 'spec/fixtures/song.json' }

  context 'version' do
    it 'has a version number' do
      songlink = Songlink.new
      expect(songlink.version).not_to be nil
    end
  end

  context 'request' do
    it 'request was successful' do
      songlink = Songlink.new
      res = songlink.request(params)
      expect(res.status).to eq 200
    end
  end
end
