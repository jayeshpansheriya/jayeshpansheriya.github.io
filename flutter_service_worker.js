'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "5b69f1e2e0639566170e7d7cceefd3a4",
"assets/FontManifest.json": "d73e73ac392ba5e358cb9dbe7e52f7bd",
"assets/fonts/GoogleSans-Medium.ttf": "8d57e4014b18edef070d285746485115",
"assets/fonts/GoogleSansRegular.ttf": "b5c77a6aed75cdad9489effd0d5ea411",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/SourceSansPro-Regular.ttf": "c1678b46f7dd3f50ceac94ed4e0ad01a",
"assets/fonts/Spartan-Medium.ttf": "217d42a9239169e2273937872d6ed272",
"assets/images/jayesh.jpg": "6d7fa2f3f78173832d482b0db12c6d43",
"assets/LICENSE": "0563dbe252ce7093be72c5712b1daddc",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "abcbef4ab21a9ae48914ac5aefcef31c",
"/": "abcbef4ab21a9ae48914ac5aefcef31c",
"main.dart.js": "b68e51f06e42fbc71b720285844b9273",
"manifest.json": "d26c9189d5b479d84e7d1378a0bb6ac0"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
