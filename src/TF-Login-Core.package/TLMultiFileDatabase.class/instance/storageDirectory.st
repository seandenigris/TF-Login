private
storageDirectory
    ^ (FileSystem workingDirectory / self storageDirectoryName) ensureCreateDirectory