def main():
    questions = [
        {
            "question": "What TCP protocol is recorded in the network packet? Please enter the port as well",
            "format": "ftp:1337"
        },
        { 
            "question": "What is the SSH version that could be affected by a security bug? Is it a client or server?",
            "format": "OpenSSH_6.9_server"
        },
        { 
            "question": "How many SSH/SFTP sessions occurred during the incident? Also, how many successfully executed commands were there during the last session?",
            "format": "1_3"
        },
        { 
            "question": "What is the name of the malicious script uploaded during the SFTP session?",
            "format": ""
        },
        { 
            "question": "What are the username and password used by the malicious actor?",
            "format": "username_password"
        },
        { 
            "question": "Could you tell me the name of the file affected by the malicious script?",
            "format": "/path/to/file"
        },
        { 
            "question": "What was the content of the message file before it was encrypted?",
            "format": ""
        },
    ]

    answers = [
        "ssh:23425",
        "OpenSSH_4.3_client",
        "4_8",
        "y6V71q8PnAdxCmEaDGtsrSwRcMbhl9UIBiXfJ23v_eo504TuWkFONjzLHpYKQgZ",
        "pi_MYQRqNHZ51",
        "/tmp/message",
        "is_this_truly_confidential"
    ]

    print("Please answer the provided questions:")

    correct_answers = 0

    for index, q in enumerate(questions, start=1):
        print(f"\nQ{index}:")
        print("Question: " + q["question"])
        print("Format: " + q["format"])
        user_answer = input("Answer: ")

        if user_answer.strip() == answers[index - 1].strip():
            correct_answers += 1
            print("Correct")
        else:
            print("Incorrect")
            return
    
    if correct_answers == len(questions):
        print("\nCongrats! Flag: TCP1P{r3min1scing_s0meth1ng_b4ck_in_th3_0ld_days_a01fef0086}")

if __name__ == "__main__":
    main()