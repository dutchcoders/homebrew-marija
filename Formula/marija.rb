class Marija < Formula
  desc "Exploration and visualisation of Elasticsearch data"
  homepage "https://github.com/dutchcoders/marija"
  url "https://github.com/dutchcoders/marija.git",
    :revision => "dceca815eef12c800e40577ac7b3aee8256a8721"
  version "201611102049"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    clipath = buildpath/"src/github.com/dutchcoders/marija"
    clipath.install Dir["*"]

    cd clipath do
      system "go", "build", "-o", buildpath/"marija"
    end

    bin.install buildpath/"marija"
  end

  def post_install
  end

  test do
    system "#{bin}/marija", "version"
  end
end
