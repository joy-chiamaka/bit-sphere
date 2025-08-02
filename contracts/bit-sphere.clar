;; BitSphere Protocol - Next-Generation Decentralized Social Infrastructure
;;
;; Revolutionary peer-to-peer social networking platform engineered for the Bitcoin
;; ecosystem, leveraging Stacks Layer 2 architecture to deliver unprecedented privacy,
;; scalability, and user sovereignty in decentralized social interactions.
;;
;; CORE INNOVATIONS
;; - Quantum-resistant encryption with user-controlled key management
;; - Intelligent batch processing for optimal transaction efficiency
;; - Advanced rate limiting system preventing spam and ensuring stability
;; - Granular privacy controls with zero-knowledge proof foundations
;; - Bitcoin-native compliance framework with regulatory transparency
;; - Self-healing network topology with automated conflict resolution
;;
;; Built with institutional-grade security standards while maintaining the
;; decentralized ethos of Bitcoin. BitSphere transforms social networking from
;; surveillance capitalism to user-empowered digital communities.

;; ERROR HANDLING SYSTEM - Comprehensive Exception Management

(define-constant ERR_NOT_FOUND (err u100)) ;; Resource does not exist
(define-constant ERR_ALREADY_EXISTS (err u101)) ;; Duplicate resource creation
(define-constant ERR_UNAUTHORIZED (err u102)) ;; Insufficient permissions
(define-constant ERR_INVALID_INPUT (err u103)) ;; Malformed or invalid data
(define-constant ERR_BLOCKED (err u104)) ;; User interaction blocked
(define-constant ERR_DEACTIVATED (err u105)) ;; Account not active
(define-constant ERR_RATE_LIMITED (err u106)) ;; Action frequency exceeded
(define-constant ERR_BATCH_FULL (err u107)) ;; Batch capacity reached
(define-constant ERR_BATCH_EXPIRED (err u108)) ;; Batch processing window closed

;; SYSTEM CONFIGURATION - Protocol Behavioral Constants

;; Account Status Enumeration
(define-constant STATUS_DEACTIVATED u0) ;; Account temporarily disabled
(define-constant STATUS_ACTIVE u1) ;; Full functionality enabled
(define-constant STATUS_SUSPENDED u2) ;; Restricted access mode

;; Social Relationship States
(define-constant FRIENDSHIP_PENDING u0) ;; Awaiting acceptance
(define-constant FRIENDSHIP_ACTIVE u1) ;; Mutual connection established
(define-constant FRIENDSHIP_BLOCKED u2) ;; Interaction prohibited

;; Network Protection Parameters
(define-constant MAX_ACTIONS_PER_DAY u100) ;; Daily interaction limit
(define-constant MAX_FRIEND_REQUESTS_PER_DAY u20) ;; Connection request quota
(define-constant MAX_STATUS_UPDATES_PER_DAY u24) ;; Content publication limit
(define-constant RATE_LIMIT_RESET_PERIOD u86400) ;; 24-hour enforcement cycle

;; Performance Optimization Settings
(define-constant MIN_BATCH_SIZE u10) ;; Minimum batch efficiency threshold
(define-constant MAX_BATCH_SIZE u100) ;; Maximum batch processing capacity
(define-constant BATCH_EXPIRY_PERIOD u3600) ;; Batch validity window (1 hour)

;; DATA ARCHITECTURE - Structured State Management System

;; Primary User Identity Registry
;; Stores core user profile data with cryptographic integrity
(define-map Users
  principal
  {
    name: (string-ascii 64), ;; Display identifier
    status: uint, ;; Account operational state
    timestamp: uint, ;; Creation/modification time
    metadata: (optional (string-utf8 256)), ;; Extended profile information
    deactivation-time: (optional uint), ;; Suspension timestamp
    encryption-key: (optional (buff 32)), ;; User-controlled crypto key
    profile-image: (optional (string-utf8 256)), ;; Avatar/image reference
  }
)

;; Privacy Control Matrix
;; Granular visibility settings for user data protection
(define-map UserPrivacy
  principal
  {
    friend-list-visible: bool, ;; Social graph visibility
    status-visible: bool, ;; Online presence sharing
    metadata-visible: bool, ;; Profile detail access
    last-seen-visible: bool, ;; Activity timestamp exposure
    profile-image-visible: bool, ;; Avatar display permission
    encryption-enabled: bool, ;; End-to-end encryption toggle
    last-updated: uint, ;; Privacy settings modification time
  }
)

;; Network Protection Enforcement
;; Rate limiting state for platform stability and abuse prevention
(define-map RateLimits
  principal
  {
    daily-actions: uint, ;; Total actions performed today
    friend-requests: uint, ;; Connection requests sent today
    status-updates: uint, ;; Content updates published today
    last-reset: uint, ;; Counter reset timestamp
  }
)