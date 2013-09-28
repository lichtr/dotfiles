require 'rake'

desc "installs dot files in home directory"
task :dots do
  Linker.new.create_from(".")
end

desc "installs snippets in the snippets directory"
task :snippets do
  Linker.new(".janus/vim-snippets/snippets/").create_from("snippets")
end

class Linker
  def initialize(path = "", selector = '*', exclusions = %w{ Rakefile })
    @path = File.join(ENV["HOME"], path)
    @selector = selector
    @exclusions = exclusions
    # dot dotfiles
    @prefix = (path.empty? ? "." : "")
  end

  def create_from(dir)
    @replace_all = false
    Dir.chdir("#{Dir.pwd}/#{dir}") do
      Dir[@selector].each do |file|
        next if @exclusions.include?(file) || File.directory?(file)
        create_links(file)
      end
    end
  end

  def full_path(file)
    File.join(@path, file)
  end

  def create_links(file)
    file = "#{@prefix}#{file}"
    if File.exist?(full_path(file))
      if @replace_all
        replace_file(file)
      else
        print "overwrite #{full_path(file)}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          @replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping #{full_path(file)}"
        end
      end
    else
      link_file(file)
    end
  end

  def replace_file(file)
    system %Q{rm "#{full_path(file)}"}
    link_file(file)
  end

  def link_file(file)
    puts "linking #{full_path(file)}"
    unprefixed = file.sub(/^#{@prefix}/, "")
    system %Q{ln -s "#{Dir.pwd}/#{unprefixed}" "#{full_path(file)}"}
  end
end