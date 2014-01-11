private
storageDirectory
    ^ (FileDirectory default directoryNamed: self storageDirectoryName) assureExistence.