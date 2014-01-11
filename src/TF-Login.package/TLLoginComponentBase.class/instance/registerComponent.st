registration
registerComponent
	^ registerComponent ifNil: [ self defaultRegisterComponent ]