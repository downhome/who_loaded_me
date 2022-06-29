module WhoLoadedMe

  module_function
  def track!(track_file = nil)
    track_file ||= '/tmp/who_loaded_me.txt'
    File.open(track_file, 'a') do |f|
      f.puts("[%s]: App: [%s]: PWD: [%s]]" % [Time.now, $0, ENV['PWD']])
    end
  end
end
