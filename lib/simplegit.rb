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

  def log(treeish = 'master')
    command("git log #{treeish}")
  end

  def ls_tree(treeish = 'master')
    command("git ls-tree #{treeish}")
  end

  private
  
    def command(git_cmd)
      Dir.chdir(@git_dir) do
        return `#{git_cmd} 2>&1`.chomp
      end
    end
  
end
