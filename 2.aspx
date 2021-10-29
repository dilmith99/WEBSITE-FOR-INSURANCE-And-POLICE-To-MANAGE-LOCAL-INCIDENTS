<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2.aspx.cs" Inherits="FirstWebApplication4Batch07._2" %>

<!DOCTYPE html>
<html>
<body>
    <form id="form1" runat="server">
        <h1>
            <asp:Label ID="lblWelcomeMessage" runat="server" Text="Welcome"></asp:Label>
        </h1>
        <div id="googleMap" style="width: 100%; height: 400px;"></div>

        <script>
            function myMap() {
                var mapProp = {
                    center: new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 5,
                };
                var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                var marker = new google.maps.Marker({
                    position: { lat: 51.50, lng: -0.12 },
                    title: 'Test'
                });
                marker.setMap(map);

                // for loop
                <% for (int i = 0; i < locationList.Length; i++)
            { %>
                marker = new google.maps.Marker({
                    position: { lat: 51.50 + <%= i %>, lng: -0.12 + <%= i %> },
                    title: 'Test'
                });
                marker.setMap(map);
                <% } %>


                var infowindow = new google.maps.InfoWindow({
                    content: "<b>Hello World!</b><iframe width='853' height='480' src='https://www.youtube.com/embed/HJRL7vgAwng' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>"
                });

                infowindow.open(map, marker);
            }

        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCF7E47bWfrJYHE4HtmqfM27hYfUbN7_dY&callback=myMap"></script>
    </form>

</body>
</html>
