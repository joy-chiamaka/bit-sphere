# BitSphere Protocol

> **Next-Generation Decentralized Social Infrastructure**

[![Clarity Version](https://img.shields.io/badge/clarity-3.1-blue.svg)](https://docs.stacks.co/clarity)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Tests](https://img.shields.io/badge/tests-vitest-brightgreen.svg)](https://vitest.dev/)
[![Stacks](https://img.shields.io/badge/built%20on-stacks-orange.svg)](https://stacks.co/)

BitSphere is a revolutionary peer-to-peer social networking platform engineered for the Bitcoin ecosystem, leveraging Stacks Layer 2 architecture to deliver unprecedented privacy, scalability, and user sovereignty in decentralized social interactions.

## 🌟 Core Innovations

- **🔐 Quantum-resistant encryption** with user-controlled key management
- **⚡ Intelligent batch processing** for optimal transaction efficiency
- **🛡️ Advanced rate limiting system** preventing spam and ensuring stability
- **🕶️ Granular privacy controls** with zero-knowledge proof foundations
- **₿ Bitcoin-native compliance** framework with regulatory transparency
- **🔄 Self-healing network topology** with automated conflict resolution

## 🏗️ Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    BitSphere Protocol                       │
│                  (Stacks Layer 2)                          │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐  │
│  │   User Identity │  │ Privacy Control │  │ Rate Limits │  │
│  │    Registry     │  │     Matrix      │  │ Protection  │  │
│  └─────────────────┘  └─────────────────┘  └─────────────┘  │
│                                                             │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────┐  │
│  │ Social Network  │  │ Batch Processing│  │  Security   │  │
│  │   Management    │  │  Optimization   │  │ Monitoring  │  │
│  └─────────────────┘  └─────────────────┘  └─────────────┘  │
│                                                             │
├─────────────────────────────────────────────────────────────┤
│                     Bitcoin Layer 1                        │
│              (Settlement & Final Security)                 │
└─────────────────────────────────────────────────────────────┘
```

## 📋 Table of Contents

- [Quick Start](#-quick-start)
- [Smart Contract Architecture](#-smart-contract-architecture)
- [Data Models](#-data-models)
- [Core Functions](#-core-functions)
- [Security Features](#-security-features)
- [Rate Limiting](#-rate-limiting)
- [Privacy System](#-privacy-system)
- [Development](#-development)
- [Testing](#-testing)
- [Deployment](#-deployment)
- [Contributing](#-contributing)

## 🚀 Quick Start

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) >= 2.0
- [Node.js](https://nodejs.org/) >= 18
- [TypeScript](https://www.typescriptlang.org/) >= 5.0

### Installation

```bash
# Clone the repository
git clone https://github.com/joy-chiamaka/bit-sphere.git
cd bit-sphere

# Install dependencies
npm install

# Run tests
npm test

# Check contracts
clarinet check
```

## 🏛️ Smart Contract Architecture

### Core Components

```
BitSphere Contract Structure
├── Error Handling System
├── Configuration Constants
├── Data Architecture
│   ├── Users Registry
│   ├── Privacy Controls
│   ├── Rate Limiting
│   ├── Batch Processing
│   ├── Activity Monitoring
│   ├── Social Networks
│   └── Security Blocking
├── Core Logic Functions
└── Public API Interface
```

### Error Handling

BitSphere implements a comprehensive error management system:

| Error Code | Constant | Description |
|------------|----------|-------------|
| `100` | `ERR_NOT_FOUND` | Resource does not exist |
| `101` | `ERR_ALREADY_EXISTS` | Duplicate resource creation |
| `102` | `ERR_UNAUTHORIZED` | Insufficient permissions |
| `103` | `ERR_INVALID_INPUT` | Malformed or invalid data |
| `104` | `ERR_BLOCKED` | User interaction blocked |
| `105` | `ERR_DEACTIVATED` | Account not active |
| `106` | `ERR_RATE_LIMITED` | Action frequency exceeded |
| `107` | `ERR_BATCH_FULL` | Batch capacity reached |
| `108` | `ERR_BATCH_EXPIRED` | Batch processing window closed |

## 📊 Data Models

### User Identity Registry

```clarity
(define-map Users
  principal
  {
    name: (string-ascii 64),           ;; Display identifier
    status: uint,                      ;; Account operational state
    timestamp: uint,                   ;; Creation/modification time
    metadata: (optional (string-utf8 256)),  ;; Extended profile information
    deactivation-time: (optional uint),      ;; Suspension timestamp
    encryption-key: (optional (buff 32)),    ;; User-controlled crypto key
    profile-image: (optional (string-utf8 256)), ;; Avatar/image reference
  }
)
```

### Privacy Control Matrix

```clarity
(define-map UserPrivacy
  principal
  {
    friend-list-visible: bool,         ;; Social graph visibility
    status-visible: bool,              ;; Online presence sharing
    metadata-visible: bool,            ;; Profile detail access
    last-seen-visible: bool,           ;; Activity timestamp exposure
    profile-image-visible: bool,       ;; Avatar display permission
    encryption-enabled: bool,          ;; End-to-end encryption toggle
    last-updated: uint,                ;; Privacy settings modification time
  }
)
```

### Social Connection Registry

```clarity
(define-map Friendships
  {
    user1: principal,                  ;; First participant in relationship
    user2: principal,                  ;; Second participant in relationship
  }
  { status: uint }                     ;; Relationship operational state
)
```

## ⚙️ Core Functions

### Public API Interface

#### Profile Management

```clarity
;; Dynamic User Profile Management
(define-public (update-user-profile
    (name (optional (string-ascii 64)))
    (metadata (optional (string-utf8 256)))
    (encryption-key (optional (buff 32)))
    (profile-image (optional (string-utf8 256)))
  )
```

#### Privacy Controls

```clarity
;; Advanced Privacy Management System
(define-public (update-advanced-privacy-settings
    (friend-list-visible bool)
    (status-visible bool)
    (metadata-visible bool)
    (last-seen-visible bool)
    (profile-image-visible bool)
    (encryption-enabled bool)
  )
```

#### Performance Optimization

```clarity
;; Intelligent Batch Processing Optimization
(define-public (optimize-batch-size (user principal))

;; Manual Batch Configuration
(define-public (set-batch-size (new-size uint))
```

#### Session Management

```clarity
;; Session Management and Security Tracking
(define-public (record-login))
```

## 🛡️ Security Features

### Multi-Layer Security Architecture

```
Security Layers
├── Rate Limiting Engine
│   ├── Daily Action Limits (100/day)
│   ├── Friend Request Limits (20/day)
│   ├── Status Update Limits (24/day)
│   └── Intelligent Reset Mechanism
├── User Blocking System
│   ├── Bidirectional Blocking
│   ├── Timestamp Tracking
│   └── Interaction Prevention
├── Account Status Management
│   ├── Active Verification
│   ├── Deactivation Controls
│   └── Suspension Handling
└── Activity Monitoring
    ├── Login Tracking
    ├── Action Analytics
    └── Behavior Analysis
```

### Access Control

- **Principal-based authentication** via Stacks blockchain
- **Status verification** for all user interactions
- **Rate limiting enforcement** across all actions
- **Block relationship validation** for safety

## ⏱️ Rate Limiting

BitSphere implements intelligent rate limiting to maintain network stability:

### Daily Limits

| Action Type | Daily Limit | Reset Period |
|-------------|-------------|--------------|
| Total Actions | 100 | 24 hours |
| Friend Requests | 20 | 24 hours |
| Status Updates | 24 | 24 hours |

### Intelligent Reset Mechanism

The system automatically resets counters after the 24-hour period, allowing for continuous platform usage while preventing abuse.

```clarity
;; Advanced Rate Limiting with Intelligent Reset
(define-private (check-rate-limit
    (user principal)
    (action-type uint)
  )
```

## 🕶️ Privacy System

### Granular Privacy Controls

Users have complete control over their data visibility:

- **Friend List Visibility**: Control who can see your social connections
- **Status Visibility**: Manage online presence sharing
- **Metadata Visibility**: Control profile detail access
- **Last Seen Visibility**: Manage activity timestamp exposure
- **Profile Image Visibility**: Control avatar display permissions
- **Encryption Toggle**: Enable/disable end-to-end encryption

### Zero-Knowledge Foundations

- User-controlled encryption keys
- Optional metadata encryption
- Privacy-preserving social graph analysis
- Selective data disclosure

## 🛠️ Development

### Project Structure

```
bit-sphere/
├── contracts/
│   └── bit-sphere.clar        # Main contract
├── tests/
│   └── bit-sphere.test.ts     # Test suite
├── settings/
│   ├── Devnet.toml            # Development config
│   ├── Testnet.toml           # Testnet config
│   └── Mainnet.toml           # Mainnet config
├── Clarinet.toml              # Project configuration
├── package.json               # Dependencies
├── tsconfig.json              # TypeScript config
├── vitest.config.js           # Test configuration
└── README.md                  # Documentation
```

### Development Commands

```bash
# Run contract syntax check
clarinet check

# Run comprehensive tests
npm test

# Watch mode for continuous testing
npm run test:watch

# Generate coverage reports
npm run test:report

# Start local development environment
clarinet integrate
```

## 🧪 Testing

BitSphere uses a comprehensive testing framework built on Vitest and Clarinet SDK:

```typescript
import { describe, expect, it } from "vitest";

describe("BitSphere Protocol Tests", () => {
  it("ensures contract deployment", () => {
    expect(simnet.blockHeight).toBeDefined();
  });
});
```

### Test Categories

- **Unit Tests**: Individual function validation
- **Integration Tests**: Multi-function workflow testing
- **Security Tests**: Rate limiting and access control validation
- **Privacy Tests**: Data visibility and encryption verification
- **Performance Tests**: Batch processing optimization validation

### Running Tests

```bash
# Run all tests
npm test

# Run with coverage
npm run test:report

# Watch mode for development
npm run test:watch
```

## 🚀 Deployment

### Network Configurations

BitSphere supports deployment across multiple Stacks networks:

#### Devnet (Development)

```toml
[network]
name = "devnet"
node_rpc_address = "http://localhost:20443"
```

#### Testnet (Testing)

```toml
[network]
name = "testnet"
node_rpc_address = "https://api.testnet.hiro.so"
```

#### Mainnet (Production)

```toml
[network]
name = "mainnet"
node_rpc_address = "https://api.hiro.so"
```

### Deployment Process

```bash
# Deploy to testnet
clarinet deployments generate --testnet

# Apply deployment
clarinet deployments apply -p ./.cache/deployments/testnet-plan.yaml
```

## 🔧 Configuration

### Protocol Parameters

Key configurable parameters for network optimization:

```clarity
;; Network Protection Parameters
(define-constant MAX_ACTIONS_PER_DAY u100)
(define-constant MAX_FRIEND_REQUESTS_PER_DAY u20)
(define-constant MAX_STATUS_UPDATES_PER_DAY u24)
(define-constant RATE_LIMIT_RESET_PERIOD u86400)

;; Performance Optimization Settings
(define-constant MIN_BATCH_SIZE u10)
(define-constant MAX_BATCH_SIZE u100)
(define-constant BATCH_EXPIRY_PERIOD u3600)
```

## 📈 Performance Optimization

### Intelligent Batch Processing

BitSphere implements machine learning-inspired batch optimization:

- **Dynamic batch sizing** based on usage patterns
- **Adaptive expiry windows** for optimal throughput
- **Load balancing** across network participants
- **Automatic optimization** based on historical performance

### Gas Optimization

- **Efficient data structures** for minimal storage costs
- **Optimized function calls** to reduce transaction fees
- **Batch processing** to amortize costs across operations
- **Smart caching** to minimize redundant computations

## 🤝 Contributing

We welcome contributions to BitSphere! Please follow our contribution guidelines:

### Development Process

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'Add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

### Code Standards

- Follow Clarity best practices
- Maintain comprehensive test coverage
- Document all public functions
- Use clear, descriptive variable names
- Include security considerations in all changes

### Testing Requirements

All contributions must include:

- Unit tests for new functionality
- Integration tests for workflow changes
- Security tests for access control modifications
- Performance tests for optimization changes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🌍 Community

- **Documentation**: [BitSphere Docs](https://docs.bitsphere.network)
- **Discord**: [Join our community](https://discord.gg/bitsphere)
- **Twitter**: [@BitSphereNet](https://twitter.com/BitSphereNet)
- **GitHub**: [BitSphere Repository](https://github.com/joy-chiamaka/bit-sphere)

## 🙏 Acknowledgments

- **Stacks Foundation** for the incredible Layer 2 infrastructure
- **Clarity Language** team for the secure smart contract environment
- **Bitcoin Community** for the foundational security model
- **Open Source Contributors** for making decentralized social networking possible

---

### Built with ❤️ for the Bitcoin ecosystem

*Transforming social networking from surveillance capitalism to user-empowered digital communities.*
