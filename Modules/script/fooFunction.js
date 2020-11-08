
var component;
var sprite;

function createSpriteObject(parent){
    //加载组件
    component=Qt.createComponent("../Button/TestButton.qml");
    if(component.status===Component.Ready){
        finishCreation(parent);
    }
    else{
        component.statusChanged.connect(finishCreation,{parent})
    }
}

function finishCreation(parent){
    //创建组件
    if(component.status===Component.Ready){
        sprite=component.createObject(parent,{ "width":100, "height":200 })
        if(sprite===null){
            console.log("Error creating object");
        }
    }
    else if(component.status===Component.Error){
        console.log("Error loading component:",component.errorString());
    }
}
