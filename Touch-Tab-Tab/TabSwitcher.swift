import Cocoa

class TabSwitcher {
    private static let keyboardEventSource = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)
    private static let tabKey = CGKeyCode(0x30);
    private static let leftControlKey = CGKeyCode(0x3B);

    static func selectInAppSwitcher() {
        postKeyEvent(key: leftControlKey, down: false)
    }

    static func ctrlTab() {
        postKeyEvent(key: tabKey, down: true, flags: .maskControl)
        postKeyEvent(key: tabKey, down: false, flags: .maskControl)
    }

    static func ctrlShitTab() {
        postKeyEvent(key: tabKey, down: true, flags: [.maskControl, .maskShift])
        postKeyEvent(key: tabKey, down: false, flags: [.maskControl, .maskShift])
    }

    private static func postKeyEvent(key: CGKeyCode, down: Bool, flags: CGEventFlags = []) {
        let event = CGEvent(keyboardEventSource: keyboardEventSource, virtualKey: key, keyDown: down)
        event?.flags = flags
        event?.post(tap: CGEventTapLocation.cghidEventTap)
    }
}
