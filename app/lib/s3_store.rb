class S3Store
  BUCKET = ENV['S3_BUCKET_NAME'].freeze

  def initialize file
    @file = file
    @s3 = AWS::S3.new
    @bucket = @s3.buckets[BUCKET]
  end

  def store
     @obj = @bucket.objects[filename].write(@file.to_s, acl: :public_read)
     self
   end
  def url
    @obj.url.to_s
  end

  private

  def filename
      @filename = ('a'..'z').to_a.shuffle[0..7].join + ".png"
  end
end
