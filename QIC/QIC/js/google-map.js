//    google map start
    (function($) {
        "use strict";

        google.maps.event.addDomListener(window, 'load', init);

        var map;

        function init() {
            var mapOptions = {
                center: new google.maps.LatLng(24.6839828, 46.7237994),
                zoom: 10,
                //zoomControl: true,
                //zoomControlOptions: {
                //    style: google.maps.ZoomControlStyle.DEFAULT,
                //},
                //disableDoubleClickZoom: false,
                //mapTypeControl: false,
                //mapTypeControlOptions: {
                //    style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
                //},
                //scaleControl: true,
                //scrollwheel: false,
                //streetViewControl: false,
                //draggable : true,
                //overviewMapControl: false,
                //mapTypeId: google.maps.MapTypeId.ROADMAP,
                //styles: [ 
                //    { featureType: "administrative", elementType: "all", stylers: [ { visibility: "on" }, { saturation: -100 }, { lightness: 20 } ] },
                //    { featureType: "road", elementType: "all", stylers: [ { visibility: "on" }, { saturation: -100 }, { lightness: 40 } ] },
                //    { featureType: "water", elementType: "all", stylers: [ { visibility: "on" }, { saturation: -10 }, { lightness: 30 } ] },
                //    { featureType: "landscape.man_made", elementType: "all", stylers: [ { visibility: "simplified" }, { saturation: -60 }, { lightness: 10 } ] },
                //    { featureType: "landscape.natural", elementType: "all", stylers: [ { visibility: "simplified" }, { saturation: -60 }, { lightness: 60 } ] },
                //    { featureType: "poi", elementType: "all", stylers: [ { visibility: "off" }, { saturation: -100 }, { lightness: 60 } ] }, 
                //    { featureType: "transit", elementType: "all", stylers: [ { visibility: "off" }, { saturation: -100 }, { lightness: 60 } ] }
                //]

            };
            var mapElement = document.getElementById('mapBox');
            map = new google.maps.Map(mapElement, mapOptions);

            var contentString = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h2 id="firstHeading" class="firstHeading">Quality Indicator Contracting (QIC) </h2>' +
                '<div id="bodyContent">' +
                '<p>Address :Salah Al-din Ayoubi Road, <br/> Hay Al Malaz, Al Akaria, Tower No 1, Second Floor. <br/>'+
           ' KSA, Riyadh, Malaz, Salahdine Road, <br/>'+
            'P.O.Box : 92690 Riyadh 11663 <br/>'+
            'Telephone : +966 11 47 43 177 <br/>'+
            'Fax : +966 11 47 43 154 <br/>'+
            'Email : info@qic-sa.com</p>' +
                '</div>' +
                '</div>';
            var warehouseaddress='<div id="content">'+
                '<div id="siteNotice">'+
                '<h2 id="firstHeading" class="firstHeading"> QIC Warehouse Address </h2>'+
                '<div id="bodyContent">'+
                '<p> Address: Exit 18, Istanbul Street,<br/> Near Al Fowzan Real Estate, <br/>Riyadh <br/>'+
           ' Website: www.qic-sa.com <br/>'+
            'Email : info@qic-sa.com <br/>'+
             '</div>' +
                '</div>';
            var infowindow = new google.maps.InfoWindow({
                content: contentString
            });
            var infowindow2 = new google.maps.InfoWindow({
                content: warehouseaddress
            });
            //var myLatlng = new google.maps.LatLng(24.6839828, 46.7237994);
            var myLatlng2 = new google.maps.LatLng(24.41252, 46.433284);
            var myLatlng3 = new google.maps.LatLng(24.382670, 46.501871);
            
            //var marker = new google.maps.Marker({
            //    position: myLatlng,
            //    map: map,
            //    title: 'Quality Indicator Contracting Est.'
            //});
            //google.maps.event.addListener(marker, 'click', function () {
            //    infowindow.open(map, marker);
            //});
            var marker3 = new google.maps.Marker({
                position: myLatlng3,
                map: map,
                title: 'QIC- Warehouse Address.'
            });
            google.maps.event.addListener(marker3, 'click', function () {
                infowindow2.open(map, marker3);
            });
            var marker2 = new google.maps.Marker({
                position: myLatlng2,
                map: map,
                title: 'Quality Indicator Contracting Est.'
            });
            google.maps.event.addListener(marker2, 'click', function () {
                infowindow.open(map, marker2);
            });
            
            //infowindow2.open(map, marker3);
            infowindow.open(map, marker2);
            //var locations = [
            //    ['', 23.825527, 90.429862]
            //]
          
        }
       
    })(jQuery);
//    google map end