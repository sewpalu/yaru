.PHONY: all

clean:
	rm -r build

rebuild:
	mkdir -p build
	meson build
	meson compile -C build
	sudo meson install -C build

all:
	cd build; sudo ninja install

