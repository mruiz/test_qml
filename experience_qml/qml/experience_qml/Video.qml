import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0
import QtMultimedia 5.0

Item {
    width: parent.width
    height: parent.height

    MediaPlayer {
        id: playVideo
        source: "http://mirrorblender.top-ix.org/peach/bigbuckbunny_movies/big_buck_bunny_720p_surround.avi"
    }

    VideoOutput {
        anchors.fill: parent.fill
        source: playVideo
    }

    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed: playVideo.play();
    }
}

