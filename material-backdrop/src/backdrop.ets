export enum Layer {
  FrontLayer,
  BackLayer,
}

@Component
export struct Backdrop {
  @State frontHeight: string = ""

  build() {
    Stack() {
      Column() {
        Row() {
          Text('BackLayer').fontColor(Color.White).fontSize(30).textAlign(TextAlign.Center)
        }
      }
      .width('100%')
      .height('100%')
      .backgroundColor("#6200EE")
      .onClick(() => {
        console.log("Clicked back")
        animateTo({
          duration: 1000,
          tempo: 0.5,
          curve: Curve.EaseInOut,
          iterations: 1,
        }, () => {
          this.frontHeight = "5%"
        })
      })

      Column() {
        Stack({ alignContent: Alignment.Bottom }) {
          Blank().backgroundColor(Color.White).width('100%').height('80%').align(Alignment.Bottom)
          Flex({ direction: FlexDirection.Column, alignContent: FlexAlign.Center }) {
            Text('Component1')
              .width('100%')
              .height('20%')
              .fontSize(30)
              .textAlign(TextAlign.Center)
              .backgroundColor('#D0D0D0')
            Text('Component2')
              .width('100%')
              .height('20%')
              .fontSize(30)
              .textAlign(TextAlign.Center)
              .backgroundColor('#D0D0D0')
            Text('Component3')
              .width('100%')
              .height('20%')
              .fontSize(30)
              .textAlign(TextAlign.Center)
              .backgroundColor('#D0D0D0')
          }
          .width('100%')
          .border({ width: '2vp' })
          .padding('5vp')
          .height('80%')
        }
      }
      .width('100%')
      .height(this.frontHeight)
      .align(Alignment.Bottom)
      .onClick(() => {
        console.log("Clicked front")
        animateTo({
          duration: 1000,
          tempo: 0.5,
          curve: Curve.EaseInOut,
          iterations: 1,
        }, () => {
          this.frontHeight = "80%"
        })
      })
    }
  }
}