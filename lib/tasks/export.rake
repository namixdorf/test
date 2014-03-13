namespace :export do
  desc "Touches all cached pages, moves them and asset directory to an external folder for easy exporting."
  task :html => [ :environment, :config ] do
    
    conf = File.join(Rails.root, 'config', 'environments', 'development.rb')
    
    puts("enabling asset compilation and page caching in development env")
    config = File.open(conf, 'r').read
    config.sub!(/(action_controller\.perform_caching[^\S\r\n]*=[^\S\r\n]*)false/, "\\1true")
    config.gsub!(/^([^\S\r\n]*)#[^\S\r\n]*(config\.assets\.(compile|digest))/, "\\1\\2")
    File.open(conf, 'w') { |f| f.write(config) }
    
    puts "clearing out the old export folder"
    system "rm -rf #{ File.join(Rails.root, 'public', 'export') }"
    
    puts "restarting server"
    system "touch #{ File.join(Rails.root, 'tmp', 'restart.txt') }"

    puts "compiling assets"
    system "rake assets:precompile RAILS_ENV=development"
    system "rm -rf #{ File.join(Rails.root, 'public', 'assets', 'admin')}"

    puts "generating cache pages"
    
    @pages.each do |p|
      puts "Fetching page #{p}"
      system "curl http://tablet.dev/#{p} > /dev/null 2>&1"
    end

    puts "moving assets into public/export"
    system "cp -rf #{ File.join(Rails.root, 'public', 'assets') } #{ File.join(Rails.root, 'public', 'export', 'assets') }"
    system "cp -rf #{ File.join(Rails.root, 'public', 'content') } #{ File.join(Rails.root, 'public', 'export', 'content') }"
    system "cp -rf #{ File.join(Rails.root, 'public', 'system') } #{ File.join(Rails.root, 'public', 'export', 'system') }"
    
    puts("resetting development env")
    config.sub!(/(action_controller\.perform_caching[^\S\r\n]*=[^\S\r\n]*)true/, "\\1false")
    config.gsub!(/^([^\S\r\n]*)(config\.assets\.(compile|digest))/, "\\1# \\2")
    File.open(conf, 'w') { |f| f.write(config) }
  end
  
  desc "Removes all cached exported pages and the development asset folder"
  task :cleanup => [ :environment, :config ] do
    puts "cleaning up"
    system "rm -rf #{ File.join(Rails.root, 'public', 'export') }"
  end
  
  task :config => :environment do
    @pages = [
      'index',
      'categories',
      'finding',
      'get-inspired',
    ]
    Category.all.each do |category|
      @pages << [category.short_name.downcase, 'index.html'].join('/')
      category.articles.each do |article|
        @pages << "#{category.short_name.downcase}/#{article.url_slug}.html"
      end
    end
    # Tag.uniq.pluck(:url_slug).each do |tag|
    #   @pages << "tags/#{tag}.html"
    # end`
  end
  
  task :move_static_site do
    export      = File.join(Rails.root, 'public', 'export')
    static_path = File.join(Rails.root, '..', 'static-website', 'public')
    images      = File.join(Rails.root, 'public', 'images')
    
    system "rm -rf #{ static_path }"
    system "cp -rf #{ export } #{ static_path }"
    system "cp -rf #{ images } #{ static_path }"
    system "rm -rf #{ export }"
    
    # puts "mv -rf #{ File.join(Rails.root, 'public', 'export')} #{File.join(Rails.root, '..', 'static-website')}"
  end
  
end