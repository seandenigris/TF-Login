I am a file-based database. Objects are saved in named files and retrieved by the storage name when needed. Multiple versions of the object storage files are maintained. A hack for mutli-indexing is provided in the form of a "match block" specified by the user that is used to wildcard the object storage name to only include the portion of the name that comprises the primary key. The filename can then contain other information that may be useful for finding a desired object. This allows the OS file system to be used to select files.

Versioning is accomplished by suffixing the filenames with a dot followed by the version number.

Example: The objects to be stored have a primary key value and another value that is frequently used for retrieval that is unique but can change over the life of the object. Name the objects with a string like primarykey-secondarykey. Wildcarding can then be used to retrieve by either primary or secondary key: primarykey-*.* or *-secondarykey.*. The match block returns the primary key wildcard string, which allows the MultiFileDatabase instance to properly trim and delete files whose secondary key may have changed.

There is no locking. Synchronization is expected to be done by the sender.

