if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAIOUK5KQQTX32NOZQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['rails-tutorial-kiyo']
  end
end
