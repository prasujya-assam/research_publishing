![image](https://github.com/user-attachments/assets/e3e7129b-8255-4ed0-8eca-900891ddfae2)

---

# Research Publishing System

## Vision

The Research Publishing System is designed to enable secure, decentralized publishing of academic papers on the Ethereum blockchain. By leveraging smart contracts, this system ensures transparency and immutability for research papers, facilitating trust and integrity in academic publishing.

## Flowchart

```plaintext
+-----------------+
|  Publish Paper  |
+-----------------+
         |
         v
+---------------------------+
| Generate Paper Hash       |
| (keccak256 of title,      |
|  author, IPFS hash,       |
|  timestamp)               |
+---------------------------+
         |
         v
+---------------------------+
| Check if Paper Exists     |
| (timestamp == 0?)         |
+---------------------------+
         |
         v
+---------------------------+
| Save Paper Details        |
| Emit PaperPublished Event |
+---------------------------+
```

## Contract Address

0x1b130cc6246cf27541cd4f4ca43f3d878edb05a4

![image](https://github.com/user-attachments/assets/612587f9-9ef2-4b6d-948a-680df4eeb91d)



## Future Scope

1. **Access Control**: Implement role-based access control for different types of users (e.g., authors, reviewers).
2. **Versioning**: Add support for versioning of papers to track revisions and updates.
3. **Enhanced Metadata**: Incorporate additional metadata such as keywords, abstracts, and DOI (Digital Object Identifier).
4. **Search Functionality**: Develop a search function to allow users to find papers by title, author, or keywords.

## Contact

For any questions or suggestions, please reach out to:

- **Name**: Prasuyjya Bora
- **Email**: prasujyaboss@gmail.com
---
