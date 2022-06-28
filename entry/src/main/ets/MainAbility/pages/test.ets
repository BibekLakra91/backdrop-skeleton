@Entry
@Component
struct Test {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        //      .onClick(() => {
        //        console.log("Clicked")
        //                animateTo({
        //                  duration: 1000,
        //                  tempo: 0.5,
        //                  curve: Curve.EaseInOut,
        //                  iterations: 1,
        ////                  onFinish: () => {
        ////                    console.log('play end')
        ////                  }
        //                }, () => {
        //                  this.frontHeight = 1000
        //                })
        //      })
      }
      .width('100%')
    }
    .height('100%')
  }
}