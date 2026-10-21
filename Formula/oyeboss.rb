class Oyeboss < Formula
  desc "Just-in-time startup incubator that mentors founders from idea to venture"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.333.0.tgz"
  sha256 "7a69e5941908a27c38b457bcd9c6f92e3c731d7ad5ecec259b72565c761e9db4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.333.0", shell_output("#{bin}/boss --version")
  end
end
