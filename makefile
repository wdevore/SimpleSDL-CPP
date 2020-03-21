# Directories
S_DIR=source
B_DIR=build

# Files
S_FILES=$(S_DIR)/drawlines.cpp

# Output
EXEC=$(B_DIR)/sdl_app

# Build settings
CC=g++
# SDL options
CC_SDL=`sdl2-config --cflags --libs`


all:Build

Build:
	$(CC) -o $(EXEC) $(S_FILES) $(CC_SDL)

build_run:Build
	$(EXEC)

clean:
	rm -rf $(B_DIR)/*