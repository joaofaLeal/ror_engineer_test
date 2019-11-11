require 'rufus-scheduler'
scheduler = Rufus::Scheduler.singleton


unless defined?(Rails::Console) || File.split($0).last == 'rake'

   scheduler.every '5m' do
     Rails.logger.info "Hello, time for running osmdb tests. It's #{Time.now}"
     system('rake tdms:run_osmdb_tests')
     Rails.logger.info "Goodbye, osmdb tests were finished. It's #{Time.now}"
   end
end
