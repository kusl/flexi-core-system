<html manifest="/cache.manifest">
    <head>
        <title>Offline</title>
    </head>
    <body>
        <h1>Offline</h1>
        <script>
            window.applicationCache.onchecking = function(a,b,c) {} // Check the cache.manifest
            
            window.applicationCache.ondownloading = function(e) {} // Starting download
            window.applicationCache.onprogress = function(progress_event) {console.log(progress_event.total, progress_event.loaded)}
            
            window.applicationCache.onupdateready = function(e) {} // Done
            window.applicationCache.onnoupdate = function(e) {} // Done, Nothing to update
            
            window.applicationCache.oncached = function(a,b,c){console.log('oncached',a,b,c);}
            window.applicationCache.onerror = function(a,b,c) {console.log('onerror',a,b,c);}
            window.applicationCache.onobsolete = function(a,b,c) {console.log('onobsolete',a,b,c);}
        </script>
        
    </body>
</html>