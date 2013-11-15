var menu=function(){
    var t=15,z=50,s=6,a;
    function dd(n){
        this.n=n;
        this.h=[];
        this.c=[]
    }
    dd.prototype.init=function(p,c){
        a=c;
        var w=document.getElementById(p), s=w.getElementsByTagName('ul'), l=s.length, i=0;
        for(i;i<l;i++){
            var h=s[i].parentNode;
            this.h[i]=h;
            this.c[i]=s[i];
            h.onmouseover=new Function(this.n+'.st('+i+',true)');
            h.onmouseout=new Function(this.n+'.st('+i+')');
        }
    }
    dd.prototype.st=function(x,f){
        var c=this.c[x], h=this.h[x], p=h.getElementsByTagName('a')[0];
        clearInterval(c.t);
        c.style.overflow='hidden';
        if(f){
            p.className+=' '+a;
            if(!c.mh){
                c.style.display='block';
                c.style.height='';
                c.mh=c.offsetHeight;
                c.style.height=0
            }
            if(c.mh==c.offsetHeight){
                c.style.overflow='visible'
            }
            else{
                c.style.zIndex=z;
                z++;
                c.t=setInterval(function(){
                    sl(c,1)
                },t)
            }
        }else{
            p.className=p.className.replace(a,'');
            c.t=setInterval(function(){
                sl(c,-1)
            },t)
        }
    }
    function sl(c,f){
        var h=c.offsetHeight;
        if((h<=0&&f!=1)||(h>=c.mh&&f==1)){
            if(f==1){
                c.style.filter='';
                c.style.opacity=1;
                c.style.overflow='visible'
            }
            clearInterval(c.t);
            return
        }
        var d=(f==1)?Math.ceil((c.mh-h)/s):Math.ceil(h/s), o=h/c.mh;
        c.style.opacity=o;
        c.style.filter='alpha(opacity='+(o*100)+')';
        c.style.height=h+(d*f)+'px'
    }
    return{
        dd:dd
    }
}();
$(document).ready(function () {
    if($("#comp_address_map").length > 0) {
        google.maps.event.addDomListener(window, 'load', codeAddress);
    }
    function codeAddress() {
        
        var address = $("#comp_address_map").val();
        //        var address = 'Bhopal, India';
        var image = 'https://google-developers.appspot.com/maps/documentation/javascript/examples/full/images/beachflag.png';
        geocoder = new google.maps.Geocoder();
        var mapOptions = {
            zoom: 7,
            center: new google.maps.LatLng(-33, 151),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
        geocoder.geocode( {
            'address': address
        }, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                map.setZoom(16);
                var marker = new google.maps.Marker({
                    map: map,
                    position: results[0].geometry.location,
                    icon: image
                });
            }
        });
    }
});