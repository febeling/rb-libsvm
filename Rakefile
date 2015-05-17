require "bundler/gem_tasks"
require 'rake/clean'
require "rake/extensiontask"
require 'rspec/core/rake_task'
require 'net/http'

TAG = 'v320'

task :default => :spec

task :compile => [:download, :patch]

LIBSVM_SOURCES = FileList['ext/libsvm/svm.cpp',
                          'ext/libsvm/svm.h']

task :download => LIBSVM_SOURCES
CLEAN.include(LIBSVM_SOURCES)

rule(/\.(cpp|h)$/) do |task|
  download_libsvm_file(task.name)
end

Rake::ExtensionTask.new('libsvm') do |ext|
  ext.lib_dir = File.join('lib', 'libsvm')
  ext.name = 'libsvm_ext'
end
CLEAN << 'tmp'
CLEAN << 'pkg'

RSpec::Core::RakeTask.new('spec')
Rake::Task[:spec].prerequisites << :compile

CLEAN << 'doc'
CLEAN << 'TAGS'
CLEAN << 'Gemfile.lock'

# Download file from LIBSVM and place it in the default location. The
# basename is expected to exist in the LIBSVM base directory.
#
# @param name {String} name relative to this project
def download_libsvm_file(name)
  file = File.basename(name)
  dest = File.dirname(name)
  download("https://raw.githubusercontent.com/cjlin1/libsvm/#{TAG}/#{file}", dest)
end

# Download resource from given URL and place it in existing
# destination directory.
#
# @param url {String} the URL to load
# @param dest {String} name of directory
def download(url, dest)
  uri      = URI(url)
  content  = Net::HTTP.get(uri)
  basename = File.basename(url)
  file     = File.join(dest, basename)
  File.open(file, 'wb') do |f|
    f.write(content)
  end
  patch(file) if File.exists?(patch_name(file))
end

# Apply a patch to a file. The patch is expected to be created a
# command following this pattern:
#
#   git diff -u --patch ext/libsvm/svm.cpp > patches/ext_libsvm_svm.cpp.patch
#
# The name of the patch is derived from the name of the file to patch,
# by sustituting slashes with underscores.
#
# @param name {String} name of the patched file, e.g. 'ext/libsvm/svm.cpp'
def patch(name)
  sh "patch -p1 < patches/#{patch_name(name)}"
end

def patch_name(name)
  name.tr('/', '_') + '.patch'
end
