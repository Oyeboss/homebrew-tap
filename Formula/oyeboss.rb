class Oyeboss < Formula
  desc "Turn an idea into something real, in the AI tool you already use"
  homepage "https://oyeboss.build"
  url "https://registry.npmjs.org/oyeboss/-/oyeboss-0.345.0.tgz"
  sha256 "b396ff597e2f8b9a60ca84c46f49c95dbd82022f08c4ba0f2ba1fe270f733f3d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "0.345.0", shell_output("#{bin}/boss --version")
  end
end
