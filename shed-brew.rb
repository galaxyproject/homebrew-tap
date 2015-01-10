require 'formula'

class ShedBrew < Formula
  homepage 'https://github.com/jmchilton/shed-brew'
  url 'https://github.com/jmchilton/shed-brew/archive/0.0.1.tar.gz'
  sha1 '5645da493dcdbeda132e94174f7ab5cdf0b3c145'

  depends_on "platform-brew/tap/platform-brew"

  head do
    url 'https://github.com/jmchilton/shed-brew.git'
  end

  def install
    prefix.install Dir["./*"]
    bin.install_symlink Dir["#{prefix}/brew-*"]
  end

end

