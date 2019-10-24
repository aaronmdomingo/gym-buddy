import React from 'react';
import Header from './header';
import GoogleMaps from './map';
import MapList from './map-list';

class GymMap extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      map: null
    };
    this.updateMap = this.updateMap.bind(this);
  }
  updateMap(mapObject) {
    this.setState({ map: mapObject });
  }
  render() {
    let element;
    const location = this.props.location;
    if (!this.state.map) {
      element = <div className="lds-ring"><div></div><div></div><div></div><div></div></div>;
    } else {
      element = <MapList map={this.state.map} location={location} setView={this.props.setView}/>;
    }
    return (
      <div className="main__container">
        <Header name={this.props.view.name} prevName={this.props.view.prevName} setView={this.props.setView} isLoggedIn={this.props.isLoggedIn}/>
        <div className="main__body">
          <div className="map__view">
            <GoogleMaps id="myMap" className = "map__view-map"
              options={{
                center: { lat: location.lat, lng: location.lng },
                zoom: 15
              }}
              onMapLoad={mapObject => {
                const marker = new window.google.maps.Marker({
                  position: { lat: location.lat, lng: location.lng },
                  map: mapObject,
                  icon: {
                    url: 'http://maps.google.com/mapfiles/ms/icons/pink-dot.png'
                  }
                });
                const infoWindow = new window.google.maps.InfoWindow({
                  content: 'You are Here',
                  position: { lat: location.lat, lng: location.lng }
                });
                this.setState({ map: mapObject });
                marker.addListener(marker, 'click', e => {
                  this.map.close();
                });
                infoWindow.open(this.map, marker);
              }}
            />
          </div>
          { element }
        </div>
      </div>
    );
  }
}

export default GymMap;
