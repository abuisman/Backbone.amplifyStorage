_.extend(Backbone.LocalStorage.prototype, {
  localStorage: function() {
    return {
      length: amplify.store.length,
      getItem: function(name) {
        return amplify.store(name);
      },
      setItem: function(name, value) {
        return amplify.store(name, value);
      },
      removeItem: function(name) {
        return amplify.store(name, null);
      }
    };
  }
});
