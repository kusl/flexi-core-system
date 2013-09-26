<html>
    <head>
        <title>Status</title>
    </head>
    <body>
        <h1>Status</h1>
        <table>
        % for key, value in status.items():
            <tr><td>${key}</td><td>${value}</td></tr>
        % endfor
        </table>
    </body>
</html>