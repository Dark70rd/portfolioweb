'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "cc58774df8c28ba183d0434b630487b9",
".git/config": "b9cb1d143fed5347fb96cc8e40eabac0",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "57d90f77061ee679ce162868d02d4925",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "7d96fa1c130904567f1fe26d1991126b",
".git/logs/refs/heads/gh-pages": "323f8ab8bca41682d2c8caea9cb296e5",
".git/logs/refs/remotes/origin/gh-pages": "02cf9f4a635971f18697fd9042ac86ce",
".git/objects/93/b363f37b4951e6c5b9e1932ed169c9928b1e90": "c8d74fb3083c0dc39be8cff78a1d4dd5",
".git/objects/97/08d71a94186c5e8b0b95d1d106ab241682b108": "5e08729b9edc31fccdf6c5e52d91aced",
".git/objects/9c/b4c839c96a55bd4728b75ee8fe07028616af82": "8f49b79155aefb399a9759c8adbd9105",
".git/objects/a7/3f4b23dde68ce5a05ce4c658ccd690c7f707ec": "ee275830276a88bac752feff80ed6470",
".git/objects/a8/35210b80099ad6f75b29cbd28e6fce7fd5b735": "5d42c79f3e12d3be996fa6a5efdf4b11",
".git/objects/ad/ced61befd6b9d30829511317b07b72e66918a1": "37e7fcca73f0b6930673b256fac467ae",
".git/objects/b4/5557d0b0bdf0948d512d70cc68f5192590b039": "7cf9b3050691550924b8ad1d717ad581",
".git/objects/b7/13249af780fc272448468aad7e2da09ea7799a": "19ffab887fe2f7d4027e2d1daf99bd5d",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/cdf14920410b89005c6a2c29f2d451aaf576f5": "9f6006eb8668bc1c3145b87a746ab36d",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/3e39bd49dfaf9e225bb598cd9644f833badd9a": "666b0d595ebbcc37f0c7b61220c18864",
".git/objects/c8/3af99da428c63c1f82efdcd11c8d5297bddb04": "144ef6d9a8ff9a753d6e3b9573d5242f",
".git/objects/c8/d0320ea3726c0edea95ced9730dcab481d9e6a": "6ca11d40eeb48a1507616506a6960007",
".git/objects/cc/4ac79316501704dbef72f90da4e05f9437df59": "9aed48e6c6296f3dd6a55f056cf31cf6",
".git/objects/ce/9335af4c6b71180401e93413bfcfac845eb649": "910edecf4932b7d0ddb35955d8b829c2",
".git/objects/d1/1f4f0ddf2dee6c222a79c58a31ade324bee3aa": "a61fbfcc595b2ea514e9eed5d502f900",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/5b1d3499b3b3d3989fa2a461151ba2abd92a07": "a072a09ac2efe43c8d49b7356317e52e",
".git/objects/e0/0ceb54bff2b3131d2f18dd0188312b9d3dc2db": "d440605362505d6f272f67929204269a",
".git/objects/e5/6ec72153e907e0e3b1a998b83bbd5e66d5e97c": "cc10a9aa0d99e2f7bf0f05c62fd1e180",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/eb/8cbc91e5c490edae3bd3b933c1d2131a436e1e": "922bec09ff92b82320cf8daa564aa75f",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/d990a6b4a972cc2a0a4df30efc171244d37fe2": "404db3c3f07afc16a33b1b586b253d95",
".git/objects/f3/3e0726c3581f96c51f862cf61120af36599a32": "afcaefd94c5f13d3da610e0defa27e50",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f6/8c05937b5511e5991a72ff49446131610f6241": "a774c41fda6faf1e7f375a92e55efaa5",
".git/objects/f6/e6c75d6f1151eeb165a90f04b4d99effa41e83": "95ea83d65d44e4c524c6d51286406ac8",
".git/objects/fb/1eead504135749518ff7eb94a2a657c031862e": "945deb52639361aed92a72a21b305b8b",
".git/objects/fd/05cfbc927a4fedcbe4d6d4b62e2c1ed8918f26": "5675c69555d005a1a244cc8ba90a402c",
".git/objects/02/43b7a80822544342e15fcafa848d87bf9d07a2": "d5c85e8592fbeeb168780bb5d3a4f245",
".git/objects/02/fcaa89290387c545162f20b1fb2d5db953b7af": "6b60ceb0350854129cac190c3bd9fd56",
".git/objects/08/27c17254fd3959af211aaf91a82d3b9a804c2f": "360dc8df65dabbf4e7f858711c46cc09",
".git/objects/1c/f8e136953ffb8914939706808cc4c3b987e5b3": "ac9a9d34cc97260f44f710e616f4051f",
".git/objects/1f/b50a5463421743343cc1de848a7507d6d6a457": "94008bd114ab6ee665f2947bc3ccf3c7",
".git/objects/1f/d8fe49bab7c583a3df2280b3a3723fba24eadb": "920c4e50173065e93f7c40c058c31813",
".git/objects/23/61883db7ca990f7622b44c5ef60423ce81ec2b": "85106627e41428ef77289156a2629a1f",
".git/objects/29/934d71ba890b0d3321f3af89a7edc2b4923701": "c2bcdcbdb708166664db96fd22a9e591",
".git/objects/2b/6641dcb0915fe1cf6974c9f9e0ecb13140419b": "e7636c9062aeb720b542b7bf10a37ad7",
".git/objects/33/2a4f021d1632b5358680370c25e7105718cf91": "436e94c349abbfe5ba2b37ab991a4780",
".git/objects/34/cbeb3a27cc7bccb4a04af435827bc565b3bc82": "d4a55e453a214f090e1d9c9ca3d75e4f",
".git/objects/3a/8cda5335b4b2a108123194b84df133bac91b23": "1636ee51263ed072c69e4e3b8d14f339",
".git/objects/3a/d45180bfb0ba66c4076e478c6e7505b08abb74": "2554fe8c5b53276649da1340409cd6d6",
".git/objects/3e/201a07390401d74c096209e87bd9248f841617": "9c27faf596816890f13b5805948fdb05",
".git/objects/4a/26d84721141296509e297bc770a2e73249a124": "4fe2c83dc22aba7df025e19f27b64625",
".git/objects/4b/0c03f4f3061a8ae1a9c073d08ad5f9f653f6ea": "77d7c013f5cbd2b09e0336ddae577433",
".git/objects/4f/40dabe4430b4d7288c6ae92d8fc3e17cf8e410": "7c1843130f2c3787540ded5445c7793a",
".git/objects/4f/49fa04fd8cf098132821ab292fbc66f6954aeb": "340ce75f9b098fd77b111a0308472b27",
".git/objects/51/03e757c71f2abfd2269054a790f775ec61ffa4": "d437b77e41df8fcc0c0e99f143adc093",
".git/objects/59/b1e13d3363da1d8cae85e7996da4414b2b24c5": "2a7a7a5ddf4a254a8a57559928dd095d",
".git/objects/5a/3b605c492b603ed9267cc5189f47784678635a": "3c246337a4b939cd818ec7c344181887",
".git/objects/5b/35472309889173bbcc2afe39c7aaeefd3f4091": "66885f3319de63c6992f70820959e38c",
".git/objects/61/87e4a491bbde78fbe3d734449e50145e5fc304": "c27780f5602de374a1695a1f6dc8ce21",
".git/objects/62/c9b3ca11f1d908f7a8fe1638f56bfde9359718": "6485b9050599fbab27dd187e464aab52",
".git/objects/65/72c4c4c64ce71f10d190d0a5a141293403dd68": "73dab594b3ac0e53518f42250de21b88",
".git/objects/66/3d3b8baaa12c121d904ba893bccd0a8ea2916d": "912da392ee30c6ad9a311015b6520f55",
".git/objects/68/43fddc6aef172d5576ecce56160b1c73bc0f85": "2a91c358adf65703ab820ee54e7aff37",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6e/08070575a63c870039d44175e86f1cfee0da7a": "2702f15700cde2722e2f658f690eecc6",
".git/objects/6f/7661bc79baa113f478e9a717e0c4959a3f3d27": "985be3a6935e9d31febd5205a9e04c4e",
".git/objects/71/6307513325b7dbee79fcfb3ec93905beb754a9": "9404865a6257341ff3a144c9af2fb823",
".git/objects/7c/3463b788d022128d17b29072564326f1fd8819": "37fee507a59e935fc85169a822943ba2",
".git/objects/7f/ca5cfe8acd210fda7644d5e2571471c38b9ad7": "9d865c3da85f238f03e94a8387c1ff80",
".git/objects/82/039646eae58381941a128edf3dd254c98a2961": "ba71a4099c57c699fe2ac9b609735b8e",
".git/objects/85/63aed2175379d2e75ec05ec0373a302730b6ad": "997f96db42b2dde7c208b10d023a5a8e",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/21753cdb204192a414b235db41da6a8446c8b4": "1e467e19cabb5d3d38b8fe200c37479e",
".git/objects/8f/54f40d6590a82d26aefd698922cb39816953d0": "0db9fb4dced574c8bf5b11b01ae422bf",
".git/refs/heads/gh-pages": "1f279ccbf08bbbb1de6656846f654797",
".git/refs/remotes/origin/gh-pages": "1f279ccbf08bbbb1de6656846f654797",
"assets/AssetManifest.bin": "e758e6dbf7f5a01a50aed89a1d4edd2e",
"assets/AssetManifest.bin.json": "f61a41e543e87886769e0d470637691a",
"assets/assets/images/dark-bg-icon.png": "1734f03812215f998703900567fac113",
"assets/FontManifest.json": "c75f7af11fb9919e042ad2ee704db319",
"assets/fonts/MaterialIcons-Regular.otf": "e2d077cd9236da3a5c50a719adb1e982",
"assets/NOTICES": "d52dfd0e6d4784cebdc8887bba32aaaa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "ad72f00c2e15fe9de0e809de8ee2f32e",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "6b7d94f98dfe88d224065fbb2131059a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "0c10d11e45bc5a8d1937af3cb8f85fd3",
"/": "0c10d11e45bc5a8d1937af3cb8f85fd3",
"main.dart.js": "257a9df7af217d25642b0f59bc4e9ec0",
"manifest.json": "2a27fb33f6d0532222215a292b9138b5",
"version.json": "a278e46a1de5ba4354fffb22e9652252"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
