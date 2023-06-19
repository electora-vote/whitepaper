#import "template.typ": *
#show: ams-article.with(
  title: "Electora Whitepaper",
  authors: (
    (
      name: "James Campbell",
      location: [Amsterdam, Netherlands],
      url: "https://github.com/theref"
    ),
  ),
  abstract: "Presenting a novel voting system designed to maximize privacy and minimize trust, while maintaining comprehensive verifiability. In this system, voters are able to validate their eligibility without disclosing their identities. Votes, securely encrypted, remain private throughout the voting period, and only become public once this period concludes. This feature provides an opportunity for any third party to audit the election process, from verifying the legitimacy of voter eligibility to the authenticity of the final vote tally, thereby promoting a robust and transparent democratic process.",
  bibliography-file: "bibliography.yml",
)
= Introduction
This paper discusses a voting system that utilises Sismo zkproofs @sismo, threshold.network's Conditions Based Decryption (CBD) @cbd, and the Arweave storage blockchain @arweave.
Sismo zkproofs, based on zero-knowledge proofs, allow voters to validate their eligibility while keeping their identities hidden.
In tandem, threshold CBD encrypts all votes, which remain inaccessible until a predetermined time-based condition - the conclusion of the voting period - is met.

The Arweave storage blockchain is used for storing encrypted votes and their associated zkproofs.
Arweave's unique blockweave architecture provides a permanent, immutable storage solution, preserving voting records for future audits and verification of the voting process.
When the voting period ends and the CBD condition is satisfied, all votes become public, enabling the verification of zkproofs and the counting of eligible votes.

The system is built entirely with public domain, open-source tools, enhancing transparency and offering users with the requisite technical skills the option to participate independently in the voting process.
This approach, combining Sismo zkproofs, threshold CBD, and the Arweave storage blockchain, contributes to a voting system that prioritises privacy, verifiability, and minimised trust.

// Modern democratic processes call for innovative approaches to uphold voter privacy while ensuring transparent and verifiable voting mechanisms. This paper delves into a novel voting system that leverages cutting-edge technologies such as Sismo's zk-proofs @sismo, Threshold.Network's Conditions Based Decryption (CBD) @cbd, and the Arweave storage blockchain @arweave, to uphold these principles. Each technology plays a key role in ensuring voter privacy, vote confidentiality, and the verifiability of the voting process.

// Zero-knowledge proofs (zk-proofs), a concept originating from cryptography, allow a party to prove knowledge of a secret without revealing the secret itself. Sismo's zk-proofs @sismo are utilized in this system to ensure voters can confirm their eligibility without the need to disclose their identities. This provides the cornerstone of privacy-preserving voting, enabling eligible voters to participate with assurance that their identities remain confidential.

// The system further employs Threshold.Network's Conditions Based Decryption (CBD) @cbd, a mechanism designed to encrypt all votes, keeping them private until a specified condition is met. In this case, the condition is time-based, meaning that upon the conclusion of the voting period, all votes transition from being encrypted to public. This ensures that during the voting process, the choices of individual voters remain confidential, enhancing the privacy of the voting system.

// Arweave's storage blockchain is utilised to store the encrypted votes and their associated zkproofs. Its unique blockweave architecture provides a data-rich, immutable, and permanently accessible storage solution. This is beneficial for the proposed voting system as it ensures the durability and permanence of voting records, which is critical for future audits and verification of the voting process.

// Once the CBD condition is met and the voting period ends, all votes, now in the public domain, can be accessed by anyone. The associated zkproofs can be verified, ensuring that only eligible votes are counted. This not only assures the integrity of the voting process but also provides a means for any third party to independently audit the election results.

// Finally, this system is built entirely with public domain, open-source tools. This not only enhances the system's transparency but also allows technically adept users to participate in the vote independently, albeit incurring network costs. In conclusion, the combination of Sismo zkproofs, threshold CBD, and the Arweave storage blockchain offers a robust framework for a privacy-preserving, verifiable, and trust-minimized voting system.

== Background

= Architecture

== Sismo
Sismo @sismo utilises zero-knowledge proofs (ZKPs) and privacy-preserving technologies to aggregate and selectively disclose personal data to applications.
In the context of our voting system, Sismo plays a crucial role in ensuring voters can validate their eligibility without revealing their identities, thus maintaining voter privacy.

Sismo is designed to respond to the challenges of fragmented digital identities, which are dispersed across the internet in a variety of platforms (both web2 and web3).
Sismo's communication protocol enables users to consolidate their digital identity data in a private Data Vault, which acts as a secure storage for personal data from various web2 and web3 accounts, credentials, and attestations.

The Data Vault acts as a prover, enabling users to generate ZKPs that attest ownership of granular pieces of data, referred to as Data Gems.
Using Sismo's communication protocol, users can generate proofs to verify claims about Data Gems they own.
These proofs are accepted and verified by verifiers integrated into applications, such as the voting system discussed in this paper.
This allows users to selectively disclose their data without revealing the associated Data Source, underpinning the privacy-preserving feature of the voting system.


== CBD
The voting system incorporates Threshold's Conditions Based Decryption (CBD) @cbd, a cryptographic technique for safeguarding sensitive information.
CBD encrypts all cast votes, rendering them private and inaccessible until a pre-specified condition is fulfilled.
In this particular application, the condition for decryption is time-based: the end of the voting period.

CBD operates on the principle of formal verification by a cohort of decentralized nodes within the Threshold network @threshold.
Only when the predefined conditions are provably satisfied does the data requester gain decryption rights.
In the context of our voting system, this means that the votes, initially encrypted by the voter (the data owner), remain completely unreadable to anyone until the voting period concludes.

The conditionality underlying CBD is versatile, allowing the data owner to define a range of access conditions.
In this voting system, a time-based condition is employed: votes become accessible for decryption only after a pre-specified period (the voting period) has elapsed.
This enhances the privacy of the voting process, ensuring that the votes of individual participants remain confidential until the predetermined time condition is met.

A key component of CBD is the Threshold Decryption scheme, which involves distributing a decryption key into multiple shares amongst decentralized nodes within the Threshold network.
A minimum number of these nodes, or a threshold, must participate in partial decryptions which are then combined on the requester's client to reconstruct the original plaintext data - the votes, in this case.

The application of CBD in this voting system represents a leap in privacy-preserving technologies, guaranteeing the confidentiality of votes during the voting process while allowing for public verification once the voting period concludes.

== Arweave
@arweave


