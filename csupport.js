_ = {
    scopeStack: [],
    index: 0,
    push_scope_and_reset_index: function (name) {
	_.scopeStack.push (name);
	_.index = 0;
	return "";
    },
    pop_scope: function () {
	_.scopeStack.pop ();
	return "";
    },
    get_scope_name: function () {
	let top = _.scopeStack.pop ();
	_.scopeStack.push (top)
	return top;
    },
    gen_index: function () {
	_.index += 1;
	return "";
    },
    get_index: function () {
	return `${_.index}`;
    }
    
}
,
