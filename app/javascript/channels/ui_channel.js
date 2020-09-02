import CableReady from 'cable_ready'
import consumer from "./consumer"

consumer.subscriptions.create("UiChannel", {
  received(data) {
    if (data.cableReady) {
      CableReady.perform(data.operations);
      console.log("yeay!!");
    } else {
      console.log("no!!");
    }
  }
});
