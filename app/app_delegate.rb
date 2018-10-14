class AppDelegate
  def applicationDidFinishLaunching(notification)
    buildMenu
    buildWindow
    unzip_file
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end

  def unzip_file
    @unzipper = NOZUnzipper.alloc.initWithZipFile:zipFilePath
    error_ptr = Pointer.new(:object)
    @unzipper.readCentralDirectoryAndReturnError(error_ptr)
    puts "dir: " + @unzipper.centralDirectory.to_s
  end

  def zip_file_path
    "spec/testfile.zip"
  end
end
