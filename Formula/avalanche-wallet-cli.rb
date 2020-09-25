require "language/node"
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AvalancheWalletCli < Formula
  desc ""
  homepage ""
  license ""
  head "https://github.com/obsidiansystems/avalanche-wallet-cli.git"

  depends_on "yarn" => :build
  depends_on "nvm" => :build
  depends_on "python3" => :build
  depends_on "npm" => :build
  depends_on "node"
  depends_on "libusb"
  depends_on "libusb-compat"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    # system "yarn", "install", "--frozen-lockfile"
    # libexec.install "node_modules"
    # mkdir_p "#{libexec}/bin"
    # libexec.install "cli/cli.js" => "bin/avalanche-cli"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test avalanche-wallet-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
