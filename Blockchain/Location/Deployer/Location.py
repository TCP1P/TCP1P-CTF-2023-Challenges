import random 

qa_list = [
    {
        "q": """
contract StorageChallenge1 {
    bytes32 private user;
    address[2] private investor;
    uint64 private password;
    address private owner;
}
""",
        "a": 3
    },
    {
        "q": """
contract StorageChallenge2 {
    address[2] private investor;
    uint64 private password;
    bytes32 private user;
    address private owner;
}
""",
        "a": 2
    },
    {
        "q": """
contract StorageChallenge3 {
    address private owner;
    uint64 private password;
    bytes32 private user;
    address[2] private investor;
}
""",
        "a": 0
    },
    {
        "q": """
contract StorageChallenge4 {
    uint64 private password;
    bytes32 private user;
    address[2] private investor;
    bytes32 immutable  passphrase
    address private owner;
}
""",
        "a": 0
    },
    {
        "q": """
contract StorageChallenge5 {
    address[2] private investor;
    bytes32 private user;
    address private owner;
    uint64 private password;
}
""",
        "a": 3
    },
    {
        "q":"""
contract StorageChallenge6 {
    bytes32 immutable passphrase;
    uint64 private password;
    bytes32 private user;
    address[2] private investor;
    address private owner;
}
""",
    "a": 0
    },
    {
        "q": """
contract StorageChallenge7 {
    bytes32 private key;
    bytes4 private key_1;
    bytes16 private key_2;
    address private owner;
    uint256 private Token;
    address private immutable Investor;
    address private Courier;
    bytes32 private immuatble password;
}
""",
        "a": 0
    },
        {
        "q": """
contract StorageChallenge8 {
    bytes32 private key;
    bytes4 private key_1;
    bytes16 private key_2;
    address private owner;
    uint256 private Token;
    address private immutable Investor;
    address private Courier;
    uint256 private lump_sum;
    bytes32 private password;
}
""",
        "a": 6
    },
    {
        "q": """
contract StorageChallenge9 {
    bytes32 private unique_code;
    bytes32 private 12_key;
    address private owner;
    address[20] public player;
    bool private valid;
    bytes32 private password;
    address private enemy;
    bool private answered;
}
""",
        "a": 24
    },
    {
        "q": """
contract StorageChallenge10 {
    bool private string_true;
    bool private number_false;
    bool private user_true;
    bytes32 private username;
    bytes32 private password;
    bool public status_creds;
}
""",
        "a": 2
    }
]

final_qa = {
        "q": """
contract Hell_0 {
    uint256 private avail_money;
    uint256 private saved_money;
    bool private not_minus;
    address private owner;
    uint256[2] private geo_loc;
    bool private is_there;
    bool private there;
    address private wallet;
    address private receiver;
    address[20] private transaction_list;
    bytes32 private user_creds;
    uint256 private immutable user_in_uint;
    bytes32 private password;
    uint256 private password_uint;
    bool private correct_password;
    bool private is_user;
}
""",
        "a": 28
    }


def desc():
    print("""====Going to The Party====

To Find the party location
You need to solve a simple riddle regarding a SLOT
Answer everything correctly, and find the exact location!

Question: In which Slot is Password Stored?

You'll answer with and ONLY WITH [numbers]
ex: 
0,1,2,3,4.....99

Note: 
    -   Slot start from 0
    -   If it doesn't stored on SLOT, answer 0
""")

def main():
    desc()
    print("Identification Required for Guest")
    print()
    correct = 0
    selected_qa = random.sample(qa_list, 10)
    for qa in selected_qa:
        print("Question:")
        print(qa["q"])
        answer = int(input("Answer: "))
        if answer == qa["a"]:
            correct += 1
        print("===================================") 
    print("Final Question:")
    print(final_qa["q"])
    answer = int(input("Answer: "))
    if answer == final_qa["a"]:
        correct+=1;
    
    if correct == 11:
        print("Go to Camelleion Street 78")
        print("TCP1P{W00t_w00t_t0_th3_p4rty_47JHbddc}")
    else:
        print("You failed to attend the party...")
    
if __name__=="__main__":
    main()
