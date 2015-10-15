PDFKit.configure do |config|
   config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
   config.default_options = {
    :page_size => 'Legal',
    :print_media_type => true,
    :disable_javascript => true,
    :print_media_type => false
  }
 end