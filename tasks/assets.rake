namespace :assets do
  desc "Alias of clear:all"
  task :clear => ["clear:all"]

  desc "Alias of clear:all"
  task :clean => ["clear:all"]

  desc "Alias of compile:all:development"
  task :compile => ["compile:all:development"]

  desc "Alias of compile:all:production"
  task :production => ["compile:all:production"]

  namespace :clear do
    desc "Clear the CSS and JS"
    task :all => ["compile:css:clear", "compile:js:clear"]

    desc "Clear the CSS"
    task :css => ["compile:css:clear"]

    desc "Clear the JS"
    task :js => ["compile:js:clear"]
  end

  namespace :compile do
    desc "Compile JS"
    task :js => ["compile:js:default"]

    desc "Compile CSS"
    task :css => ["compile:css:default"]

    namespace :all do
      desc "Compile all for Development"
      task :development => ["clear:all", "compile:js:default", "compile:css:default"]

      desc "Compile all for Production"
      task :production => ["clear:all", "compile:js:default", "compile:css:prod"]
    end

    namespace :css do
      task :clear do
        puts "--- Clearing CSS ---"
        system "rm -Rfv public/stylesheets/*"
      end
      task :default => :clear do
        puts "--- Compiling CSS ---"
        system "bundle exec compass compile"
      end
      desc "Compile CSS for production"
      task :prod => :clear do
        puts "--- Compiling CSS ---"
        system "bundle exec compass compile --output-style compressed --force"
      end
    end

    namespace :js do
      task :clear do
        puts "--- Clearing JS ---"
        system "rm -Rfv public/javascripts/*"
      end
      task :default => :clear do
        puts "--- Compiling JS ---"
        source = "./assets/javascripts/"
        destination = "./public/javascripts/"
        Dir.foreach(source) do |cf|
          unless cf == '.' || cf == '..'
            js = CoffeeScript.compile(File.read("#{source}#{cf}"))
            open "#{destination}#{cf.gsub('.coffee', '.js')}", 'w' do |f|
              f.puts js
            end
            puts "#{cf} --> #{cf.gsub('.coffee', '.js')}"
          end
        end
      end
    end
  end
end
