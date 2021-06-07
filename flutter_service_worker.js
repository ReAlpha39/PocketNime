'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  ".git/COMMIT_EDITMSG": "e4d70140371bead39be825d2be81faa2",
".git/config": "f9f94c3f9df68fa9a5ba59c0f432dc43",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "58a74549ffc49f975c226d216b4d78b5",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/index": "b6e356e7021f13ef921543259ddd07ae",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "e7772a1fdfae2c598e9c6a2488bd654a",
".git/logs/refs/heads/gh-pages": "ccf94931bf89174dd7dd0ed16680b78e",
".git/logs/refs/heads/master": "87b0accf72f2942cb5b1f9d87f6c6ce0",
".git/logs/refs/remotes/origin/gh-pages": "aacc32bcfa885593a1eba909b518923f",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/08/528b610c40e9e35fce4752418fd33b266d71c9": "42a205665bc275b25d6e26d20399ec12",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/22/95154149be307ca2ac6be03baeba7c927bb862": "a89997be16f7c2c1a67db2145e6493ae",
".git/objects/2b/6be9b1e4ce1aebb97fa01f7bca3ec5e556250c": "41fb11905a17f10a768b9bbbb37d913a",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/39/3578dcf68c6cc1aee1d35e20c7b3471e48a718": "49980b8c1fbbcdd1b98b80491e656e42",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/49/fbb4ce9b59ec80e518cab13a154e88698d2747": "5308e7743d6dcf007474a2465ec6c360",
".git/objects/4d/e5d9dc6a8fdbd7227f41db24721843bfda5bbc": "c15e482d2df1a1470ed28a6ba6d13e2b",
".git/objects/4f/83fcb158cc89bb72fae75f6bda010644c0ffbb": "a93c5f3853eb9a84b90ab255b0674103",
".git/objects/54/211b62af8ac216fd316555e6ace6398b800344": "051cc0f00e02d3a9ae59aa2e6699fa02",
".git/objects/54/c97bad6fd9aaa926ce66567be436dfa6bd136f": "1c58e13c8cc20c8b7d10c1d6321ad434",
".git/objects/64/f2be792ec0592e9ce589623e3aaa30d3090eed": "7ad7f49ce7255ca91d2482cf933c9961",
".git/objects/69/aea7da46549fc003b6d535bc8a9b58b5065873": "49c6aa2a89358f48d31228a3fc88768d",
".git/objects/6d/2782f734de63d20ad4d8d97858ed7da52f2647": "656c0425ebe123f0d661fe6db531c08b",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/7f/28f5c46d977755f98953a703f7b454aab07855": "9d67caf6c30f28a08806e7715059c32c",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/93/989d63397b1e6cc66c570cd436904c894547f1": "ce7b6c2a08604ae5fd8dfd2b6b0635cc",
".git/objects/9f/ec24357858cf5d3abdca4df796056aceac3ef4": "51aef90ec130f29b0ee1ba9e00344f57",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a5/b34a06cd048fdd6e95a446a8c95f72141578bd": "8d68442694bfb6d2c7cc7714ebfd5331",
".git/objects/a8/a1e5e1c08736b275e585c29670013688db4dad": "9e9d7dcdc1152511586884a5acc2fb2b",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/aa/aedb8dab10db0ac7722be1c8d17fd6abf8b5c1": "d0b56bb07adff6d7d68dfc1f18896a9a",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/b1/be5b0eb52c08001c5ccfee8b9a2bd574753b39": "157f75a2a94de81e2c7a95ce174d8f1e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/cf/fe7ca4bedcde0a9db20cda82ab98f882dbdae9": "dc82db33544b5302b293026fb6b4b234",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/c8d407fedb9ea31d036bc2e58a5287ec4cc0e1": "822328816f2207c7ce620e7af36dfebc",
".git/objects/ea/9cfae2b5311c52ade7d752f6e06a1f8862515f": "803eab84f34401a0137b5d371c91fab9",
".git/objects/f2/5827585d7f4267cf72478087beb4217e1663f8": "f05c16d451e181adffaf724916d2322b",
".git/objects/fa/0c3270eb9b3dd82ee20cce74aae499e80265ca": "51af6ab889b628ddf22c221fd504c4fe",
".git/ORIG_HEAD": "4e53c0fbc058a323d758ae532a45bd23",
".git/refs/heads/gh-pages": "4e53c0fbc058a323d758ae532a45bd23",
".git/refs/heads/master": "777c54c02ad0eac339b7e06f8de8d3c2",
".git/refs/remotes/origin/gh-pages": "4e53c0fbc058a323d758ae532a45bd23",
"assets/AssetManifest.json": "db2475f7b86416774b3f0857ca33b552",
"assets/assets/circular_progress.gif": "baa9b445b6310c78a15d4a56506d771a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "1de2b171542d73daf1ab5c30ec381279",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "835e565655806958b6c7b3aff9f7d658",
"/": "835e565655806958b6c7b3aff9f7d658",
"main.dart.js": "81c596698f2cdc494bf778e270892ed1",
"manifest.json": "62e7fecfb47e2bc0f160b76ccb9e53fa",
"version.json": "5940fca6d095001d336a9c437a587693"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
