import { BreakpointSystem } from '../BreakPointSystem';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @StorageLink('currentBreakpoint') private currentBreakpoint: string = "sm";
  private breakpointSystem: BreakpointSystem = new BreakpointSystem()

  aboutToAppear() {
    this.breakpointSystem.register()
  }

  aboutToDisappear() {
    this.breakpointSystem.unregister()
  }

  build() {
    RelativeContainer() {
      Text(this.currentBreakpoint)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
    .height('100%')
    .width('100%')
  }
}