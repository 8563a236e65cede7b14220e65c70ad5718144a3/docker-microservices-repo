import random
import dahuffman


def square_odds(int_arr):
    for i in range(len(int_arr)):
        if i % 2 == 1:
            int_arr[i] *= int_arr[i]


def huffman_encode(str_list):
    result = dict()
    codec = dahuffman.HuffmanCodec.from_data("".join(str_list))
    for i in str_list:
        print(i)
        result.update({i: codec.encode(i)})
    result.update({"_codec": codec})
    return result


def huffman_decode(encoded_dict, string):
    return encoded_dict["_codec"].decode(string)


def main():
    int_arr = [random.randint(1, 20) for x in range(50)]
    print(int_arr)
    square_odds(int_arr)
    print(int_arr)

    str_array = ["Hello", "World", "A", "Z", "B", "Python", "computer"]
    huffman_encoded = huffman_encode(str_array)
    print(huffman_encoded)

    huffman_decoded = huffman_decode(huffman_encoded, huffman_encoded["computer"])
    print(huffman_decoded)


if __name__ == "__main__":
    main()
