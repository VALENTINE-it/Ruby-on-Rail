What is an accessor?
We briefly discussed instance variables in an earlier chapter, but haven't done much with them yet. An object's instance variables are its attributes, the things that generally distinguish it from other objects of the same class. It is important to be able to write and read these attributes; doing so requires writing methods called attribute accessors. We'll see in a moment that we don't always have to write accessor methods explicitly, but let's go through all the motions for now. The two kinds of accessors are writers and readers.

ruby> class Fruit
    |   def set_kind(k)  # a writer
    |     @kind = k
    |   end
    |   def get_kind     # a reader
    |     @kind
    |   end
    | end
   nil
ruby> f1 = Fruit.new
   #<Fruit:0xfd7e7c8c>
ruby> f1.set_kind("peach")  # use the writer
   "peach"
ruby> f1.get_kind           # use the reader
   "peach"
ruby> f1                    # inspect the object
   #<Fruit:0xfd7e7c8c @kind="peach">
Simple enough; we can store and retrieve information about what kind of fruit we're looking at. But our method names are a little wordy. The following is more concise, and more conventional:

ruby> class Fruit
    |   def kind=(k)
    |     @kind = k
    |   end
    |   def kind
    |     @kind
    |   end
    | end
   nil
ruby> f2 = Fruit.new
   #<Fruit:0xfd7e7c8c>
ruby> f2.kind = "banana"
   "banana"
ruby> f2.kind
   "banana"