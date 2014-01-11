I provide many-reader single-writer access synchronization for a resource.

If preferWriters is true, writers will be serviced in preference to readers. Otherwise, readers will be serviced in preference to writers. Note that the difference is only interesting when there is significant contention for thr shared resource.