# MedConnect - Blockchain & Deep Learning Powered Healthcare Solution (WIP)🌐🧠

MedConnect is an innovative healthcare solution that integrates blockchain technology with deep learning to provide secure, efficient, and accurate medical diagnostics. This project combines a blockchain infrastructure for data integrity and privacy with a deep learning model to deliver reliable diagnostic results, specifically focusing on lung conditions.

![MedConnect Logo](client/public/logo512.png)

## Table of Contents 📚

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Client Side](#client-side)
- [Blockchain Integration](#blockchain-integration)
- [Deep Learning Integration](#deep-learning-integration)
- [Model Evaluation](#model-evaluation)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview 🌟

MedConnect leverages cutting-edge blockchain and deep learning technologies to transform healthcare. By integrating these technologies, MedConnect ensures the security of medical records while providing accurate diagnostic services for conditions like pneumonia and COVID-19.

## Features ✨

- **Blockchain Security:** Ensures data integrity and privacy using smart contracts and decentralized storage.
- **Deep Learning Diagnostics:** Uses a ResNet-based model linked with the PulmoNet-ResNet_Diagnostic_Model for accurate medical diagnostics.
- **Multi-User Access:** Supports patient, hospital, and lab logins with secure access control.
- **Real-Time Data:** Enables real-time updates and access to patient data.

## Installation 🛠️

### Prerequisites

- Node.js
- Truffle
- Ganache
- MetaMask
- Remix IDE (for testing Solidity files)
- Python 3.x (for the deep learning model)
- TensorFlow, Keras, OpenCV, Numpy, Matplotlib (for PulmoNet)

### Steps

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sibi-Git/MedConnect-Blockchain_DeepLearning.git
   cd MedConnect-Blockchain_DeepLearning
   ```

2. **Install Dependencies:**
   ```bash
   npm install
   ```

3. **Start Ganache for Local Blockchain:**
   - Open Ganache and set up a workspace.
   - Make sure to configure the network in MetaMask to connect with Ganache.

4. **Compile & Migrate Contracts:**
   ```bash
   truffle compile
   truffle migrate --network ganache_local
   ```

5. **Link Deep Learning Model:**
   - Follow the installation instructions in the PulmoNet-ResNet_Diagnostic_Model repository.
   - Ensure the deep learning model is properly set up and connected to this project.

6. **Run the Application:**
   ```bash
   npm start
   ```

## Usage 🚀

### Client Side

The client-side code is located in the `client` directory. The front-end interacts with the blockchain via smart contracts deployed using Truffle.

### Blockchain Integration

- **Smart Contracts:** The smart contracts are written in Solidity and handle the management of patient, hospital, and lab information.
- **Testing:** The contracts are tested using Truffle and Remix IDE.

### Deep Learning Integration

The deep learning component is linked with the PulmoNet-ResNet_Diagnostic_Model, which is responsible for analyzing medical images and providing diagnostic results.

### Model Evaluation

After setting up the model, you can evaluate its performance using the scripts provided in the PulmoNet repository. Visualization of results is done using Matplotlib.

### Testing

The project includes automated tests for smart contracts using Truffle's built-in testing framework.

- **Test Script:** `testsimplestorage.sol`
- **Command:** 
  ```bash
  truffle test
  ```

## Contributing 🤝

We welcome contributions to MedConnect! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License 📜

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact 📧

- **Email:** [msibi.mail@gmail.com](mailto:msibi.mail@gmail.com)
- **LinkedIn:** [Sibi Marappan](https://www.linkedin.com/in/sibi-marappan/)
- **GitHub:** [Sibi-Git](https://github.com/Sibi-Git)

---
