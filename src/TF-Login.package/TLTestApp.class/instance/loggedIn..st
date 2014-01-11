as yet unclassified
loggedIn: user
	"sent from onAnswer in self initialize."

	| loginHistory |
	user applicationProperties removeKey: 'failedLoginAttempts' ifAbsent: [  ].
	loginHistory := user applicationProperties at: 'Login History' ifAbsentPut: [ TLTestAppLoginHistory new ].
	loginHistory list add: (TLTestAppLoginHistoryItem when: user lastLogin where: user lastLoginFrom).
	loginComponent saveUser