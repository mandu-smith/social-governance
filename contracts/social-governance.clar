;; title: social-governance
;; version:
;; summary:
;; description:

;; Decentralized Social Content Platform Smart Contract
;;
;; A comprehensive blockchain-based social platform enabling decentralized content creation,
;; community-driven upvoting, reputation-based governance, content moderation, and premium
;; promotional features with STX-based monetization.

;; ERROR CONSTANTS AND VALIDATION CODES

(define-constant ERR-UNAUTHORIZED-ACCESS (err u1000))
(define-constant ERR-DUPLICATE-VOTE-ATTEMPT (err u1001))
(define-constant ERR-CONTENT-NOT-FOUND (err u1002))
(define-constant ERR-SELF-VOTING-FORBIDDEN (err u1003))
(define-constant ERR-VOTE-REMOVAL-TIME-EXPIRED (err u1004))
(define-constant ERR-INVALID-INPUT-PARAMETER (err u1005))
(define-constant ERR-TRANSACTION-FAILED (err u1006))
(define-constant ERR-TEXT-LENGTH-EXCEEDED (err u1007))
(define-constant ERR-DESCRIPTION-TOO-LONG (err u1008))
(define-constant ERR-INVALID-CONTENT-REFERENCE (err u1009))
(define-constant ERR-EMPTY-INPUT-PROVIDED (err u1010))

;; PLATFORM CONFIGURATION CONSTANTS

(define-constant default-platform-fee-percentage u5)
(define-constant minimum-reputation-for-promotion u10)
(define-constant vote-reversal-time-limit-blocks u10)
(define-constant maximum-commission-rate u20)
(define-constant maximum-reputation-threshold u1000)
(define-constant minimum-boost-payment-amount u100000)
(define-constant maximum-category-text-length u20)
(define-constant maximum-description-text-length u50)

;; DATA STORAGE STRUCTURES

;; Primary content storage with comprehensive metadata
(define-map published-content-database
  { post-id: uint }
  {
    author-principal: principal,
    publication-timestamp: uint,
    total-upvote-count: uint,
    content-category-tag: (string-ascii 20),
    is-currently-active: bool
  }
)