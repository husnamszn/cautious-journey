<%-- 
    Document   : home
    Created on : 16 Jul 2024, 12:00:10 am
    Author     : husna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Homepage design</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .banner-area {
                position: relative;
                height: 100vh;
                background-image: url('image/im1.png'); /* Adjust the path as needed */
                background-position: center center;
                background-size: cover;
                color: white;
            }
            .menu {
                position: absolute;
                top: 20px;
                left: 50%;
                transform: translateX(-50%);
            }
            .menu ul {
                list-style: none;
                display: flex;
                gap: 20px;
            }
            .menu ul li {
                display: inline;
            }
            .menu ul li a {
                color: white;
                text-decoration: none;
                font-weight: bold;
            }
            .table-container {
                margin: 20px;
                padding: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                background-color: white;
                color: black;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f4f4f4;
            }
            tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            tr:hover {
                background-color: #333;
                color: white;
            }
            footer {
                background-color: #51465a;
                color: white;
                text-align: center;
                padding: 10px;
                position: fixed;
                bottom: 0;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="banner-area">
            <header>
                <div class="menu">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Portfolio</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </header>
            <div class="banner-text">
                <!-- Add your banner text here -->
            </div>
        </div>
        <!-- New Section with Table -->
        <section>
            <div class="table-container">
                <h2>Data Table</h2>
                <p>Click the link below to download the Excel file:</p>
                <a href="Table_Input.csv" download>Download Excel File</a>
                <table>
                    <thead>
                        <tr>
                            <th>Index #</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>A1</td><td>41</td></tr>
                        <tr><td>A2</td><td>18</td></tr>
                        <tr><td>A3</td><td>21</td></tr>
                        <tr><td>A4</td><td>63</td></tr>
                        <tr><td>A5</td><td>2</td></tr>
                        <tr><td>A6</td><td>53</td></tr>
                        <tr><td>A7</td><td>5</td></tr>
                        <tr><td>A8</td><td>57</td></tr>
                        <tr><td>A9</td><td>60</td></tr>
                        <tr><td>A10</td><td>93</td></tr>
                        <tr><td>A11</td><td>28</td></tr>
                        <tr><td>A12</td><td>3</td></tr>
                        <tr><td>A13</td><td>90</td></tr>
                        <tr><td>A14</td><td>39</td></tr>
                        <tr><td>A15</td><td>80</td></tr>
                        <tr><td>A16</td><td>88</td></tr>
                        <tr><td>A17</td><td>49</td></tr>
                        <tr><td>A18</td><td>60</td></tr>
                        <tr><td>A19</td><td>26</td></tr>
                        <tr><td>A20</td><td>28</td></tr>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- New Section with Calculated Table -->
        <section>
            <div class="table-container">
                <h2>Table 2</h2>
                <table id="calculated-table">
                    <thead>
                        <tr>
                            <th>Category</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>Alpha</td><td id="alpha-value"></td></tr>
                        <tr><td>Beta</td><td id="beta-value"></td></tr>
                        <tr><td>Charlie</td><td id="charlie-value"></td></tr>
                    </tbody>
                </table>
            </div>
        </section>

        <footer>
            &copy; 2024 NUR HUSNA MASZANI.
        </footer>

        <script>
            // Data from Table 1
            const data = {
                A1: 41, A2: 18, A3: 21, A4: 63, A5: 2, A6: 53, A7: 5, A8: 57,
                A9: 60, A10: 93, A11: 28, A12: 3, A13: 90, A14: 39, A15: 80, 
                A16: 88, A17: 49, A18: 60, A19: 26, A20: 28
            };

            // Calculating Values for Table 2
            const alphaValue = data.A5 + data.A20;
            const betaValue = data.A15 / data.A7;
            const charlieValue = data.A13 * data.A12;

            // Setting Values in Table 2
            document.getElementById('alpha-value').textContent = alphaValue;
            document.getElementById('beta-value').textContent = betaValue;
            document.getElementById('charlie-value').textContent = charlieValue;
        </script>
    </body>
</html>
