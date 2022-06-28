import { Backdrop }  from '@ohos/material-backdrop'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Backdrop({
        frontHeight: "80%"
      })
    }
  }
}
