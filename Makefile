PREFIX ?= /usr/local/bin

all: combine-book-parts

# Moves the build binary to the installation prefix
install: combine-book-parts
	cp -i `pwd`/combine-book-parts ${PREFIX}/combine-book-parts

# Alternate to install; create a symlink in the installation prefix to this
# directory
symlink: combine-book-parts
	ln -is `pwd`/combine-book-parts ${PREFIX}/combine-book-parts
