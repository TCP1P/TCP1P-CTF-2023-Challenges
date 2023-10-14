def main():
    questions = [
        {
            "question": "What is the hostname of the server?",
            "format": "example-hostname"
        },
        { 
            "question": "What applications does the system administrator deploy on this server? Also include the application version",
            "format": "Example:13.37"
        },
        { 
            "question": "How many plugins are installed on this WordPress?",
            "format": "2"
        },
        { 
            "question": "Can you give me the CVE ID that the attacker used to attack this server?",
            "format": "CVE-2020-13337"
        },
        { 
            "question": "By utilizing CVE-2023-4521, the attacker seems to have placed another PHP backdoor on this server. What is the full location where the attacker put the backdoor? (It looks like there is something suspicious in the WordPress plugins)",
            "format": "/path/to/file"
        },
        { 
            "question": "Can you provide the file that the attacker used for privilege escalation?",
            "format": "/path/to/file"
        },
        { 
            "question": "After gaining root access, the attacker insert another dangerous file? Please provide us with the full location/path of that file.",
            "format": "/path/to/file"
        },
        { 
            "question": "Based on the file planted by the attacker, can you give me the IP and port of the server used by the attacker?",
            "format": "160.32.183.32:1337"
        },
    ]

    answers = [
        "forensic-tcp1p",
        "WordPress:6.3.1",
        "4",
        "CVE-2023-4521",
        "/var/www/html/wordpress/wp-content/plugins/jetpack/class.jetpacks.php",
        "/etc/passwd",
        "/root/.bashrc",
        "159.223.46.222:9999"
    ]

    print("Please answer the provided questions:")

    correct_answers = 0

    for index, q in enumerate(questions, start=1):
        print(f"\nQ{index}:")
        print("Question: " + q["question"])
        print("Format: " + q["format"])
        user_answer = input("Answer: ")

        if user_answer.strip().lower() == answers[index - 1].lower():
            correct_answers += 1
            print("Correct")
        else:
            print("Incorrect")
            return
    
    if correct_answers == len(questions):
        print("\nCongrats! Flag: TCP1P{y0u_f0und_m3_H4h4hHH44h44_B18DeF73F73FFe}")

if __name__ == "__main__":
    main()
