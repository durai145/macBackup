// Place third party dependencies in the lib folder
//
// Configure loading modules from the lib directory,
// except 'app' ones, 
requirejs.config({
    "baseUrl": "js/lib",
    "paths": {
      "app": "../app"
    },
    "shim": {
        "jquery.alpha": ["jquery"],
        "jquery.gama": ["jquery"],
        "jquery.beta": ["jquery"],
        "jquery.joint":["backbone"]
    }
});

// Load the main app module to start the app
requirejs(["app/main"]);
