CC = opencc_dict
CFLAGS = -f text -t ocd2

all: opencc/SMCharacters.ocd2 opencc/s2m.json

opencc/SMCharacters.ocd2: dicts/SMCharacters.txt
	$(CC) $(CFLAGS) -i $< -o $@

clean:
	rm -rf opencc/*.ocd2

.PHONY: all clean
