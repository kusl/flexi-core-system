<html>
    <head>
        <title>Status</title>
        <style>
            li {
                list-style-type: none;
            }
            td {
                vertical-align: top;
            }
        </style>
    </head>
    <body>
        <h1>Status</h1>
        <table>
            <tr><th>path</th><th>broken links</th>
        % for url, uncached_links in filter(lambda key_value: key_value[1], ((key, status[key]) for key in sorted(status.keys()) )):
            <tr>
                <td>${url}</td>
                <td>
                    <ul>
                    % for link in sorted(uncached_links):
<li>${link}</li>
                    % endfor
                    </ul>
                </td>
            </tr>
        % endfor
        </table>
    </body>
</html>