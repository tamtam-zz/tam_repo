# a super simple example class to use git in ruby
class SimpleGit
  
  def initialize(git_dir = '.')
    @git_dir = File.expand_path(git_dir)
  end
  
  def status
    command("git status")
  end

  def show(treeish = 'master')
    command("git show #{treeish}")
  end

  def log(treeish = 'master', number = 5)
    command("git log -n #{number} #{treeish}")
  end

  def apply(file)
    command("git apply #{file}")
  end

  def blame(path)
    command("git blame #{path}")
  end

  def cat_file(path)
    command("git cat-file -p #{path}")
  end

  def ls_tree(treeish = 'master')
    command("git ls-tree -r #{treeish}")
  end

  def ls_files
    command("git ls-files --stage")
  end

  def file_type(sha)
    command("git cat-file -t #{sha}")
  end

  private
  
    def command(git_cmd)
      Dir.chdir(@git_dir) do
        return `#{git_cmd} 2>&1`.chomp
      end
    end
  
end
