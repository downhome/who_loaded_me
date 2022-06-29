module WhoLoadedMe
  module_function
  def track!(gem_name, track_file: nil)
    track_file ||= '/tmp/who_loaded_me.txt'
    File.open(track_file, 'a') do |f|
      f.puts("[%s]: [%s], App: [%s]: PWD: [%s]]" % [Time.now, gem_name, $0, ENV['PWD']])
    end
  end

  track! self.name
end
